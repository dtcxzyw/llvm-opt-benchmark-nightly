Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_detection_mtcnn?download=true
inline.NumInlined: 6844
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E4callERNS_11GCPUContextE:bb.a

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i
  %.val13.i.i.i = phi ptr [ %i.an, %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i ], [ %i.al, %_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i ]
  invoke fastcc void @_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEvEES9_NS7_IPKS2_S4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %.val13.i.i.i, ptr %i.l, ptr %i.p)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #36
  br label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i18.i.i.i, label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #36
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ao

_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.b = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail6get_inINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getERNS_11GCPUContextEi(ptr %.val.i, ptr %.val3.i, i32 noundef 0) ; 2 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZN2cv6detail6get_inINS_7GOpaqueINS_5Size_IiEEEEE3getERNS_11GCPUContextEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 1) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN2cv11GCPUContext9outVecRefEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail9VectorRef4wrefINS_5Rect_IiEEEERSt6vectorIT_SaIS6_EEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d) ; 4 uses
  %.val4.i = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val5.i = load ptr, ptr %i.f, align 8          ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !421  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !422  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %bb.a ], [ %i.g, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i ]
  %.not95.i.i.i = icmp eq ptr %.val4.i, %.val5.i
  br i1 %.not95.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.cm, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 6 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.cn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 7 uses
  %.sroa.091.096.i.i.i = phi ptr [ %.val4.i, %.lr.ph.i.i.i ], [ %i.co, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 4 uses
  %i.o = load i64, ptr %.sroa.091.096.i.i.i, align 4 ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 9 uses
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !272
  %i.u = sub nsw i32 %i.t, %i.p                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !273
  %i.x = sub nsw i32 %i.w, %i.r                   ; 3 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !211  ; 4 uses
  %i.z = sub nsw i32 %i.y, %i.p                   ; 4 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !210 ; 4 uses
  %i.ab = sub nsw i32 %i.aa, %i.r                 ; 2 uses
  %i.ac = icmp slt i32 %i.z, 1
  %i.ad = icmp slt i32 %i.ab, 1
  %i.ae = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %i.ae, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = icmp slt i32 %i.y, 1
  %i.ag = icmp slt i32 %i.aa, 1
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.p, i32 0) ; 2 uses
  %i.aj = icmp slt i32 %i.p, 0                    ; 3 uses
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0) ; 3 uses
  %i.al = add nsw i32 %i.z, %i.ai
  %i.am = icmp slt i32 %i.al, %i.ak
  %or.cond.i.i.i = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond.i.i.i, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %.cont35.i.i.i.i

.cont35.i.i.i.i:                                  ; preds = %bb.d
  %i.an = icmp slt i64 %i.o, 0                    ; 2 uses
  %spec.select92.i.i.i = select i1 %i.an, i32 0, i32 %i.r ; 2 uses
  %.v.v.i.i.i.i = select i1 %i.aj, i32 %i.z, i32 %i.y
  %.v.i.i.i.i = sub i32 %i.ai, %i.ak
  %i.ao = add i32 %.v.i.i.i.i, %.v.v.i.i.i.i
  %i.ap = select i1 %i.aj, i32 %i.y, i32 %i.z
  %.sroa.speculated53.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ao) ; 2 uses
  %i.aq = sub nsw i32 %i.aa, %spec.select92.i.i.i
  %i.ar = select i1 %i.an, i32 %i.aa, i32 %i.ab
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq) ; 2 uses
  %i.as = icmp slt i32 %.sroa.speculated53.i.i.i.i.i, 1
  %i.at = icmp slt i32 %.sroa.speculated.i.i.i.i.i, 1
  %i.au = select i1 %i.as, i1 true, i1 %i.at
  br i1 %i.au, label %bb.e, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i

