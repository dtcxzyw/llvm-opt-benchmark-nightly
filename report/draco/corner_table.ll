Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/corner_table?download=true
inline.NumInlined: 1215
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5draco11CornerTable22ComputeOppositeCornersEPi:bb.a
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv239.lcssa
  store i32 -1, ptr %i.fs, align 4, !tbaa !24
  %i.ft = icmp eq i32 %i.ff, -1
  br i1 %i.ft, label %.thread.thread, label %bb.ah

.thread.thread:                                   ; preds = %bb.ae, %.lr.ph213, %bb.z, %.thread
  %i.fu = zext i32 %storemerge.i109 to i64        ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !26 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph219.preheader, label %.loopexit

.lr.ph219.preheader:                              ; preds = %.thread.thread
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0307, i64 %i.fu
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !26
  %i.ga = sext i32 %i.fz to i64
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %bb.ag
  %indvars.iv242 = phi i64 [ %i.ga, %.lr.ph219.preheader ], [ %indvars.iv.next243, %bb.ag ] ; 3 uses
  %.0217 = phi i32 [ 0, %.lr.ph219.preheader ], [ %i.gg, %bb.ag ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv242
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !24
  %i.gd = icmp eq i32 %i.gc, -1
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph219
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv242 ; 2 uses
  store i32 %storemerge.i113310, ptr %i.ge, align 4, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %.sroa.0158.0220, ptr %i.gf, align 4, !tbaa !54
  br label %.loopexit

bb.ag:                                            ; preds = %.lr.ph219
  %i.gg = add nuw nsw i32 %.0217, 1               ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1
  %exitcond245.not = icmp eq i32 %i.gg, %i.fw
  br i1 %exitcond245.not, label %.loopexit, label %.lr.ph219, !llvm.loop !105

bb.ah:                                            ; preds = %.thread
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.du
  store i32 %i.ff, ptr %i.gi, align 4, !tbaa !54
  %i.gj = zext i32 %i.ff to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gj
  store i32 %.sroa.0158.0220, ptr %i.gk, align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.thread.thread, %bb.ah, %bb.af, %.critedge
  %.pre-phi272 = phi i32 [ %.pre271, %.critedge ], [ %i.dx, %.thread.thread ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.af ], [ %i.dx, %bb.ag ] ; 2 uses
  %i.gl = icmp ult i32 %.pre-phi272, %.lcssa198301
  br i1 %i.gl, label %bb.v, label %._crit_edge222, !llvm.loop !106

bb.ai:                                            ; preds = %bb.r
  %i.gm = ptrtoint ptr %.sroa.0179.0 to i64
  %i.gn = sub i64 %.sroa.19.0, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.gn) #15
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124

_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124: ; preds = %bb.q, %bb.r, %bb.ai, %bb.m
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.co, %bb.q ], [ %i.cp, %bb.r ], [ %i.cp, %bb.ai ], [ %i.az, %bb.m ]
  %i.go = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIiSaIiEED2Ev.exit126, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !15
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit126

_ZNSt6vectorIiSaIiEED2Ev.exit126:                 ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn75.pn.pn

bb.ak:                                            ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit106
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco11CornerTable21BreakNonManifoldEdgesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = shl i64 %i.f, 30
  %i.h = ashr i64 %i.g, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.i = add nsw i64 %i.h, 63                     ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 2305843009213693944
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #14 ; 3 uses
  %i.m = lshr i64 %i.i, 6                         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.idx.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.0149.0 = phi ptr [ null, %bb.a ], [ %i.l, %.noexc ] ; 7 uses
  %.sroa.16156.0 = phi ptr [ null, %bb.a ], [ %i.n, %.noexc ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.p = phi ptr [ %i.c, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.el, %._crit_edge ] ; 2 uses
  %i.q = phi ptr [ %i.b, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.en, %._crit_edge ]
  %.sroa.17.0 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.17.4, %._crit_edge ] ; 2 uses
  %.sroa.10.0 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.10.4, %._crit_edge ]
  %.sroa.0136.0 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.0136.4, %._crit_edge ] ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = and i64 %i.t, 17179869180
  %.not230 = icmp eq i64 %i.u, 0
  br i1 %.not230, label %._crit_edge.thread, label %.lr.ph226

