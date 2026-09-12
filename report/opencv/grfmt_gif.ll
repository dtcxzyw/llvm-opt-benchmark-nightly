Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_gif?download=true
inline.NumInlined: 1655
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS1_RKS2_:bb.a
  %.015.i.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit ] ; 4 uses
  %.01114.i.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit ]
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = add nsw i64 %.01114.i.i.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !398

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #21 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %.015.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i.i.i) #21
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %.015.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread
  %i.q = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !88
  ret void

.body:                                            ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #22
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10GifEncoder13getColorTableERKSt6vectorINS_3MatESaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::GifEncoder::OctreeColorQuant", align 8 ; 5 uses
  %6 = alloca %"class.cv::GifEncoder::OctreeColorQuant", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 208
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv10GifEncoder13getColorTableERKSt6vectorINS_3MatESaIS2_EEb, ptr noundef nonnull @.str.4, i32 noundef 957) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !93
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.p = load i8, ptr %i.o, align 4, !tbaa !159, !range !110, !noundef !111
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.m

.thread:                                          ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.s = load i8, ptr %i.r, align 4, !tbaa !159, !range !110, !noundef !111
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %.thread31

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.w = load i32, ptr %i.v, align 8, !tbaa !171
  %i.x = mul nsw i32 %i.w, 3
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !76  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.y
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i64 %i.y, %i.ae
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.ag)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %i.ae, %i.y
  br i1 %i.ah, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.ai
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !75
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader

_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader:     ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !173
  %i.an = zext i8 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, 3
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ak, ptr %i.aq, align 1, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !93
  %i.at = load i8, ptr %i.al, align 1, !tbaa !173
  %i.au = zext i8 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 3
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.as, ptr %i.ay, align 1, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !93
  %i.bb = load i8, ptr %i.al, align 1, !tbaa !173
  %i.bc = zext i8 %i.bb to i64
  %i.bd = mul nuw nsw i64 %i.bc, 3
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.ba, ptr %i.bg, align 1, !tbaa !93
  br label %bb.v

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader ] ; 5 uses
  %i.bh = lshr i64 %indvars.iv, 5
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = mul nuw i8 %i.bi, 36
  %i.bk = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bj, ptr %i.bm, align 1, !tbaa !93
  %7 = lshr i64 %indvars.iv, 2
  %8 = trunc i64 %7 to i8
  %i.bn = and i8 %8, 7
  %i.bo = mul nuw i8 %i.bn, 36
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !93
  %9 = trunc i64 %indvars.iv to i8
  %i.bs = and i8 %9, 3
  %i.bt = mul nuw i8 %i.bs, 85
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bk
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.l, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, !llvm.loop !399

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !171
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !176
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !160
  call void @_ZN2cv10GifEncoder16OctreeColorQuantC2Eiih(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %i.by, i32 noundef %i.ca, i8 noundef zeroext %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ce = call noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv10GifEncoder16OctreeColorQuantaSEOS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.cd, ptr noundef nonnull align 8 dereferenceable(224) %5) #21 ; 0 uses
  call void @_ZN2cv10GifEncoder16OctreeColorQuantD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cf = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %.not8.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !181
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !182
  %i.cl = icmp slt i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.n, label %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.cf, %bb.m ] ; 2 uses
  call void @_ZN2cv10GifEncoder16OctreeColorQuant6addMatERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.cd, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.05.09.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 208 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, %i.cg
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i
  call void @_ZN2cv10GifEncoder16OctreeColorQuant10reduceTreeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.cd)
  br label %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit

_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit: ; preds = %._crit_edge.i, %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.co = load i32, ptr %i.bx, align 8, !tbaa !171
  %i.cp = mul nsw i32 %i.co, 3
  %i.cq = sext i32 %i.cp to i64                   ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !75 ; 2 uses
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !76 ; 5 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %i.cq
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit
  %i.cy = sub nuw i64 %i.cq, %i.cw
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.cy)
  %.pre34 = load ptr, ptr %i.cn, align 8, !tbaa !76
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit21

bb.p:                                             ; preds = %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit
  %i.cz = icmp ugt i64 %i.cw, %i.cq
  br i1 %i.cz, label %bb.q, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit21

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cs, %i.da
  br i1 %.not.i.i19, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit21, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i20

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i20:      ; preds = %bb.q
  store ptr %i.da, ptr %i.cr, align 8, !tbaa !75
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit21

