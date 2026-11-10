Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/equality_engine?download=true
inline.NumInlined: 6224
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal6theory2eq14EqualityEngine17newTriggerTermSetEjPjj:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !179
  %i.r = zext i32 %i.o to i64
  %i.s = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %i.r) #38
  store ptr %i.s, ptr %i.p, align 8, !tbaa !179
  %.pre = load i32, ptr %i.g, align 8, !tbaa !200
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.u = trunc i64 %i.e to i32
  %i.v = add i32 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !222
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !223
  %i.ad = icmp eq ptr %i.x, %i.ac
  br i1 %i.ad, label %_ZN4cvc57context3CDOIjEaSERKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(44) %i.f)
  br label %_ZN4cvc57context3CDOIjEaSERKj.exit

_ZN4cvc57context3CDOIjEaSERKj.exit:               ; preds = %bb.c, %bb.d
  store i32 %i.v, ptr %i.g, align 8, !tbaa !224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179 ; 2 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = zext i32 %i.t to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 2 uses
  store i32 %1, ptr %i.ai, align 4, !tbaa !226
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc57context3CDOIjEaSERKj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 6 uses
  %min.iters.check = icmp ult i32 %3, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ak = add i64 %i.ag, %i.ah
  %i.al = sub i64 %i.ak, %i.a
  %i.am = add i64 %i.al, 3
  %diff.check = icmp ult i64 %i.am, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !200
  %wide.load17 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !200
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !200
  store <4 x i32> %wide.load17, ptr %i.aq, align 4, !tbaa !200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.at = load i32, ptr %i.as, align 4, !tbaa !200
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.prol
  store i32 %i.at, ptr %i.au, align 4, !tbaa !200
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !517

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.av = sub nsw i64 %indvars.iv.ph, %i.b
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4cvc57context3CDOIjEaSERKj.exit
  ret i32 %i.t

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !200
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !200
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !200
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !200
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !200
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !200
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !200
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !200
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !518
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine9propagateEv(ptr noundef nonnull align 8 dereferenceable(1784) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::theory::eq::EqualityEngine::EqualityEdge", align 8 ; 8 uses
  %2 = alloca %"class.cvc5::internal::theory::eq::EqualityEngine::EqualityEdge", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %5 = alloca %"class.std::vector.68", align 8    ; 10 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !286, !range !195, !noundef !184
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.co, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.backedge, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !297 ; 2 uses
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !297 ; 8 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !328
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !328
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.cn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = load i8, ptr %i.i, align 8, !tbaa !51, !range !195, !noundef !184
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.preheader, label %bb.j

.thread:                                          ; preds = %bb.b
  %i.bj = load i8, ptr %i.i, align 8, !tbaa !51, !range !195, !noundef !184
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.lr.ph574.preheader, label %bb.j

.lr.ph574.preheader:                              ; preds = %.thread
  %.pre609 = load ptr, ptr %i.j, align 8, !tbaa !329
  br label %.lr.ph574

.preheader:                                       ; preds = %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit, %bb.d
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !328 ; 2 uses
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !328 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %.backedge.backedge, label %.lr.ph575

.lr.ph575:                                        ; preds = %.preheader
  %.pre611 = load ptr, ptr %i.ay, align 8, !tbaa !330
  br label %bb.g, !llvm.loop !519

.lr.ph574:                                        ; preds = %.lr.ph574.preheader, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit
  %i.bo = phi ptr [ %i.by, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ], [ %i.bb, %.lr.ph574.preheader ]
  %i.bp = phi ptr [ %i.bz, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ], [ %.pre609, %.lr.ph574.preheader ] ; 2 uses
  %i.bq = phi ptr [ %storemerge.i, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ], [ %i.bc, %.lr.ph574.preheader ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -24
  %.not.i121 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i121, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph574
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

bb.f:                                             ; preds = %.lr.ph574
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !295
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef 504) #34
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !296
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !239 ; 3 uses
  store ptr %i.bw, ptr %i.k, align 8, !tbaa !298
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 504 ; 2 uses
  store ptr %i.bx, ptr %i.j, align 8, !tbaa !299
  %.pre610 = load ptr, ptr %i.d, align 8, !tbaa !297
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit: ; preds = %bb.e, %bb.f
  %i.by = phi ptr [ %i.bo, %bb.e ], [ %.pre610, %bb.f ] ; 2 uses
  %i.bz = phi ptr [ %i.bp, %bb.e ], [ %i.bx, %bb.f ]
  %storemerge.i = phi ptr [ %i.bs, %bb.e ], [ %i.bw, %bb.f ] ; 3 uses
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !294
  %i.ca = icmp eq ptr %i.by, %storemerge.i
  br i1 %i.ca, label %.preheader, label %.lr.ph574, !llvm.loop !520

bb.g:                                             ; preds = %.lr.ph575, %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit
  %i.cb = phi ptr [ %i.bl, %.lr.ph575 ], [ %i.cl, %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit ]
  %i.cc = phi ptr [ %.pre611, %.lr.ph575 ], [ %i.cm, %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit ] ; 2 uses
  %i.cd = phi ptr [ %i.bm, %.lr.ph575 ], [ %storemerge.i.i, %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %.not.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  br label %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit

bb.i:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !331
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef 512) #34
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.ba, align 8, !tbaa !332
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !245 ; 3 uses
  store ptr %i.cj, ptr %i.az, align 8, !tbaa !333
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 512 ; 2 uses
  store ptr %i.ck, ptr %i.ay, align 8, !tbaa !334
  %.pre612 = load ptr, ptr %i.f, align 8, !tbaa !328
  br label %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit

_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit:        ; preds = %bb.h, %bb.i
  %i.cl = phi ptr [ %i.cb, %bb.h ], [ %.pre612, %bb.i ] ; 2 uses
  %i.cm = phi ptr [ %i.cc, %bb.h ], [ %i.ck, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cj, %bb.i ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.g, align 8, !tbaa !335
  %i.cn = icmp eq ptr %i.cl, %storemerge.i.i
  br i1 %i.cn, label %.backedge.backedge, label %bb.g, !llvm.loop !521

bb.j:                                             ; preds = %.thread, %bb.d
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !328
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !328
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal6theory2eq14EqualityEngine22processEvaluationQueueEv(ptr noundef nonnull align 8 dereferenceable(1784) %0)
          to label %.backedge.backedge unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %.sroa.0514.0.copyload = load i32, ptr %i.bc, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !181 ; 4 uses
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !329
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %.not.i122 = icmp eq ptr %i.bc, %i.cu
  br i1 %.not.i122, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit124

bb.n:                                             ; preds = %bb.l
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !295
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef 504) #34
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.l, align 8, !tbaa !296
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !239 ; 3 uses
  store ptr %i.cz, ptr %i.k, align 8, !tbaa !298
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 504
  store ptr %i.da, ptr %i.j, align 8, !tbaa !299
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit124

_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit124: ; preds = %bb.m, %bb.n
  %storemerge.i123 = phi ptr [ %i.cv, %bb.m ], [ %i.cz, %bb.n ]
  store ptr %storemerge.i123, ptr %i.e, align 8, !tbaa !294
  %i.db = zext i32 %.sroa.0514.0.copyload to i64  ; 3 uses
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !201 ; 4 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !203 ; 3 uses
  %i.dg = zext i32 %.sroa.8.0.copyload to i64     ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !203 ; 3 uses
  %i.dk = icmp eq i32 %i.df, %i.dj
  br i1 %i.dk, label %.backedge.backedge, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158

.backedge.backedge:                               ; preds = %_ZNSt5queueIjSt5dequeIjSaIjEEE3popEv.exit, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit124, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ae, %.preheader, %bb.k
  br label %bb.b

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158: ; preds = %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit124
  %i.dl = zext i32 %i.df to i64                   ; 8 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dl ; 3 uses
  %i.dn = zext i32 %i.dj to i64                   ; 9 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dn ; 3 uses
  %i.dp = load ptr, ptr %i.o, align 8, !tbaa !336 ; 5 uses
  %i.dq = load ptr, ptr %i.n, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !199
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.db
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !200
  store i32 %.sroa.8.0.copyload, ptr %1, align 8, !tbaa !338
  store i32 %i.dt, ptr %i.q, align 4, !tbaa !339
  store i32 %.sroa.12.0.copyload, ptr %i.r, align 8, !tbaa !340
  store ptr %i.cs, ptr %i.s, align 8, !tbaa !181
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !253
  %.not.i.i.i = icmp eq ptr %i.dp, %i.du
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 12, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.cs, ptr %i.dv, align 8, !tbaa !181
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !336
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  store ptr %i.dx, ptr %i.o, align 8, !tbaa !336
  br label %bb.q

bb.p:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158
  invoke void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc159 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !336
  br label %bb.q

bb.q:                                             ; preds = %.noexc159, %bb.o
  %i.dy = phi ptr [ %.pre.i, %.noexc159 ], [ %i.dx, %bb.o ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !199
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dg
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !200
  store i32 %.sroa.0514.0.copyload, ptr %2, align 8, !tbaa !338
  store i32 %i.eb, ptr %i.u, align 4, !tbaa !339
  store i32 %.sroa.12.0.copyload, ptr %i.v, align 8, !tbaa !340
  store ptr %i.cs, ptr %i.w, align 8, !tbaa !181
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !253
  %.not.i.i70.i = icmp eq ptr %i.dy, %i.ec
  br i1 %.not.i.i70.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.cs, ptr %i.ed, align 8, !tbaa !181
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !336
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.ef, ptr %i.o, align 8, !tbaa !336
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.t unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.eg = ptrtoint ptr %i.dp to i64
  %i.eh = ptrtoint ptr %i.dq to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 24
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !199 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.db
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !200
  %i.en = or i32 %i.ek, 1
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.dg
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !200
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !197 ; 3 uses
  %i.eq = lshr i32 %i.df, 6
  %.zext = zext nneg i32 %i.eq to i64             ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.zext
  %i.es = and i64 %i.dl, 63
  %i.et = shl nuw i64 1, %i.es                    ; 3 uses
  %i.eu = load i64, ptr %i.er, align 8, !tbaa !198
  %i.ev = and i64 %i.eu, %i.et
  %i.ew = icmp ne i64 %i.ev, 0                    ; 2 uses
  %i.ex = lshr i32 %i.dj, 6
  %.zext533 = zext nneg i32 %i.ex to i64          ; 4 uses
  br i1 %i.ew, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre617 = and i64 %i.dn, 63
  %.pre619 = shl nuw i64 1, %.pre617
  br label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.zext533
  %i.ez = and i64 %i.dn, 63
  %i.fa = shl nuw i64 1, %i.ez                    ; 2 uses
  %i.fb = load i64, ptr %i.ey, align 8, !tbaa !198
  %i.fc = and i64 %i.fb, %i.fa
  %.not536 = icmp eq i64 %i.fc, 0
  br i1 %.not536, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %i.y, align 8, !tbaa !213 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !220
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !222
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !223
  %i.fj = icmp eq ptr %i.fd, %i.fi
  br i1 %i.fj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.h)
          to label %bb.x unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v, %bb.w
  store i8 1, ptr %i.i, align 8, !tbaa !283
  %i.fk = load ptr, ptr %i.aa, align 8, !tbaa !341 ; 6 uses
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !255
  %.not.i.i170 = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i170, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 -1, ptr %i.fk, align 4, !tbaa !200
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fm, ptr %i.aa, align 8, !tbaa !341
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !254 ; 7 uses
  %i.fo = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64               ; 4 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.aa, label %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #33
          to label %.noexc171 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc171:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.fs = ashr exact i64 %i.fq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 1152921504606846975)
  %i.fw = select i1 %i.fu, i64 1152921504606846975, i64 %i.fv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 3
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #37
          to label %.noexc172 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq
  store i64 -1, ptr %i.fz, align 4, !tbaa !200
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fn, %i.fk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc172
  %i.ga = ptrtoaddr ptr %i.fy to i64
  %i.gb = add i64 %i.fo, -8
  %i.gc = sub i64 %i.gb, %i.fp                    ; 2 uses
  %i.gd = lshr i64 %i.gc, 3
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check752 = icmp ult i64 %i.gc, 24
  %i.gf = sub i64 %i.fp, %i.ga
  %diff.check754 = icmp ugt i64 %i.gf, -32
  %or.cond = or i1 %min.iters.check752, %diff.check754
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader780, label %vector.ph755

