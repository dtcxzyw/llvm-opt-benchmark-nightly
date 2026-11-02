Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/encode?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0_@EVP_DecodeUpdate:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = icmp eq i8 %i.g, 61
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.e, i64 -2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 61
  %spec.select = select i1 %i.k, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.074 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.l = icmp eq i32 %4, 0
  br i1 %i.l, label %conv_ascii2bin.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = and i32 %i.n, 2
  %.not87 = icmp eq i32 %i.o, 0
  %data_ascii2bin.srpdata_ascii2bin = select i1 %.not87, ptr @data_ascii2bin, ptr @srpdata_ascii2bin
  %.not89.not101 = icmp slt i32 %4, 1
  br i1 %.not89.not101, label %.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.s
  %.067107 = phi i32 [ %.2, %bb.s ], [ %i.a, %bb.f ] ; 10 uses
  %.068106 = phi i32 [ %i.aq, %bb.s ], [ 0, %bb.f ]
  %.069105 = phi i32 [ %.170, %bb.s ], [ 0, %bb.f ] ; 10 uses
  %.175104 = phi i32 [ %.27696, %bb.s ], [ %.074, %bb.f ] ; 3 uses
  %.079103 = phi ptr [ %.180, %bb.s ], [ %1, %bb.f ] ; 4 uses
  %.081102 = phi ptr [ %i.p, %bb.s ], [ %3, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.081102, i64 1
  %i.q = load i8, ptr %.081102, align 1, !tbaa !13 ; 4 uses
  %.not.i = icmp sgt i8 %i.q, -1
  br i1 %.not.i, label %conv_ascii2bin.exit, label %conv_ascii2bin.exit.thread

conv_ascii2bin.exit:                              ; preds = %.lr.ph
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %data_ascii2bin.srpdata_ascii2bin, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 3 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp eq i8 %i.t, -1
  br i1 %i.v, label %conv_ascii2bin.exit.thread, label %bb.g

bb.g:                                             ; preds = %conv_ascii2bin.exit
  %i.w = icmp eq i8 %i.q, 61
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = add nuw nsw i32 %.175104, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = icmp sgt i32 %.175104, 0
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = and i32 %i.u, 236
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %bb.k, label %conv_ascii2bin.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.276 = phi i32 [ %i.x, %bb.h ], [ %.175104, %bb.j ] ; 2 uses
  %i.ab = icmp sgt i32 %.276, 2
  br i1 %i.ab, label %conv_ascii2bin.exit.thread, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %.27696 = phi i32 [ %.276, %bb.k ], [ 0, %bb.i ] ; 5 uses
  %.not126.not = icmp ne i8 %i.t, -14             ; 3 uses
  br i1 %.not126.not, label %bb.l, label %.thread._crit_edge

bb.l:                                             ; preds = %.thread
  %i.ac = and i32 %i.u, 236
  %i.ad = icmp eq i32 %i.ac, 224
  br i1 %i.ad, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp sgt i32 %.067107, 63
  br i1 %i.ae, label %conv_ascii2bin.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i32 %.067107, 1
  %i.ag = sext i32 %.067107 to i64
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %i.ag
  store i8 %i.q, ptr %i.ah, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.1 = phi i32 [ %.067107, %bb.l ], [ %i.af, %bb.n ] ; 2 uses
  %i.ai = icmp eq i32 %.1, 64
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call fastcc i32 @evp_decodeblock_int(ptr noundef nonnull %0, ptr noundef %.079103, ptr noundef nonnull %i.b, i32 noundef 64, i32 noundef %.27696) ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %conv_ascii2bin.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = icmp sgt i32 %.27696, 0
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %conv_ascii2bin.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = add nuw nsw i32 %i.aj, %.069105
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.079103, i64 %i.ao
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.180 = phi ptr [ %i.ap, %bb.r ], [ %.079103, %bb.o ] ; 2 uses
  %.170 = phi i32 [ %i.an, %bb.r ], [ %.069105, %bb.o ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.r ], [ %.1, %bb.o ]      ; 2 uses
  %i.aq = add nuw nsw i32 %.068106, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %4
  br i1 %exitcond.not, label %.thread._crit_edge, label %.lr.ph, !llvm.loop !15

.thread._crit_edge:                               ; preds = %bb.s, %.thread, %bb.f
  %.079.lcssa = phi ptr [ %1, %bb.f ], [ %.079103, %.thread ], [ %.180, %bb.s ]
  %.069.lcssa = phi i32 [ 0, %bb.f ], [ %.069105, %.thread ], [ %.170, %bb.s ] ; 6 uses
  %.067.lcssa = phi i32 [ %i.a, %bb.f ], [ %.067107, %.thread ], [ %.2, %bb.s ] ; 6 uses
  %.not89.not.lcssa = phi i1 [ true, %bb.f ], [ %.not126.not, %.thread ], [ %.not126.not, %bb.s ] ; 2 uses
  %.377 = phi i32 [ %.074, %bb.f ], [ %.27696, %.thread ], [ %.27696, %bb.s ] ; 3 uses
  %i.ar = icmp sgt i32 %.067.lcssa, 0
  br i1 %i.ar, label %bb.t, label %bb.y

bb.t:                                             ; preds = %.thread._crit_edge
  %i.as = and i32 %.067.lcssa, 3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.au = tail call fastcc i32 @evp_decodeblock_int(ptr noundef nonnull %0, ptr noundef %.079.lcssa, ptr noundef nonnull %i.b, i32 noundef %.067.lcssa, i32 noundef %.377) ; 3 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %conv_ascii2bin.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = icmp sgt i32 %.377, 0
  %or.cond3 = and i1 %i.ax, %i.aw
  br i1 %or.cond3, label %conv_ascii2bin.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = add nuw nsw i32 %i.au, %.069.lcssa
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  br i1 %.not89.not.lcssa, label %bb.y, label %conv_ascii2bin.exit.thread

bb.y:                                             ; preds = %bb.w, %bb.x, %.thread._crit_edge
  %.271 = phi i32 [ %i.ay, %bb.w ], [ %.069.lcssa, %bb.x ], [ %.069.lcssa, %.thread._crit_edge ]
  %.3 = phi i32 [ 0, %bb.w ], [ %.067.lcssa, %bb.x ], [ %.067.lcssa, %.thread._crit_edge ] ; 2 uses
  %i.az = icmp ne i32 %.3, 0
  %i.ba = icmp eq i32 %.377, 0
  %.not93 = or i1 %i.ba, %i.az
  %narrow = select i1 %.not89.not.lcssa, i1 %.not93, i1 false
  %not. = zext i1 %narrow to i32
  br label %conv_ascii2bin.exit.thread

conv_ascii2bin.exit.thread:                       ; preds = %.lr.ph, %bb.p, %bb.q, %bb.m, %bb.k, %bb.j, %conv_ascii2bin.exit, %bb.x, %bb.u, %bb.v, %bb.e, %bb.y
  %.073 = phi i32 [ -1, %bb.u ], [ 0, %bb.e ], [ -1, %bb.x ], [ -1, %bb.v ], [ %not., %bb.y ], [ -1, %conv_ascii2bin.exit ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.q ], [ -1, %bb.p ], [ -1, %.lr.ph ]
  %.372 = phi i32 [ %.069.lcssa, %bb.u ], [ 0, %bb.e ], [ %.069.lcssa, %bb.x ], [ %.069.lcssa, %bb.v ], [ %.271, %bb.y ], [ %.069105, %conv_ascii2bin.exit ], [ %.069105, %bb.j ], [ %.069105, %bb.k ], [ %.069105, %bb.m ], [ %.069105, %bb.q ], [ %.069105, %bb.p ], [ %.069105, %.lr.ph ]
  %.4 = phi i32 [ 0, %bb.u ], [ %i.a, %bb.e ], [ %.067.lcssa, %bb.x ], [ 0, %bb.v ], [ %.3, %bb.y ], [ %.067107, %.lr.ph ], [ 0, %bb.p ], [ 0, %bb.q ], [ %.067107, %bb.m ], [ %.067107, %bb.k ], [ %.067107, %bb.j ], [ %.067107, %conv_ascii2bin.exit ]
  store i32 %.372, ptr %2, align 4, !tbaa !12
  store i32 %.4, ptr %0, align 4, !tbaa !9
  ret i32 %.073
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1610612737) i32 @evp_decodeblock_int(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 -1, 3) %4) unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not90 = icmp eq i32 %i.c, 0
  br i1 %.not90, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @data_ascii2bin, %bb.c ], [ @srpdata_ascii2bin, %bb.b ] ; 10 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph, label %.critedge3

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.083127 = phi i32 [ %i.k, %bb.e ], [ %3, %bb.d ] ; 5 uses
  %.084126 = phi ptr [ %i.j, %bb.e ], [ %2, %bb.d ] ; 5 uses
  %i.e = load i8, ptr %.084126, align 1, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i8 %i.e, -1
  br i1 %.not.i, label %conv_ascii2bin.exit, label %.critedge

