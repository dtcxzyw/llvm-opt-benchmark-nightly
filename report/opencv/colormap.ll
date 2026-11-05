Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/colormap?download=true
inline.NumInlined: 919
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cvL23sortMatrixRowsByIndicesERKNS_11_InputArrayES2_:bb.a

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i
  %i.bf = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.bn, %bb.ab ]
  %.044.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.044.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !212
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bh, ptr %5, align 4, !tbaa !35, !noalias !212
  store i32 %i.bi, ptr %i.as, align 4, !tbaa !36, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !212
  store i64 9223372034707292160, ptr %6, align 8, !noalias !212
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.bj = trunc i64 %.044.i to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !213
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !35, !noalias !213
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !36, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !213
  store i64 9223372034707292160, ptr %4, align 8, !noalias !213
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store i64 0, ptr %i.av, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !29
  store ptr %16, ptr %i.au, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.bl = add nuw i64 %.044.i, 1                  ; 2 uses
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.bn = load ptr, ptr %12, align 8, !tbaa !62   ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2
  %i.bs = icmp ult i64 %i.bl, %i.br
  br i1 %i.bs, label %bb.y, label %._crit_edge.i, !llvm.loop !206

bb.ac:                                            ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn21.pn.i = phi { ptr, i32 } [ %i.bv, %bb.ae ], [ %i.bu, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn21.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.i, %bb.af ], [ %i.bt, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.x
  %.pn21.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.i, %bb.ag ], [ %i.be, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.w
  %.pn21.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.i, %bb.ah ], [ %i.bd, %bb.w ] ; 2 uses
  %i.bw = load ptr, ptr %12, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i42.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i42.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit43.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !63
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43.i

_ZNSt6vectorIiSaIiEED2Ev.exit43.i:                ; preds = %bb.aj, %bb.ai, %bb.v
  %.pn21.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.v ], [ %.pn21.pn.pn.pn.pn.i, %bb.ai ], [ %.pn21.pn.pn.pn.pn.i, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body

bb.ak:                                            ; preds = %bb.t, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  ret void

bb.al:                                            ; preds = %bb.k, %bb.j, %bb.i, %bb.c, %bb.b, %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i ], [ %i.cc, %bb.al ], [ %.pn28.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #18
  ret void
}

declare void @_ZN2cv7sortIdxERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6Autumn4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !216
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !216 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !216
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !216
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Autumn4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Autumn4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Autumn4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6AutumnD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap8ColorMapD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %5, i32 noundef 1, i32 noundef 5)
  %i.a = add i32 %5, -1                           ; 2 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv float 1.000000e+00, %i.b            ; 4 uses
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26, !alias.scope !219
  %.fr15.i = freeze i32 %i.f
  %i.g = icmp slt i32 %.fr15.i, 2
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !alias.scope !219 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 3 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %5, 1
  br i1 %i.k, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.i.new