vector.ph755:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec756 = and i64 %i.ge, 4611686018427387900  ; 3 uses
  %i.gg = shl i64 %n.vec756, 3                    ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fy, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fn, i64 %i.gg
  br label %vector.body757

vector.body757:                                   ; preds = %vector.body757, %vector.ph755
  %index758 = phi i64 [ 0, %vector.ph755 ], [ %index.next763, %vector.body757 ] ; 2 uses
  %i.gj = shl i64 %index758, 3                    ; 2 uses
  %next.gep759 = getelementptr i8, ptr %i.fy, i64 %i.gj ; 2 uses
  %next.gep760 = getelementptr i8, ptr %i.fn, i64 %i.gj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.gk = getelementptr i8, ptr %next.gep760, i64 16
  %wide.load761 = load <2 x i64>, ptr %next.gep760, align 4, !tbaa !200, !alias.scope !550
  %wide.load762 = load <2 x i64>, ptr %i.gk, align 4, !tbaa !200, !alias.scope !550
  %i.gl = getelementptr i8, ptr %next.gep759, i64 16
  store <2 x i64> %wide.load761, ptr %next.gep759, align 4, !tbaa !200, !alias.scope !549
  store <2 x i64> %wide.load762, ptr %i.gl, align 4, !tbaa !200, !alias.scope !549
  %index.next763 = add nuw i64 %index758, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next763, %n.vec756
  br i1 %i.gm, label %middle.block764, label %vector.body757, !llvm.loop !525

