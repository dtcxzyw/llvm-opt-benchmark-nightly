Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onevpl_infer_with_advanced_device_selection?download=true
inline.NumInlined: 5233
inline.NumDeleted: 2453
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv6detail6get_inINS_7GOpaqueINS_5Rect_IiEEEEE3getERNS_11GCPUContextEi:bb.a
  %i.r = load i64, ptr %i.q, align 8, !tbaa !257
  switch i64 %i.r, label %bb.e [
    i64 1, label %_ZN2cv4util3getIPKNS_5Rect_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
    i64 2, label %_ZN2cv4util3getIPNS_5Rect_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
    i64 3, label %_ZN2cv4util3getINS_5Rect_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
  ]

_ZN2cv4util3getIPKNS_5Rect_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !259
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Rect_IiEEEERKT_v.exit

_ZN2cv4util3getIPNS_5Rect_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !259
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Rect_IiEEEERKT_v.exit

_ZN2cv4util3getINS_5Rect_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Rect_IiEEEERKT_v.exit

bb.e:                                             ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.70)
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZNK2cv6detail9OpaqueRef4rrefINS_5Rect_IiEEEERKT_v.exit: ; preds = %_ZN2cv4util3getIPKNS_5Rect_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i, %_ZN2cv4util3getIPNS_5Rect_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i, %_ZN2cv4util3getINS_5Rect_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
  %.0.i.i = phi ptr [ %i.t, %_ZN2cv4util3getIPKNS_5Rect_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ], [ %i.v, %_ZN2cv4util3getIPNS_5Rect_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ], [ %i.w, %_ZN2cv4util3getINS_5Rect_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6custom11OCVParseSSD3runERKN2cv3MatERKNS1_5Rect_IiEERKNS1_5Size_IiEERSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !701
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6custom11OCVParseSSD3runERKN2cv3MatERKNS1_5Rect_IiEERKNS1_5Size_IiEERSt6vectorIS6_SaIS6_EE, ptr noundef nonnull @.str.32, i32 noundef 228) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !72
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.y

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101
  %i.o = icmp eq i32 %i.n, 7
  br i1 %i.o, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN6custom11OCVParseSSD3runERKN2cv3MatERKNS1_5Rect_IiEERKNS1_5Size_IiEERSt6vectorIS6_SaIS6_EE, ptr noundef nonnull @.str.32, i32 noundef 232) #27
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !72
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.j
  %.pn53 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.y

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x i32>, ptr %i.w, align 4
  %i.y = load i32, ptr %2, align 4, !tbaa !170    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171 ; 3 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !347   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !348 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !348
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.l, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %i.ad, %bb.l ], [ %i.ab, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !702
  %i.ah = icmp sgt i32 %i.l, 0
  br i1 %i.ah, label %.lr.ph, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.ai = sitofp <2 x i32> %i.x to <2 x float>    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = icmp slt i32 %i.y, 1
  %i.al = icmp slt i32 %i.aa, 1
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.x
  %i.ao = phi ptr [ %i.ab, %.lr.ph ], [ %i.da, %bb.x ] ; 7 uses
  %i.ap = phi ptr [ %i.ae, %.lr.ph ], [ %i.db, %bb.x ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 4 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !227
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.au = load <2 x float>, ptr %i.as, align 4, !tbaa !227
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !227
  %i.aw = fcmp olt float %i.ar, 0.000000e+00
  br i1 %i.aw, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !227
  %i.az = fcmp olt float %i.ay, 5.000000e-01
  br i1 %i.az, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = fmul <2 x float> %i.au, %i.ai
  %i.bb = fmul <2 x float> %i.av, %i.ai
  %i.bc = load i32, ptr %1, align 4, !tbaa !151
  %i.bd = load i32, ptr %i.aj, align 4, !tbaa !152 ; 2 uses
  %i.be = fptosi <2 x float> %i.ba to <2 x i32>   ; 3 uses
  %i.bf = extractelement <2 x i32> %i.be, i64 1   ; 2 uses
  %i.bg = fptosi <2 x float> %i.bb to <2 x i32>   ; 2 uses
  %i.bh = extractelement <2 x i32> %i.bg, i64 1   ; 2 uses
  %i.bi = sub nsw <2 x i32> %i.bg, %i.be          ; 2 uses
  %i.bj = sub nsw i32 %i.bh, %i.bf
  %i.bk = extractelement <2 x i32> %i.be, i64 0
  %i.bl = add nsw i32 %i.bc, %i.bk                ; 3 uses
  %i.bm = add nsw i32 %i.bd, %i.bf                ; 2 uses
  %i.bn = icmp slt <2 x i32> %i.bi, splat (i32 1) ; 2 uses
  %8 = extractelement <2 x i1> %i.bn, i64 0
  %9 = extractelement <2 x i1> %i.bn, i64 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.am, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp slt i32 %i.bl, 0                   ; 3 uses
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 0) ; 2 uses
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0) ; 3 uses
  %i.br = extractelement <2 x i32> %i.bi, i64 0   ; 3 uses
  %i.bs = add nsw i32 %i.bp, %i.br
  %i.bt = icmp slt i32 %i.bs, %i.bq
  %or.cond = select i1 %i.bo, i1 %i.bt, i1 false
  br i1 %or.cond, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp slt i32 %i.bm, 0
  br i1 %i.bu, label %.cont52.i, label %.cont35.i

