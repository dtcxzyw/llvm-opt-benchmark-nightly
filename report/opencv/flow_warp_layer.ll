Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/flow_warp_layer?download=true
inline.NumInlined: 274
inline.NumDeleted: 145
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv3dnn17FlowWarpLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %11 = alloca %"class.std::vector", align 8      ; 11 uses
  %12 = alloca %"class.std::vector", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn17FlowWarpLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E24__cv_trace_location_fn41)
  %i.a = load ptr, ptr %10, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn17FlowWarpLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E21__cv_trace_arg_name42, ptr noundef %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr %12, align 8, !tbaa !43    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.j = icmp sgt i32 %i.g, 1
  br i1 %i.j, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 6 uses
  %.not171 = icmp eq i32 %i.g, 2
  br i1 %.not171, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc140 unwind label %bb.y

.noexc140:                                        ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #22
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc140
  unreachable

bb.m:                                             ; preds = %.noexc140
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %bb.m
  %i.w = load i64, ptr %i.u, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47   ; 6 uses
  %i.aa = icmp samesign ugt i32 %i.g, 3
  br i1 %i.aa, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc149 unwind label %bb.z

.noexc149:                                        ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #22
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc149
  unreachable

bb.q:                                             ; preds = %.noexc149
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146: ; preds = %bb.q
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !47 ; 11 uses
  %i.aj = mul i32 %i.ai, %i.z                     ; 13 uses
  %i.ak = mul i32 %i.aj, %i.r                     ; 3 uses
  %i.al = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92 ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 12 uses
  %i.as = icmp sgt i32 %i.i, 0
  br i1 %i.as, label %.lr.ph184, label %._crit_edge185.split

.lr.ph184:                                        ; preds = %bb.r
  %factor.op.mul179 = shl i32 %i.aj, 1
  %i.at = icmp slt i32 %i.ai, 1
  %i.au = icmp slt i32 %i.z, 1
  %i.av = sitofp i32 %i.ai to float
  %i.aw = sitofp i32 %i.z to float
  %i.ax = icmp sgt i32 %i.r, 0                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.az = add i32 %i.ai, -1
  %i.ba = add i32 %i.z, -1
  %brmerge = select i1 %i.at, i1 true, i1 %i.au
  br i1 %brmerge, label %._crit_edge185.split, label %.preheader173.lr.ph.preheader

.preheader173.lr.ph.preheader:                    ; preds = %.lr.ph184
  %i.bb = zext i32 %i.aj to i64                   ; 7 uses
  %i.bc = sext i32 %i.ak to i64
  %wide.trip.count205 = zext nneg i32 %i.i to i64
  %wide.trip.count199 = zext nneg i32 %i.z to i64
  %wide.trip.count = zext i32 %i.r to i64         ; 6 uses
  %wide.trip.count194 = zext nneg i32 %i.r to i64
  %i.bd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.be = mul i32 %i.ai, %i.z
  %i.bf = sub i32 0, %i.be
  %i.bg = zext i32 %i.ak to i64
  %i.bh = zext nneg i32 %i.ai to i64
  %i.bi = shl nuw nsw i64 %i.bb, 2
  %i.bj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bk = sext i32 %i.aj to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = shl i64 %i.bl, 2
  %scevgep242 = getelementptr i8, ptr %i.ar, i64 %i.bm
  %i.bn = zext i32 %i.ak to i64
  %i.bo = zext nneg i32 %i.ai to i64
  %i.bp = mul i64 %i.bj, %i.bb
  %i.bq = shl i64 %i.bp, 2                        ; 4 uses
  %scevgep246.a = getelementptr i8, ptr %i.an, i64 %i.bq
  %scevgep252.a = getelementptr i8, ptr %i.an, i64 %i.bq
  %scevgep258 = getelementptr i8, ptr %i.an, i64 %i.bq
  %scevgep264 = getelementptr i8, ptr %i.an, i64 %i.bq
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.br = icmp ult i32 %i.r, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod288 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.r, 72
  %i.bs = icmp slt i32 %i.aj, 0                   ; 2 uses
  %i.bt = select i1 %i.bs, i32 %i.bf, i32 %i.aj
  %i.bu = trunc i64 %i.bd to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bt, i32 %i.bu) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.bv = icmp ugt i64 %i.bd, 4294967295
  %i.bw = icmp ne i32 %i.aj, 0
  %i.bx = and i1 %i.bv, %i.bw
  %invariant.op = or i1 %mul.overflow, %i.bx
  %mul236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bi, i64 %i.bd) ; 2 uses
  %mul.result237 = extractvalue { i64, i1 } %mul236, 0 ; 4 uses
  %mul.overflow238 = extractvalue { i64, i1 } %mul236, 1 ; 2 uses
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader173.lr.ph