middle.block764:                                  ; preds = %vector.body757
  %cmp.n765 = icmp eq i64 %i.ge, %n.vec756
  br i1 %cmp.n765, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader780

.lr.ph.i.i.i.i.i.i.preheader780:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block764
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gh, %middle.block764 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gi, %middle.block764 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader780, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader780 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader780 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.gn = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !200, !alias.scope !550
  store i64 %i.gn, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !200, !alias.scope !549
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.go, %i.fk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !526

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block764, %.noexc172
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fy, %.noexc172 ], [ %i.gh, %middle.block764 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.gr = load ptr, ptr %i.ab, align 8, !tbaa !255
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.gt) #34
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fy, ptr %i.z, align 8, !tbaa !254
  store ptr %i.gq, ptr %i.aa, align 8, !tbaa !341
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gu, ptr %i.ab, align 8, !tbaa !255
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.gv = load i32, ptr %i.ac, align 8, !tbaa !200
  %i.gw = add i32 %i.gv, 1
  %i.gx = load ptr, ptr %i.ad, align 8, !tbaa !213 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !220
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !222
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !223
  %i.hd = icmp eq ptr %i.gx, %i.hc
  br i1 %i.hd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ae)
          to label %bb.ae unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  store i32 %i.gw, ptr %i.ac, align 8, !tbaa !224
  %i.he = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  %i.hf = load ptr, ptr %i.ag, align 8, !tbaa !261 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.dl
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54
  store ptr %i.hh, ptr %3, align 8, !tbaa !181
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.dn
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !54
  store ptr %i.hj, ptr %4, align 8, !tbaa !181
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !206
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %.backedge.backedge unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.w, %bb.k, %bb.s, %bb.p, %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ae, %bb.aa
  %lpad.loopexit.split-lp782 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp553

