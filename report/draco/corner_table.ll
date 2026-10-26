Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/corner_table?download=true
inline.NumInlined: 1215
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5draco11CornerTable21BreakNonManifoldEdgesEv:bb.a
  br i1 %.not, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE5clearEv.exit, label %.critedge2

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE5clearEv.exit: ; preds = %.lr.ph226
  %.not.i.i45 = icmp eq ptr %.sroa.10.1223, %.sroa.0136.1224
  %spec.select = select i1 %.not.i.i45, ptr %.sroa.10.1223, ptr %.sroa.0136.1224
  br label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.c, %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE5clearEv.exit
  %.sroa.0118.0 = phi i32 [ %.sroa.0131.0220, %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE5clearEv.exit ], [ %spec.select.i2.i, %bb.c ] ; 4 uses
  %i.ad = add nuw i32 %.sroa.0118.0, 1            ; 2 uses
  %i.ae = urem i32 %i.ad, 3
  %.not.i.i46 = icmp eq i32 %i.ae, 0
  %i.af = add i32 %.sroa.0118.0, -2
  %spec.select.i.i = select i1 %.not.i.i46, i32 %i.af, i32 %i.ad ; 2 uses
  %i.ag = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.ag, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ah = zext i32 %spec.select.i.i to i64
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !31, !noalias !132
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !54, !noalias !132 ; 3 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.am = add nuw i32 %i.ak, 1                    ; 2 uses
  %i.an = urem i32 %i.am, 3
  %.not.i1.i = icmp eq i32 %i.an, 0
  %i.ao = add i32 %i.ak, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.ao, i32 %i.am ; 5 uses
  %i.ap = icmp ne i32 %spec.select.i2.i, %.sroa.0131.0220
  %i.aq = icmp ne i32 %spec.select.i2.i, -1
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.c, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader

bb.c:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ar = lshr i32 %spec.select.i2.i, 6
  %.zext179 = zext nneg i32 %i.ar to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0, i64 %.zext179
  %i.at = and i32 %spec.select.i2.i, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !56
  %i.ax = and i64 %i.aw, %i.av
  %.not184 = icmp eq i64 %i.ax, 0
  br i1 %.not184, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, !llvm.loop !119

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader, %bb.o
  %.sroa.0118.1 = phi i32 [ %i.ek, %bb.o ], [ %.sroa.0118.0, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 7 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.5, %bb.o ], [ %.sroa.17.1222, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 6 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.6, %bb.o ], [ %spec.select, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 8 uses
  %.sroa.0136.2 = phi ptr [ %.sroa.0136.5, %bb.o ], [ %.sroa.0136.1224, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 19 uses
  %i.ay = lshr i32 %.sroa.0118.1, 6
  %.zext181 = zext nneg i32 %i.ay to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0, i64 %.zext181 ; 2 uses
  %i.ba = and i32 %.sroa.0118.1, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !56
  %i.be = or i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.az, align 8, !tbaa !56
  %i.bf = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.bg = insertelement <2 x i32> poison, i32 %.sroa.0118.1, i64 0
  %i.bh = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bi = add nuw <2 x i32> %i.bh, <i32 0, i32 1>
  %i.bj = urem <2 x i32> %i.bi, splat (i32 3)
  %i.bk = icmp eq <2 x i32> %i.bj, zeroinitializer ; 2 uses
  %i.bl = extractelement <2 x i1> %i.bk, i64 1
  %spec.select.i.v = select i1 %i.bl, i32 -2, i32 1
  %spec.select.i = add i32 %.sroa.0118.1, %spec.select.i.v ; 3 uses
  %i.bm = zext i32 %spec.select.i to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24 ; 2 uses
  %i.bp = extractelement <2 x i1> %i.bk, i64 0    ; 2 uses
  %.sink.i56.v = select i1 %i.bp, i32 2, i32 -1
  %.sink.i56 = add i32 %.sink.i56.v, %.sroa.0118.1
  %.sink.i56.fr = freeze i32 %.sink.i56           ; 4 uses
  %.not185213 = icmp eq ptr %.sroa.0136.2, %.sroa.10.2
  br i1 %.not185213, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.bq = icmp eq i32 %.sink.i56.fr, -1
  %i.br = zext i32 %.sink.i56.fr to i64
  br i1 %i.bq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.sroa.0100.0214.us = phi ptr [ %i.bx, %bb.d ], [ %.sroa.0136.2, %.lr.ph ] ; 3 uses
  %i.bs = load i32, ptr %.sroa.0100.0214.us, align 4, !tbaa !24
  %i.bt = icmp eq i32 %i.bs, %i.bo
  br i1 %i.bt, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us, label %bb.d

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us: ; preds = %.lr.ph.split.us
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214.us, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !54 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.d, label %.split.us.thread

bb.d:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us, %.lr.ph.split.us
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214.us, i64 8 ; 2 uses
  %.not185.us = icmp eq ptr %i.bx, %.sroa.10.2
  br i1 %.not185.us, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.0100.0214 = phi ptr [ %i.cs, %bb.i ], [ %.sroa.0136.2, %.lr.ph ] ; 3 uses
  %i.by = load i32, ptr %.sroa.0100.0214, align 4, !tbaa !24
  %i.bz = icmp eq i32 %i.by, %i.bo
  br i1 %i.bz, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %.lr.ph.split
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !54 ; 3 uses
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !31, !noalias !133 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.br
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !54, !noalias !133 ; 3 uses
  %i.cf = icmp eq i32 %i.ce, %i.cb
  br i1 %i.cf, label %bb.i, label %.split.us

.split.us.thread:                                 ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.us
  %.pre260.pre262.pre.pre = load ptr, ptr %i.o, align 8, !tbaa !31
  br label %bb.e

.split.us:                                        ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.cg = zext i32 %.sink.i56.fr to i64           ; 2 uses
  %i.ch = icmp eq i32 %i.cb, -1
  br i1 %i.ch, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58, label %bb.e

bb.e:                                             ; preds = %.split.us.thread, %.split.us
  %.us-phi219293 = phi i32 [ %i.bv, %.split.us.thread ], [ %i.cb, %.split.us ] ; 2 uses
  %.us-phi218291 = phi i32 [ -1, %.split.us.thread ], [ %i.ce, %.split.us ]
  %.sink.i56.fr242289 = phi i64 [ 4294967295, %.split.us.thread ], [ %i.cg, %.split.us ]
  %.pre260.pre262.pre287 = phi ptr [ %.pre260.pre262.pre.pre, %.split.us.thread ], [ %i.cc, %.split.us ] ; 2 uses
  %i.ci = zext i32 %.us-phi219293 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre287, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !54, !noalias !134
  %i.cl = zext i32 %.us-phi219293 to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58: ; preds = %bb.e, %.split.us
  %.us-phi219294 = phi i64 [ %i.cl, %bb.e ], [ 4294967295, %.split.us ]
  %.us-phi218292 = phi i32 [ %.us-phi218291, %bb.e ], [ %i.ce, %.split.us ] ; 2 uses
  %.sink.i56.fr242290 = phi i64 [ %.sink.i56.fr242289, %bb.e ], [ %i.cg, %.split.us ]
  %.pre260.pre262.pre288 = phi ptr [ %.pre260.pre262.pre287, %bb.e ], [ %i.cc, %.split.us ] ; 4 uses
  %storemerge.i57 = phi i32 [ %i.ck, %bb.e ], [ -1, %.split.us ] ; 2 uses
  %.not186 = icmp eq i32 %.us-phi218292, -1
  br i1 %.not186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58
  %i.cm = zext i32 %.us-phi218292 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %i.cm
  store i32 -1, ptr %i.cn, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit58
  %.not187 = icmp eq i32 %storemerge.i57, -1
  br i1 %.not187, label %.thread161, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = zext i32 %storemerge.i57 to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %i.co
  store i32 -1, ptr %i.cp, align 4, !tbaa !54
  br label %.thread161

.thread161:                                       ; preds = %bb.h, %bb.g
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %.sink.i56.fr242290
  store i32 -1, ptr %i.cq, align 4, !tbaa !54
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre260.pre262.pre288, i64 %.us-phi219294
  store i32 -1, ptr %i.cr, align 4, !tbaa !54
  br label %.critedge2

bb.i:                                             ; preds = %.lr.ph.split, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0100.0214, i64 8 ; 2 uses
  %.not185 = icmp eq ptr %i.cs, %.sroa.10.2
  br i1 %.not185, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %.lr.ph.split

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.i, %bb.d, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ct = zext i32 %.sink.i56.fr to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24 ; 2 uses
  %.not.i62 = icmp eq ptr %.sroa.10.2, %.sroa.17.2
  br i1 %.not.i62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  store i32 %i.cv, ptr %.sroa.10.2, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 4
  store i32 %spec.select.i, ptr %i.cw, align 4, !tbaa !54
  br label %bb.n

bb.k:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %i.cx = ptrtoint ptr %.sroa.17.2 to i64         ; 3 uses
  %i.cy = ptrtoint ptr %.sroa.0136.2 to i64       ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 5 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.l, label %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.a

.noexc73:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i72 = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i72)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #14
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.a ; 13 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store i32 %i.cv, ptr %i.di, align 4, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %spec.select.i, ptr %i.dj, align 4, !tbaa !54
  %.not13.i.i.i.i.i.i = icmp eq ptr %.sroa.0136.2, %.sroa.17.2
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc74
  %i.dk = add i64 %i.cx, -8
  %i.dl = sub i64 %i.dk, %i.cy                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader391, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dh, i64 4
  %i.do = add i64 %i.cx, -8
  %i.dp = sub i64 %i.do, %i.cy
  %i.dq = and i64 %i.dp, -8                       ; 4 uses
  %scevgep371 = getelementptr i8, ptr %scevgep, i64 %i.dq
  %scevgep372 = getelementptr i8, ptr %.sroa.0136.2, i64 4 ; 2 uses
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.dq
  %scevgep374 = getelementptr i8, ptr %i.dh, i64 4
  %scevgep375 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.dq
  %scevgep377 = getelementptr i8, ptr %.sroa.0136.2, i64 8
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.dq
  %bound0 = icmp ult ptr %i.dh, %scevgep373
  %bound1 = icmp ult ptr %.sroa.0136.2, %scevgep371
  %found.conflict = and i1 %bound0, %bound1
  %bound0379 = icmp ult ptr %scevgep374, %scevgep378
  %bound1380 = icmp ult ptr %scevgep372, %scevgep376
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict, %found.conflict381
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader391, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dh, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 3 uses
  %i.dv = or disjoint i64 %i.du, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.du
  %next.gep382 = getelementptr i8, ptr %i.dh, i64 %i.dv
  %next.gep383 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.du
  %next.gep384 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dv
  %wide.vec = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !26
  %wide.vec386 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !26
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %wide.vec386, ptr %next.gep382, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader391

.lr.ph.i.i.i.i.i.i.preheader391:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0136.2, %vector.memcheck ], [ %.sroa.0136.2, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader391, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %i.dx = load <2 x i32>, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !26
  store <2 x i32> %i.dx, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dy, %.sroa.17.2
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !125

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dh, %.noexc74 ], [ %i.ds, %middle.block ], [ %i.dz, %.lr.ph.i.i.i.i.i.i ]
  %.not.i35.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i35.i, label %.noexc63, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cz) #15
  br label %.noexc63

.noexc63:                                         ; preds = %bb.m, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %.noexc63
  %.sroa.17.5 = phi ptr [ %i.ea, %.noexc63 ], [ %.sroa.17.2, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc63 ], [ %.sroa.10.2, %bb.j ]
  %.sroa.0136.5 = phi ptr [ %i.dh, %.noexc63 ], [ %.sroa.0136.2, %bb.j ] ; 2 uses
  %.sroa.10.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  br i1 %i.bp, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.n
  %i.eb = add i32 %.sroa.0118.1, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.n
  %i.ec = add i32 %.sroa.0118.1, 2                ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %.critedge2.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.eb, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ec, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ee = zext i32 %.sink.i9.i to i64
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !31, !noalias !135
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !54, !noalias !135 ; 3 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %.critedge2.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65
  %i.ej = urem i32 %i.eh, 3
  %.not.i1.i66 = icmp eq i32 %i.ej, 0
  %. = select i1 %.not.i1.i66, i32 2, i32 -1
  %i.ek = add i32 %i.eh, %.                       ; 3 uses
  %i.el = icmp ne i32 %i.ek, %.sroa.0118.0
  %i.em = icmp ne i32 %i.ek, -1
  %or.cond183 = and i1 %i.el, %i.em
  br i1 %or.cond183, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.critedge2.loopexit, !llvm.loop !130