_ZNSt6vectorIhSaIhEE6resizeEm.exit21:             ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i20
  %i.db = phi ptr [ %.pre34, %bb.o ], [ %i.ct, %bb.p ], [ %i.ct, %bb.q ], [ %i.ct, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i20 ]
  %i.dc = call noundef i32 @_ZN2cv10GifEncoder16OctreeColorQuant10getPaletteEPh(ptr noundef nonnull align 8 dereferenceable(224) %i.cd, ptr noundef %i.db) ; 0 uses
  br label %bb.v

.thread31:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !171
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !176
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !160
  call void @_ZN2cv10GifEncoder16OctreeColorQuantC2Eiih(ptr noundef nonnull align 8 dereferenceable(224) %6, i32 noundef %i.de, i32 noundef %i.dg, i8 noundef zeroext %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv10GifEncoder16OctreeColorQuantaSEOS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.dj, ptr noundef nonnull align 8 dereferenceable(224) %6) #21 ; 0 uses
  call void @_ZN2cv10GifEncoder16OctreeColorQuantD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.dl = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %.not8.i22 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not8.i22, label %._crit_edge.i26, label %.lr.ph.i23

._crit_edge.i26:                                  ; preds = %.lr.ph.i23, %.thread31
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !181
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !182
  %i.dr = icmp slt i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.r, label %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit27

.lr.ph.i23:                                       ; preds = %.thread31, %.lr.ph.i23
  %.sroa.05.09.i24 = phi ptr [ %i.ds, %.lr.ph.i23 ], [ %i.dl, %.thread31 ] ; 2 uses
  call void @_ZN2cv10GifEncoder16OctreeColorQuant6addMatERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.dj, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.05.09.i24)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i24, i64 208 ; 2 uses
  %.not.i25 = icmp eq ptr %i.ds, %i.dm
  br i1 %.not.i25, label %._crit_edge.i26, label %.lr.ph.i23

bb.r:                                             ; preds = %._crit_edge.i26
  call void @_ZN2cv10GifEncoder16OctreeColorQuant10reduceTreeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.dj)
  br label %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit27

_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit27: ; preds = %._crit_edge.i26, %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.du = load i32, ptr %i.dd, align 8, !tbaa !171
  %i.dv = mul nsw i32 %i.du, 3
  %i.dw = sext i32 %i.dv to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !75 ; 2 uses
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !76 ; 5 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %i.dw
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit27
  %i.ee = sub nuw i64 %i.dw, %i.ec
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef %i.ee)
  %.pre = load ptr, ptr %i.dt, align 8, !tbaa !76
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit30

bb.t:                                             ; preds = %_ZN2cv10GifEncoder16OctreeColorQuant7addMatsERKSt6vectorINS_3MatESaIS3_EE.exit27
  %i.ef = icmp ugt i64 %i.ec, %i.dw
  br i1 %i.ef, label %bb.u, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit30

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i28, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit30, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i29

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i29:      ; preds = %bb.u
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !75
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit30

_ZNSt6vectorIhSaIhEE6resizeEm.exit30:             ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i29
  %i.eh = phi ptr [ %.pre, %bb.s ], [ %i.dz, %bb.t ], [ %i.dz, %bb.u ], [ %i.dz, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i29 ]
  %i.ei = call noundef i32 @_ZN2cv10GifEncoder16OctreeColorQuant10getPaletteEPh(ptr noundef nonnull align 8 dereferenceable(224) %i.dj, ptr noundef %i.eh) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE6resizeEm.exit30, %_ZNSt6vectorIhSaIhEE6resizeEm.exit21, %bb.l
  ret void
}

declare noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10GifEncoder10pixel2codeERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::GifEncoder::OctreeColorQuant", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1) ; 2 uses
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !180  ; 5 uses
  %i.h = add nsw i32 %i.g, %i.e
  %i.i = icmp eq i32 %i.c, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.m = load i32, ptr %i.l, align 4, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 9 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179  ; 5 uses
  %i.p = add nsw i32 %i.o, %i.m
  %i.q = icmp eq i32 %i.k, %i.p
end_hunk_0
