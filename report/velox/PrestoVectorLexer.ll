inline.NumInlined: 674
inline.NumDeleted: 188
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer8lexNullsERi:bb.a
  %i.ah = icmp samesign ult i64 %i.ae, %i.ab
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.ai
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !428
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.aj = phi ptr [ %i.x, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %.pre, %bb.f ], [ %i.x, %bb.d ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = trunc i64 %i.r to i32                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !3, !noalias !430
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j, !prof !21

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @_ZN8facebook5velox6Status7InvalidIJRA41_KcRiEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(41) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN8facebook5velox6StatusD2Ev.exit33

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.am = and i64 %i.r, 2147483647                ; 4 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !14, !noalias !430 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !430
  store i64 %i.an, ptr %i.b, align 8, !tbaa !22, !noalias !430
  call void @_ZN8facebook5velox6Status7InvalidIJRA54_KcRimEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(54) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !430
  br label %_ZN8facebook5velox6StatusD2Ev.exit33

bb.l:                                             ; preds = %bb.j
  %.not.i31 = icmp eq ptr %i.aj, null
  br i1 %.not.i31, label %_ZN8facebook5velox6StatusD2Ev.exit33.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26, !noalias !430 ; 2 uses
  %i.ar = icmp samesign ugt i32 %i.ak, 1
  br i1 %i.ar, label %bb.n, label %bb.o, !prof !34

bb.n:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.aq, i64 %i.am, i1 false), !noalias !430
  br label %_ZN8facebook5velox6StatusD2Ev.exit33.thread

bb.o:                                             ; preds = %bb.m
  %i.as = icmp eq i32 %i.ak, 1
  br i1 %i.as, label %bb.p, label %_ZN8facebook5velox6StatusD2Ev.exit33.thread

bb.p:                                             ; preds = %bb.o
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !59, !noalias !430
  store i8 %i.at, ptr %i.aj, align 1, !tbaa !59, !noalias !430
  br label %_ZN8facebook5velox6StatusD2Ev.exit33.thread

_ZN8facebook5velox6StatusD2Ev.exit33.thread:      ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26, !noalias !430
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.am
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !26, !noalias !430
  %i.ax = load i64, ptr %1, align 8, !tbaa !14, !noalias !430
  %i.ay = sub i64 %i.ax, %i.am
  store i64 %i.ay, ptr %1, align 8, !tbaa !14, !noalias !430
  call void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 4), !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !433
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit33:             ; preds = %bb.k, %bb.i
  %.pr41 = load ptr, ptr %4, align 8, !tbaa !10, !noalias !436 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  store ptr %.pr41, ptr %0, align 8, !tbaa !10, !alias.scope !436
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.az = icmp eq ptr %.pr41, null
  br i1 %i.az, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %.critedge

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33, %_ZN8facebook5velox6StatusD2Ev.exit33.thread
  %i.ba = icmp sgt i32 %i.ak, 0
  br i1 %i.ba, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35
  %wide.trip.count.i = and i64 %i.r, 2147483647   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.r, 2147483520               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.bb, align 1, !tbaa !59
  %wide.load59 = load <32 x i8>, ptr %i.bc, align 1, !tbaa !59
  %wide.load60 = load <32 x i8>, ptr %i.bd, align 1, !tbaa !59
  %wide.load61 = load <32 x i8>, ptr %i.be, align 1, !tbaa !59
  %i.bf = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.bg = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load59)
  %i.bh = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load60)
  %i.bi = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load61)
  store <32 x i8> %i.bf, ptr %i.bb, align 1, !tbaa !59
  store <32 x i8> %i.bg, ptr %i.bc, align 1, !tbaa !59
  store <32 x i8> %i.bh, ptr %i.bd, align 1, !tbaa !59
  store <32 x i8> %i.bi, ptr %i.be, align 1, !tbaa !59
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.bk = and i64 %i.q, 960
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.r, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index64 ; 2 uses
  %wide.load65 = load <8 x i8>, ptr %i.bl, align 1, !tbaa !59
  %i.bm = call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load65)
  store <8 x i8> %i.bm, ptr %i.bl, align 1, !tbaa !59
  %index.next66 = add nuw i64 %index64, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next66, %n.vec63
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !442

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %wide.trip.count.i, %n.vec63
  br i1 %cmp.n67, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec63, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !59
  %rev.i = call i8 @llvm.bitreverse.i8(i8 %i.bp)
  store i8 %rev.i, ptr %i.bo, align 1, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i, !llvm.loop !443

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN8facebook5velox6StatusD2Ev.exit35
  %i.bq = load i32, ptr %2, align 4, !tbaa !3     ; 6 uses
  %.not.i.i36 = icmp sgt i32 %i.bq, 0
  br i1 %.not.i.i36, label %bb.q, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %i.br = and i32 %i.bq, 2147483584               ; 3 uses
  %.not3342.i.i = icmp eq i32 %i.br, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check91