.critedge2.loopexit:                              ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.o
  %.pre261 = load ptr, ptr %0, align 8, !tbaa !22
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.thread161, %.lr.ph226
  %i.en = phi ptr [ %i.v, %.lr.ph226 ], [ %i.bf, %.thread161 ], [ %.pre261, %.critedge2.loopexit ] ; 3 uses
  %.sroa.17.4 = phi ptr [ %.sroa.17.1222, %.lr.ph226 ], [ %.sroa.17.2, %.thread161 ], [ %.sroa.17.5, %.critedge2.loopexit ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.1223, %.lr.ph226 ], [ %.sroa.10.2, %.thread161 ], [ %.sroa.10.6, %.critedge2.loopexit ] ; 2 uses
  %.sroa.0136.4 = phi ptr [ %.sroa.0136.1224, %.lr.ph226 ], [ %.sroa.0136.2, %.thread161 ], [ %.sroa.0136.5, %.critedge2.loopexit ] ; 3 uses
  %.318 = phi i1 [ %.015225, %.lr.ph226 ], [ true, %.thread161 ], [ %.015225, %.critedge2.loopexit ] ; 2 uses
  %i.eo = add nuw i32 %.sroa.0131.0220, 1         ; 2 uses
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp ult i32 %i.eo, %i.eu
  br i1 %i.ev, label %.lr.ph226, label %._crit_edge, !llvm.loop !131

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cz) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.a, %bb.p
  %.not.i.i67 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i67, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit
  %i.ew = ptrtoint ptr %.sroa.16156.0 to i64
  %i.ex = ptrtoint ptr %.sroa.0149.0 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = ashr exact i64 %i.ey, 3
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.fa
  tail call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ey) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.sroa.0136.1.lcssa280 = phi ptr [ %.sroa.0136.4, %._crit_edge ], [ %.sroa.0136.0, %bb.b ] ; 3 uses
  %.sroa.17.1.lcssa279 = phi ptr [ %.sroa.17.4, %._crit_edge ], [ %.sroa.17.0, %bb.b ]
  %.not.i.i.i68 = icmp eq ptr %.sroa.0136.1.lcssa280, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.fc = ptrtoint ptr %.sroa.17.1.lcssa279 to i64
  %i.fd = ptrtoint ptr %.sroa.0136.1.lcssa280 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.1.lcssa280, i64 noundef %i.fe) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69: ; preds = %._crit_edge.thread, %bb.r
  %.not.i.i70 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i70, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit71, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69
  %i.ff = ptrtoint ptr %.sroa.16156.0 to i64
  %i.fg = ptrtoint ptr %.sroa.0149.0 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.fj
  tail call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fh) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit71

