Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSatG2?download=true
inline.NumInlined: 1272
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cec4_RefineOneClassIter:bb.a
  %i.i = getelementptr inbounds [8 x i8], ptr %.val52.val, i64 %i.h ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = icmp sgt i32 %.val51.fr, 0
  %wide.trip.count.i = zext nneg i32 %.val51.fr to i64 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %Cec4_ObjSimEqual.exit.thread79

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit85.us
  %.099.us = phi i32 [ %.0.us, %.loopexit85.us ], [ %.097, %.lr.ph ] ; 7 uses
  %.04198.us = phi i32 [ %.099.us, %.loopexit85.us ], [ %.tr82, %.lr.ph ] ; 2 uses
  %i.l = mul nuw nsw i32 %.val51.fr, %.099.us
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val52.val, i64 %i.m ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = xor i64 %i.o, %i.j
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph8.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.us
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46
  %i.w = xor i64 %i.v, %i.t
  %.not.i.us = icmp eq i64 %i.w, -1
  br i1 %.not.i.us, label %bb.b, label %Cec4_ObjSimEqual.exit

bb.b:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.loopexit85.us, label %.lr.ph.i.us, !llvm.loop !1

.lr.ph8.i.us:                                     ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv15.i.us = phi i64 [ %indvars.iv.next16.i.us, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv15.i.us
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv15.i.us
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %.not21.i.us = icmp eq i64 %i.y, %i.aa
  br i1 %.not21.i.us, label %bb.c, label %Cec4_ObjSimEqual.exit

bb.c:                                             ; preds = %.lr.ph8.i.us
  %indvars.iv.next16.i.us = add nuw nsw i64 %indvars.iv15.i.us, 1 ; 2 uses
  %exitcond19.not.i.us = icmp eq i64 %indvars.iv.next16.i.us, %wide.trip.count.i
  br i1 %exitcond19.not.i.us, label %.loopexit85.us, label %.lr.ph8.i.us, !llvm.loop !2

.loopexit85.us:                                   ; preds = %bb.b, %bb.c
  %.pn.us = zext nneg i32 %.099.us to i64
  %.0.in.us = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %.pn.us
  %.0.us = load i32, ptr %.0.in.us, align 4, !tbaa !52 ; 2 uses
  %i.ab = icmp sgt i32 %.0.us, 0
  br i1 %i.ab, label %.lr.ph.split.us, label %Cec4_ObjSimEqual.exit.thread79, !llvm.loop !237

Cec4_ObjSimEqual.exit:                            ; preds = %.lr.ph.i.us, %.lr.ph8.i.us
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.ac = zext nneg i32 %.099.us to i64           ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.ad, align 4
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val46, i64 %i.ac
  %.043123 = load i32, ptr %i.ag, align 4, !tbaa !52 ; 2 uses
  %i.ah = icmp sgt i32 %.043123, 0
  br i1 %i.ah, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %Cec4_ObjSimEqual.exit
  %i.ai = and i32 %.099.us, 268435455
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph127, %bb.g
  %.val45147 = phi ptr [ %.val46, %.lr.ph127 ], [ %.val45, %bb.g ] ; 2 uses
  %.043126 = phi i32 [ %.043123, %.lr.ph127 ], [ %.043, %bb.g ] ; 7 uses
  %.040125 = phi i32 [ %.099.us, %.lr.ph127 ], [ %.1, %bb.g ] ; 2 uses
  %.142124 = phi i32 [ %.04198.us, %.lr.ph127 ], [ %.2, %bb.g ] ; 2 uses
  %.val49 = load i32, ptr %i.b, align 8, !tbaa !137 ; 5 uses
  %.val50 = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.aj = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %i.ak = mul nsw i32 %.val49, %.tr82
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.al ; 3 uses
  %i.an = mul nsw i32 %.val49, %.043126
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.ao ; 3 uses
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  %i.av = icmp sgt i32 %.val49, 0                 ; 2 uses
  br i1 %i.au, label %.preheader.i68, label %.preheader1.i59

.preheader1.i59:                                  ; preds = %bb.d
  br i1 %i.av, label %.lr.ph.preheader.i61, label %.loopexit

.lr.ph.preheader.i61:                             ; preds = %.preheader1.i59
  %wide.trip.count.i62 = zext nneg i32 %.val49 to i64
  br label %.lr.ph.i63

.preheader.i68:                                   ; preds = %bb.d
  br i1 %i.av, label %.lr.ph8.preheader.i69, label %.loopexit

.lr.ph8.preheader.i69:                            ; preds = %.preheader.i68
  %wide.trip.count18.i70 = zext nneg i32 %.val49 to i64
  br label %.lr.ph8.i71

bb.e:                                             ; preds = %.lr.ph8.i71
  %indvars.iv.next16.i74 = add nuw nsw i64 %indvars.iv15.i72, 1 ; 2 uses
  %exitcond19.not.i75 = icmp eq i64 %indvars.iv.next16.i74, %wide.trip.count18.i70
  br i1 %exitcond19.not.i75, label %.loopexit, label %.lr.ph8.i71, !llvm.loop !2

.lr.ph8.i71:                                      ; preds = %bb.e, %.lr.ph8.preheader.i69
  %indvars.iv15.i72 = phi i64 [ 0, %.lr.ph8.preheader.i69 ], [ %indvars.iv.next16.i74, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv15.i72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv15.i72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %.not21.i73 = icmp eq i64 %i.ax, %i.az
  br i1 %.not21.i73, label %bb.e, label %Cec4_ObjSimEqual.exit76

bb.f:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i62
  br i1 %exitcond.not.i67, label %.loopexit, label %.lr.ph.i63, !llvm.loop !1

.lr.ph.i63:                                       ; preds = %bb.f, %.lr.ph.preheader.i61
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.preheader.i61 ], [ %indvars.iv.next.i66, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.be = xor i64 %i.bd, %i.bb
  %.not.i65 = icmp eq i64 %i.be, -1
  br i1 %.not.i65, label %bb.f, label %Cec4_ObjSimEqual.exit76

.loopexit:                                        ; preds = %bb.f, %bb.e, %.preheader1.i59, %.preheader.i68
  %i.bf = sext i32 %.142124 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val45147, i64 %i.bf
  store i32 %.043126, ptr %i.bg, align 4, !tbaa !52
  %.pre = zext nneg i32 %.043126 to i64
  br label %bb.g

Cec4_ObjSimEqual.exit76:                          ; preds = %.lr.ph.i63, %.lr.ph8.i71
  %.val53 = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.bh = zext nneg i32 %.043126 to i64           ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, -268435456
  %i.bl = or disjoint i32 %i.bk, %i.ai
  store i32 %i.bl, ptr %i.bi, align 4
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !136 ; 2 uses
  %i.bm = zext nneg i32 %.040125 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %i.bm
  store i32 %.043126, ptr %i.bn, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %Cec4_ObjSimEqual.exit76
  %.pre-phi = phi i64 [ %.pre, %.loopexit ], [ %i.bh, %Cec4_ObjSimEqual.exit76 ]
  %.val45 = phi ptr [ %.val45147, %.loopexit ], [ %.val57, %Cec4_ObjSimEqual.exit76 ] ; 3 uses
  %.2 = phi i32 [ %.043126, %.loopexit ], [ %.142124, %Cec4_ObjSimEqual.exit76 ] ; 2 uses
  %.1 = phi i32 [ %.040125, %.loopexit ], [ %.043126, %Cec4_ObjSimEqual.exit76 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.pre-phi
  %.043 = load i32, ptr %i.bo, align 4, !tbaa !52 ; 2 uses
  %i.bp = icmp sgt i32 %.043, 0
  br i1 %i.bp, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !238

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre150 = zext nneg i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Cec4_ObjSimEqual.exit
  %.pre-phi151 = phi i64 [ %.pre150, %._crit_edge.loopexit ], [ %i.ac, %Cec4_ObjSimEqual.exit ]
  %.val56 = phi ptr [ %.val45, %._crit_edge.loopexit ], [ %.val46, %Cec4_ObjSimEqual.exit ] ; 4 uses
  %.142.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.04198.us, %Cec4_ObjSimEqual.exit ]
  %i.bq = sext i32 %.142.lcssa to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.bq
  store i32 -1, ptr %i.br, align 4, !tbaa !52
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %.pre-phi151
  store i32 -1, ptr %i.bs, align 4, !tbaa !52
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %i.ac
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !52
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %tailrecurse, label %Cec4_ObjSimEqual.exit.thread79

Cec4_ObjSimEqual.exit.thread79:                   ; preds = %._crit_edge, %tailrecurse, %.lr.ph, %.loopexit85.us
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cec4_RefineOneClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !50
  %i.d = getelementptr i8, ptr %2, i64 4
  %.val46 = load i32, ptr %i.d, align 4, !tbaa !50 ; 2 uses
  %i.e = icmp sgt i32 %.val46, 0
  br i1 %i.e, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = getelementptr i8, ptr %0, i64 840
  %i.h = getelementptr i8, ptr %0, i64 856
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = zext nneg i32 %.val46 to i64
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.m
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !140 ; 3 uses
  %.phi.trans.insert72 = getelementptr i8, ptr %.pre71, i64 4
  %.val59.pre = load i32, ptr %.phi.trans.insert72, align 4, !tbaa !50
  %i.m = icmp sgt i32 %.val59.pre, 0
  br i1 %i.m, label %.lr.ph61, label %.critedge2

.lr.ph61:                                         ; preds = %.critedge.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre75.a = load ptr, ptr %i.n, align 8, !tbaa !122
  %.pre77 = load ptr, ptr %i.o, align 8, !tbaa !136
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val48 = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv.next
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 3 uses
  %.val49 = load i32, ptr %i.g, align 8, !tbaa !137 ; 3 uses
  %.val50 = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.s = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.t = mul nsw i32 %.val49, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.u ; 11 uses
  %i.w = load i32, ptr %i.i, align 8, !tbaa !141
  %i.x = shl i32 %.val49, 1                       ; 4 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !52
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = icmp sgt i32 %.val49, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader20.i

.preheader20.i:                                   ; preds = %bb.b
  br i1 %i.aa, label %.lr.ph.preheader.i, label %Cec4_ManSimHashKey.exit

.lr.ph.preheader.i:                               ; preds = %.preheader20.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.ab = add i32 %i.x, -17
  %or.cond = icmp ult i32 %i.ab, -9
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph.preheader.i
  %n.vec99 = and i64 %wide.trip.count.i, 24       ; 3 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next108, %vector.body100 ] ; 3 uses
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.al, %vector.body100 ]
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.am, %vector.body100 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index101 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load104.a = load <4 x i32>, ptr %i.ac, align 4, !tbaa !52
  %wide.load105 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !52
  %i.ae = xor <4 x i32> %wide.load104.a, splat (i32 -1)
  %i.af = xor <4 x i32> %wide.load105, splat (i32 -1)
  %i.ag = and i64 %index101, 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load106 = load <4 x i32>, ptr %i.ah, align 16, !tbaa !52
  %wide.load107 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !52
  %i.aj = mul <4 x i32> %wide.load106, %i.ae
  %i.ak = mul <4 x i32> %wide.load107, %i.af
  %i.al = xor <4 x i32> %i.aj, %vec.phi102        ; 2 uses
  %i.am = xor <4 x i32> %i.ak, %vec.phi103        ; 2 uses
  %index.next108 = add nuw i64 %index101, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next108, %n.vec99
  br i1 %i.an, label %middle.block109, label %vector.body100, !llvm.loop !239