bb.af:                                            ; preds = %._crit_edge, %bb.u
  %.pre-phi620 = phi i64 [ %.pre619, %._crit_edge ], [ %i.fa, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.hn = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.zext533
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !198
  %i.hq = and i64 %i.hp, %.pre-phi620
  %i.hr = icmp ne i64 %i.hq, 0
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.zext
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !198
  %i.hu = and i64 %i.ht, %i.et
  %i.hv = icmp ne i64 %i.hu, 0                    ; 2 uses
  %i.hw = xor i1 %i.hr, %i.hv
  br i1 %i.hw, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.zext533
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !198
  %i.hz = and i64 %i.hy, %.pre-phi620
  %i.ia = icmp ne i64 %i.hz, 0                    ; 2 uses
  %i.ib = xor i1 %i.ew, %i.ia
  br i1 %i.ib, label %bb.ah, label %.split

.split:                                           ; preds = %bb.ag
  %i.ic = load i32, ptr %i.do, align 4, !tbaa !342
  %i.id = load i32, ptr %i.dm, align 4, !tbaa !342
  %i.ie = icmp ugt i32 %i.ic, %i.id
  br i1 %i.ie, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit291

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.065 = phi i1 [ %i.hv, %bb.af ], [ %i.ia, %bb.ag ]
  br i1 %.065, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit291

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232: ; preds = %.split, %bb.ah
  %i.if = load ptr, ptr %i.aa, align 8, !tbaa !341 ; 6 uses
  %i.ig = load ptr, ptr %i.ab, align 8, !tbaa !255
  %.not.i.i233 = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i.i233, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232
  %.sroa.6471.0.insert.shift = shl nuw i64 %i.dl, 32
  %.sroa.0466.0.insert.insert = or disjoint i64 %.sroa.6471.0.insert.shift, %i.dn
  store i64 %.sroa.0466.0.insert.insert, ptr %i.if, align 4, !tbaa !200
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.ih, ptr %i.aa, align 8, !tbaa !341
  br label %bb.al

bb.aj:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232
  %i.ii = load ptr, ptr %i.z, align 8, !tbaa !254 ; 7 uses
  %i.ij = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 4 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 3 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775800
  br i1 %i.im, label %.invoke, label %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i234

.invoke:                                          ; preds = %bb.ar, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i234: ; preds = %bb.aj
  %i.in = ashr exact i64 %i.il, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i235 = call i64 @llvm.umax.i64(i64 %i.in, i64 1)
  %i.io = add nsw i64 %.sroa.speculated.i.i.i.i235, %i.in ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.in
  %i.iq = call i64 @llvm.umin.i64(i64 %i.io, i64 1152921504606846975)
  %i.ir = select i1 %i.ip, i64 1152921504606846975, i64 %i.iq ; 3 uses
  %.not.i.i.i.i236 = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %.not.i.i.i.i236)
  %i.is = shl nuw nsw i64 %i.ir, 3
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #37
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc247:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i234
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.il
  %.sroa.6471.0.insert.shift474 = shl nuw i64 %i.dl, 32
  %.sroa.0466.0.insert.insert470 = or disjoint i64 %.sroa.6471.0.insert.shift474, %i.dn
  store i64 %.sroa.0466.0.insert.insert470, ptr %i.iu, align 4, !tbaa !200
  %.not10.i.i.i.i.i.i237 = icmp eq ptr %i.ii, %i.if
  br i1 %.not10.i.i.i.i.i.i237, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242, label %.lr.ph.i.i.i.i.i.i238.preheader

