Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/distransform?download=true
inline.NumInlined: 181
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiii:bb.a
  store i8 %..i.i, ptr %i.nn, align 1, !tbaa !24
  %i.np = getelementptr inbounds i8, ptr %i.nh, i64 %i.lg ; 3 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.li
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !24
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !24
  %i.nv = getelementptr inbounds i8, ptr %i.np, i64 %i.iy ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !24
  %..i.i.1 = call i8 @llvm.umin.i8(i8 %i.nu, i8 %i.nw)
  store i8 %..i.i.1, ptr %i.nv, align 1, !tbaa !24
  %i.nx = add nsw i32 %.1114172.i.i, -2
  %.not224.i.i.1 = icmp eq i32 %.1114172.i.i, 1
  br i1 %.not224.i.i.1, label %.loopexit.i, label %.lr.ph175.split.i.i, !llvm.loop !122

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i
  %.pn130.pn.i.i = phi { ptr, i32 } [ %.pn130.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.body24.i

.loopexit.i:                                      ; preds = %.lr.ph175.split.i.i.prol.loopexit, %.lr.ph175.split.i.i, %._crit_edge171.us.i.i, %._crit_edge.i.i, %.preheader.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ny = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !58
  %.not.i27.i = icmp eq i32 %i.nz, 0
  br i1 %.not.i27.i, label %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #22
  unreachable

bb.bk:                                            ; preds = %bb.r, %bb.l
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bl:                                            ; preds = %bb.u, %bb.t, %bb.s
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ai, %bb.ac
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

.body24.i:                                        ; preds = %bb.bm, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %eh.lpad-body25.i = phi { ptr, i32 } [ %i.oe, %bb.bm ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141.i.i ], [ %.pn130.pn.i.i, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #18
  br label %bb.bn

bb.bn:                                            ; preds = %.body24.i, %bb.bl
  %.pn9.i = phi { ptr, i32 } [ %eh.lpad-body25.i, %.body24.i ], [ %i.od, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.bn, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn9.pn.i = phi { ptr, i32 } [ %.pn9.i, %bb.bn ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.oc, %bb.bk ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  br label %bb.bo

bb.bo:                                            ; preds = %.body.i, %bb.e
  %.pn9.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.i, %.body.i ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.body

_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit: ; preds = %.loopexit.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bs

bb.bp:                                            ; preds = %bb.b, %bb.br, %bb.bq
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bo, %bb.bp
  %eh.lpad-body = phi { ptr, i32 } [ %i.of, %bb.bp ], [ %.pn9.pn.pn.i, %bb.bo ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  resume { ptr, i32 } %eh.lpad-body

bb.bq:                                            ; preds = %bb.a
  %i.og = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayES5_iii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.og, i32 noundef %2, i32 noundef %3, i32 noundef 1)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit, %bb.br
  %i.oh = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.oi, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %20)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15DTColumnInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15DTColumnInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.0", align 8  ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.o = sext i32 %i.g to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.g, 264
  store i64 %i.o, ptr %i.q, align 8, !tbaa !130
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.g, 0
  %i.s = shl nuw nsw i64 %i.o, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #21 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !129
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.p, %bb.a ], [ %i.u, %bb.b ] ; 8 uses
  %i.w = icmp slt i32 %i.a, %i.c
  br i1 %i.w, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.y = add i32 %i.g, -1                         ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ad = sext i32 %i.y to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.aj = icmp sgt i32 %i.g, 0
  %i.ak = sub i64 0, %i.i                         ; 3 uses
  br i1 %i.aj, label %.lr.ph.us.us.preheader, label %._crit_edge51

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %i.ap = zext i32 %i.y to i64                    ; 3 uses
  %i.aq = sext i32 %i.a to i64
  %wide.trip.count79 = sext i32 %i.c to i64
  %wide.trip.count74 = zext nneg i32 %i.g to i64  ; 2 uses
  %i.ar = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ap
  %indvars.iv.next69.prol = add nsw i64 %i.ap, -1
  %i.at = icmp eq i32 %i.y, 0
  %xtraiter84 = and i64 %wide.trip.count74, 1
  %i.au = icmp eq i32 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count74, 2147483646
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  %lcmp.mod86 = trunc i32 %i.g to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv76 = phi i64 [ %i.aq, %.lr.ph.us.us.preheader ], [ %indvars.iv.next77, %._crit_edge.us.us ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv76 ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24
  %.not.us.us.prol = icmp eq i8 %i.aw, 0
  %i.ax = select i1 %.not.us.us.prol, i32 0, i32 %i.g ; 2 uses
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !26
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ak
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %indvars.iv68.unr = phi i64 [ %i.ap, %.lr.ph.us.us ], [ %indvars.iv.next69.prol, %.prol.loopexit.unr-lcssa ]
  %.044.us.us.unr = phi i32 [ %i.y, %.lr.ph.us.us ], [ %i.ax, %.prol.loopexit.unr-lcssa ]
  %.03942.us.us.unr = phi ptr [ %i.av, %.lr.ph.us.us ], [ %i.ay, %.prol.loopexit.unr-lcssa ]
  br i1 %i.at, label %..preheader_crit_edge.us.us.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph.us.us.new
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.1, %.lr.ph.us.us.new ], [ %indvars.iv68.unr, %.prol.loopexit ] ; 4 uses
  %.044.us.us = phi i32 [ %i.bg, %.lr.ph.us.us.new ], [ %.044.us.us.unr, %.prol.loopexit ]
  %.03942.us.us = phi ptr [ %i.bj, %.lr.ph.us.us.new ], [ %.03942.us.us.unr, %.prol.loopexit ] ; 2 uses
  %i.az = add nsw i32 %.044.us.us, 1
  %i.ba = load i8, ptr %.03942.us.us, align 1, !tbaa !24
  %.not.us.us = icmp eq i8 %i.ba, 0
  %i.bb = select i1 %.not.us.us, i32 0, i32 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv68
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !26
  %i.bd = getelementptr inbounds i8, ptr %.03942.us.us, i64 %i.ak ; 2 uses
  %i.be = add nsw i32 %i.bb, 1
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !24
  %.not.us.us.1 = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not.us.us.1, i32 0, i32 %i.be ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv68
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !26
  %indvars.iv.next69.1 = add nsw i64 %indvars.iv68, -2
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 %i.ak
  %i.bk = icmp sgt i64 %indvars.iv68, 1
  br i1 %i.bk, label %.lr.ph.us.us.new, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !125

..preheader_crit_edge.us.us.preheader:            ; preds = %.lr.ph.us.us.new, %.prol.loopexit
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv76 ; 2 uses
  br i1 %i.au, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.147.us.us = phi i32 [ %i.ch, %..preheader_crit_edge.us.us ], [ %i.y, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.03845.us.us = phi ptr [ %i.cm, %..preheader_crit_edge.us.us ], [ %i.bl, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.bm = add nsw i32 %.147.us.us, 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = sub nsw i32 %.147.us.us, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bt = sub i32 %i.bm, %i.bs                    ; 4 uses
  store i32 %i.bt, ptr %i.bn, align 4, !tbaa !26
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.bx = uitofp i32 %i.bw to float
  store float %i.bx, ptr %.03845.us.us, align 4, !tbaa !48
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.03845.us.us, i64 %i.n ; 2 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = sub nsw i32 %i.bt, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !26
  %i.ch = sub i32 %i.bz, %i.cg                    ; 4 uses
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !26
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.cl = uitofp i32 %i.ck to float
  store float %i.cl, ptr %i.by, align 4, !tbaa !48
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.n ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !126

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod85.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv71.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next72.1, %._crit_edge.us.us.unr-lcssa ]
  %.147.us.us.epil.init = phi i32 [ %i.y, %..preheader_crit_edge.us.us.preheader ], [ %i.ch, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.03845.us.us.epil.init = phi ptr [ %i.bl, %..preheader_crit_edge.us.us.preheader ], [ %i.cm, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.cn = add nsw i32 %.147.us.us.epil.init, 1
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71.epil.init ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !26
  %i.cq = sub nsw i32 %.147.us.us.epil.init, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !26
  %i.cu = sub i32 %i.cn, %i.ct                    ; 2 uses
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !26
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.cy = uitofp i32 %i.cx to float
  store float %i.cy, ptr %.03845.us.us.epil.init, align 4, !tbaa !48
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge51, label %.lr.ph.us.us, !llvm.loop !127

._crit_edge51:                                    ; preds = %._crit_edge.us.us, %.lr.ph50, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %.not.i.i41 = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i41, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge51
  call void @_ZdaPv(ptr noundef nonnull %i.v) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %._crit_edge51, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12DTRowInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12DTRowInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.h = add nsw i32 %i.g, 2                      ; 2 uses
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = sext i32 %i.h to i64
  %i.l = add nsw i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 2                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i64 %i.m, 1032
  store i64 %i.m, ptr %i.o, align 8, !tbaa !31
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.p = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !30
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.n, %bb.a ], [ %i.p, %bb.b ] ; 7 uses
end_hunk_0