middle.block109:                                  ; preds = %vector.body100
  %bin.rdx110 = xor <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx110) ; 2 uses
  %cmp.n111 = icmp eq i64 %n.vec99, %wide.trip.count.i
  br i1 %cmp.n111, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block109
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec99, %middle.block109 ] ; 5 uses
  %.01822.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ao, %middle.block109 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.ph
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.ar = xor i32 %i.aq, -1
  %i.as = and i64 %indvars.iv.i.ph, 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 16, !tbaa !52
  %i.av = mul i32 %i.au, %i.ar
  %i.aw = xor i32 %i.av, %.01822.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa118.unr.a = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.aw, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01822.i.unr = phi i32 [ %.01822.i.ph, %.lr.ph.i.preheader ], [ %i.aw, %.lr.ph.i.prol ]
  %i.ax = add nsw i64 %wide.trip.count.i, -1
  %i.ay = icmp eq i64 %indvars.iv.i.ph, %i.ax
  br i1 %i.ay, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.aa, label %.lr.ph26.preheader.i, label %Cec4_ManSimHashKey.exit

.lr.ph26.preheader.i:                             ; preds = %.preheader.i
  %smax34.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count35.i = zext nneg i32 %smax34.i to i64 ; 5 uses
  %i.az = add i32 %i.x, -17
  %or.cond114 = icmp ult i32 %i.az, -9
  br i1 %or.cond114, label %.lr.ph26.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.preheader.i
  %n.vec = and i64 %wide.trip.count35.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !tbaa !52
  %wide.load92 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !52
  %i.bc = and i64 %index, 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load93 = load <4 x i32>, ptr %i.bd, align 16, !tbaa !52
  %wide.load94 = load <4 x i32>, ptr %i.be, align 16, !tbaa !52
  %i.bf = mul <4 x i32> %wide.load93, %wide.load
  %i.bg = mul <4 x i32> %wide.load94, %wide.load92
  %i.bh = xor <4 x i32> %i.bf, %vec.phi           ; 2 uses
  %i.bi = xor <4 x i32> %i.bg, %vec.phi91         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count35.i
  br i1 %cmp.n, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.lr.ph26.preheader.i, %middle.block
  %indvars.iv31.i.ph = phi i64 [ 0, %.lr.ph26.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.11924.i.ph = phi i32 [ 0, %.lr.ph26.preheader.i ], [ %i.bk, %middle.block ] ; 2 uses
  %xtraiter122 = and i64 %wide.trip.count35.i, 3  ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol

.lr.ph26.i.prol:                                  ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i.prol
  %indvars.iv31.i.prol = phi i64 [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ], [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader ] ; 3 uses
  %.11924.i.prol = phi i32 [ %i.br, %.lr.ph26.i.prol ], [ %.11924.i.ph, %.lr.ph26.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph26.i.prol ], [ 0, %.lr.ph26.i.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv31.i.prol
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.bn = and i64 %indvars.iv31.i.prol, 15
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !52
  %i.bq = mul i32 %i.bp, %i.bm
  %i.br = xor i32 %i.bq, %.11924.i.prol           ; 3 uses
  %indvars.iv.next32.i.prol = add nuw nsw i64 %indvars.iv31.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter122
  br i1 %prol.iter.cmp.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol, !llvm.loop !241

.lr.ph26.i.prol.loopexit:                         ; preds = %.lr.ph26.i.prol, %.lr.ph26.i.preheader
  %.lcssa121.unr = phi i32 [ poison, %.lr.ph26.i.preheader ], [ %i.br, %.lr.ph26.i.prol ]
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader ], [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ]
  %.11924.i.unr = phi i32 [ %.11924.i.ph, %.lr.ph26.i.preheader ], [ %i.br, %.lr.ph26.i.prol ]
  %i.bs = sub nsw i64 %indvars.iv31.i.ph, %wide.trip.count35.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01822.i = phi i32 [ %i.cj, %.lr.ph.i ], [ %.01822.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !52
  %i.bw = xor i32 %i.bv, -1
  %i.bx = and i64 %indvars.iv.i, 15
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !52
  %i.ca = mul i32 %i.bz, %i.bw
  %i.cb = xor i32 %i.ca, %.01822.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.ce = xor i32 %i.cd, -1
  %i.cf = and i64 %indvars.iv.next.i, 15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !52
  %i.ci = mul i32 %i.ch, %i.ce
  %i.cj = xor i32 %i.ci, %i.cb                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i, !llvm.loop !242

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.prol.loopexit, %.lr.ph26.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.3, %.lr.ph26.i ], [ %indvars.iv31.i.unr, %.lr.ph26.i.prol.loopexit ] ; 6 uses
  %.11924.i = phi i32 [ %i.dl, %.lr.ph26.i ], [ %.11924.i.unr, %.lr.ph26.i.prol.loopexit ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv31.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !52
  %i.cm = and i64 %indvars.iv31.i, 15
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !52
  %i.cp = mul i32 %i.co, %i.cl
  %i.cq = xor i32 %i.cp, %.11924.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !52
  %i.ct = and i64 %indvars.iv.next32.i, 15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !52
  %i.cw = mul i32 %i.cv, %i.cs
  %i.cx = xor i32 %i.cw, %i.cq
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i.1
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !52
  %i.da = and i64 %indvars.iv.next32.i.1, 15
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !52
  %i.dd = mul i32 %i.dc, %i.cz
  %i.de = xor i32 %i.dd, %i.cx
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i.2
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !52
  %i.dh = and i64 %indvars.iv.next32.i.2, 15
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !52
  %i.dk = mul i32 %i.dj, %i.dg
  %i.dl = xor i32 %i.dk, %i.de                    ; 2 uses
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %exitcond36.not.i.3 = icmp eq i64 %indvars.iv.next32.i.3, %wide.trip.count35.i
  br i1 %exitcond36.not.i.3, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i, !llvm.loop !243

Cec4_ManSimHashKey.exit:                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph26.i.prol.loopexit, %.lr.ph26.i, %middle.block109, %middle.block, %.preheader20.i, %.preheader.i
  %.2.i = phi i32 [ %i.dl, %.lr.ph26.i ], [ 0, %.preheader.i ], [ 0, %.preheader20.i ], [ %i.bk, %middle.block ], [ %i.ao, %middle.block109 ], [ %.lcssa121.unr, %.lr.ph26.i.prol.loopexit ], [ %.lcssa118.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.cj, %.lr.ph.i ]
  %i.dm = urem i32 %.2.i, %i.w                    ; 2 uses
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !122 ; 4 uses
  %i.do = sext i32 %i.dm to i64                   ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.c, label %bb.m

bb.c:                                             ; preds = %Cec4_ManSimHashKey.exit
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !140 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !50 ; 7 uses
  %i.dv = load i32, ptr %i.ds, align 8, !tbaa !97
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.dx = icmp slt i32 %i.du, 16
  br i1 %i.dx, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.dz, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dz, i64 noundef 64) #38
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.eb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ec = phi ptr [ %i.ea, %bb.f ], [ %i.eb, %bb.g ]
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ed = icmp samesign ult i32 %i.du, 1073741823
  %i.ee = shl nuw nsw i32 %i.du, 1
  %spec.select.i = select i1 %i.ed, i32 %i.ee, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.du, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.eg, null
  %i.eh = zext nneg i32 %spec.select.i to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef %i.ei) #38
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.el = phi ptr [ %i.ej, %bb.j ], [ %i.ek, %bb.k ]
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ds, align 8, !tbaa !97
  %.pre = load i32, ptr %i.dt, align 4, !tbaa !50
  %.pre69.pre = load ptr, ptr %i.j, align 8, !tbaa !122
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %.pre69 = phi ptr [ %i.dn, %bb.c ], [ %i.dn, %bb.h ], [ %.pre69.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.em = phi i32 [ %i.du, %bb.c ], [ %i.du, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !51
  %i.ep = add nsw i32 %i.em, 1
  store i32 %i.ep, ptr %i.dt, align 4, !tbaa !50
  %i.eq = sext i32 %i.em to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  store i32 %i.dm, ptr %i.er, align 4, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre69, i64 %i.do
  %.pre70 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit, %Cec4_ManSimHashKey.exit
  %i.es = phi i32 [ %.pre70, %Vec_IntPush.exit ], [ %i.dq, %Cec4_ManSimHashKey.exit ]
  %i.et = phi ptr [ %.pre69, %Vec_IntPush.exit ], [ %i.dn, %Cec4_ManSimHashKey.exit ]
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.do
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.ew = sext i32 %i.r to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ew
  store i32 %i.es, ptr %i.ex, align 4, !tbaa !52
  store i32 %i.r, ptr %i.eu, align 4, !tbaa !52
  %i.ey = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ey, label %bb.b, label %.critedge.preheader, !llvm.loop !244

bb.n:                                             ; preds = %.lr.ph61, %.critedge
  %i.ez = phi ptr [ %.pre71, %.lr.ph61 ], [ %i.fy, %.critedge ] ; 2 uses
  %i.fa = phi ptr [ %.pre77, %.lr.ph61 ], [ %i.fz, %.critedge ] ; 2 uses
  %i.fb = phi ptr [ %.pre75.a, %.lr.ph61 ], [ %i.ga, %.critedge ] ; 2 uses
  %indvars.iv66 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next67, %.critedge ] ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ez, i64 8
  %.val47 = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv66
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !52
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !52 ; 3 uses
  store i32 -1, ptr %i.fg, align 4, !tbaa !52
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !52 ; 3 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.fm = icmp sgt i32 %i.fk, 0
  br i1 %i.fm, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %.preheader
  %i.fn = and i32 %i.fh, 268435455
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph57, %bb.o
  %.056 = phi i32 [ %i.fk, %.lr.ph57 ], [ %i.fw, %bb.o ]
  %i.fo = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.fp = zext nneg i32 %.056 to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = and i32 %i.fr, -268435456
  %i.ft = or disjoint i32 %i.fs, %i.fn
  store i32 %i.ft, ptr %i.fq, align 4
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fp
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !52 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.o, label %._crit_edge, !llvm.loop !245

._crit_edge:                                      ; preds = %bb.o, %.preheader
  tail call void @Cec4_RefineOneClassIter(ptr noundef nonnull %0, i32 noundef %i.fh)
  %.pre74.a = load ptr, ptr %i.n, align 8, !tbaa !122
  %.pre76.a = load ptr, ptr %i.o, align 8, !tbaa !136
  %.pre78 = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %._crit_edge
  %i.fy = phi ptr [ %i.ez, %bb.n ], [ %.pre78, %._crit_edge ] ; 3 uses
  %i.fz = phi ptr [ %i.fa, %bb.n ], [ %.pre76.a, %._crit_edge ]
  %i.ga = phi ptr [ %i.fb, %bb.n ], [ %.pre74.a, %._crit_edge ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %.val = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.gc = sext i32 %.val to i64
  %i.gd = icmp slt i64 %indvars.iv.next67, %i.gc
  br i1 %i.gd, label %bb.n, label %.critedge2, !llvm.loop !246

.critedge2:                                       ; preds = %.critedge, %bb.a, %.critedge.preheader
  %.lcssa58 = phi ptr [ %.pre71, %.critedge.preheader ], [ %i.b, %bb.a ], [ %i.fy, %.critedge ]
  %i.ge = getelementptr i8, ptr %.lcssa58, i64 4
  store i32 0, ptr %i.ge, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cec4_RefineClasses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !50 ; 2 uses
  %i.d = icmp eq i32 %.val40, 0
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val39 = load i32, ptr %i.g, align 4, !tbaa !50
  %i.h = icmp sgt i32 %.val39, 0
  br i1 %i.h, label %bb.c, label %.preheader53

.preheader53:                                     ; preds = %bb.b
  %i.i = icmp sgt i32 %.val40, 0
  br i1 %i.i, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %.preheader53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 200        ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @Cec4_RefineOneClass(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.f)
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !142
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph61, %.critedge2
  %indvars.iv64 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next65, %.critedge2 ] ; 2 uses
  %i.l = phi ptr [ %i.b, %.lr.ph61 ], [ %i.cf, %.critedge2 ]
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val42 = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val42, i64 %indvars.iv64
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.q = sext i32 %i.o to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -1073741825
  store i32 %i.t, ptr %i.r, align 4
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !143  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  store i32 0, ptr %i.v, align 4, !tbaa !50
  %i.w = load i32, ptr %i.u, align 8, !tbaa !97
  %i.x = icmp eq i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 3 uses
  br i1 %i.x, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 64) #38
  %.pre67.pre = load i32, ptr %i.v, align 4, !tbaa !50
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.f, %bb.g
  %.pre67 = phi i32 [ %.pre67.pre, %bb.f ], [ 0, %bb.g ]
  %i.ac = phi ptr [ %i.aa, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !51
  store i32 16, ptr %i.u, align 8, !tbaa !97
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %Vec_IntGrow.exit11.sink.split.i
  %i.ad = phi i32 [ %.pre67, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %Vec_IntGrow.exit11.sink.split.i ], [ %i.z, %bb.d ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.v, align 4, !tbaa !50
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !52
  %.val44 = load ptr, ptr %i.k, align 8, !tbaa !136 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val44, i64 %i.q
  %.054 = load i32, ptr %i.ai, align 4, !tbaa !52 ; 2 uses
  %i.aj = icmp sgt i32 %.054, 0
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %Vec_IntPush.exit52, %Vec_IntPush.exit
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !143 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %.val56 = load i32, ptr %i.al, align 4, !tbaa !50
  %i.am = icmp sgt i32 %.val56, 0
  br i1 %i.am, label %.lr.ph58, label %.critedge2

.lr.ph:                                           ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit52
  %.val4369 = phi ptr [ %.val43, %Vec_IntPush.exit52 ], [ %.val44, %Vec_IntPush.exit ] ; 2 uses
  %.055 = phi i32 [ %.0, %Vec_IntPush.exit52 ], [ %.054, %Vec_IntPush.exit ] ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !143 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50 ; 7 uses
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !97
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %Vec_IntPush.exit52

bb.h:                                             ; preds = %.lr.ph
  %i.as = icmp slt i32 %i.ap, 16
  br i1 %i.as, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i50 = icmp eq ptr %i.au, null
  br i1 %.not9.i.i50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.au, i64 noundef 64) #38
  br label %Vec_IntGrow.exit.i51

bb.k:                                             ; preds = %bb.i
  %i.aw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i51

Vec_IntGrow.exit.i51:                             ; preds = %bb.k, %bb.j
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aw, %bb.k ]
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i48