.lr.ph.split.preheader.i.new:                     ; preds = %.lr.ph.split.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.l = uitofp nneg i32 %i.a to float
  %i.m = call float @llvm.fmuladd.f32(float %i.l, float %i.c, float 0.000000e+00)
  store float %i.m, ptr %i.i, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !219
  %i.o = mul i64 %i.n, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = call float @llvm.fmuladd.f32(float %i.q, float %i.c, float 0.000000e+00)
  store float %i.r, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !alias.scope !219
  %i.t = mul i64 %i.s, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = call float @llvm.fmuladd.f32(float %i.v, float %i.c, float 0.000000e+00)
  store float %i.w, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod8)
  %i.x = load i64, ptr %i.j, align 8, !alias.scope !219
  %i.y = mul i64 %i.x, %indvars.iv.i.epil.init
  %.sink.i.i.epil = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.z = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %8 = fmul float %i.c, %i.aa
  store float %8, ptr %.sink.i.i.epil, align 4, !tbaa !67
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !28
  store i32 16842752, ptr %6, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.ad, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_S4_(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.loopexit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.c:                                             ; preds = %.loopexit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %i.ae
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4Bone4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !222
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !222 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !222
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !222
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Bone4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Bone4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Bone4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4BoneD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7Cividis4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !225
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !225 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !225
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !225
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Cividis4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Cividis4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Cividis4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7CividisD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4Cool4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !228
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !228 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !228
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !228
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Cool4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Cool4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Cool4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4CoolD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap9DeepGreen4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !231
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !231 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !231
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !231
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap9DeepGreen4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap9DeepGreen4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap9DeepGreen4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap9DeepGreenD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3Hot4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !234
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !234 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !234
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !234
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Hot4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Hot4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Hot4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3HotD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3HSV4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !237
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !237 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !237
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !237
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3HSV4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3HSV4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3HSV4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3HSVD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7Inferno4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !240
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !240 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !240
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !240
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Inferno4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Inferno4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Inferno4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7InfernoD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3Jet4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !243
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !243 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !243
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !243
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Jet4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Jet4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap3Jet4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap3JetD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5Magma4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !246
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !246 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !246
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !246
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Magma4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Magma4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Magma4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5MagmaD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5Ocean4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !249
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !249 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !249
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !249
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Ocean4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Ocean4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Ocean4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5OceanD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN2cv8colormap6Parula4initEi:bb.a
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 9, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Parula4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.ad, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 9, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Parula4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.ag, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.aq, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ao, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.an, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.am, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ak, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6ParulaD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4Pink4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !255
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !255 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !255
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !255
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Pink4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Pink4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap4Pink4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap4PinkD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6Plasma4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !258
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !258 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !258
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !258
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Plasma4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Plasma4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Plasma4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6PlasmaD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7Rainbow4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !261
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !261 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !261
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !261
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Rainbow4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Rainbow4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Rainbow4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7RainbowD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6Spring4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !264
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !264 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !264
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !264
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Spring4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Spring4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Spring4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6SpringD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6Summer4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 64, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !267
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !267 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !267
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3C820821
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !267
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3C820821
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Summer4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Summer4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 64, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap6Summer4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap6SummerD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5Turbo4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !270
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !270 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !270
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !270
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Turbo4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Turbo4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap5Turbo4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap5TurboD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap8Twilight4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 510, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !273
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !273 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.split.i ], [ 0, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !273
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B00C122
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !273
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B00C122
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.o = load i64, ptr %i.f, align 8, !alias.scope !273
  %i.p = mul i64 %i.o, %indvars.iv.next.i.1
  %.sink.i.i.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.r = uitofp nneg i32 %i.q to float
  %16 = fmul nnan float %i.r, f0x3B00C122
  store float %16, ptr %.sink.i.i.2, align 4, !tbaa !67
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 510
  br i1 %exitcond.not.i.2, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap8Twilight4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.x, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap8Twilight4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.aa, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap8Twilight4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.ad, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.al, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.aj, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ah, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap8TwilightD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap15TwilightShifted4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 510, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !276
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !276 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.split.i ], [ 0, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !276
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B00C122
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !276
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B00C122
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.o = load i64, ptr %i.f, align 8, !alias.scope !276
  %i.p = mul i64 %i.o, %indvars.iv.next.i.1
  %.sink.i.i.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.r = uitofp nneg i32 %i.q to float
  %16 = fmul nnan float %i.r, f0x3B00C122
  store float %16, ptr %.sink.i.i.2, align 4, !tbaa !67
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 510
  br i1 %exitcond.not.i.2, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap15TwilightShifted4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.x, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap15TwilightShifted4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.aa, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 510, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap15TwilightShifted4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.ad, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.al, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.aj, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ah, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap15TwilightShiftedD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7Viridis4initEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 256, i32 noundef 1, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26, !alias.scope !279
  %.fr15.i = freeze i32 %i.b
  %i.c = icmp slt i32 %.fr15.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !alias.scope !279 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.a
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !67
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !279
  %i.h = mul i64 %i.g, %indvars.iv.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = uitofp nneg i32 %i.i to float
  %14 = fmul nnan float %i.j, f0x3B808081
  store float %14, ptr %.sink.i.i, align 4, !tbaa !67
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !279
  %i.l = mul i64 %i.k, %indvars.iv.next.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %15 = fmul nnan float %i.n, f0x3B808081
  store float %15, ptr %.sink.i.i.1, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !28
  store i32 16842752, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Viridis4initEiE1r, i64 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 16842752, ptr %5, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Viridis4initEiE1g, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !28
  store i32 16842752, ptr %8, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.w, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 256, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @_ZZN2cv8colormap7Viridis4initEiE1b, i64 noundef 0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  store i32 16842752, ptr %11, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZN2cv8colormap8ColorMap15linear_colormapERKNS_11_InputArrayES4_S4_S4_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ah, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.af, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.v ], [ %i.ad, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8colormap7ViridisD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv8colormap8ColorMapE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #20
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