.lr.ph.i.i.i.i.i.i238.preheader:                  ; preds = %.noexc247
  %i.iv = ptrtoaddr ptr %i.it to i64
  %i.iw = add i64 %i.ij, -8
  %i.ix = sub i64 %i.iw, %i.ik                    ; 2 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check714 = icmp ult i64 %i.ix, 24
  %i.ja = sub i64 %i.ik, %i.iv
  %diff.check716 = icmp ugt i64 %i.ja, -32
  %or.cond768 = or i1 %min.iters.check714, %diff.check716
  br i1 %or.cond768, label %.lr.ph.i.i.i.i.i.i238.preheader778, label %vector.ph717

vector.ph717:                                     ; preds = %.lr.ph.i.i.i.i.i.i238.preheader
  %n.vec718 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.jb = shl i64 %n.vec718, 3                    ; 2 uses
  %i.jc = getelementptr i8, ptr %i.it, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jb
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph717
  %index720 = phi i64 [ 0, %vector.ph717 ], [ %index.next725, %vector.body719 ] ; 2 uses
  %i.je = shl i64 %index720, 3                    ; 2 uses
  %next.gep721 = getelementptr i8, ptr %i.it, i64 %i.je ; 2 uses
  %next.gep722 = getelementptr i8, ptr %i.ii, i64 %i.je ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.jf = getelementptr i8, ptr %next.gep722, i64 16
  %wide.load723 = load <2 x i64>, ptr %next.gep722, align 4, !tbaa !200, !alias.scope !552
  %wide.load724 = load <2 x i64>, ptr %i.jf, align 4, !tbaa !200, !alias.scope !552
  %i.jg = getelementptr i8, ptr %next.gep721, i64 16
  store <2 x i64> %wide.load723, ptr %next.gep721, align 4, !tbaa !200, !alias.scope !551
  store <2 x i64> %wide.load724, ptr %i.jg, align 4, !tbaa !200, !alias.scope !551
  %index.next725 = add nuw i64 %index720, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next725, %n.vec718
  br i1 %i.jh, label %middle.block726, label %vector.body719, !llvm.loop !530

middle.block726:                                  ; preds = %vector.body719
  %cmp.n727 = icmp eq i64 %i.iz, %n.vec718
  br i1 %cmp.n727, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242, label %.lr.ph.i.i.i.i.i.i238.preheader778

.lr.ph.i.i.i.i.i.i238.preheader778:               ; preds = %.lr.ph.i.i.i.i.i.i238.preheader, %middle.block726
  %.012.i.i.i.i.i.i239.ph = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i238.preheader ], [ %i.jc, %middle.block726 ]
  %.0911.i.i.i.i.i.i240.ph = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i238.preheader ], [ %i.jd, %middle.block726 ]
  br label %.lr.ph.i.i.i.i.i.i238

