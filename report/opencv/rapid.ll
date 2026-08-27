Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rapid?download=true
inline.NumInlined: 1028
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv5rapid14compute1DSobelERKNS_3MatERS1_:bb.a
  %.sink.idx.i57 = select i1 %i.ek, i64 0, i64 %i.en
  %.sink.i58 = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sink.idx.i57
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink.i58, i64 %indvars.iv
  store i8 %i.ei, ptr %i.eo, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = load i32, ptr %i.ao, align 4, !tbaa !41
  %i.eq = add nsw i32 %i.ep, -1
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %.lr.ph, label %._crit_edge.split, !llvm.loop !175
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv5rapid20findCorrespondenciesERKNS_11_InputArrayERKNS_12_OutputArrayES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat_.11", align 8       ; 14 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat_.35", align 8       ; 17 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat_.11", align 8       ; 17 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  %i.a = load i32, ptr %3, align 8, !tbaa !27
  %i.b = and i32 %i.a, -4096
  store i32 %i.b, ptr %3, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11, !noalias !176
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  invoke void @_ZN2cv5rapid14compute1DSobelERKNS_3MatERS1_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.h, i32 noundef 1, i32 noundef 4, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.i = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc66 unwind label %bb.r

.noexc66:                                         ; preds = %bb.e
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc66
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11, !noalias !179
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
          to label %_ZNK2cv11_InputArray6getMatEi.exit69 unwind label %bb.r

bb.g:                                             ; preds = %.noexc66
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit69 unwind label %bb.r

_ZNK2cv11_InputArray6getMatEi.exit69:             ; preds = %bb.f, %bb.g
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #21
  %i.m = load i32, ptr %5, align 8, !tbaa !27
  %i.n = and i32 %i.m, -4096
  %i.o = or disjoint i32 %i.n, 4
  store i32 %i.o, ptr %5, align 8, !tbaa !27
  %i.p = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IiEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %_ZN2cv4Mat_IiEC2EONS_3MatE.exit unwind label %.body ; 0 uses

.body:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit69
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.s

_ZN2cv4Mat_IiEC2EONS_3MatE.exit:                  ; preds = %_ZNK2cv11_InputArray6getMatEi.exit69
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #21
  %i.r = load i32, ptr %7, align 8, !tbaa !27
  %i.s = and i32 %i.r, -4096
  store i32 %i.s, ptr %7, align 8, !tbaa !27
  %i.t = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %_ZN2cv4Mat_IiEC2EONS_3MatE.exit
  br i1 %i.t, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.g, align 8, !tbaa !61
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.u, i32 noundef 1, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.v = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc70 unwind label %bb.u

.noexc70:                                         ; preds = %bb.j
  %i.w = icmp eq i32 %i.v, 65536
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc70
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11, !noalias !182
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.y)
          to label %_ZNK2cv11_InputArray6getMatEi.exit73 unwind label %bb.u

bb.l:                                             ; preds = %.noexc70
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit73 unwind label %bb.u

_ZNK2cv11_InputArray6getMatEi.exit73:             ; preds = %bb.k, %bb.l
  %i.z = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.m unwind label %bb.v       ; 0 uses

bb.m:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit73
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.x

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ar

