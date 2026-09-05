Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/corner_table?download=true
begin_hunk_0_@_ZN5draco11CornerTable21BreakNonManifoldEdgesEv:bb.a
  %i.ao = icmp ne i32 %spec.select.i2.i, %.sroa.0131.0220
  %i.ap = icmp ne i32 %spec.select.i2.i, -1
  %or.cond = and i1 %i.ao, %i.ap
  br i1 %or.cond, label %bb.c, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader

bb.c:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.aq = lshr i32 %spec.select.i2.i, 6
  %.zext179 = zext nneg i32 %i.aq to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0, i64 %.zext179
  %i.as = and i32 %spec.select.i2.i, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !56
  %i.aw = and i64 %i.av, %i.au
  %.not184 = icmp eq i64 %i.aw, 0
  br i1 %.not184, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, !llvm.loop !119

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, %bb.o
  %.sroa.0118.1 = phi i32 [ %i.ej, %bb.o ], [ %.sroa.0118.0, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 7 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.5, %bb.o ], [ %.sroa.17.1222, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 6 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.6, %bb.o ], [ %spec.select, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 8 uses
  %.sroa.0136.2 = phi ptr [ %.sroa.0136.5, %bb.o ], [ %.sroa.0136.1224, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 19 uses
  %i.ax = lshr i32 %.sroa.0118.1, 6
  %.zext181 = zext nneg i32 %i.ax to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0, i64 %.zext181 ; 2 uses
  %i.az = and i32 %.sroa.0118.1, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !56
  %i.bd = or i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !56
  %i.be = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.bf = insertelement <2 x i32> poison, i32 %.sroa.0118.1, i64 0
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bh = add nuw <2 x i32> %i.bg, <i32 0, i32 1>
  %i.bi = urem <2 x i32> %i.bh, splat (i32 3)
  %i.bj = icmp eq <2 x i32> %i.bi, zeroinitializer ; 2 uses
  %i.bk = extractelement <2 x i1> %i.bj, i64 1
  %spec.select.i.v = select i1 %i.bk, i32 -2, i32 1
  %spec.select.i = add i32 %.sroa.0118.1, %spec.select.i.v ; 3 uses
  %i.bl = zext i32 %spec.select.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.bo = extractelement <2 x i1> %i.bj, i64 0    ; 2 uses
  %.sink.i56.v = select i1 %i.bo, i32 2, i32 -1
  %.sink.i56 = add i32 %.sink.i56.v, %.sroa.0118.1
  %.sink.i56.fr = freeze i32 %.sink.i56           ; 4 uses
  %.not185213 = icmp eq ptr %.sroa.0136.2, %.sroa.10.2
  br i1 %.not185213, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.bp = icmp eq i32 %.sink.i56.fr, -1
  %i.bq = zext i32 %.sink.i56.fr to i64
  br i1 %i.bp, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.sroa.0100.0214.us = phi ptr [ %i.bw, %bb.d ], [ %.sroa.0136.2, %.lr.ph ] ; 3 uses
  %i.br = load i32, ptr %.sroa.0100.0214.us, align 4, !tbaa !24
  %i.bs = icmp eq i32 %i.br, %i.bn
  br i1 %i.bs, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us, label %bb.d

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us: ; preds = %.lr.ph.split.us
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214.us, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !54 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.d, label %.split.us.thread

bb.d:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us, %.lr.ph.split.us
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214.us, i64 8 ; 2 uses
  %.not185.us = icmp eq ptr %i.bw, %.sroa.10.2
  br i1 %.not185.us, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.0100.0214 = phi ptr [ %i.cr, %bb.i ], [ %.sroa.0136.2, %.lr.ph ] ; 3 uses
  %i.bx = load i32, ptr %.sroa.0100.0214, align 4, !tbaa !24
  %i.by = icmp eq i32 %i.bx, %i.bn
  br i1 %i.by, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %.lr.ph.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !54 ; 3 uses
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !31, !noalias !133 ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bq
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !54, !noalias !133 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, %i.ca
  br i1 %i.ce, label %bb.i, label %.split.us

.split.us.thread:                                 ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us
  %.pre260.pre262.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

.split.us:                                        ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.cf = zext i32 %.sink.i56.fr to i64           ; 2 uses
  %i.cg = icmp eq i32 %i.ca, -1
  br i1 %i.cg, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58, label %bb.e

bb.e:                                             ; preds = %.split.us.thread, %.split.us
  %.us-phi219293 = phi i32 [ %i.bu, %.split.us.thread ], [ %i.ca, %.split.us ] ; 2 uses
  %.us-phi218291 = phi i32 [ -1, %.split.us.thread ], [ %i.cd, %.split.us ]
  %.sink.i56.fr242289 = phi i64 [ 4294967295, %.split.us.thread ], [ %i.cf, %.split.us ]
  %.pre260.pre262.pre287 = phi ptr [ %.pre260.pre262.pre.pre, %.split.us.thread ], [ %i.cb, %.split.us ] ; 2 uses
  %i.ch = zext i32 %.us-phi219293 to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre287, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !54, !noalias !134
  %i.ck = zext i32 %.us-phi219293 to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58: ; preds = %bb.e, %.split.us
  %.us-phi219294 = phi i64 [ %i.ck, %bb.e ], [ 4294967295, %.split.us ]
  %.us-phi218292 = phi i32 [ %.us-phi218291, %bb.e ], [ %i.cd, %.split.us ] ; 2 uses
  %.sink.i56.fr242290 = phi i64 [ %.sink.i56.fr242289, %bb.e ], [ %i.cf, %.split.us ]
  %.pre260.pre262.pre288 = phi ptr [ %.pre260.pre262.pre287, %bb.e ], [ %i.cb, %.split.us ] ; 4 uses
  %storemerge.i57 = phi i32 [ %i.cj, %bb.e ], [ -1, %.split.us ] ; 2 uses
  %.not186 = icmp eq i32 %.us-phi218292, -1
  br i1 %.not186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58
  %i.cl = zext i32 %.us-phi218292 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %i.cl
  store i32 -1, ptr %i.cm, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58
  %.not187 = icmp eq i32 %storemerge.i57, -1
  br i1 %.not187, label %.thread161, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = zext i32 %storemerge.i57 to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %i.cn
  store i32 -1, ptr %i.co, align 4, !tbaa !54
  br label %.thread161

.thread161:                                       ; preds = %bb.h, %bb.g
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %.sink.i56.fr242290
  store i32 -1, ptr %i.cp, align 4, !tbaa !54
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %.us-phi219294
  store i32 -1, ptr %i.cq, align 4, !tbaa !54
  br label %.critedge2

bb.i:                                             ; preds = %.lr.ph.split, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214, i64 8 ; 2 uses
  %.not185 = icmp eq ptr %i.cr, %.sroa.10.2
  br i1 %.not185, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph.split

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.i, %bb.d, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.cs = zext i32 %.sink.i56.fr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !24 ; 2 uses
  %.not.i62 = icmp eq ptr %.sroa.10.2, %.sroa.17.2
  br i1 %.not.i62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  store i32 %i.cu, ptr %.sroa.10.2, align 4, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 4
  store i32 %spec.select.i, ptr %i.cv, align 4, !tbaa !54
  br label %bb.n

bb.k:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %i.cw = ptrtoint ptr %.sroa.17.2 to i64         ; 3 uses
  %i.cx = ptrtoint ptr %.sroa.0136.2 to i64       ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.l, label %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc73 unwind label %.loopexit.split-lp

.noexc73:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i72 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i72)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #14
          to label %.noexc74 unwind label %.loopexit ; 13 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i32 %i.cu, ptr %i.dh, align 4, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %spec.select.i, ptr %i.di, align 4, !tbaa !54
  %.not13.i.i.i.i.i.i = icmp eq ptr %.sroa.0136.2, %.sroa.17.2
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc74
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader391, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dg, i64 4
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8                       ; 4 uses
  %scevgep371 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep372 = getelementptr i8, ptr %.sroa.0136.2, i64 4 ; 2 uses
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.dp
  %scevgep374 = getelementptr i8, ptr %i.dg, i64 4
  %scevgep375 = getelementptr i8, ptr %i.dg, i64 8
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.dp
  %scevgep377 = getelementptr i8, ptr %.sroa.0136.2, i64 8
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.dp
  %bound0 = icmp ult ptr %i.dg, %scevgep373
  %bound1 = icmp ult ptr %.sroa.0136.2, %scevgep371
  %found.conflict = and i1 %bound0, %bound1
  %bound0379 = icmp ult ptr %scevgep374, %scevgep378
  %bound1380 = icmp ult ptr %scevgep372, %scevgep376
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict, %found.conflict381
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader391, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 3 uses
  %i.du = or disjoint i64 %i.dt, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dt
  %next.gep382 = getelementptr i8, ptr %i.dg, i64 %i.du
  %next.gep383 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dt
  %next.gep384 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.du
  %wide.vec = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !26
  %wide.vec386 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !26
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %wide.vec386, ptr %next.gep382, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader391

.lr.ph.i.i.i.i.i.i.preheader391:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0136.2, %vector.memcheck ], [ %.sroa.0136.2, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader391, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %i.dw = load <2 x i32>, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !26
  store <2 x i32> %i.dw, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dx, %.sroa.17.2
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !125

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %.noexc74 ], [ %i.dr, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i.i.i ]
  %.not.i35.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i35.i, label %.noexc63, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cy) #15
  br label %.noexc63