bb.l:                                             ; preds = %bb.h
  %i.ay = icmp samesign ult i32 %i.ap, 1073741823
  %i.az = shl nuw nsw i32 %i.ap, 1
  %spec.select.i45 = select i1 %i.ay, i32 %i.az, i32 2147483647 ; 3 uses
  %.not.i9.i46 = icmp samesign ult i32 %i.ap, %spec.select.i45
  br i1 %.not.i9.i46, label %bb.m, label %Vec_IntPush.exit52

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i47 = icmp eq ptr %i.bb, null
  %i.bc = zext nneg i32 %spec.select.i45 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  br i1 %.not9.i10.i47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #38
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = phi ptr [ %i.be, %bb.n ], [ %i.bf, %bb.o ]
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i48

Vec_IntGrow.exit11.sink.split.i48:                ; preds = %bb.p, %Vec_IntGrow.exit.i51
  %spec.select.sink.i49 = phi i32 [ %spec.select.i45, %bb.p ], [ 16, %Vec_IntGrow.exit.i51 ]
  store i32 %spec.select.sink.i49, ptr %i.an, align 8, !tbaa !97
  %.pre68 = load i32, ptr %i.ao, align 4, !tbaa !50
  %.val43.pre = load ptr, ptr %i.k, align 8, !tbaa !136
  br label %Vec_IntPush.exit52