bb.q:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.r:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.r
  %.pn53 = phi { ptr, i32 } [ %i.q, %.body ], [ %i.ad, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.aq

bb.t:                                             ; preds = %bb.i, %_ZN2cv4Mat_IiEC2EONS_3MatE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.u:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit73
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn55 = phi { ptr, i32 } [ %i.ag, %bb.v ], [ %i.af, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ap

bb.x:                                             ; preds = %bb.m, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 3 uses
  %i.aj = sdiv i32 %i.ai, 2                       ; 3 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.al = load i32, ptr %i.g, align 8, !tbaa !61
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.x
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.aq = sext i32 %i.ak to i64                   ; 7 uses
  %i.ar = icmp sgt i32 %i.ai, 1
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %wide.trip.count = zext i32 %i.aj to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = and i32 %i.ai, 2147483646
  %i.bf = icmp eq i32 %i.be, 2
  %unroll_iter = and i64 %wide.trip.count, 1073741822
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = trunc i32 %i.aj to i1
  br label %bb.y

._crit_edge87:                                    ; preds = %_ZN2cv4Mat_IiEclEi.exit, %bb.x
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.y:                                             ; preds = %.lr.ph86, %_ZN2cv4Mat_IiEclEi.exit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next89, %_ZN2cv4Mat_IiEclEi.exit ] ; 10 uses
  %i.bg = load i32, ptr %i.an, align 4, !tbaa !37
  %i.bh = icmp slt i32 %i.bg, 2
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.bj = load i64, ptr %i.ap, align 8
  %i.bk = mul i64 %i.bj, %indvars.iv88
  %.sink.idx.i = select i1 %i.bh, i64 0, i64 %i.bk
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink.idx.i ; 7 uses
  %i.bl = getelementptr inbounds i8, ptr %.sink.i, i64 %i.aq
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20  ; 3 uses
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.y
  br i1 %i.bf, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03681.epil.init = phi i8 [ %i.bm, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03780.epil.init = phi i32 [ %i.ak, %.lr.ph.preheader ], [ %.239.1, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.bn = add nuw nsw i64 %indvars.iv.epil.init, %i.aq ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20  ; 2 uses
  %i.bq = sub nsw i64 %i.aq, %indvars.iv.epil.init ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sink.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20  ; 2 uses
  %i.bt = icmp ugt i8 %i.bp, %.03681.epil.init
  %i.bu = trunc nsw i64 %i.bn to i32
  %spec.select.epil = select i1 %i.bt, i32 %i.bu, i32 %.03780.epil.init
  %spec.select63.epil = call i8 @llvm.umax.i8(i8 %i.bp, i8 %.03681.epil.init) ; 2 uses
  %i.bv = icmp ugt i8 %i.bs, %spec.select63.epil
  %i.bw = trunc nsw i64 %i.bq to i32
  %.239.epil = select i1 %i.bv, i32 %i.bw, i32 %spec.select.epil
  %.2.epil = call i8 @llvm.umax.i8(i8 %i.bs, i8 %spec.select63.epil)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.y
  %.037.lcssa = phi i32 [ %i.ak, %bb.y ], [ %.239.1, %._crit_edge.loopexit.unr-lcssa ], [ %.239.epil, %.lr.ph.epil.preheader ]
  %.036.lcssa = phi i8 [ %i.bm, %bb.y ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %.lr.ph.epil.preheader ]
  %i.bx = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.03681 = phi i8 [ %.2.1, %.lr.ph ], [ %i.bm, %.lr.ph.preheader ] ; 2 uses
  %.03780 = phi i32 [ %.239.1, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bz = add nuw nsw i64 %indvars.iv, %i.aq      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !20  ; 2 uses
  %i.cc = sub nsw i64 %i.aq, %indvars.iv          ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.sink.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20  ; 2 uses
  %i.cf = icmp ugt i8 %i.cb, %.03681
  %i.cg = trunc nsw i64 %i.bz to i32
  %spec.select = select i1 %i.cf, i32 %i.cg, i32 %.03780
  %spec.select63 = call i8 @llvm.umax.i8(i8 %i.cb, i8 %.03681) ; 2 uses
  %i.ch = icmp ugt i8 %i.ce, %spec.select63
  %i.ci = trunc nsw i64 %i.cc to i32
  %.239 = select i1 %i.ch, i32 %i.ci, i32 %spec.select
  %.2 = call i8 @llvm.umax.i8(i8 %i.ce, i8 %spec.select63) ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cj = add nuw nsw i64 %indvars.iv.next, %i.aq ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20  ; 2 uses
  %i.cm = sub nsw i64 %i.aq, %indvars.iv.next     ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sink.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20  ; 2 uses
  %i.cp = icmp ugt i8 %i.cl, %.2
  %i.cq = trunc nsw i64 %i.cj to i32
  %spec.select.1 = select i1 %i.cp, i32 %i.cq, i32 %.239
  %spec.select63.1 = call i8 @llvm.umax.i8(i8 %i.cl, i8 %.2) ; 2 uses
  %i.cr = icmp ugt i8 %i.co, %spec.select63.1
  %i.cs = trunc nsw i64 %i.cm to i32
  %.239.1 = select i1 %i.cr, i32 %i.cs, i32 %spec.select.1 ; 3 uses
  %.2.1 = call i8 @llvm.umax.i8(i8 %i.co, i8 %spec.select63.1) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !185

bb.aa:                                            ; preds = %._crit_edge
  br i1 %i.bx, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !37
  %i.cu = icmp slt i32 %i.ct, 2
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv88
  br label %_ZN2cv4Mat_IhEclEi.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load i32, ptr %7, align 8, !tbaa !27
  %i.cy = and i32 %i.cx, 16384
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = load i32, ptr %i.at, align 4
  %i.db = icmp eq i32 %i.da, 1
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv88
  br label %_ZN2cv4Mat_IhEclEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.de = load i32, ptr %i.au, align 8, !tbaa !39
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dg = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.dh = load i64, ptr %i.ax, align 8, !tbaa !40
  %i.di = mul i64 %i.dh, %indvars.iv88
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  br label %_ZN2cv4Mat_IhEclEi.exit

bb.ah:                                            ; preds = %bb.af
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !41 ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv88 to i32  ; 2 uses
  %i.dm = sdiv i32 %i.dl, %i.dk                   ; 2 uses
  %i.dn = mul nsw i32 %i.dm, %i.dk                ; 0 uses
  %.recomposed = srem i32 %i.dl, %i.dk
  %i.do = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.dp = load i64, ptr %i.ax, align 8, !tbaa !40
  %i.dq = sext i32 %i.dm to i64
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr
  %i.dt = sext i32 %.recomposed to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  br label %_ZN2cv4Mat_IhEclEi.exit

_ZN2cv4Mat_IhEclEi.exit:                          ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.ah
  %.0.i.i = phi ptr [ %i.cw, %bb.ac ], [ %i.dd, %bb.ae ], [ %i.dj, %bb.ag ], [ %i.du, %bb.ah ]
  store i8 %.036.lcssa, ptr %.0.i.i, align 1, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv4Mat_IhEclEi.exit, %bb.aa
  %i.dv = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.dw = icmp slt i32 %i.dv, 2
  br i1 %i.dw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dx = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv88
  br label %_ZN2cv4Mat_IiEclEi.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dz = load i32, ptr %5, align 8, !tbaa !27
  %i.ea = and i32 %i.dz, 16384
  %i.eb = icmp ne i32 %i.ea, 0
  %i.ec = load i32, ptr %i.az, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  %or.cond.i.i78 = select i1 %i.eb, i1 true, i1 %i.ed
  br i1 %or.cond.i.i78, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ee = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv88
  br label %_ZN2cv4Mat_IiEclEi.exit

bb.am:                                            ; preds = %bb.ak
  %i.eg = load i32, ptr %i.ba, align 8, !tbaa !39
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.ej = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.ek = mul i64 %i.ej, %indvars.iv88
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  br label %_ZN2cv4Mat_IiEclEi.exit

bb.ao:                                            ; preds = %bb.am
  %i.em = load i32, ptr %i.bb, align 4, !tbaa !41 ; 3 uses
  %i.en = trunc nuw nsw i64 %indvars.iv88 to i32  ; 2 uses
  %i.eo = sdiv i32 %i.en, %i.em                   ; 2 uses
  %i.ep = mul nsw i32 %i.eo, %i.em                ; 0 uses
  %.recomposed94 = srem i32 %i.en, %i.em
  %i.eq = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.er = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.es = sext i32 %i.eo to i64
  %i.et = mul i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  %i.ev = sext i32 %.recomposed94 to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ev
  br label %_ZN2cv4Mat_IiEclEi.exit

_ZN2cv4Mat_IiEclEi.exit:                          ; preds = %bb.ao, %bb.an, %bb.al, %bb.aj
  %.0.i.i79 = phi ptr [ %i.dy, %bb.aj ], [ %i.ef, %bb.al ], [ %i.el, %bb.an ], [ %i.ew, %bb.ao ]
  store i32 %.037.lcssa, ptr %.0.i.i79, align 4, !tbaa !39
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.ex = load i32, ptr %i.g, align 8, !tbaa !61
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next89, %i.ey
  br i1 %i.ez, label %bb.y, label %._crit_edge87, !llvm.loop !186

bb.ap:                                            ; preds = %bb.z, %bb.w, %bb.t
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.t ], [ %.pn55, %bb.w ], [ %i.by, %bb.z ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.s
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.ap ], [ %.pn53, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.q, %bb.p
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %bb.aq ], [ %i.ac, %bb.q ], [ %.pn, %bb.p ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !27
  %i.c = and i32 %i.b, -4096
  store i32 %i.c, ptr %0, align 8, !tbaa !27
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = and i32 %i.d, 4095
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, 31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.k, ptr noundef null)
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