.noexc63:                                         ; preds = %bb.m, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %.noexc63
  %.sroa.17.5 = phi ptr [ %i.dz, %.noexc63 ], [ %.sroa.17.2, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc63 ], [ %.sroa.10.2, %bb.j ]
  %.sroa.0136.5 = phi ptr [ %i.dg, %.noexc63 ], [ %.sroa.0136.2, %bb.j ] ; 2 uses
  %.sroa.10.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  br i1 %i.bo, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.n
  %i.ea = add i32 %.sroa.0118.1, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.n
  %i.eb = add i32 %.sroa.0118.1, 2                ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %.critedge2.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.ea, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.eb, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ed = zext i32 %.sink.i9.i to i64
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !31, !noalias !135
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !54, !noalias !135 ; 3 uses
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %.critedge2.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65
  %i.ei = urem i32 %i.eg, 3
  %.not.i1.i66 = icmp eq i32 %i.ei, 0
  %. = select i1 %.not.i1.i66, i32 2, i32 -1
  %i.ej = add i32 %i.eg, %.                       ; 3 uses
  %i.ek = icmp ne i32 %i.ej, %.sroa.0118.0
  %i.el = icmp ne i32 %i.ej, -1
  %or.cond183 = and i1 %i.ek, %i.el
  br i1 %or.cond183, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.critedge2.loopexit, !llvm.loop !130