._crit_edge185.split:                             ; preds = %._crit_edge181, %.lr.ph184, %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.e, %i.bz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge185.split, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %i.e, %._crit_edge185.split ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge185.split
  %i.cb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.e, %._crit_edge185.split ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ch = load ptr, ptr %11, align 8, !tbaa !43   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i153 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not4.i.i.i153, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159, label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i154
  %.05.i.i.i155 = phi ptr [ %i.ck, %.lr.ph.i.i.i154 ], [ %i.ch, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i155) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i155, i64 208 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i156, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157, label %.lr.ph.i.i.i154, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157: ; preds = %.lr.ph.i.i.i154
  %.pr.i158 = load ptr, ptr %11, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.cl = phi ptr [ %.pr.i158, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157 ], [ %i.ch, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i160 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i160, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !49
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !50
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void

bb.w:                                             ; preds = %bb.e, %bb.d
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.g
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader173.lr.ph:                              ; preds = %.preheader173.lr.ph.preheader, %._crit_edge181
  %indvars.iv202 = phi i64 [ 0, %.preheader173.lr.ph.preheader ], [ %indvars.iv.next203, %._crit_edge181 ] ; 5 uses
  %i.cz = mul i64 %indvars.iv202, %i.bn
  %i.da = mul i64 %indvars.iv202, %i.bg
  %i.db = mul nsw i64 %indvars.iv202, %i.bc       ; 10 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv202 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul179, %i.dc
  %i.dd = trunc nsw i64 %i.db to i32
  br label %.preheader173

.preheader173:                                    ; preds = %.preheader173.lr.ph, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader173.lr.ph ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.0118180 = phi i32 [ 0, %.preheader173.lr.ph ], [ %i.dj, %._crit_edge ] ; 5 uses
  %i.de = add i64 %i.cz, %indvar
  %i.df = add i64 %i.da, %indvar
  %i.dg = add i32 %.0118180, %factor.op.mul.reass
  %i.dh = uitofp nneg i32 %.0118180 to float
  %i.di = add i32 %.0118180, %i.dd
  br label %bb.aa

._crit_edge181:                                   ; preds = %._crit_edge
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge185.split, label %.preheader173.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit
  %i.dj = add nuw nsw i32 %.0118180, 1            ; 2 uses
  %exitcond201.not = icmp eq i32 %i.dj, %i.ai
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond201.not, label %._crit_edge181, label %.preheader173, !llvm.loop !75

bb.aa:                                            ; preds = %.preheader173, %.loopexit
  %indvars.iv196 = phi i64 [ 0, %.preheader173 ], [ %indvars.iv.next197, %.loopexit ] ; 5 uses
  %i.dk = mul i64 %indvars.iv196, %i.bo
  %i.dl = add i64 %i.de, %i.dk
  %sext = shl i64 %i.dl, 32
  %i.dm = ashr exact i64 %sext, 30                ; 2 uses
  %scevgep243 = getelementptr i8, ptr %scevgep242, i64 %i.dm ; 4 uses
  %scevgep244 = getelementptr i8, ptr %i.ar, i64 %i.dm ; 4 uses
  %i.dn = icmp ult ptr %scevgep243, %scevgep244
  %umin = select i1 %i.dn, ptr %scevgep243, ptr %scevgep244 ; 4 uses
  %i.do = icmp ugt ptr %scevgep243, %scevgep244
  %umax = select i1 %i.do, ptr %scevgep243, ptr %scevgep244
  %scevgep245 = getelementptr i8, ptr %umax, i64 4 ; 4 uses
  %i.dp = mul i64 %indvars.iv196, %i.bh
  %i.dq = add i64 %i.df, %i.dp
  %i.dr = trunc i64 %i.dq to i32                  ; 4 uses
  %i.ds = trunc i64 %indvars.iv196 to i32
  %i.dt = mul i32 %i.ai, %i.ds                    ; 3 uses
  %i.du = add i32 %i.dg, %i.dt                    ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !93
  %i.dy = add nsw i32 %i.du, %i.aj
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !93
  %i.ec = fadd float %i.dx, %i.dh                 ; 4 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv196 to i32
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = fadd float %i.eb, %i.ee                 ; 4 uses
  %i.eg = fcmp oge float %i.ec, 0.000000e+00
  %i.eh = fcmp oge float %i.ef, 0.000000e+00
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  %i.ei = fcmp olt float %i.ec, %i.av
  %or.cond130 = select i1 %or.cond, i1 %i.ei, i1 false
  %i.ej = fcmp olt float %i.ef, %i.aw
  %or.cond132 = select i1 %or.cond130, i1 %i.ej, i1 false
  br i1 %or.cond132, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.aa
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ek = add i32 %i.di, %i.dt                    ; 5 uses
  %.pre = load float, ptr %i.ay, align 4, !tbaa !40 ; 5 uses
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.new

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ax, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %bb.ab
  %i.el = fptosi float %i.ec to i32               ; 3 uses
  %i.em = add i32 %i.el, 1
  %.sroa.speculated166 = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.em)
  %i.en = fptosi float %i.ef to i32               ; 3 uses
  %i.eo = add i32 %i.en, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.eo)
  %i.ep = sitofp i32 %i.en to float
  %i.eq = fsub float %i.ef, %i.ep                 ; 3 uses
  %i.er = sitofp i32 %i.el to float
  %i.es = fsub float %i.ec, %i.er                 ; 3 uses
  %i.et = mul i32 %i.ai, %i.en
  %i.eu = mul i32 %.sroa.speculated, %i.ai
  %i.ev = fsub float 1.000000e+00, %i.es          ; 2 uses
  %i.ew = fsub float 1.000000e+00, %i.eq          ; 2 uses
  %i.ex = fmul float %i.ev, %i.ew                 ; 2 uses
  %i.ey = fmul float %i.ev, %i.eq                 ; 2 uses
  %i.ez = fmul float %i.es, %i.ew                 ; 2 uses
  %i.fa = fmul float %i.es, %i.eq                 ; 2 uses
  %i.fb = add nuw i32 %i.dt, %.0118180            ; 5 uses
  %i.fc = sext i32 %i.et to i64                   ; 7 uses
  %i.fd = sext i32 %i.el to i64                   ; 4 uses
  %i.fe = sext i32 %.sroa.speculated166 to i64    ; 4 uses
  %i.ff = sext i32 %i.eu to i64                   ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.an, i64 %i.fd ; 5 uses
  %invariant.gep229 = getelementptr [4 x i8], ptr %i.an, i64 %i.fe ; 5 uses
  %invariant.gep231 = getelementptr [4 x i8], ptr %i.an, i64 %i.fd ; 5 uses
  %invariant.gep233 = getelementptr [4 x i8], ptr %i.an, i64 %i.fe ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph176
  %i.fg = add i32 %mul.result, %i.dr
  %i.fh = sub i32 %i.dr, %mul.result
  %i.fi = icmp slt i32 %i.fg, %i.dr
  %i.fj = icmp sgt i32 %i.fh, %i.dr
  %i.fk = select i1 %i.bs, i1 %i.fj, i1 %i.fi
  %.reass = or i1 %i.fk, %invariant.op
  %i.fl = add nsw i64 %i.db, %i.fc
  %i.fm = shl i64 %i.fl, 2                        ; 2 uses
  %i.fn = shl nsw i64 %i.fd, 2                    ; 2 uses
  %i.fo = getelementptr i8, ptr %i.an, i64 %i.fm
  %scevgep = getelementptr i8, ptr %i.fo, i64 %i.fn ; 2 uses
  %i.fp = getelementptr i8, ptr %scevgep, i64 %mul.result237
  %i.fq = icmp ult ptr %i.fp, %scevgep
  %i.fr = or i1 %i.fq, %mul.overflow238
  %i.fs = shl nsw i64 %i.fe, 2                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.an, i64 %i.fs
  %scevgep239 = getelementptr i8, ptr %i.ft, i64 %i.fm ; 2 uses
  %i.fu = getelementptr i8, ptr %scevgep239, i64 %mul.result237
  %i.fv = icmp ult ptr %i.fu, %scevgep239
  %i.fw = add nsw i64 %i.db, %i.ff
  %i.fx = shl i64 %i.fw, 2                        ; 2 uses
  %i.fy = getelementptr i8, ptr %i.an, i64 %i.fx
  %scevgep240 = getelementptr i8, ptr %i.fy, i64 %i.fn ; 2 uses
  %i.fz = getelementptr i8, ptr %scevgep240, i64 %mul.result237
  %i.ga = icmp ult ptr %i.fz, %scevgep240
  %i.gb = getelementptr i8, ptr %i.an, i64 %i.fs
  %scevgep241 = getelementptr i8, ptr %i.gb, i64 %i.fx ; 2 uses
  %i.gc = getelementptr i8, ptr %scevgep241, i64 %mul.result237
  %i.gd = icmp ult ptr %i.gc, %scevgep241
  %i.ge = or i1 %i.gd, %mul.overflow238
  %i.gf = or i1 %.reass, %i.fr
  %i.gg = or i1 %i.fv, %i.gf
  %i.gh = or i1 %i.ga, %i.gg
  %i.gi = or i1 %i.gh, %i.ge
  br i1 %i.gi, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gj = shl nsw i64 %i.fe, 2                    ; 2 uses
  %i.gk = add nsw i64 %i.db, %i.ff
  %i.gl = shl i64 %i.gk, 2                        ; 2 uses
  %i.gm = add i64 %i.gj, %i.gl                    ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246.a, i64 %i.gm ; 4 uses
  %scevgep248.a = getelementptr i8, ptr %i.an, i64 %i.gm ; 4 uses
  %13 = icmp ult ptr %scevgep247, %scevgep248.a
  %umin249 = select i1 %13, ptr %scevgep247, ptr %scevgep248.a
  %14 = icmp ugt ptr %scevgep247, %scevgep248.a
  %umax250 = select i1 %14, ptr %scevgep247, ptr %scevgep248.a
  %scevgep251.a = getelementptr i8, ptr %umax250, i64 4
  %i.gn = shl nsw i64 %i.fd, 2                    ; 2 uses
  %i.go = add i64 %i.gl, %i.gn                    ; 2 uses
  %scevgep253 = getelementptr i8, ptr %scevgep252.a, i64 %i.go ; 4 uses
  %scevgep254.a = getelementptr i8, ptr %i.an, i64 %i.go ; 4 uses
  %15 = icmp ult ptr %scevgep253, %scevgep254.a
  %umin255 = select i1 %15, ptr %scevgep253, ptr %scevgep254.a
  %16 = icmp ugt ptr %scevgep253, %scevgep254.a
  %umax256 = select i1 %16, ptr %scevgep253, ptr %scevgep254.a
  %scevgep257.a = getelementptr i8, ptr %umax256, i64 4
  %i.gp = add nsw i64 %i.db, %i.fc
  %i.gq = shl i64 %i.gp, 2                        ; 2 uses
  %i.gr = add i64 %i.gj, %i.gq                    ; 2 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.gr ; 4 uses
  %scevgep260 = getelementptr i8, ptr %i.an, i64 %i.gr ; 4 uses
  %17 = icmp ult ptr %scevgep259, %scevgep260
  %umin261 = select i1 %17, ptr %scevgep259, ptr %scevgep260
  %18 = icmp ugt ptr %scevgep259, %scevgep260
  %umax262 = select i1 %18, ptr %scevgep259, ptr %scevgep260
  %scevgep263 = getelementptr i8, ptr %umax262, i64 4
  %i.gs = add i64 %i.gq, %i.gn                    ; 2 uses
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.gs ; 4 uses
  %scevgep266 = getelementptr i8, ptr %i.an, i64 %i.gs ; 4 uses
  %19 = icmp ult ptr %scevgep265, %scevgep266
  %umin267 = select i1 %19, ptr %scevgep265, ptr %scevgep266
  %20 = icmp ugt ptr %scevgep265, %scevgep266
  %umax268 = select i1 %20, ptr %scevgep265, ptr %scevgep266
  %scevgep269 = getelementptr i8, ptr %umax268, i64 4
  %bound0 = icmp ult ptr %umin, %scevgep251.a
  %bound1 = icmp ult ptr %umin249, %scevgep245
  %found.conflict = and i1 %bound0, %bound1
  %bound0270 = icmp ult ptr %umin, %scevgep257.a
  %bound1271 = icmp ult ptr %umin255, %scevgep245
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx = or i1 %found.conflict, %found.conflict272
  %bound0273 = icmp ult ptr %umin, %scevgep263
  %bound1274 = icmp ult ptr %umin261, %scevgep245
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx, %found.conflict275
  %bound0277 = icmp ult ptr %umin, %scevgep269
  %bound1278 = icmp ult ptr %umin267, %scevgep245
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  br i1 %conflict.rdx280, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert281 = insertelement <4 x float> poison, float %i.ey, i64 0
  %broadcast.splat282 = shufflevector <4 x float> %broadcast.splatinsert281, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert283 = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat284 = shufflevector <4 x float> %broadcast.splatinsert283, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert285 = insertelement <4 x float> poison, float %i.fa, i64 0
  %broadcast.splat286 = shufflevector <4 x float> %broadcast.splatinsert285, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.gt = or disjoint i64 %index, 1
  %i.gu = or disjoint i64 %index, 2
  %i.gv = or disjoint i64 %index, 3
  %i.gw = mul nuw nsw i64 %index, %i.bb
  %i.gx = mul nuw nsw i64 %i.gt, %i.bb
  %i.gy = mul nuw nsw i64 %i.gu, %i.bb
  %i.gz = mul nuw nsw i64 %i.gv, %i.bb
  %i.ha = add nuw nsw i64 %i.gw, %i.db            ; 3 uses
  %i.hb = add nuw nsw i64 %i.gx, %i.db            ; 3 uses
  %i.hc = add nuw nsw i64 %i.gy, %i.db            ; 3 uses
  %i.hd = add nuw nsw i64 %i.gz, %i.db            ; 3 uses
  %i.he = add nsw i64 %i.ha, %i.fc                ; 2 uses
  %i.hf = add nsw i64 %i.hb, %i.fc                ; 2 uses
  %i.hg = add nsw i64 %i.hc, %i.fc                ; 2 uses
  %i.hh = add nsw i64 %i.hd, %i.fc                ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.he
  %i.hj = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hf
  %i.hk = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hg
  %i.hl = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hh
  %i.hm = load float, ptr %i.hi, align 4, !tbaa !93, !alias.scope !94
  %i.hn = load float, ptr %i.hj, align 4, !tbaa !93, !alias.scope !94
  %i.ho = load float, ptr %i.hk, align 4, !tbaa !93, !alias.scope !94
  %i.hp = load float, ptr %i.hl, align 4, !tbaa !93, !alias.scope !94
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3
  %i.hu = getelementptr [4 x i8], ptr %invariant.gep229, i64 %i.he
  %i.hv = getelementptr [4 x i8], ptr %invariant.gep229, i64 %i.hf
  %i.hw = getelementptr [4 x i8], ptr %invariant.gep229, i64 %i.hg
  %i.hx = getelementptr [4 x i8], ptr %invariant.gep229, i64 %i.hh
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !93, !alias.scope !95
  %i.hz = load float, ptr %i.hv, align 4, !tbaa !93, !alias.scope !95
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !93, !alias.scope !95
  %i.ib = load float, ptr %i.hx, align 4, !tbaa !93, !alias.scope !95
  %i.ic = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 1
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 2
  %i.if = insertelement <4 x float> %i.ie, float %i.ib, i64 3
  %i.ig = add nsw i64 %i.ha, %i.ff                ; 2 uses
  %i.ih = add nsw i64 %i.hb, %i.ff                ; 2 uses
  %i.ii = add nsw i64 %i.hc, %i.ff                ; 2 uses
  %i.ij = add nsw i64 %i.hd, %i.ff                ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep231, i64 %i.ig
  %i.il = getelementptr [4 x i8], ptr %invariant.gep231, i64 %i.ih
  %i.im = getelementptr [4 x i8], ptr %invariant.gep231, i64 %i.ii
  %i.in = getelementptr [4 x i8], ptr %invariant.gep231, i64 %i.ij
  %i.io = load float, ptr %i.ik, align 4, !tbaa !93, !alias.scope !96
  %i.ip = load float, ptr %i.il, align 4, !tbaa !93, !alias.scope !96
  %i.iq = load float, ptr %i.im, align 4, !tbaa !93, !alias.scope !96
  %i.ir = load float, ptr %i.in, align 4, !tbaa !93, !alias.scope !96
  %i.is = insertelement <4 x float> poison, float %i.io, i64 0
  %i.it = insertelement <4 x float> %i.is, float %i.ip, i64 1
  %i.iu = insertelement <4 x float> %i.it, float %i.iq, i64 2
  %i.iv = insertelement <4 x float> %i.iu, float %i.ir, i64 3
  %i.iw = getelementptr [4 x i8], ptr %invariant.gep233, i64 %i.ig
  %i.ix = getelementptr [4 x i8], ptr %invariant.gep233, i64 %i.ih
  %i.iy = getelementptr [4 x i8], ptr %invariant.gep233, i64 %i.ii
  %i.iz = getelementptr [4 x i8], ptr %invariant.gep233, i64 %i.ij
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !93, !alias.scope !97
  %i.jb = load float, ptr %i.ix, align 4, !tbaa !93, !alias.scope !97
  %i.jc = load float, ptr %i.iy, align 4, !tbaa !93, !alias.scope !97
  %i.jd = load float, ptr %i.iz, align 4, !tbaa !93, !alias.scope !97
  %i.je = insertelement <4 x float> poison, float %i.ja, i64 0
  %i.jf = insertelement <4 x float> %i.je, float %i.jb, i64 1
  %i.jg = insertelement <4 x float> %i.jf, float %i.jc, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.jd, i64 3
  %i.ji = fmul <4 x float> %broadcast.splat282, %i.iv
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ht, <4 x float> %i.ji)
  %i.jk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat284, <4 x float> %i.if, <4 x float> %i.jj)
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat286, <4 x float> %i.jh, <4 x float> %i.jk) ; 4 uses
  %i.jm = trunc nsw i64 %i.ha to i32
  %i.jn = trunc nsw i64 %i.hb to i32
  %i.jo = trunc nsw i64 %i.hc to i32
  %i.jp = trunc nsw i64 %i.hd to i32
  %i.jq = add i32 %i.fb, %i.jm
  %i.jr = add i32 %i.fb, %i.jn
  %i.js = add i32 %i.fb, %i.jo
  %i.jt = add i32 %i.fb, %i.jp
  %i.ju = sext i32 %i.jq to i64
  %i.jv = sext i32 %i.jr to i64
  %i.jw = sext i32 %i.js to i64
  %i.jx = sext i32 %i.jt to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ju
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.jv
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.jw
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.jx
  %i.kc = extractelement <4 x float> %i.jl, i64 0
  store float %i.kc, ptr %i.jy, align 4, !tbaa !93, !alias.scope !98, !noalias !99
  %i.kd = extractelement <4 x float> %i.jl, i64 1
  store float %i.kd, ptr %i.jz, align 4, !tbaa !93, !alias.scope !98, !noalias !99
  %i.ke = extractelement <4 x float> %i.jl, i64 2
  store float %i.ke, ptr %i.ka, align 4, !tbaa !93, !alias.scope !98, !noalias !99
  %i.kf = extractelement <4 x float> %i.jl, i64 3
  store float %i.kf, ptr %i.kb, align 4, !tbaa !93, !alias.scope !98, !noalias !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph176, %middle.block
  %indvars.iv191.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph176 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %scalar.ph ], [ %indvars.iv191.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kh = mul nuw nsw i64 %indvars.iv191, %i.bb
  %i.ki = add nuw nsw i64 %i.kh, %i.db            ; 3 uses
  %i.kj = add nsw i64 %i.ki, %i.fc                ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kj
  %i.kk = load float, ptr %gep, align 4, !tbaa !93
  %gep230 = getelementptr [4 x i8], ptr %invariant.gep229, i64 %i.kj
  %i.kl = load float, ptr %gep230, align 4, !tbaa !93
  %i.km = add nsw i64 %i.ki, %i.ff                ; 2 uses
  %gep232 = getelementptr [4 x i8], ptr %invariant.gep231, i64 %i.km
  %i.kn = load float, ptr %gep232, align 4, !tbaa !93
  %gep234 = getelementptr [4 x i8], ptr %invariant.gep233, i64 %i.km
  %i.ko = load float, ptr %gep234, align 4, !tbaa !93
  %i.kp = fmul float %i.ey, %i.kn
  %i.kq = call float @llvm.fmuladd.f32(float %i.ex, float %i.kk, float %i.kp)
  %i.kr = call float @llvm.fmuladd.f32(float %i.ez, float %i.kl, float %i.kq)
  %i.ks = call float @llvm.fmuladd.f32(float %i.fa, float %i.ko, float %i.kr)
  %i.kt = trunc nsw i64 %i.ki to i32
  %i.ku = add i32 %i.fb, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.kv
  store float %i.ks, ptr %i.kw, align 4, !tbaa !93
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %.loopexit, label %scalar.ph, !llvm.loop !83

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.kx = trunc i64 %indvars.iv to i32
  %i.ky = mul i32 %i.aj, %i.kx
  %i.kz = add i32 %i.ek, %i.ky
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.la
  store float %.pre, ptr %i.lb, align 4, !tbaa !93
  %i.lc = trunc i64 %indvars.iv to i32
  %i.ld = or disjoint i32 %i.lc, 1
  %i.le = mul i32 %i.aj, %i.ld
  %i.lf = add i32 %i.ek, %i.le
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.lg
  store float %.pre, ptr %i.lh, align 4, !tbaa !93
  %i.li = trunc i64 %indvars.iv to i32
  %i.lj = or disjoint i32 %i.li, 2
  %i.lk = mul i32 %i.aj, %i.lj
  %i.ll = add i32 %i.ek, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.lm
  store float %.pre, ptr %i.ln, align 4, !tbaa !93
  %i.lo = trunc i64 %indvars.iv to i32
  %i.lp = or disjoint i32 %i.lo, 3
  %i.lq = mul i32 %i.aj, %i.lp
  %i.lr = add i32 %i.ek, %i.lq
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ls
  store float %.pre, ptr %i.lt, align 4, !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit287.unr-lcssa, label %.lr.ph.new, !llvm.loop !84

.loopexit.loopexit287.unr-lcssa:                  ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit287.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit287.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod288)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.lu = trunc i64 %indvars.iv.epil to i32
  %i.lv = mul i32 %i.aj, %i.lu
  %i.lw = add i32 %i.ek, %i.lv
  %i.lx = sext i32 %i.lw to i64
end_hunk_0