.cont52.i:                                        ; preds = %bb.r
  %i.bv = add i32 %i.bd, %i.bh                    ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %.cont35.i

.cont35.i:                                        ; preds = %bb.r, %.cont52.i
  %i.bx = phi i32 [ %i.aa, %.cont52.i ], [ %i.bj, %bb.r ]
  %.neg49.pre-phi.i.i = phi i32 [ %i.bv, %.cont52.i ], [ %i.aa, %bb.r ]
  %i.by = phi i32 [ 0, %.cont52.i ], [ %i.bm, %bb.r ] ; 2 uses
  %.v.v.i = select i1 %i.bo, i32 %i.br, i32 %i.y
  %.v.i = sub i32 %i.bp, %i.bq
  %i.bz = add i32 %.v.i, %.v.v.i
  %i.ca = select i1 %i.bo, i32 %i.y, i32 %i.br
  %.sroa.speculated53.i.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.bz) ; 2 uses
  %i.cb = sub nsw i32 %.neg49.pre-phi.i.i, %i.by
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.cb) ; 2 uses
  %i.cc = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.cd = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.ce = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %i.ce, label %bb.s, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

bb.s:                                             ; preds = %.cont35.i
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit:          ; preds = %bb.q, %bb.o, %bb.p, %.cont52.i, %.cont35.i, %bb.s
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.bq, %.cont35.i ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %.cont52.i ], [ 0, %bb.q ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.by, %.cont35.i ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %.cont52.i ], [ 0, %bb.q ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %.cont52.i ], [ 0, %bb.q ]
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %.cont52.i ], [ 0, %bb.q ]
  %.sroa.0.sroa.9.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.9.0.i to i64
  %.sroa.0.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.9.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.0.0.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i ; 2 uses
  %.sroa.14.sroa.12.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.12.0.i to i64
  %.sroa.14.sroa.12.0.insert.shift.i = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i, 32
  %.sroa.14.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.0.0.i to i64
  %.sroa.14.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i, %.sroa.14.sroa.0.0.insert.ext.i ; 2 uses
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !353
  %.not.i = icmp eq ptr %i.ap, %i.cf
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ap, align 4, !tbaa !101
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !101
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.cg, ptr %i.ac, align 8, !tbaa !348
  br label %bb.x

bb.u:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.ch = ptrtoint ptr %i.ap to i64
  %i.ci = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775792
  br i1 %i.ck, label %bb.v, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #27
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.cl = ashr exact i64 %i.cj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 576460752303423487)
  %i.cp = select i1 %i.cn, i64 576460752303423487, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #32 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.cs, align 4, !tbaa !101
  %.sroa.5.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx67, align 4, !tbaa !101
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cr, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !103, !alias.scope !703
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ct, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !699

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cr, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !353
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cr, ptr %3, align 8, !tbaa !347
  store ptr %i.cv, ptr %i.ac, align 8, !tbaa !348
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cz, ptr %i.an, align 8, !tbaa !353
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.t, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.da = phi ptr [ %i.ao, %bb.n ], [ %i.ao, %bb.t ], [ %i.cr, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.db = phi ptr [ %i.ap, %bb.n ], [ %i.cg, %bb.t ], [ %i.cv, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, label %bb.m, !llvm.loop !700

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.x, %bb.m, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  ret void

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn53.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #6

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZN2cv11GCPUContext9outVecRefEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail9VectorRef4wrefINS_5Rect_IiEEEERSt6vectorIT_SaIS6_EEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !359
  %i.d = icmp eq i64 %i.c, 16
  br i1 %i.d, label %_ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv, ptr noundef nonnull @.str.82, i32 noundef 244) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !72
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

_ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  switch i64 %i.l, label %bb.e [
    i64 2, label %_ZN2cv4util3getIPSt6vectorINS_5Rect_IiEESaIS4_EEJNS0_9monostateEPKS6_S7_S6_EEERT_RNS0_7variantIJDpT0_EEE.exit.i
    i64 3, label %_ZN2cv4util3getISt6vectorINS_5Rect_IiEESaIS4_EEJNS0_9monostateEPKS6_PS6_S6_EEERT_RNS0_7variantIJDpT0_EEE.exit.i
  ]

bb.e:                                             ; preds = %_ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv6detail10OpaqueRefTINS_5Rect_IiEEE4wrefEv, ptr noundef nonnull @.str.82, i32 noundef 188) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable
end_hunk_0