.critedge2.loopexit:                              ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.o
  %.pre261 = load ptr, ptr %0, align 8, !tbaa !22
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.thread161, %.lr.ph226
  %i.em = phi ptr [ %i.u, %.lr.ph226 ], [ %i.be, %.thread161 ], [ %.pre261, %.critedge2.loopexit ] ; 3 uses
  %.sroa.17.4 = phi ptr [ %.sroa.17.1222, %.lr.ph226 ], [ %.sroa.17.2, %.thread161 ], [ %.sroa.17.5, %.critedge2.loopexit ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.1223, %.lr.ph226 ], [ %.sroa.10.2, %.thread161 ], [ %.sroa.10.6, %.critedge2.loopexit ] ; 2 uses
  %.sroa.0136.4 = phi ptr [ %.sroa.0136.1224, %.lr.ph226 ], [ %.sroa.0136.2, %.thread161 ], [ %.sroa.0136.5, %.critedge2.loopexit ] ; 3 uses
  %.318 = phi i1 [ %.015225, %.lr.ph226 ], [ true, %.thread161 ], [ %.015225, %.critedge2.loopexit ] ; 2 uses
  %i.en = add nuw i32 %.sroa.0131.0220, 1         ; 2 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 2
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ult i32 %i.en, %i.et
  br i1 %i.eu, label %.lr.ph226, label %._crit_edge, !llvm.loop !131

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cy) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit: ; preds = %bb.p, %bb.q
  %.not.i.i67 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i67, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit
  %i.ev = ptrtoint ptr %.sroa.16156.0 to i64
  %i.ew = ptrtoint ptr %.sroa.0149.0 to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = ashr exact i64 %i.ex, 3
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.ez
  tail call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.ex) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.sroa.0136.1.lcssa280 = phi ptr [ %.sroa.0136.4, %._crit_edge ], [ %.sroa.0136.0, %bb.b ] ; 3 uses
  %.sroa.17.1.lcssa279 = phi ptr [ %.sroa.17.4, %._crit_edge ], [ %.sroa.17.0, %bb.b ]
  %.not.i.i.i68 = icmp eq ptr %.sroa.0136.1.lcssa280, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.fb = ptrtoint ptr %.sroa.17.1.lcssa279 to i64
  %i.fc = ptrtoint ptr %.sroa.0136.1.lcssa280 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.1.lcssa280, i64 noundef %i.fd) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69: ; preds = %._crit_edge.thread, %bb.s
  %.not.i.i70 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i70, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit71, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69
  %i.fe = ptrtoint ptr %.sroa.16156.0 to i64
  %i.ff = ptrtoint ptr %.sroa.0149.0 to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = ashr exact i64 %i.fg, 3
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.fi
  tail call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fg) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit71

_ZNSt13_Bvector_baseISaIbEED2Ev.exit71:           ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69, %bb.t
  ret i1 true

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.r, %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit
  resume { ptr, i32 } %lpad.phi
}
end_hunk_0