._crit_edge:                                      ; preds = %.critedge2
  br i1 %.318, label %bb.b, label %._crit_edge.thread, !llvm.loop !114

.lr.ph226:                                        ; preds = %bb.b, %.critedge2
  %i.v = phi ptr [ %i.el, %.critedge2 ], [ %i.p, %bb.b ]
  %.015225 = phi i1 [ %.318, %.critedge2 ], [ false, %bb.b ] ; 2 uses
  %.sroa.0136.1224 = phi ptr [ %.sroa.0136.4, %.critedge2 ], [ %.sroa.0136.0, %bb.b ] ; 4 uses
  %.sroa.10.1223 = phi ptr [ %.sroa.10.4, %.critedge2 ], [ %.sroa.10.0, %bb.b ] ; 3 uses
  %.sroa.17.1222 = phi ptr [ %.sroa.17.4, %.critedge2 ], [ %.sroa.17.0, %bb.b ] ; 2 uses
  %.sroa.0131.0220 = phi i32 [ %i.em, %.critedge2 ], [ 0, %bb.b ] ; 5 uses
  %i.w = lshr i32 %.sroa.0131.0220, 6
  %.zext = zext nneg i32 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0, i64 %.zext
  %i.y = and i32 %.sroa.0131.0220, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !56
  %i.ac = and i64 %i.ab, %i.aa
  %.not = icmp eq i64 %i.ac, 0
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
  %.sroa.0118.1 = phi i32 [ %i.ei, %bb.o ], [ %.sroa.0118.0, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.preheader ] ; 7 uses
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
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp ; 13 uses

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
  %1 = add i64 %i.cx, -8
  %2 = sub i64 %1, %i.cy
  %i.do = and i64 %2, -8                          ; 4 uses
  %scevgep371 = getelementptr i8, ptr %scevgep, i64 %i.do
  %scevgep372 = getelementptr i8, ptr %.sroa.0136.2, i64 4 ; 2 uses
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.do
  %scevgep374 = getelementptr i8, ptr %i.dh, i64 4
  %scevgep375 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.do
  %scevgep377 = getelementptr i8, ptr %.sroa.0136.2, i64 8
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.do
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
  %i.dp = shl i64 %n.vec, 3                       ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dh, i64 %i.dp  ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 3                       ; 3 uses
  %i.dt = or disjoint i64 %i.ds, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.ds
  %next.gep382 = getelementptr i8, ptr %i.dh, i64 %i.dt
  %next.gep383 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.ds
  %next.gep384 = getelementptr i8, ptr %.sroa.0136.2, i64 %i.dt
  %wide.vec = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !26
  %wide.vec386 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !26
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %wide.vec386, ptr %next.gep382, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader391

.lr.ph.i.i.i.i.i.i.preheader391:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0136.2, %vector.memcheck ], [ %.sroa.0136.2, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader391, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader391 ] ; 2 uses
  %i.dv = load <2 x i32>, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !26
  store <2 x i32> %i.dv, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dw, %.sroa.17.2
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !125

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dh, %.noexc74 ], [ %i.dq, %middle.block ], [ %i.dx, %.lr.ph.i.i.i.i.i.i ]
  %.not.i35.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i35.i, label %.noexc63, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cz) #15
  br label %.noexc63