bb.e:                                             ; preds = %.cont35.i.i.i.i
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i:    ; preds = %bb.e, %.cont35.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.sroa.0.0.i.i.i.i = phi i32 [ %i.ak, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.sroa.9.0.i.i.i.i = phi i32 [ %spec.select92.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %.sroa.14.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.speculated53.i.i.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %.sroa.14.sroa.12.0.i.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.av = icmp slt i32 %i.u, 1
  %i.aw = icmp slt i32 %i.x, 1
  %i.ax = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %i.ax, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i
  %i.ay = icmp eq i32 %.sroa.14.sroa.0.0.i.i.i.i, 0
  %i.az = icmp eq i32 %.sroa.14.sroa.12.0.i.i.i.i, 0
  %i.ba = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %i.ba, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp sgt i32 %.sroa.0.sroa.0.0.i.i.i.i, %i.p ; 3 uses
  %i.bc = icmp sgt i32 %.sroa.0.sroa.9.0.i.i.i.i, %i.r ; 2 uses
  %i.bd = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %.sroa.0.sroa.0.0.i.i.i.i) ; 2 uses
  %i.be = icmp slt i32 %i.p, 0
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %.sroa.0.sroa.0.0.i.i.i.i) ; 3 uses
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.speculated37.i.i.i = select i1 %i.bb, i32 %i.u, i32 %.sroa.14.sroa.0.0.i.i.i.i
  %i.bg = add nsw i32 %.sroa.speculated37.i.i.i, %i.bd
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.speculated50.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r) ; 3 uses
  %i.bi = icmp slt i32 %.sroa.speculated50.i.i.i, 0
  %.sroa.speculated31.i.i.i = select i1 %i.bc, i32 %i.x, i32 %.sroa.14.sroa.12.0.i.i.i.i ; 2 uses
  br i1 %i.bi, label %bb.j, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i
  %.pre59.i.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r)
  %.pre60.i.i.i.i = add nuw i32 %.sroa.speculated31.i.i.i, %.sroa.speculated50.i.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = add nsw i32 %.sroa.speculated31.i.i.i, %.sroa.speculated50.i.i.i ; 2 uses
  %.sroa.speculated47.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r) ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %.sroa.speculated47.i.i.i
  br i1 %i.bk, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.neg49.pre-phi.i.i.i.i = phi i32 [ %.pre60.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bj, %bb.j ]
  %i.bl = phi i32 [ %.pre59.i.sroa.speculated.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.speculated47.i.i.i, %bb.j ] ; 2 uses
  %.sroa.speculated40.i.i.i = select i1 %i.bb, i32 %i.u, i32 %.sroa.14.sroa.0.0.i.i.i.i
  %.neg.i.i.i.i = sub i32 %i.bd, %i.bf
  %i.bm = add i32 %.neg.i.i.i.i, %.sroa.speculated40.i.i.i
  %.sroa.speculated34.i.i.i = select i1 %i.bb, i32 %.sroa.14.sroa.0.0.i.i.i.i, i32 %i.u
  %.sroa.speculated53.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated34.i.i.i, i32 %i.bm) ; 2 uses
  %.sroa.17.8.insert.ext.i.i.i = zext nneg i32 %.sroa.speculated53.i.i.i.i to i64
  %i.bn = sub i32 %.neg49.pre-phi.i.i.i.i, %i.bl
  %.sroa.speculated.i.i.i = select i1 %i.bc, i32 %.sroa.14.sroa.12.0.i.i.i.i, i32 %i.x
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i.i.i, i32 %i.bn) ; 2 uses
  %.sroa.17.12.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i.i to i64
  %.sroa.17.12.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.17.12.insert.ext.i.i.i, 32
  %.sroa.17.12.insert.insert.i.i.i = or disjoint i64 %.sroa.17.12.insert.shift.i.i.i, %.sroa.17.8.insert.ext.i.i.i
  %i.bo = icmp slt i32 %.sroa.speculated53.i.i.i.i, 1
  %i.bp = icmp slt i32 %.sroa.speculated.i.i.i.i, 1
  %i.bq = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  br label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i:   ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.f, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i
  %.sroa.054.sroa.0.0.i.i.i = phi i32 [ %i.bf, %bb.k ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.sroa.054.sroa.11.0.i.i.i = phi i32 [ %i.bl, %bb.k ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.sroa.17.0.i.i.i = phi i64 [ %.sroa.17.12.insert.insert.i.i.i, %bb.k ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !426
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.br
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i
  %.sroa.054.sroa.11.0.insert.ext.i.i.i = zext i32 %.sroa.054.sroa.11.0.i.i.i to i64
  %.sroa.054.sroa.11.0.insert.shift.i.i.i = shl nuw i64 %.sroa.054.sroa.11.0.insert.ext.i.i.i, 32
  %.sroa.054.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %.sroa.054.sroa.0.0.i.i.i to i64
  %.sroa.054.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.054.sroa.11.0.insert.shift.i.i.i, %.sroa.054.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.054.sroa.0.0.insert.insert.i.i.i, ptr %i.n, align 4, !tbaa !81
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.17.0.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i, align 4, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i

bb.n:                                             ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i
  %i.bt = ptrtoint ptr %i.n to i64
  %i.bu = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %bb.o, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bx = ashr exact i64 %i.bv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #37 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %.sroa.054.sroa.11.0.insert.ext77.i.i.i = zext i32 %.sroa.054.sroa.11.0.i.i.i to i64
  %.sroa.054.sroa.11.0.insert.shift78.i.i.i = shl nuw i64 %.sroa.054.sroa.11.0.insert.ext77.i.i.i, 32
  %.sroa.054.sroa.0.0.insert.ext74.i.i.i = zext nneg i32 %.sroa.054.sroa.0.0.i.i.i to i64
  %.sroa.054.sroa.0.0.insert.insert76.i.i.i = or disjoint i64 %.sroa.054.sroa.11.0.insert.shift78.i.i.i, %.sroa.054.sroa.0.0.insert.ext74.i.i.i
  store i64 %.sroa.054.sroa.0.0.insert.insert76.i.i.i, ptr %i.ce, align 4, !tbaa !81
  %.sroa.17.0..sroa_idx60.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.17.0.i.i.i, ptr %.sroa.17.0..sroa_idx60.i.i.i, align 4, !tbaa !81
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cd, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !279, !alias.scope !1412
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1411

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !426
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ck) #36
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !421
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !422
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.cl, ptr %i.l, align 8, !tbaa !426
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.m
  %i.cm = phi ptr [ %i.m, %bb.m ], [ %i.cd, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.cn = phi ptr [ %i.bs, %bb.m ], [ %i.ch, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 76 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, %.val5.i
  br i1 %.not.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit, label %bb.b

_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN2cv6detail6get_inINS_7GOpaqueINS_5Size_IiEEEEE3getERNS_11GCPUContextEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.73, i64 noundef %i.a, i64 noundef %i.h) #34
  unreachable

_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !130  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_6detail9OpaqueRefEEE, i64 0) #35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit

_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i, %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !92
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %common.resume

_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit: ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1415 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1417
  switch i64 %i.r, label %bb.e [
    i64 1, label %_ZN2cv4util3getIPKNS_5Size_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
    i64 2, label %_ZN2cv4util3getIPNS_5Size_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
    i64 3, label %_ZN2cv4util3getINS_5Size_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
  ]

_ZN2cv4util3getIPKNS_5Size_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1419
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Size_IiEEEERKT_v.exit

_ZN2cv4util3getIPNS_5Size_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1419
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Size_IiEEEERKT_v.exit

_ZN2cv4util3getINS_5Size_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i: ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %_ZNK2cv6detail9OpaqueRef4rrefINS_5Size_IiEEEERKT_v.exit

bb.e:                                             ; preds = %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.66)
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #34
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %common.resume

_ZNK2cv6detail9OpaqueRef4rrefINS_5Size_IiEEEERKT_v.exit: ; preds = %_ZN2cv4util3getIPKNS_5Size_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i, %_ZN2cv4util3getIPNS_5Size_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i, %_ZN2cv4util3getINS_5Size_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i
  %.0.i.i = phi ptr [ %i.t, %_ZN2cv4util3getIPKNS_5Size_IiEEJNS0_9monostateES5_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ], [ %i.v, %_ZN2cv4util3getIPNS_5Size_IiEEJNS0_9monostateEPKS3_S4_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ], [ %i.w, %_ZN2cv4util3getINS_5Size_IiEEJNS0_9monostateEPKS3_PS3_S3_EEERKT_RKNS0_7variantIJDpT0_EEE.exit.i.i ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail9VectorRef4wrefINS_5Rect_IiEEEERSt6vectorIT_SaIS6_EEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !248
  %i.d = icmp eq i64 %i.c, 16
  br i1 %i.d, label %_ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv6detail9VectorRef5checkIN6custom12_GLOBAL__N_14FaceEEEvv, ptr noundef nonnull @.str.64, i32 noundef 244) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !73
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %common.resume

_ZNK2cv6detail9VectorRef5checkINS_5Rect_IiEEEEvv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !418
  switch i64 %i.l, label %bb.e [
    i64 2, label %_ZN2cv4util3getIPSt6vectorINS_5Rect_IiEESaIS4_EEJNS0_9monostateEPKS6_S7_S6_EEERT_RNS0_7variantIJDpT0_EEE.exit.i
    i64 3, label %_ZN2cv4util3getISt6vectorINS_5Rect_IiEESaIS4_EEJNS0_9monostateEPKS6_PS6_S6_EEERT_RNS0_7variantIJDpT0_EEE.exit.i
  ]

end_hunk_0