conv_ascii2bin.exit:                              ; preds = %.lr.ph
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, -32
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %conv_ascii2bin.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.084126, i64 1
  %i.k = add nsw i32 %.083127, -1
  %i.l = icmp sgt i32 %.083127, 1
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !16

.critedge:                                        ; preds = %conv_ascii2bin.exit, %.lr.ph
  %i.m = icmp samesign ugt i32 %.083127, 3
  br i1 %i.m, label %.lr.ph135.preheader, label %.critedge3

.lr.ph135.preheader:                              ; preds = %.critedge
  %5 = zext nneg i32 %.083127 to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.f
  %indvars.iv = phi i64 [ %5, %.lr.ph135.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.n = getelementptr i8, ptr %.084126, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %.not.i94 = icmp sgt i8 %i.p, -1
  br i1 %.not.i94, label %conv_ascii2bin.exit96, label %.critedge3.loopexit

conv_ascii2bin.exit96:                            ; preds = %.lr.ph135
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = and i8 %i.s, -20
  %i.u = icmp eq i8 %i.t, -32
  br i1 %i.u, label %bb.f, label %.critedge3.loopexit

bb.f:                                             ; preds = %conv_ascii2bin.exit96
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.v = icmp sgt i64 %indvars.iv, 4
  br i1 %i.v, label %.lr.ph135, label %.loopexit, !llvm.loop !17

.critedge3.loopexit:                              ; preds = %.lr.ph135, %conv_ascii2bin.exit96
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %bb.d, %.critedge
  %.084.lcssa168 = phi ptr [ %.084126, %.critedge ], [ %2, %bb.d ], [ %.084126, %.critedge3.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.083127, %.critedge ], [ %3, %bb.d ], [ %6, %.critedge3.loopexit ] ; 5 uses
  %i.w = and i32 %.1.lcssa, 3
  %.not91 = icmp eq i32 %i.w, 0
  br i1 %.not91, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.critedge3
  %i.x = icmp eq i32 %.1.lcssa, 0
  br i1 %i.x, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.y = add nsw i32 %.1.lcssa, -4
  %i.z = icmp sgt i32 %.1.lcssa, 4
  br i1 %i.z, label %.lr.ph144.preheader, label %._crit_edge

.lr.ph144.preheader:                              ; preds = %.preheader
  %i.aa = add nsw i32 %.1.lcssa, -8
  %i.ab = lshr exact i32 %i.aa, 2
  %i.ac = mul nuw nsw i32 %i.ab, 3
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.l
  %.081142 = phi i32 [ %i.br, %bb.l ], [ 0, %.lr.ph144.preheader ]
  %.185141 = phi ptr [ %i.az, %bb.l ], [ %.084.lcssa168, %.lr.ph144.preheader ] ; 5 uses
  %.086140 = phi ptr [ %i.bq, %bb.l ], [ %1, %.lr.ph144.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.185141, i64 1
  %i.ae = load i8, ptr %.185141, align 1, !tbaa !13 ; 2 uses
  %.not.i97 = icmp sgt i8 %i.ae, -1
  br i1 %.not.i97, label %bb.h, label %conv_ascii2bin.exit99

bb.h:                                             ; preds = %.lr.ph144
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  br label %conv_ascii2bin.exit99

conv_ascii2bin.exit99:                            ; preds = %.lr.ph144, %bb.h
  %.0.i98 = phi i8 [ %i.ah, %bb.h ], [ -1, %.lr.ph144 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.185141, i64 2
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !13  ; 2 uses
  %.not.i100 = icmp sgt i8 %i.aj, -1
  br i1 %.not.i100, label %bb.i, label %conv_ascii2bin.exit102

bb.i:                                             ; preds = %conv_ascii2bin.exit99
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  br label %conv_ascii2bin.exit102

conv_ascii2bin.exit102:                           ; preds = %conv_ascii2bin.exit99, %bb.i
  %.0.i101 = phi i8 [ %i.am, %bb.i ], [ -1, %conv_ascii2bin.exit99 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.185141, i64 3
  %i.ao = load i8, ptr %i.ai, align 1, !tbaa !13  ; 2 uses
  %.not.i103 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i103, label %bb.j, label %conv_ascii2bin.exit105

bb.j:                                             ; preds = %conv_ascii2bin.exit102
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  br label %conv_ascii2bin.exit105

conv_ascii2bin.exit105:                           ; preds = %conv_ascii2bin.exit102, %bb.j
  %.0.i104 = phi i8 [ %i.ar, %bb.j ], [ -1, %conv_ascii2bin.exit102 ] ; 2 uses
  %i.as = load i8, ptr %i.an, align 1, !tbaa !13  ; 2 uses
  %.not.i106 = icmp sgt i8 %i.as, -1
  br i1 %.not.i106, label %bb.k, label %conv_ascii2bin.exit108

bb.k:                                             ; preds = %conv_ascii2bin.exit105
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  br label %conv_ascii2bin.exit108

conv_ascii2bin.exit108:                           ; preds = %conv_ascii2bin.exit105, %bb.k
  %.0.i107 = phi i8 [ %i.av, %bb.k ], [ -1, %conv_ascii2bin.exit105 ] ; 2 uses
  %i.aw = or i8 %.0.i101, %.0.i98
  %i.ax = or i8 %i.aw, %.0.i104
  %i.ay = or i8 %i.ax, %.0.i107
  %.not93 = icmp sgt i8 %i.ay, -1
  br i1 %.not93, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %conv_ascii2bin.exit108
  %i.az = getelementptr inbounds nuw i8, ptr %.185141, i64 4 ; 2 uses
  %i.ba = zext i8 %.0.i98 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 18
  %i.bc = zext i8 %.0.i101 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 12               ; 2 uses
  %i.be = or i64 %i.bd, %i.bb
  %i.bf = zext i8 %.0.i104 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 6                ; 2 uses
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = lshr i64 %i.be, 16
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.086140, i64 1
  store i8 %i.bj, ptr %.086140, align 1, !tbaa !13
  %i.bl = lshr i64 %i.bh, 8
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.086140, i64 2
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !13
  %i.bo = trunc i64 %i.bg to i8
  %i.bp = or i8 %.0.i107, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.086140, i64 3 ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !13
  %i.br = add nuw nsw i32 %.081142, 4             ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.y
  br i1 %i.bs, label %.lr.ph144, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.bt = add nuw nsw i32 %i.ac, 6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.086.lcssa = phi ptr [ %1, %.preheader ], [ %i.bq, %._crit_edge.loopexit ] ; 6 uses
  %.185.lcssa = phi ptr [ %.084.lcssa168, %.preheader ], [ %i.az, %._crit_edge.loopexit ] ; 4 uses
  %.080.lcssa = phi i32 [ 3, %.preheader ], [ %i.bt, %._crit_edge.loopexit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.185.lcssa, i64 1
  %i.bv = load i8, ptr %.185.lcssa, align 1, !tbaa !13 ; 2 uses
  %.not.i109 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i109, label %bb.m, label %conv_ascii2bin.exit111

bb.m:                                             ; preds = %._crit_edge
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  br label %conv_ascii2bin.exit111

conv_ascii2bin.exit111:                           ; preds = %._crit_edge, %bb.m
  %.0.i110 = phi i8 [ %i.by, %bb.m ], [ -1, %._crit_edge ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.185.lcssa, i64 2
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !13  ; 2 uses
  %.not.i112 = icmp sgt i8 %i.ca, -1
  br i1 %.not.i112, label %bb.n, label %conv_ascii2bin.exit114

bb.n:                                             ; preds = %conv_ascii2bin.exit111
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  br label %conv_ascii2bin.exit114

conv_ascii2bin.exit114:                           ; preds = %conv_ascii2bin.exit111, %bb.n
  %.0.i113 = phi i8 [ %i.cd, %bb.n ], [ -1, %conv_ascii2bin.exit111 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.185.lcssa, i64 3
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !13  ; 2 uses
  %.not.i115 = icmp sgt i8 %i.cf, -1
  br i1 %.not.i115, label %bb.o, label %conv_ascii2bin.exit117

bb.o:                                             ; preds = %conv_ascii2bin.exit114
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  br label %conv_ascii2bin.exit117

conv_ascii2bin.exit117:                           ; preds = %conv_ascii2bin.exit114, %bb.o
  %.0.i116 = phi i8 [ %i.ci, %bb.o ], [ -1, %conv_ascii2bin.exit114 ] ; 3 uses
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !13  ; 2 uses
  %.not.i118 = icmp sgt i8 %i.cj, -1
  br i1 %.not.i118, label %bb.p, label %conv_ascii2bin.exit120

bb.p:                                             ; preds = %conv_ascii2bin.exit117
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  br label %conv_ascii2bin.exit120

conv_ascii2bin.exit120:                           ; preds = %conv_ascii2bin.exit117, %bb.p
  %.0.i119 = phi i8 [ %i.cm, %bb.p ], [ -1, %conv_ascii2bin.exit117 ] ; 3 uses
  %i.cn = or i8 %.0.i113, %.0.i110
  %i.co = or i8 %i.cn, %.0.i116
  %i.cp = or i8 %i.co, %.0.i119
  %.not92 = icmp sgt i8 %i.cp, -1
  br i1 %.not92, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %conv_ascii2bin.exit120
  %i.cq = zext i8 %.0.i110 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 18
  %i.cs = zext i8 %.0.i113 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 12
  %i.cu = or i64 %i.ct, %i.cr                     ; 2 uses
  %i.cv = zext i8 %.0.i116 to i64
  %i.cw = shl nuw nsw i64 %i.cv, 6
  %i.cx = zext i8 %.0.i119 to i64
  %i.cy = or i64 %i.cw, %i.cx                     ; 2 uses
  %i.cz = or i64 %i.cy, %i.cu                     ; 2 uses
  %i.da = icmp eq i32 %4, -1
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = icmp eq i8 %.0.i116, 61
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i8 %.0.i119, 61
  %i.de = zext i1 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, %i.dc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.082 = phi i32 [ %i.df, %bb.r ], [ %4, %bb.q ] ; 2 uses
  %i.dg = lshr i64 %i.cu, 16
  %i.dh = trunc i64 %i.dg to i8                   ; 3 uses
  switch i32 %.082, label %default.unreachable164 [
    i32 2, label %bb.t
    i32 1, label %bb.u
    i32 0, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  store i8 %i.dh, ptr %.086.lcssa, align 1, !tbaa !13
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 1
  store i8 %i.dh, ptr %.086.lcssa, align 1, !tbaa !13
  %i.dj = lshr i64 %i.cz, 8
  %i.dk = trunc i64 %i.dj to i8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !13
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 1
  store i8 %i.dh, ptr %.086.lcssa, align 1, !tbaa !13
  %i.dm = lshr i64 %i.cz, 8
  %i.dn = trunc i64 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 2
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !13
  %i.dp = trunc i64 %i.cy to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !13
  br label %bb.w

default.unreachable164:                           ; preds = %bb.s
  unreachable

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dq = sub nuw nsw i32 %.080.lcssa, %.082
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %conv_ascii2bin.exit108, %conv_ascii2bin.exit120, %bb.g, %.critedge3, %bb.w
  %.087 = phi i32 [ %i.dq, %bb.w ], [ -1, %conv_ascii2bin.exit120 ], [ -1, %.critedge3 ], [ 0, %bb.g ], [ -1, %conv_ascii2bin.exit108 ], [ -1, %bb.f ], [ 0, %bb.e ]
  ret i32 %.087
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 1610612737) i32 @EVP_DecodeBlock(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @evp_decodeblock_int(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 2) i32 @EVP_DecodeFinal(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !12
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = tail call fastcc i32 @evp_decodeblock_int(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.a, i32 noundef -1) ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 4, !tbaa !9
  store i32 %i.c, ptr %2, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"evp_Encode_Ctx_st", !5, i64 0, !4, i64 4, !5, i64 84, !5, i64 88}
!9 = !{!8, !5, i64 0}
!10 = !{!8, !5, i64 88}
!11 = !{!8, !5, i64 84}
!12 = !{!5, !5, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
end_hunk_0