.lr.ph.i.i.i.i.i.i238:                            ; preds = %.lr.ph.i.i.i.i.i.i238.preheader778, %.lr.ph.i.i.i.i.i.i238
  %.012.i.i.i.i.i.i239 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i238 ], [ %.012.i.i.i.i.i.i239.ph, %.lr.ph.i.i.i.i.i.i238.preheader778 ] ; 2 uses
  %.0911.i.i.i.i.i.i240 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i238 ], [ %.0911.i.i.i.i.i.i240.ph, %.lr.ph.i.i.i.i.i.i238.preheader778 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.ji = load i64, ptr %.0911.i.i.i.i.i.i240, align 4, !tbaa !200, !alias.scope !552
  store i64 %i.ji, ptr %.012.i.i.i.i.i.i239, align 4, !tbaa !200, !alias.scope !551
  %i.jj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i240, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i239, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i241 = icmp eq ptr %i.jj, %i.if
  br i1 %.not.i.i.i.i.i.i241, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242, label %.lr.ph.i.i.i.i.i.i238, !llvm.loop !531

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242: ; preds = %.lr.ph.i.i.i.i.i.i238, %middle.block726, %.noexc247
  %.0.lcssa.i.i.i.i.i.i243 = phi ptr [ %i.it, %.noexc247 ], [ %i.jc, %middle.block726 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i238 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i243, i64 8
  %.not.i23.i.i.i244 = icmp eq ptr %i.ii, null
  br i1 %.not.i23.i.i.i244, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i245, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242
  %i.jm = load ptr, ptr %i.ab, align 8, !tbaa !255
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jn, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.jo) #34
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i245

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i245: ; preds = %bb.ak, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i242
  store ptr %i.it, ptr %i.z, align 8, !tbaa !254
  store ptr %i.jl, ptr %i.aa, align 8, !tbaa !341
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.ir
  store ptr %i.jp, ptr %i.ab, align 8, !tbaa !255
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i245
  %i.jq = load i32, ptr %i.ac, align 8, !tbaa !200
  %i.jr = add i32 %i.jq, 1
  %i.js = load ptr, ptr %i.ad, align 8, !tbaa !213 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !220
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !222
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !223
  %i.jy = icmp eq ptr %i.js, %i.jx
  br i1 %i.jy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ae)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.al, %bb.am
  store i32 %i.jr, ptr %i.ac, align 8, !tbaa !224
  %i.jz = invoke noundef zeroext i1 @_ZN4cvc58internal6theory2eq14EqualityEngine5mergeERNS2_12EqualityNodeES5_RSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.an
  br i1 %i.jz, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ka = load ptr, ptr %i.y, align 8, !tbaa !213 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !220
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !222
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !223
  %i.kg = icmp eq ptr %i.ka, %i.kf
  br i1 %i.kg, label %.sink.split, label %.invoke686
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2eq14EqualityEngine9propagateEv:bb.a
  %i.vs = sub i64 %i.vr, %i.vf                    ; 2 uses
  %i.vt = lshr i64 %i.vs, 3
  %i.vu = add nuw nsw i64 %i.vt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.vs, 24
  %i.vv = sub i64 %i.vf, %i.vq
  %diff.check = icmp ugt i64 %i.vv, -32
  %or.cond770 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond770, label %.lr.ph.i.i.i.i.i.i362.preheader771, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i362.preheader
  %n.vec = and i64 %i.vu, 4611686018427387900     ; 3 uses
  %i.vw = shl i64 %n.vec, 3                       ; 2 uses
  %i.vx = getelementptr i8, ptr %i.vo, i64 %i.vw  ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vd, i64 %i.vw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vo, i64 %i.vz ; 2 uses
  %next.gep708 = getelementptr i8, ptr %i.vd, i64 %i.vz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.wa = getelementptr i8, ptr %next.gep708, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep708, align 4, !alias.scope !559
  %wide.load709 = load <2 x i64>, ptr %i.wa, align 4, !alias.scope !559
  %i.wb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !558
  store <2 x i64> %wide.load709, ptr %i.wb, align 4, !alias.scope !558
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wc = icmp eq i64 %index.next, %n.vec
  br i1 %i.wc, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i362.preheader771