Vec_IntPush.exit52:                               ; preds = %.lr.ph, %bb.l, %Vec_IntGrow.exit11.sink.split.i48
  %.val43 = phi ptr [ %.val4369, %.lr.ph ], [ %.val4369, %bb.l ], [ %.val43.pre, %Vec_IntGrow.exit11.sink.split.i48 ] ; 2 uses
  %i.bh = phi i32 [ %i.ap, %.lr.ph ], [ %i.ap, %bb.l ], [ %.pre68, %Vec_IntGrow.exit11.sink.split.i48 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  %i.bk = add nsw i32 %i.bh, 1
  store i32 %i.bk, ptr %i.ao, align 4, !tbaa !50
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bl
  store i32 %.055, ptr %i.bm, align 4, !tbaa !52
  %i.bn = zext nneg i32 %.055 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %i.bn
  %.0 = load i32, ptr %i.bo, align 4, !tbaa !52   ; 2 uses
  %i.bp = icmp sgt i32 %.0, 0
  br i1 %i.bp, label %.lr.ph, label %.preheader, !llvm.loop !247

.lr.ph58:                                         ; preds = %.preheader, %.lr.ph58
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph58 ], [ 0, %.preheader ] ; 2 uses
  %i.bq = phi ptr [ %i.cb, %.lr.ph58 ], [ %i.ak, %.preheader ]
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val41 = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val41, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !52
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.bv = sext i32 %i.bt to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = or i32 %i.bx, 268435455
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bv
  store i32 -1, ptr %i.ca, align 4, !tbaa !52
end_hunk_0