_ZNSt13_Bvector_baseISaIbEED2Ev.exit71:           ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69, %bb.s
  ret i1 true

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.q, %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit
  resume { ptr, i32 } %lpad.loopexit.split-lp393
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco11CornerTable20ComputeVertexCornersEi(ptr noundef nonnull align 8 dereferenceable(168) initializes((72, 76)) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.35", align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = sext i32 %1 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.e, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5dracoL19kInvalidCornerIndexE)
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !30
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.p, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i32 0, ptr %i.q, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr null, ptr %i.r, align 8, !tbaa !65
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %bb.e, label %.noexc

.noexc:                                           ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit
  %i.s = add nsw i64 %i.c, 63                     ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 2305843009213693944
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #14 ; 5 uses
  %i.w = lshr i64 %i.s, 6                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %i.x, ptr %i.r, align 8, !tbaa !65
  store ptr %i.v, ptr %2, align 8
  store i32 0, ptr %i.o, align 8
  %i.y = sdiv i32 %1, 64
  %.sext194 = sext i32 %i.y to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.sext194
  %i.aa = and i64 %i.c, -9223372036854775745
  %i.ab = icmp ugt i64 %i.aa, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ab, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.ac = and i32 %1, 63                          ; 2 uses
  store ptr %storemerge.i.i.i.i.i, ptr %i.p, align 8
  store i32 %i.ac, ptr %i.q, align 8
  %.idx.i = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %.idx.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit, %.noexc
  %.sroa.2.0.copyload.i230 = phi i32 [ 0, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit ], [ %i.ac, %.noexc ]
  %.sroa.0.0.copyload.i228 = phi ptr [ null, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit ], [ %storemerge.i.i.i.i.i, %.noexc ]
  %i.ad = phi ptr [ null, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEE6resizeEmRKS5_.exit ], [ %i.v, %.noexc ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = shl i64 %i.aj, 30
  %i.al = ashr i64 %i.ak, 32                      ; 2 uses
  %.not.i.i42 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i42, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i64 %i.al, 63                   ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 2305843009213693944
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #14
          to label %.noexc46 unwind label %bb.g   ; 3 uses

.noexc46:                                         ; preds = %bb.f
  %i.aq = lshr i64 %i.am, 6                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %.idx.i45 = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %.idx.i45, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47:          ; preds = %.noexc46, %bb.e
  %.sroa.0166.0 = phi ptr [ null, %bb.e ], [ %i.ap, %.noexc46 ] ; 6 uses
  %.sroa.16173.0 = phi ptr [ null, %bb.e ], [ %i.ar, %.noexc46 ] ; 4 uses
  %i.as = ashr exact i64 %i.aj, 2
  %i.at = udiv i64 %i.as, 3
  %i.au = and i64 %i.at, 4294967295
  %.not217 = icmp eq i64 %i.au, 0
  br i1 %.not217, label %._crit_edge, label %.lr.ph210

.lr.ph210:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %i.p, align 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %i.q, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge.loopexit ], [ %.sroa.2.0.copyload.i230, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47 ] ; 2 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i228, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47 ] ; 2 uses
  %i.ba = phi ptr [ %i.iy, %._crit_edge.loopexit ], [ %i.ad, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit47 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !169
  %i.bc = icmp ne ptr %i.ba, %.sroa.0.0.copyload.i
  %i.bd = icmp ne i32 %.sroa.2.0.copyload.i, 0
  %.not3.i211 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %.not3.i211, label %.lr.ph215, label %._crit_edge216

bb.g:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit106

bb.h:                                             ; preds = %.lr.ph210, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread
  %i.bf = phi ptr [ %i.ag, %.lr.ph210 ], [ %i.iw, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 5 uses
  %i.bg = phi ptr [ %i.af, %.lr.ph210 ], [ %i.ix, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 2 uses
  %i.bh = phi ptr [ %i.ad, %.lr.ph210 ], [ %i.iy, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %i.bi = phi ptr [ %i.ad, %.lr.ph210 ], [ %i.iz, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %indvars.iv221 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next222, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %.0209 = phi i32 [ %1, %.lr.ph210 ], [ %.4, %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %i.bj = trunc nuw i64 %indvars.iv221 to i32
  %i.bk = mul i32 %i.bj, 3                        ; 7 uses
  %i.bl = icmp eq i64 %indvars.iv221, 1431655765
  br i1 %i.bl, label %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.h
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24, !noalias !170 ; 2 uses
  %i.bp = add nuw i32 %i.bk, 1                    ; 2 uses
  %i.bq = urem i32 %i.bp, 3
  %.not.i.i50 = icmp eq i32 %i.bq, 0
  %i.br = add i32 %i.bk, -2
  %spec.select.i.i = select i1 %.not.i.i50, i32 %i.br, i32 %i.bp ; 2 uses
  %i.bs = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.bt = zext i32 %spec.select.i.i to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24, !noalias !171
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %storemerge.i3.ph.i = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.bv, %bb.i ] ; 2 uses
  %i.bw = urem i32 %i.bk, 3
  %.not.i5.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i5.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread39.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread39.i: ; preds = %bb.j
  %i.bx = add i32 %i.bk, -1
  br label %bb.k

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.j
  %i.by = add i32 %i.bk, 2                        ; 2 uses
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread39.i
  %.sink.i645.i = phi i32 [ %i.bx, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread39.i ], [ %i.by, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ca = zext i32 %.sink.i645.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24, !noalias !172
  br label %_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.k
  %storemerge.i7.i = phi i32 [ %i.cc, %bb.k ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 2 uses
  %i.cd = icmp eq i32 %i.bo, %storemerge.i3.ph.i
  %i.ce = icmp eq i32 %i.bo, %storemerge.i7.i
  %or.cond.i = select i1 %i.cd, i1 true, i1 %i.ce
end_hunk_0
begin_hunk_1_@_ZNK5draco11CornerTable16ConfidentValenceENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE:bb.a
  %i.o = zext i32 %spec.select.i.i.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !54, !noalias !217 ; 3 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.s = add nuw i32 %i.q, 1                      ; 2 uses
  %i.t = urem i32 %i.s, 3
  %.not.i1.i.i = icmp eq i32 %i.t, 0
  %i.u = add i32 %i.q, -2
  %spec.select.i2.i.i = select i1 %.not.i1.i.i, i32 %i.u, i32 %i.s ; 3 uses
  %i.v = icmp eq i32 %spec.select.i2.i.i, -1
  br i1 %i.v, label %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.w = icmp eq i32 %spec.select.i2.i.i, %i.f
  br i1 %i.w, label %._crit_edge, label %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.x = urem i32 %.sroa.7.05, 3
  %.not.i.i1.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i1.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i.i: ; preds = %bb.d
  %i.y = add i32 %.sroa.7.05, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.d
  %i.z = add i32 %.sroa.7.05, 2                   ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i.i
  %.sink.i9.i.i = phi i32 [ %i.y, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i.i ], [ %i.z, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ab = zext i32 %.sink.i9.i.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54, !noalias !218 ; 4 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i
  %i.af = urem i32 %i.ad, 3
  %.not.i1.i3.i = icmp eq i32 %i.af, 0
  br i1 %.not.i1.i3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.ad, -1
  br label %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = add i32 %i.ad, 2
  br label %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit

_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit: ; preds = %bb.c, %bb.f, %bb.g, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %.sroa.7.1 = phi i32 [ %i.f, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ], [ %i.ag, %bb.f ], [ %spec.select.i2.i.i, %bb.c ], [ %i.f, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.f, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.14.1 = phi i1 [ false, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ], [ false, %bb.f ], [ true, %bb.c ], [ false, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ false, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ], [ false, %bb.g ]
  %i.ai = icmp eq i32 %.sroa.7.1, -1
  br i1 %i.ai, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %_ZN5draco18VertexRingIteratorINS_11CornerTableEE4NextEv.exit ], [ %i.j, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ], [ %i.j, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2.i ], [ %i.j, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN5draco11CornerTable21UpdateFaceToVertexMapENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofreeobj noundef readonly align 4 captures(none) dead_on_return dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.draco::VertexCornersIterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = load i32, ptr %1, align 4, !tbaa !24
  store ptr %0, ptr %2, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = zext i32 %i.a to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !222
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54, !noalias !222 ; 4 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !54, !alias.scope !222
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.i, align 8, !tbaa !71
  %i.j = icmp eq i32 %i.g, -1
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.k = phi i32 [ %.pr, %.lr.ph ], [ %i.g, %bb.a ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %1, align 4, !tbaa !24
  store i32 %i.o, ptr %i.n, align 4, !tbaa !24
  call void @_ZN5draco21VertexCornersIteratorINS_11CornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %2)
  %.pr = load i32, ptr %i.h, align 4, !tbaa !54   ; 2 uses
  %i.p = icmp eq i32 %.pr, -1
  br i1 %i.p, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 19 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !54     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -4                          ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 7 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 4611686018427387903
  %i.p = and i64 %i.o, 4611686018427387903        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check169 = icmp samesign ult i64 %i.p, 7
  br i1 %min.iters.check169, label %.lr.ph.i.i.i.i.i.preheader271, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec171 = and i64 %i.q, 9223372036854775800   ; 3 uses
  %i.r = shl i64 %n.vec171, 2                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %i.u = shl i64 %index173, 2                     ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load176 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !54
  %wide.load177 = load <4 x i32>, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr i8, ptr %next.gep174, i64 16
  store <4 x i32> %wide.load176, ptr %next.gep174, align 4, !tbaa !54
  store <4 x i32> %wide.load177, ptr %i.w, align 4, !tbaa !54
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.x, label %middle.block179, label %vector.body172, !llvm.loop !223

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.q, %n.vec171
  br i1 %cmp.n180, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader271

.lr.ph.i.i.i.i.i.preheader271:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block179
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block179 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block179 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader271, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader271 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader271 ] ; 2 uses
  %i.y = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !54
  store i32 %i.y, ptr %.013.i.i.i.i.i, align 4, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block179, %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !30
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ac, %i.j
  %i.ae = ashr exact i64 %i.ad, 2                 ; 6 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i69.preheader, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check186 = icmp ult i64 %i.ae, 8
  %i.ag = add i64 %.neg, -1
  %diff.check188 = icmp ult i64 %i.ag, 31
  %or.cond = or i1 %min.iters.check186, %diff.check188
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i69.preheader270, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %n.vec190 = and i64 %i.ae, 9223372036854775800  ; 3 uses
  %i.ah = and i64 %i.ae, 7
  %i.ai = mul i64 %n.vec190, -4                   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %i.al = mul i64 %index192, -4                   ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.d, i64 %i.al ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.n, i64 %i.al ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %next.gep194, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep194, i64 -32
  %wide.load195 = load <4 x i32>, ptr %i.am, align 4, !tbaa !54
  %wide.load196 = load <4 x i32>, ptr %i.an, align 4, !tbaa !54
  %i.ao = getelementptr inbounds i8, ptr %next.gep193, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %next.gep193, i64 -32
  store <4 x i32> %wide.load195, ptr %i.ao, align 4, !tbaa !54
  store <4 x i32> %wide.load196, ptr %i.ap, align 4, !tbaa !54
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.aq, label %middle.block198, label %vector.body191, !llvm.loop !225

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %i.ae, %n.vec190
  br i1 %cmp.n199, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i69.preheader270

.lr.ph.i.i.i.i.i69.preheader270:                  ; preds = %.lr.ph.i.i.i.i.i69.preheader, %middle.block198
  %.010.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ah, %middle.block198 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.aj, %middle.block198 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ak, %middle.block198 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader270, %.lr.ph.i.i.i.i.i69
  %.010.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i69 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i69 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i69 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !54
  store i32 %i.at, ptr %i.as, align 4, !tbaa !54
  %i.au = add nsw i64 %.010.i.i.i.i.i, -1
  %i.av = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, !llvm.loop !226

_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block198, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ax = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check204 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check204, label %.lr.ph.i.i.i.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
  %n.vec206 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec206, 2
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph205
  %index210 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body209 ] ; 2 uses
  %i.bc = shl i64 %index210, 2
  %next.gep211 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep211, i64 16
  store <4 x i32> %broadcast.splat208, ptr %next.gep211, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat208, ptr %i.bd, align 4, !tbaa !54
  %index.next212 = add nuw i64 %index210, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.be, label %middle.block213, label %vector.body209, !llvm.loop !227

middle.block213:                                  ; preds = %vector.body209
  %cmp.n214 = icmp eq i64 %i.az, %n.vec206
  br i1 %cmp.n214, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %middle.block213
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit ], [ %i.bb, %middle.block213 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.aw
  br i1 %.not.i.i.i, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !228

bb.e:                                             ; preds = %bb.c
  %i.bg = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader274, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh   ; 2 uses
  %i.bj = and i64 %i.bg, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader274

.lr.ph.i.i.i.i.preheader274:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.014.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader274, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader274 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader274 ]
  store i32 %i.i, ptr %.014.i.i.i.i, align 4, !tbaa !54
  %i.bn = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !230

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.e ], [ %i.bi, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 6 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %.0.lcssa.i.i.i.i140 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.bp = add i64 %i.f, -4
  %i.bq = sub i64 %i.bp, %i.j                     ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.bq, 44
  %i.bt = sub i64 %i.j, %.0.lcssa.i.i.i.i140
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond266 = select i1 %min.iters.check142, i1 true, i1 %diff.check
  br i1 %or.cond266, label %.lr.ph.i.i.i.i.i71.preheader273, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec144 = and i64 %i.bs, 9223372036854775800  ; 3 uses
  %i.bu = shl i64 %n.vec144, 2                    ; 2 uses
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 2 uses
  %i.bx = shl i64 %index146, 2                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bx ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !54
  %wide.load149 = load <4 x i32>, ptr %i.by, align 4, !tbaa !54
  %i.bz = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %wide.load, ptr %next.gep147, align 4, !tbaa !54
  store <4 x i32> %wide.load149, ptr %i.bz, align 4, !tbaa !54
  %index.next150 = add nuw i64 %index146, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.ca, label %middle.block151, label %vector.body145, !llvm.loop !231

middle.block151:                                  ; preds = %vector.body145
  %cmp.n152 = icmp eq i64 %i.bs, %n.vec144
  br i1 %cmp.n152, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71.preheader273

.lr.ph.i.i.i.i.i71.preheader273:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block151
  %.013.i.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bv, %middle.block151 ]
  %.sroa.08.012.i.i.i.i.i73.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bw, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !30
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader273, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i71 ], [ %.013.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader273 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i71 ], [ %.sroa.08.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader273 ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.08.012.i.i.i.i.i73, align 4, !tbaa !54
  store i32 %i.cc, ptr %.013.i.i.i.i.i72, align 4, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 4
  %.not.i.i.i.i.i74 = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !232

.lr.ph.preheader.i.i.i78:                         ; preds = %.lr.ph.i.i.i.i.i71, %middle.block151
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !30
  %i.cg = add i64 %i.f, -4
  %i.ch = sub i64 %i.cg, %i.j                     ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check156, label %.lr.ph.i.i.i80.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.preheader.i.i.i78
  %n.vec158 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec158, 2
  %i.cl = getelementptr i8, ptr %1, i64 %i.ck
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.cm = shl i64 %index162, 2
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep163, i64 16
  store <4 x i32> %broadcast.splat160, ptr %next.gep163, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat160, ptr %i.cn, align 4, !tbaa !54
  %index.next164 = add nuw i64 %index162, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.co, label %middle.block165, label %vector.body161, !llvm.loop !233

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.cj, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80.preheader

.lr.ph.i.i.i80.preheader:                         ; preds = %.lr.ph.preheader.i.i.i78, %middle.block165
  %.06.i.i.i81.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i78 ], [ %i.cl, %middle.block165 ]
  br label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i.i.i80.preheader, %.lr.ph.i.i.i80
  %.06.i.i.i81 = phi ptr [ %i.cp, %.lr.ph.i.i.i80 ], [ %.06.i.i.i81.ph, %.lr.ph.i.i.i80.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i81, align 4, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.cp, %i.d
  br i1 %.not.i.i.i82, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80, !llvm.loop !234

bb.f:                                             ; preds = %bb.b
  %i.cq = load ptr, ptr %0, align 8, !tbaa !31    ; 7 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 4 uses
  %i.cs = sub i64 %i.f, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2                 ; 4 uses
  %i.cu = sub nsw i64 2305843009213693951, %i.ct
  %i.cv = icmp ult i64 %i.cu, %2
  br i1 %i.cv, label %bb.g, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.f
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %2)
  %i.cw = add nsw i64 %.sroa.speculated.i, %i.ct  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.ct
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  %i.cz = select i1 %i.cx, i64 2305843009213693951, i64 %i.cy ; 3 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.db = sub i64 %i.da, %i.cr
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i85, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dc = shl nuw nsw i64 %i.cz, 2
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #14
  br label %.lr.ph.preheader.i.i.i.i85

.lr.ph.preheader.i.i.i.i85:                       ; preds = %bb.h, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.de = phi ptr [ %i.dd, %bb.h ], [ null, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db ; 3 uses
  %.pre.i.i.i.i86 = load i32, ptr %3, align 4, !tbaa !54 ; 2 uses
  %min.iters.check217 = icmp ult i64 %2, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i87.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.preheader.i.i.i.i85
  %n.vec219 = and i64 %2, -8                      ; 3 uses
  %i.dg = shl i64 %n.vec219, 2
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = and i64 %2, 7
  %broadcast.splatinsert220 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i86, i64 0
  %broadcast.splat221 = shufflevector <4 x i32> %broadcast.splatinsert220, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph218
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next225, %vector.body222 ] ; 2 uses
  %i.dj = shl i64 %index223, 2
  %next.gep224 = getelementptr i8, ptr %i.df, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> %broadcast.splat221, ptr %next.gep224, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat221, ptr %i.dk, align 4, !tbaa !54
  %index.next225 = add nuw i64 %index223, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.dl, label %middle.block226, label %vector.body222, !llvm.loop !235

middle.block226:                                  ; preds = %vector.body222
  %cmp.n227 = icmp eq i64 %2, %n.vec219
  br i1 %cmp.n227, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87.preheader

.lr.ph.i.i.i.i87.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i85, %middle.block226
  %.014.i.i.i.i88.ph = phi ptr [ %i.df, %.lr.ph.preheader.i.i.i.i85 ], [ %i.dh, %middle.block226 ]
  %.01113.i.i.i.i89.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i85 ], [ %i.di, %middle.block226 ]
  br label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.preheader, %.lr.ph.i.i.i.i87
  %.014.i.i.i.i88 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i87 ], [ %.014.i.i.i.i88.ph, %.lr.ph.i.i.i.i87.preheader ] ; 2 uses
  %.01113.i.i.i.i89 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i87 ], [ %.01113.i.i.i.i89.ph, %.lr.ph.i.i.i.i87.preheader ]
  store i32 %.pre.i.i.i.i86, ptr %.014.i.i.i.i88, align 4, !tbaa !54
  %i.dm = add i64 %.01113.i.i.i.i89, -1           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i88, i64 4
  %.not.i.i.i.i90 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i90, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87, !llvm.loop !236

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92: ; preds = %.lr.ph.i.i.i.i87, %middle.block226
  %.not13.i.i.i.i.i = icmp eq ptr %i.cq, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i93.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
  %i.do = add i64 %i.da, -4
  %i.dp = sub i64 %i.do, %i.cr                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.dp, 28
  br i1 %min.iters.check231, label %.lr.ph.i.i.i.i.i93.preheader268, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i.i.i.i.i93.preheader
  %n.vec233 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.ds = shl i64 %n.vec233, 2                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.de, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.cq, i64 %i.ds
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next240, %vector.body234 ] ; 2 uses
  %i.dv = shl i64 %index235, 2                    ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.de, i64 %i.dv ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.cq, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep237, i64 16
  %wide.load238 = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !54
  %wide.load239 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !54
  %i.dx = getelementptr i8, ptr %next.gep236, i64 16
  store <4 x i32> %wide.load238, ptr %next.gep236, align 4, !tbaa !54
  store <4 x i32> %wide.load239, ptr %i.dx, align 4, !tbaa !54
  %index.next240 = add nuw i64 %index235, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.dy, label %middle.block241, label %vector.body234, !llvm.loop !237