iter.check91:                                     ; preds = %bb.q
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = add nsw i64 %i.bs, -64                  ; 3 uses
  %i.bu = lshr exact i64 %i.bt, 6
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check68 = icmp ult i64 %i.bt, 192
  br i1 %min.iters.check68, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check91
  %min.iters.check70 = icmp ult i64 %i.bt, 960
  br i1 %min.iters.check70, label %vec.epilog.ph95, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %n.mod.vf72 = and i64 %i.bv, 12
  %n.vec73 = and i64 %i.bv, 576460752303423472    ; 4 uses
  %i.bw = shl i64 %n.vec73, 6                     ; 2 uses
  %i.bx = or disjoint i64 %i.bw, 64
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph71
  %index75 = phi i64 [ 0, %vector.ph71 ], [ %index.next83, %vector.body74 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.cl, %vector.body74 ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.cm, %vector.body74 ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.cn, %vector.body74 ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.co, %vector.body74 ]
  %i.by = shl i64 %index75, 3
  %5 = and i64 %i.by, 2305843009213693824
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %5 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %wide.load79 = load <4 x i64>, ptr %i.bz, align 8, !tbaa !22
  %wide.load80 = load <4 x i64>, ptr %i.ca, align 8, !tbaa !22
  %wide.load81 = load <4 x i64>, ptr %i.cb, align 8, !tbaa !22
  %wide.load82 = load <4 x i64>, ptr %i.cc, align 8, !tbaa !22
  %i.cd = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load79)
  %i.ce = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load80)
  %i.cf = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load81)
  %i.cg = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.ch = trunc nuw nsw <4 x i64> %i.cd to <4 x i32>
  %i.ci = trunc nuw nsw <4 x i64> %i.ce to <4 x i32>
  %i.cj = trunc nuw nsw <4 x i64> %i.cf to <4 x i32>
  %i.ck = trunc nuw nsw <4 x i64> %i.cg to <4 x i32>
  %i.cl = add <4 x i32> %vec.phi, %i.ch           ; 2 uses
  %i.cm = add <4 x i32> %vec.phi76, %i.ci         ; 2 uses
  %i.cn = add <4 x i32> %vec.phi77, %i.cj         ; 2 uses
  %i.co = add <4 x i32> %vec.phi78, %i.ck         ; 2 uses
  %index.next83 = add nuw i64 %index75, 16        ; 2 uses
  %i.cp = icmp eq i64 %index.next83, %n.vec73
  br i1 %i.cp, label %middle.block84, label %vector.body74, !llvm.loop !444

middle.block84:                                   ; preds = %vector.body74
  %bin.rdx = add <4 x i32> %i.cm, %i.cl
  %bin.rdx85 = add <4 x i32> %i.cn, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.co, %bin.rdx85
  %i.cq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n87 = icmp eq i64 %i.bv, %n.vec73
  br i1 %cmp.n87, label %._crit_edge.i.i, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block84
  %min.epilog.iters.check94 = icmp eq i64 %n.mod.vf72, 0
  br i1 %min.epilog.iters.check94, label %.lr.ph.i.i.preheader, label %vec.epilog.ph95, !prof !445