.lr.ph.i.i.i.i.i.i362.preheader771:               ; preds = %.lr.ph.i.i.i.i.i.i362.preheader, %middle.block
  %.012.i.i.i.i.i.i363.ph = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i.i362.preheader ], [ %i.vx, %middle.block ]
  %.0911.i.i.i.i.i.i364.ph = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i.i362.preheader ], [ %i.vy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i362

.lr.ph.i.i.i.i.i.i362:                            ; preds = %.lr.ph.i.i.i.i.i.i362.preheader771, %.lr.ph.i.i.i.i.i.i362
  %.012.i.i.i.i.i.i363 = phi ptr [ %i.wf, %.lr.ph.i.i.i.i.i.i362 ], [ %.012.i.i.i.i.i.i363.ph, %.lr.ph.i.i.i.i.i.i362.preheader771 ] ; 2 uses
  %.0911.i.i.i.i.i.i364 = phi ptr [ %i.we, %.lr.ph.i.i.i.i.i.i362 ], [ %.0911.i.i.i.i.i.i364.ph, %.lr.ph.i.i.i.i.i.i362.preheader771 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.wd = load i64, ptr %.0911.i.i.i.i.i.i364, align 4, !alias.scope !559
  store i64 %i.wd, ptr %.012.i.i.i.i.i.i363, align 4, !alias.scope !558
  %i.we = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i364, i64 8 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i363, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i365 = icmp eq ptr %i.we, %i.uz
  br i1 %.not.i.i.i.i.i.i365, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i362, !llvm.loop !547

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i362, %middle.block, %.noexc369
  %.0.lcssa.i.i.i.i.i.i366 = phi ptr [ %i.vo, %.noexc369 ], [ %i.vx, %middle.block ], [ %i.wf, %.lr.ph.i.i.i.i.i.i362 ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i366, i64 8
  %.not.i23.i.i.i367 = icmp eq ptr %i.vd, null
  br i1 %.not.i23.i.i.i367, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.wh = load ptr, ptr %i.aw, align 8, !tbaa !230
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = sub i64 %i.wi, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.wj) #34
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ca, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.vo, ptr %i.at, align 8, !tbaa !229
  store ptr %i.wg, ptr %i.av, align 8, !tbaa !348
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vm
  store ptr %i.wk, ptr %i.aw, align 8, !tbaa !230
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.bx, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit
  invoke void @_ZN4cvc58internal6theory2eq14EqualityEngine26storePropagatedDisequalityENS1_8TheoryIdEjj(ptr noundef nonnull align 8 dereferenceable(1784) %0, i32 noundef 14, i32 noundef %i.qv, i32 noundef %i.rz)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cb:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit
  %i.wl = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  %i.wm = load ptr, ptr %i.nl, align 8, !tbaa !54
  store ptr %i.wm, ptr %12, align 8, !tbaa !181
  %i.wn = load i8, ptr %i.nr, align 8, !tbaa !344, !range !195, !noundef !184
  %i.wo = trunc nuw i8 %i.wn to i1
  %i.wp = load ptr, ptr %i.wl, align 8, !tbaa !206
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = invoke noundef zeroext i1 %i.wr(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef nonnull align 8 %12, i1 noundef zeroext %i.wo)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.ws, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wt = load ptr, ptr %i.y, align 8, !tbaa !213 ; 2 uses
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !220
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !222
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 -8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !223
  %i.wz = icmp eq ptr %i.wt, %i.wy
  br i1 %i.wz, label %.sink.split684, label %.invoke685

bb.ce:                                            ; preds = %bb.bg
  %i.xa = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  store ptr %i.nm, ptr %13, align 8, !tbaa !181
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !206
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = invoke noundef zeroext i1 %i.xd(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef nonnull align 8 %13, i1 noundef zeroext true)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.xe, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xf = load ptr, ptr %i.y, align 8, !tbaa !213 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !220
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !222
  %i.xj = getelementptr inbounds i8, ptr %i.xi, i64 -8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !223
  %i.xl = icmp eq ptr %i.xf, %i.xk
  br i1 %i.xl, label %.sink.split684, label %.invoke685

bb.ch:                                            ; preds = %bb.bf
  %i.xm = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  store ptr %i.nm, ptr %14, align 8, !tbaa !181
  %i.xn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.xo = load i8, ptr %i.xn, align 8, !tbaa !344, !range !195, !noundef !184
  %i.xp = trunc nuw i8 %i.xo to i1
  %i.xq = load ptr, ptr %i.xm, align 8, !tbaa !206
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = invoke noundef zeroext i1 %i.xs(ptr noundef nonnull align 8 dereferenceable(8) %i.xm, ptr noundef nonnull align 8 %14, i1 noundef zeroext %i.xp)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.xt, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xu = load ptr, ptr %i.y, align 8, !tbaa !213 ; 2 uses
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !220
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !222
  %i.xy = getelementptr inbounds i8, ptr %i.xx, i64 -8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !223
  %i.ya = icmp eq ptr %i.xu, %i.xz
  br i1 %i.ya, label %.sink.split684, label %.invoke685

.invoke685:                                       ; preds = %bb.cj, %bb.cg, %bb.cd
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.h)
          to label %.sink.split684 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.invoke685, %bb.cb, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %.loopexit547, %bb.bs, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ce, %bb.ch
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.invoke686, %bb.an, %bb.av, %bb.bc, %bb.bb, %bb.au, %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i293, %bb.am, %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i234
  %lpad.loopexit592 = landingpad { ptr, i32 }
          cleanup
  %.pre608.pre = load ptr, ptr %5, align 8, !tbaa !199
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.bz
  %.pre608614 = phi ptr [ %.pre607, %bb.bz ], [ null, %.invoke ]
  %lpad.loopexit.split-lp593 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit
  %i.yb = phi ptr [ %.pre607, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pre608.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pre608614, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit592, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp593, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i377 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i377, label %_ZNSt6vectorIjSaIjEED2Ev.exit378, label %bb.cm

.sink.split684:                                   ; preds = %.invoke685, %bb.cj, %bb.cg, %bb.cd
  store i8 1, ptr %i.i, align 8, !tbaa !283
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split684, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit, %bb.cc, %bb.ci, %bb.cf
  %i.yc = add nuw i64 %.0572, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.yc, %i.ne
  br i1 %exitcond.not, label %.critedge6, label %.lr.ph, !llvm.loop !548

.critedge6:                                       ; preds = %bb.ck, %.lr.ph, %bb.be, %bb.bd
  %.not.i.i.i376 = icmp eq ptr %.pre607, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %.critedge6
  %i.yd = load ptr, ptr %i.ax, align 8, !tbaa !234
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = ptrtoint ptr %.pre607 to i64
  %i.yg = sub i64 %i.ye, %i.yf
  call void @_ZdlPvm(ptr noundef nonnull %.pre607, i64 noundef %i.yg) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.critedge6, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.backedge.backedge

bb.cm:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.yh = load ptr, ptr %i.ax, align 8, !tbaa !234
  %i.yi = ptrtoint ptr %i.yh to i64
  %i.yj = ptrtoint ptr %i.yb to i64
  %i.yk = sub i64 %i.yi, %i.yj
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yk) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit378

_ZNSt6vectorIjSaIjEED2Ev.exit378:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.loopexit.split-lp553

bb.cn:                                            ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !51
  br label %bb.co

bb.co:                                            ; preds = %bb.a, %bb.cn
  ret void

.loopexit.split-lp553:                            ; preds = %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIjSaIjEED2Ev.exit378
  %.pn111.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIjSaIjEED2Ev.exit378 ], [ %lpad.loopexit.split-lp782, %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i8 0, ptr %i.a, align 8, !tbaa !51
  resume { ptr, i32 } %.pn111.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq14EqualityEngine15getEqualityNodeENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !181    ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load i64, ptr %i.b, align 8, !tbaa !182
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !183, !nonnull !184, !noundef !184 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %.loopexit, label %bb.c, !llvm.loop !0

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.i = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load i64, ptr %i.j, align 8, !tbaa !186  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188, !nonnull !184, !noundef !184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183  ; 4 uses
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !190
  %i.u = icmp eq i64 %i.i, %i.t
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.q, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.p, %.noexc ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !183, !nonnull !184, !noundef !184 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !190 ; 2 uses
  %i.ab = urem i64 %i.aa, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.ab, %i.l
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = icmp eq i64 %i.i, %i.aa
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = icmp eq ptr %i.q, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %.noexc
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %.noexc ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak
  ret ptr %i.am
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4cvc58internal6theory2eq14EqualityEngine15getEqualityNodeENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !181    ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load i64, ptr %i.b, align 8, !tbaa !182
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !183, !nonnull !184, !noundef !184 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %.loopexit, label %bb.c, !llvm.loop !0

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.i = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load i64, ptr %i.j, align 8, !tbaa !186  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188, !nonnull !184, !noundef !184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183  ; 4 uses
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !190
  %i.u = icmp eq i64 %i.i, %i.t
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.q, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.p, %.noexc ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !183, !nonnull !184, !noundef !184 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !190 ; 2 uses
  %i.ab = urem i64 %i.aa, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.ab, %i.l
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = icmp eq i64 %i.i, %i.aa
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = icmp eq ptr %i.q, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %.noexc
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %.noexc ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak
  ret ptr %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4cvc58internal6theory2eq14EqualityEngine15getEqualityNodeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1784) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine22assertEqualityInternalENS0_12NodeTemplateILb0EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 3 uses
  %9 = alloca %"struct.cvc5::internal::theory::eq::MergeCandidate", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !195, !noundef !184
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !181
  store ptr %i.d, ptr %5, align 8, !tbaa !181
  call void @_ZN4cvc58internal6theory2eq14EqualityEngine15addTermInternalENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr noundef nonnull align 8 %5, i1 noundef zeroext false)
  %i.e = load ptr, ptr %2, align 8, !tbaa !181
  store ptr %i.e, ptr %6, align 8, !tbaa !181
  call void @_ZN4cvc58internal6theory2eq14EqualityEngine15addTermInternalENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr noundef nonnull align 8 %6, i1 noundef zeroext false)
  %i.f = load ptr, ptr %1, align 8, !tbaa !181    ; 2 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !182
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %.noexc
end_hunk_1
