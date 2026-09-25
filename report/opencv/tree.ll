Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tree?download=true
inline.NumInlined: 2303
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv2ml10DTreesImpl10readParamsERKNS_8FileNodeE:bb.a
bb.es:                                            ; preds = %bb.eq
  %i.mv = icmp ugt i64 %i.ms, %i.ml
  br i1 %i.mv, label %bb.et, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.et:                                            ; preds = %bb.es
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ml ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.mn, %i.mw
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i158

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i158:   ; preds = %bb.et
  store ptr %i.mw, ptr %i.mm, align 8, !tbaa !78
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i158, %bb.et, %bb.es
  %i.mx = icmp sgt i32 %i.mk, 0
  br i1 %i.mx, label %.lr.ph.i, label %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.my = load ptr, ptr %i.md, align 8, !tbaa !79 ; 2 uses
  %wide.trip.count.i = and i64 %i.mj, 2147483647  ; 3 uses
  %min.iters.check253 = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check253, label %scalar.ph.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph.i
  %n.vec255 = and i64 %i.mj, 2147483640           ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next258, %vector.body256 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph254 ], [ %vec.ind.next, %vector.body256 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index257 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store <4 x i32> %vec.ind, ptr %i.mz, align 4, !tbaa !36
  store <4 x i32> %step.add, ptr %i.na, align 4, !tbaa !36
  %index.next258 = add nuw i64 %index257, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nb = icmp eq i64 %index.next258, %n.vec255
  br i1 %i.nb, label %middle.block259, label %vector.body256, !llvm.loop !447

middle.block259:                                  ; preds = %vector.body256
  %cmp.n260 = icmp eq i64 %wide.trip.count.i, %n.vec255
  br i1 %cmp.n260, label %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block259
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec255, %middle.block259 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i
  %i.nd = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.nd, ptr %i.nc, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit, label %scalar.ph, !llvm.loop !448

bb.eu:                                            ; preds = %bb.en, %bb.em
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.ez

bb.ev:                                            ; preds = %bb.er, %bb.ex, %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit, %bb.ew
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ew:                                            ; preds = %bb.ep
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit unwind label %bb.ev ; 0 uses

_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit: ; preds = %scalar.ph, %middle.block259, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %bb.ew
  %i.ni = load ptr, ptr %0, align 8, !tbaa !69
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 320
  %i.nk = load ptr, ptr %i.nj, align 8
  invoke void %i.nk(ptr noundef nonnull align 8 dereferenceable(560) %0)
          to label %bb.ex unwind label %bb.ev

bb.ex:                                            ; preds = %_ZN2cv2mlL14setRangeVectorERSt6vectorIiSaIiEEi.exit
  %i.nl = load ptr, ptr %0, align 8, !tbaa !69
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 296
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(236) %24)
          to label %bb.ey unwind label %bb.ev

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  ret void

bb.ez:                                            ; preds = %bb.eu, %bb.ev, %bb.bp, %bb.bq, %bb.bu, %bb.by, %bb.cy, %bb.df, %bb.dq, %_ZNSt6vectorIiSaIiEED2Ev.exit149, %bb.ej, %bb.ek, %bb.el, %bb.cr, %bb.cc, %bb.bo, %bb.bn, %.body125, %bb.ax, %bb.aw, %bb.av, %.body122, %.body115, %bb.as, %bb.ap, %bb.ao
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.ao ], [ %i.cc, %bb.bo ], [ %i.cb, %bb.bn ], [ %eh.lpad-body126, %.body125 ], [ %i.bu, %bb.ax ], [ %i.bt, %bb.aw ], [ %i.bs, %bb.av ], [ %eh.lpad-body123, %.body122 ], [ %eh.lpad-body116, %.body115 ], [ %.pn, %bb.as ], [ %i.bn, %bb.ap ], [ %.pn103.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit149 ], [ %i.cu, %bb.cc ], [ %i.lx, %bb.el ], [ %i.lw, %bb.ek ], [ %i.lv, %bb.ej ], [ %i.kd, %bb.dq ], [ %i.hc, %bb.df ], [ %i.cd, %bb.bp ], [ %i.ci, %bb.by ], [ %i.cg, %bb.bu ], [ %i.ce, %bb.bq ], [ %.pn92, %bb.cy ], [ %.pn95.pn.pn, %bb.cr ], [ %i.nf, %bb.ev ], [ %i.ne, %bb.eu ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %common.resume
}

declare void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv2ml10TreeParams10setCVFoldsEi(ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv2ml10TreeParams10setCVFoldsEi, ptr noundef nonnull @.str.70, i32 noundef 151) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !63
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn11 = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %1, 1
  br i1 %i.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv2ml10TreeParams10setCVFoldsEi, ptr noundef nonnull @.str.70, i32 noundef 155) #24
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.l:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.l
  %i.o = load i64, ptr %i.m, align 8, !tbaa !63
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.k
  %.pn = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.k, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.q, align 4, !tbaa !42
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cv2mlL15readVectorOrMatIiEEvRKNS_8FileNodeERSt6vectorIT_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::internal::VecReaderProxy.86", align 8 ; 4 uses
  %3 = alloca %"class.cv::FileNodeIterator", align 8 ; 4 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = tail call noundef i32 @_ZNK2cv8FileNode4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #23
  invoke void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.d:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 -2113732604, ptr %6, align 8, !tbaa !73
  store ptr %1, ptr %i.d, align 8, !tbaa !74
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.c, %bb.c ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK2cv8FileNode4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK2cv8FileNode5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNodeIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !245
  call void @_ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2147483647)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = load ptr, ptr %1, align 8, !tbaa !79     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.i = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !246

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.r, ptr %i.o, align 4, !tbaa !36
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !246

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !246

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !79
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !78 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !79
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !78
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
end_hunk_0