middle.block241:                                  ; preds = %vector.body234
  %cmp.n242 = icmp eq i64 %i.dr, %n.vec233
  br i1 %cmp.n242, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader268

.lr.ph.i.i.i.i.i93.preheader268:                  ; preds = %.lr.ph.i.i.i.i.i93.preheader, %middle.block241
  %.015.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.dt, %middle.block241 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.du, %middle.block241 ]
  br label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %.lr.ph.i.i.i.i.i93.preheader268, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i93 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader268 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i93 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader268 ] ; 2 uses
  %i.dz = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !54
  store i32 %i.dz, ptr %.015.i.i.i.i.i, align 4, !tbaa !54
  %i.ea = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.ea, %1
  br i1 %.not.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93, !llvm.loop !238

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i93, %middle.block241, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
  %.0.lcssa.i.i.i.i.i95 = phi ptr [ %i.de, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92 ], [ %i.dt, %middle.block241 ], [ %i.eb, %.lr.ph.i.i.i.i.i93 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i95248 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i95 to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i.i.i.i95, i64 %2 ; 5 uses
  %.not13.i.i.i.i.i96 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ed = add i64 %i.f, -4
  %i.ee = sub i64 %i.ed, %i.da                    ; 2 uses
  %i.ef = lshr i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check250 = icmp ult i64 %i.ee, 76
  br i1 %min.iters.check250, label %.lr.ph.i.i.i.i.i97.preheader267, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %i.eh = shl i64 %2, 2
  %i.ei = add i64 %i.eh, %.0.lcssa.i.i.i.i.i95248
  %i.ej = sub i64 %i.da, %i.ei
  %diff.check252 = icmp ugt i64 %i.ej, -32
  br i1 %diff.check252, label %.lr.ph.i.i.i.i.i97.preheader267, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck251
  %n.vec254 = and i64 %i.eg, 9223372036854775800  ; 3 uses
  %i.ek = shl i64 %n.vec254, 2                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ec, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.ek
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.en = shl i64 %index256, 2                    ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.ec, i64 %i.en ; 2 uses
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep258, i64 16
  %wide.load259 = load <4 x i32>, ptr %next.gep258, align 4, !tbaa !54
  %wide.load260 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !54
  %i.ep = getelementptr i8, ptr %next.gep257, i64 16
  store <4 x i32> %wide.load259, ptr %next.gep257, align 4, !tbaa !54
  store <4 x i32> %wide.load260, ptr %i.ep, align 4, !tbaa !54
  %index.next261 = add nuw i64 %index256, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.eq, label %middle.block262, label %vector.body255, !llvm.loop !239

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.eg, %n.vec254
  br i1 %cmp.n263, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader267

.lr.ph.i.i.i.i.i97.preheader267:                  ; preds = %vector.memcheck251, %.lr.ph.i.i.i.i.i97.preheader, %middle.block262
  %.015.i.i.i.i.i98.ph = phi ptr [ %i.ec, %vector.memcheck251 ], [ %i.ec, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.el, %middle.block262 ]
  %.01214.i.i.i.i.i99.ph = phi ptr [ %1, %vector.memcheck251 ], [ %1, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.em, %middle.block262 ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader267, %.lr.ph.i.i.i.i.i97
  %.015.i.i.i.i.i98 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i97 ], [ %.015.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader267 ] ; 2 uses
  %.01214.i.i.i.i.i99 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i97 ], [ %.01214.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader267 ] ; 2 uses
  %i.er = load i32, ptr %.01214.i.i.i.i.i99, align 4, !tbaa !54
  store i32 %i.er, ptr %.015.i.i.i.i.i98, align 4, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i99, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i98, i64 4 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.es, %i.d
  br i1 %.not.i.i.i.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97, !llvm.loop !240

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102: ; preds = %.lr.ph.i.i.i.i.i97, %middle.block262, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i101 = phi ptr [ %i.ec, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.el, %middle.block262 ], [ %i.et, %.lr.ph.i.i.i.i.i97 ]
  %.not.i103 = icmp eq ptr %i.cq, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102
  %i.eu = sub i64 %i.e, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.eu) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, %bb.i
  store ptr %i.de, ptr %0, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i.i.i101, ptr %i.c, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i80, %.lr.ph.i.i.i, %middle.block165, %middle.block213, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco11CornerTableD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15
  br label %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit

_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i1, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i2, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit, %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i3, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !24
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !24
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !24
  %wide.load13 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !24
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24
  store <4 x i32> %wide.load13, ptr %i.ai, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.i.preheader15:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %i.ak = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !24
  store i32 %i.ak, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !242

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.c, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !67
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !24
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !243

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !24
  %i.r = add nsw i64 %.01113.i.i.i.i.i.i, -1      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !244

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !27
  store ptr %i.t, ptr %i.a, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !24
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !245

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block41
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block41 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !246

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block41, %bb.f
  %i.al = sub i64 %1, %i.z                        ; 5 uses
  %.pre.i.i.i.i13 = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.al, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i14.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit
  %n.vec47 = and i64 %i.al, -8                    ; 3 uses
  %i.am = shl i64 %n.vec47, 2
  %i.an = getelementptr i8, ptr %i.w, i64 %i.am   ; 2 uses
  %i.ao = and i64 %i.al, 7
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i13, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ap = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %i.w, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %broadcast.splat49, ptr %next.gep52, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat49, ptr %i.aq, align 4, !tbaa !24
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.ar, label %middle.block54, label %vector.body50, !llvm.loop !247

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %i.al, %n.vec47
  br i1 %cmp.n55, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, %middle.block54
  %.014.i.i.i.i.ph = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit ], [ %i.an, %middle.block54 ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.al, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit ], [ %i.ao, %middle.block54 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
  %.014.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i14 ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i14 ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ]
  store i32 %.pre.i.i.i.i13, ptr %.014.i.i.i.i, align 4, !tbaa !24
  %i.as = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i15, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14, !llvm.loop !248

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i14, %middle.block54
  %.lcssa30 = phi ptr [ %i.an, %middle.block54 ], [ %i.at, %.lr.ph.i.i.i.i14 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.pre.i.i.i.i17 = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.aw = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i16
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %i.c, i64 %i.az
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i16, %middle.block
  %.06.i.i.i.i19.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i16 ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader, %.lr.ph.i.i.i.i18
  %.06.i.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i.i18 ], [ %.06.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i17, ptr %.06.i.i.i.i19, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.be, %i.av
  br i1 %.not.i.i.i.i20, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18, !llvm.loop !250

_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i18, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !54
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !251

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !54
  %i.r = add nsw i64 %.01113.i.i.i.i.i.i, -1      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !31
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !30
  store ptr %i.t, ptr %i.a, align 8, !tbaa !66
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !54
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !253

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block41
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block41 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !254

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block41, %bb.f
  %i.al = sub i64 %1, %i.z                        ; 5 uses
  %.pre.i.i.i.i13 = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.al, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i14.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit
  %n.vec47 = and i64 %i.al, -8                    ; 3 uses
  %i.am = shl i64 %n.vec47, 2
  %i.an = getelementptr i8, ptr %i.w, i64 %i.am   ; 2 uses
  %i.ao = and i64 %i.al, 7
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i13, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ap = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %i.w, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %broadcast.splat49, ptr %next.gep52, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat49, ptr %i.aq, align 4, !tbaa !54
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.ar, label %middle.block54, label %vector.body50, !llvm.loop !255

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %i.al, %n.vec47
  br i1 %cmp.n55, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, %middle.block54
  %.014.i.i.i.i.ph = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit ], [ %i.an, %middle.block54 ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.al, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit ], [ %i.ao, %middle.block54 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
  %.014.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i14 ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i14 ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ]
  store i32 %.pre.i.i.i.i13, ptr %.014.i.i.i.i, align 4, !tbaa !54
  %i.as = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i15, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14, !llvm.loop !256

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i14, %middle.block54
  %.lcssa30 = phi ptr [ %i.an, %middle.block54 ], [ %i.at, %.lr.ph.i.i.i.i14 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.pre.i.i.i.i17 = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %i.aw = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i16
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %i.c, i64 %i.az
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i16, %middle.block
  %.06.i.i.i.i19.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i16 ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader, %.lr.ph.i.i.i.i18
  %.06.i.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i.i18 ], [ %.06.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i17, ptr %.06.i.i.i.i19, align 4, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.be, %i.av
  br i1 %.not.i.i.i.i20, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18, !llvm.loop !258

_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i18, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !26     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !72

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !26
  store i32 %i.s, ptr %i.d, align 4, !tbaa !26
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !32
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !26
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !259

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !260

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !262

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !26
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !32
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !26
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !263

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !264

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !26    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !26
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !265

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !266

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !72

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !26
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !26
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !72

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !14
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !15
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !56
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !56
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !56
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !56
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %4 = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %4, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !267

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.ak = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.al = load i64, ptr %1, align 8, !tbaa !56
  %i.am = or i64 %i.al, %i.ak
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.an = xor i64 %i.ak, -1
  %i.ao = load i64, ptr %1, align 8, !tbaa !56
  %i.ap = and i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.ap, %bb.f ], [ %i.am, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !56
  %i.aq = add i32 %i.f, 1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !62
  %i.ar = icmp eq i32 %i.f, 63
  br i1 %i.ar, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.as, ptr %i.a, align 8, !tbaa !61
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = sub i64 %i.g, %i.au                     ; 3 uses
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = zext i32 %i.f to i64
  %i.ay = add nsw i64 %i.aw, %i.ax                ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775744
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.ba = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775744)
  %i.bd = add nuw nsw i64 %i.bc, 63
  %i.be = select i1 %i.bb, i64 9223372036854775807, i64 %i.bd ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1152921504606846968
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #14 ; 5 uses
  %i.bi = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bj = sub i64 %i.bi, %i.au                    ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 8
  br i1 %i.bk, label %bb.j, label %bb.k, !prof !72

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.at, i64 %i.bj, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bl = icmp eq i64 %i.bj, 8
  br i1 %i.bl, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bm = load i64, ptr %i.at, align 8, !tbaa !56
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !56
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.bo = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bp = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !56
  %i.bs = and i64 %i.br, %i.bq
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bs, 0
  %i.bt = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bu = shl nuw i64 1, %i.bt                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bv = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !56
  %i.bw = or i64 %i.bv, %i.bu
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bx = xor i64 %i.bu, -1
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !56
  %i.bz = and i64 %i.by, %i.bx
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.n ], [ %i.bw, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !56
  %i.ca = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.cb = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.cb, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.cb, i32 0, i32 %i.ca
  %i.cc = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.cd = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.cd, i32 0, i32 %i.cc ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.cd, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.ce = add nsw i64 %.020.i.i.i.i.i.i, -1
  %5 = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %5, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !268

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.cf = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.cg = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.cg, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bn, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.cf, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.ch, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bn, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.ci = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cj = shl nuw i64 1, %i.ci                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.ck = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !56
  %i.cl = or i64 %i.ck, %i.cj
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cm = xor i64 %i.cj, -1
  %i.cn = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !56
  %i.co = and i64 %i.cn, %i.cm
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.co, %bb.q ], [ %i.cl, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !56
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.cp = sub i64 %i.g, %i.bi
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cs = zext i32 %2 to i64
  %i.ct = sub nsw i64 %i.cr, %i.cs
  %i.cu = add i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dl, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cu, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.cw = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.cz = shl nuw i64 1, %i.cy                    ; 2 uses
  %i.da = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !56
  %i.db = and i64 %i.da, %i.cx
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !56
  %i.dd = or i64 %i.dc, %i.cz
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = xor i64 %i.cz, -1
  %i.df = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !56
  %i.dg = and i64 %i.df, %i.de
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.dd, %bb.r ], [ %i.dg, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !56
  %i.dh = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.di = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.di, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.di, i32 0, i32 %i.dh
  %i.dj = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dk = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dk, i32 0, i32 %i.dj ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dk, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dl = add nsw i64 %.024.i.i.i.i.i62, -1
  %6 = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %6, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !269

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.at, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dm = ashr exact i64 %i.av, 3
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dn
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.av) #15
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dp = lshr i64 %i.be, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !65
  store ptr %i.bh, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco21VertexCornersIteratorINS_11CornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !range !282, !noundef !283
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54   ; 6 uses
  %i.g = icmp eq i32 %i.f, -1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  %i.i = urem i32 %i.h, 3
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = add i32 %i.f, -2
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.j, i32 %i.h ; 2 uses
  %i.k = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.k, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = zext i32 %spec.select.i.i to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !31, !noalias !284
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !284 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.b, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  store i32 -1, ptr %i.e, align 4, !tbaa !54
  br label %bb.c

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.r = add nuw i32 %i.p, 1                      ; 2 uses
  %i.s = urem i32 %i.r, 3
  %.not.i1.i = icmp eq i32 %i.s, 0
  %i.t = add i32 %i.p, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.t, i32 %i.r ; 3 uses
  store i32 %spec.select.i2.i, ptr %i.e, align 4, !tbaa !54
  %i.u = icmp eq i32 %spec.select.i2.i, -1
  br i1 %i.u, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !54   ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = urem i32 %i.w, 3
  %.not.i.i1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i1, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.d
  %i.z = add i32 %i.w, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.d
  %i.aa = add i32 %i.w, 2                         ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.z, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.aa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = zext i32 %.sink.i9.i to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !31, !noalias !285
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54, !noalias !285 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2
  %i.ai = urem i32 %i.ag, 3
  %.not.i1.i3 = icmp eq i32 %i.ai, 0
  br i1 %.not.i1.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.ag, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = add i32 %i.ag, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.c, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2, %bb.f, %bb.g
  %.sink.i2.i = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.g ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2 ], [ -1, %bb.c ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  store i32 %.sink.i2.i, ptr %i.e, align 4, !tbaa !54
  store i8 0, ptr %i.a, align 8, !tbaa !71
  br label %bb.o

bb.h:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !54
  %i.an = icmp eq i32 %spec.select.i2.i, %i.am
  br i1 %i.an, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.e, align 4, !tbaa !54
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = urem i32 %i.f, 3
  %.not.i.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i4, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5: ; preds = %bb.k
  %i.ap = add i32 %i.f, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10: ; preds = %bb.k
  %i.aq = add i32 %i.f, 2                         ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5
  %.sink.i9.i7 = phi i32 [ %i.ap, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5 ], [ %i.aq, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.at = zext i32 %.sink.i9.i7 to i64
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !31, !noalias !286
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54, !noalias !286 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6
  %i.ay = urem i32 %i.aw, 3
  %.not.i1.i8 = icmp eq i32 %i.ay, 0
  br i1 %.not.i1.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = add i32 %i.aw, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11

bb.n:                                             ; preds = %bb.l
  %i.ba = add i32 %i.aw, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11: ; preds = %bb.j, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6, %bb.m, %bb.n
  %.sink.i2.i9 = phi i32 [ %i.az, %bb.m ], [ %i.ba, %bb.n ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6 ], [ -1, %bb.j ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10 ]
  store i32 %.sink.i2.i9, ptr %i.e, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.i, %bb.h, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