vec.epilog.ph95:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check93
  %vec.epilog.resume.val88 = phi i64 [ %n.vec73, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check69 ]
  %bc.merge.rdx = phi i32 [ %i.cq, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec97 = and i64 %i.bv, 576460752303423484    ; 3 uses
  %i.cr = shl i64 %n.vec97, 6                     ; 2 uses
  %i.cs = or disjoint i64 %i.cr, 64
  %i.ct = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body98

vec.epilog.vector.body98:                         ; preds = %vec.epilog.vector.body98, %vec.epilog.ph95
  %index99 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph95 ], [ %index.next102, %vec.epilog.vector.body98 ] ; 2 uses
  %vec.phi100 = phi <4 x i32> [ %i.ct, %vec.epilog.ph95 ], [ %i.cy, %vec.epilog.vector.body98 ]
  %i.cu = shl i64 %index99, 3
  %6 = and i64 %i.cu, 2305843009213693920
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %6
  %wide.load101 = load <4 x i64>, ptr %i.cv, align 8, !tbaa !22
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load101)
  %i.cx = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.cy = add <4 x i32> %vec.phi100, %i.cx        ; 2 uses
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.cz = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.cz, label %vec.epilog.middle.block103, label %vec.epilog.vector.body98, !llvm.loop !446

vec.epilog.middle.block103:                       ; preds = %vec.epilog.vector.body98
  %i.da = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cy) ; 2 uses
  %cmp.n104 = icmp eq i64 %i.bv, %n.vec97
  br i1 %cmp.n104, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check91, %vec.epilog.iter.check93, %vec.epilog.middle.block103
  %indvars.iv42.ph = phi i64 [ 0, %iter.check91 ], [ %i.bw, %vec.epilog.iter.check93 ], [ %i.cr, %vec.epilog.middle.block103 ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check91 ], [ %i.bx, %vec.epilog.iter.check93 ], [ %i.cs, %vec.epilog.middle.block103 ]
  %.ph = phi i32 [ 0, %iter.check91 ], [ %i.cq, %vec.epilog.iter.check93 ], [ %i.da, %vec.epilog.middle.block103 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block84, %vec.epilog.middle.block103, %bb.q
  %.1.i = phi i32 [ 0, %bb.q ], [ %i.da, %vec.epilog.middle.block103 ], [ %i.cq, %middle.block84 ], [ %i.dh, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.bq, %i.br
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph.i.i ], [ %indvars.iv42.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.db = phi i32 [ %i.dh, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.dc = lshr exact i64 %indvars.iv42, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !22
  %i.df = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.de)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = add nuw nsw i32 %i.db, %i.dg            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv, %i.bs
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !447

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.di = lshr i32 %i.bq, 6
  %i.dj = and i32 %i.bq, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.dk
  %i.dl = xor i64 %notmask.i36.i.i, -1
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22
  %i.dp = and i64 %i.do, %i.dl
  %i.dq = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.dp)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = add nsw i32 %.1.i, %i.dr
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.ds, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ]
  %i.dt = sub nsw i32 %i.bq, %.3.i
  store i32 %i.dt, ptr %2, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %_ZN8facebook5velox6StatusD2Ev.exit30
  call void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 4)
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !448
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.critedge27, %_ZN8facebook5velox6StatusD2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit33, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status7InvalidIJRA22_KcRiEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.16", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !451
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !451
  %.sroa.08.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %4, align 16, !noalias !451
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %4), !noalias !451
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 9, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !63, !noalias !451 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !59, !noalias !451
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !63, !noalias !451 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !59, !noalias !451
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !451
  resume { ptr, i32 } %i.h

_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status7InvalidIJRA40_KcRimEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.15", align 16 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !460
  store i32 %i.b, ptr %5, align 16, !tbaa !59, !alias.scope !457, !noalias !454
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load i64, ptr %3, align 8, !tbaa !22, !noalias !460
  store i64 %i.d, ptr %i.c, align 16, !tbaa !59, !alias.scope !457, !noalias !454
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 65, ptr nonnull %5), !noalias !454
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 9, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !63, !noalias !454 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8facebook5velox6Status8fromArgsIJRimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !59, !noalias !454
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !63, !noalias !454 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !59, !noalias !454
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !454
  resume { ptr, i32 } %i.j

_ZN8facebook5velox6Status8fromArgsIJRimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status7InvalidIJRA41_KcRiEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.16", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !461
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !461
  %.sroa.08.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %4, align 16, !noalias !461
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %4), !noalias !461
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 9, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !63, !noalias !461 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !59, !noalias !461
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit
end_hunk_0