.noexc63:                                         ; preds = %bb.m, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit34.i
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %.noexc63
  %.sroa.17.5 = phi ptr [ %i.dy, %.noexc63 ], [ %.sroa.17.2, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc63 ], [ %.sroa.10.2, %bb.j ]
  %.sroa.0136.5 = phi ptr [ %i.dh, %.noexc63 ], [ %.sroa.0136.2, %bb.j ] ; 2 uses
  %.sroa.10.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  br i1 %i.bp, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.n
  %i.dz = add i32 %.sroa.0118.1, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.n
  %i.ea = add i32 %.sroa.0118.1, 2                ; 2 uses
  %i.eb = icmp eq i32 %i.ea, -1
  br i1 %i.eb, label %.critedge2.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.dz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ea, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ec = zext i32 %.sink.i9.i to i64
  %i.ed = load ptr, ptr %i.o, align 8, !tbaa !31, !noalias !135
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !54, !noalias !135 ; 3 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %.critedge2.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65
  %i.eh = urem i32 %i.ef, 3
  %.not.i1.i66 = icmp eq i32 %i.eh, 0
  %. = select i1 %.not.i1.i66, i32 2, i32 -1
  %i.ei = add i32 %i.ef, %.                       ; 3 uses
  %i.ej = icmp ne i32 %i.ei, %.sroa.0118.0
  %i.ek = icmp ne i32 %i.ei, -1
  %or.cond183 = and i1 %i.ej, %i.ek
  br i1 %or.cond183, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.critedge2.loopexit, !llvm.loop !130

.critedge2.loopexit:                              ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i65, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.o
  %.pre261 = load ptr, ptr %0, align 8, !tbaa !22
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.thread161, %.lr.ph226
  %i.el = phi ptr [ %i.v, %.lr.ph226 ], [ %i.bf, %.thread161 ], [ %.pre261, %.critedge2.loopexit ] ; 3 uses
  %.sroa.17.4 = phi ptr [ %.sroa.17.1222, %.lr.ph226 ], [ %.sroa.17.2, %.thread161 ], [ %.sroa.17.5, %.critedge2.loopexit ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.1223, %.lr.ph226 ], [ %.sroa.10.2, %.thread161 ], [ %.sroa.10.6, %.critedge2.loopexit ] ; 2 uses
  %.sroa.0136.4 = phi ptr [ %.sroa.0136.1224, %.lr.ph226 ], [ %.sroa.0136.2, %.thread161 ], [ %.sroa.0136.5, %.critedge2.loopexit ] ; 3 uses
  %.318 = phi i1 [ %.015225, %.lr.ph226 ], [ true, %.thread161 ], [ %.015225, %.critedge2.loopexit ] ; 2 uses
  %i.em = add nuw i32 %.sroa.0131.0220, 1         ; 2 uses
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = lshr exact i64 %i.eq, 2
  %i.es = trunc i64 %i.er to i32
  %i.et = icmp ult i32 %i.em, %i.es
  br i1 %i.et, label %.lr.ph226, label %._crit_edge, !llvm.loop !131

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0136.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.2, i64 noundef %i.cz) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.not.i.i67 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i67, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit
  %i.eu = ptrtoint ptr %.sroa.16156.0 to i64
  %i.ev = ptrtoint ptr %.sroa.0149.0 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.ey
  tail call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.ew) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.sroa.0136.1.lcssa280 = phi ptr [ %.sroa.0136.4, %._crit_edge ], [ %.sroa.0136.0, %bb.b ] ; 3 uses
  %.sroa.17.1.lcssa279 = phi ptr [ %.sroa.17.4, %._crit_edge ], [ %.sroa.17.0, %bb.b ]
  %.not.i.i.i68 = icmp eq ptr %.sroa.0136.1.lcssa280, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.fa = ptrtoint ptr %.sroa.17.1.lcssa279 to i64
  %i.fb = ptrtoint ptr %.sroa.0136.1.lcssa280 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.1.lcssa280, i64 noundef %i.fc) #15
  br label %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69

_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69: ; preds = %._crit_edge.thread, %bb.r
  %.not.i.i70 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i70, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit71, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEENS2_IjNS1_21CornerIndex_tag_type_EEEESaIS7_EED2Ev.exit69
  %i.fd = ptrtoint ptr %.sroa.16156.0 to i64
  %i.fe = ptrtoint ptr %.sroa.0149.0 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.16156.0, i64 %i.fh
  tail call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.ff) #15
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
end_hunk_0
