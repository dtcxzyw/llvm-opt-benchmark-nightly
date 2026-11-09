Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/kd_tree_attributes_encoder?download=true
inline.NumInlined: 2777
inline.NumDeleted: 1138
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5draco23KdTreeAttributesEncoder24EncodePortableAttributesEPNS_13EncoderBufferE:bb.a
  %i.aq = mul i32 %i.al, %i.aj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5draco12PointDVectorIjEC2Ejj.exit, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21 ; 6 uses
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !160
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.au, ptr %i.av, align 8, !tbaa !161
  store i32 0, ptr %i.at, align 4, !tbaa !58
  %i.aw = getelementptr i8, ptr %i.at, i64 4      ; 3 uses
  %i.ax = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZN5draco12PointDVectorIjEC2Ejj.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ax, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZN5draco12PointDVectorIjEC2Ejj.exit

_ZN5draco12PointDVectorIjEC2Ejj.exit:             ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit, %.noexc.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.at, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.at, %.noexc.i ], [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.az, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aw, %.noexc.i ], [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i.i.i.i, ptr %i.bb, align 8, !tbaa !162
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !163
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 17179869180
  %.not295.not = icmp eq i64 %i.bk, 0
  br i1 %.not295.not, label %.critedge186, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZN5draco12PointDVectorIjEC2Ejj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not307 = icmp eq i32 %i.aj, 0                 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count316 = zext i32 %i.aj to i64
  %wide.trip.count321 = zext i32 %i.aj to i64
  %wide.trip.count326 = zext i32 %i.aj to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph301, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = phi ptr [ %i.bg, %.lr.ph301 ], [ %i.ii, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.0131300 = phi i32 [ 0, %.lr.ph301 ], [ %i.ig, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.0132299 = phi i32 [ 0, %.lr.ph301 ], [ %.1133, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 7 uses
  %.0135298 = phi i32 [ 0, %.lr.ph301 ], [ %.1136273, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 8 uses
  %.0138296 = phi i32 [ 0, %.lr.ph301 ], [ %i.if, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.bo = sext i32 %.0131300 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = sext i32 %i.bq to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !60 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !77 ; 7 uses
  switch i32 %i.ca, label %.critedge [
    i32 6, label %.thread
    i32 4, label %.thread
    i32 2, label %.thread
    i32 5, label %.thread
    i32 3, label %.thread
    i32 1, label %.thread
    i32 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.cb = sext i32 %.0135298 to i64
  %i.cc = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.critedge, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.g
  %i.cg = add nsw i32 %.0135298, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !77
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ch = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.ca, %bb.f ], [ %i.ca, %bb.f ], [ %i.ca, %bb.f ], [ %i.ca, %bb.f ], [ %i.ca, %bb.f ], [ %i.ca, %bb.f ]
  %.097274 = phi ptr [ %i.ce, %..thread_crit_edge ], [ %i.by, %bb.f ], [ %i.by, %bb.f ], [ %i.by, %bb.f ], [ %i.by, %bb.f ], [ %i.by, %bb.f ], [ %i.by, %bb.f ] ; 15 uses
  %.1136273 = phi i32 [ %i.cg, %..thread_crit_edge ], [ %.0135298, %bb.f ], [ %.0135298, %bb.f ], [ %.0135298, %bb.f ], [ %.0135298, %bb.f ], [ %.0135298, %bb.f ], [ %.0135298, %bb.f ]
  switch i32 %i.ch, label %bb.r [
    i32 6, label %.preheader
    i32 5, label %bb.j
    i32 3, label %bb.j
    i32 1, label %bb.j
  ]

.preheader:                                       ; preds = %.thread
  br i1 %.not307, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph291

.lr.ph291:                                        ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %.097274, i64 100
  %i.cj = getelementptr inbounds nuw i8, ptr %.097274, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %.097274, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %.097274, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %.097274, i64 24
  %i.cn = zext nneg i32 %.0138296 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph291, %bb.i
  %indvars.iv318 = phi i64 [ 0, %.lr.ph291 ], [ %indvars.iv.next319, %bb.i ] ; 4 uses
  %i.co = load i8, ptr %i.ci, align 4, !tbaa !392, !range !164, !noalias !393, !noundef !165
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = trunc nuw i64 %indvars.iv318 to i32
  br i1 %i.cp, label %bb.i, label %.else259

.else259:                                         ; preds = %bb.h
  %i.cr = load ptr, ptr %i.cj, align 8, !noalias !393
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv318
  %storemerge.i.else.val = load i32, ptr %i.cs, align 4, !tbaa !58, !noalias !393
  %i.ct = zext i32 %storemerge.i.else.val to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.else259
  %storemerge.i = phi i64 [ %indvars.iv318, %bb.h ], [ %i.ct, %.else259 ]
  %i.cu = load i64, ptr %i.ck, align 8, !tbaa !166
  %i.cv = load i64, ptr %i.cl, align 8, !tbaa !167
  %i.cw = mul nsw i64 %i.cv, %storemerge.i
  %i.cx = load ptr, ptr %.097274, align 8, !tbaa !168
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cu
  %i.db = load i8, ptr %i.cm, align 8, !tbaa !67
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = load ptr, ptr %i.bc, align 8, !tbaa !163
  %i.df = load i32, ptr %i.am, align 4, !tbaa !159
  %i.dg = mul i32 %i.df, %i.cq
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dj, ptr align 1 %i.da, i64 %i.dd, i1 false)
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h, !llvm.loop !350

bb.j:                                             ; preds = %.thread, %.thread, %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %.097274, i64 24 ; 4 uses
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !67  ; 3 uses
  %i.dm = zext i8 %i.dl to i64                    ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = shl nuw nsw i64 %i.dm, 2                ; 2 uses
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #21
          to label %.noexc unwind label %bb.t     ; 6 uses

.noexc:                                           ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm ; 3 uses
  store i32 0, ptr %i.do, align 4, !tbaa !58
  %i.dq = add nsw i64 %i.dm, -1                   ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 0                    ; 2 uses
  br i1 %i.dr, label %bb.l, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.ds = getelementptr i8, ptr %i.do, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #21
          to label %.noexc190 unwind label %bb.n  ; 5 uses

.noexc190:                                        ; preds = %bb.l
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dm ; 2 uses
  store i32 0, ptr %i.dt, align 4, !tbaa !58
  br i1 %i.dr, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc190
  %i.dv = getelementptr i8, ptr %i.dt, i64 4
  %.idx.i.i.i.i.i.i.i188 = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %.idx.i.i.i.i.i.i.i188, i1 false), !tbaa !58
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc190, %bb.j
  %.sroa.0249.0280 = phi ptr [ %i.do, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.do, %.noexc190 ], [ null, %bb.j ] ; 12 uses
  %.sroa.11254.0278 = phi ptr [ %i.dp, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dp, %.noexc190 ], [ null, %bb.j ] ; 3 uses
  %.sroa.11246.0 = phi ptr [ %i.du, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.du, %.noexc190 ], [ null, %bb.j ] ; 2 uses
  %.sroa.0241.0 = phi ptr [ %i.dt, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dt, %.noexc190 ], [ null, %bb.j ] ; 14 uses
  br i1 %.not307, label %._crit_edge289, label %.lr.ph288

.lr.ph288:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %.sroa.0249.0280370 = ptrtoaddr ptr %.sroa.0249.0280 to i64
  %.sroa.0241.0369 = ptrtoaddr ptr %.sroa.0241.0 to i64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.097274, i64 100
  %i.dx = getelementptr inbounds nuw i8, ptr %.097274, i64 72
  %i.dy = zext nneg i32 %.0138296 to i64
  %i.dz = sext i32 %.0132299 to i64               ; 2 uses
  %i.ea = shl nsw i64 %i.dz, 2
  %i.eb = sub i64 %.sroa.0249.0280370, %.sroa.0241.0369
  %diff.check = icmp ugt i64 %i.eb, -32
  %invariant.op = sub i64 %i.ea, %.sroa.0241.0369
  br label %bb.o

._crit_edge289.loopexit:                          ; preds = %._crit_edge
  %.pre333 = load i8, ptr %i.dk, align 8, !tbaa !67
  br label %._crit_edge289

._crit_edge289:                                   ; preds = %._crit_edge289.loopexit, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.ec = phi i8 [ %.pre333, %._crit_edge289.loopexit ], [ %i.dl, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit ]
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nsw i32 %.0132299, %i.ed            ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0241.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge289
  %i.ef = ptrtoint ptr %.sroa.11246.0 to i64
  %i.eg = ptrtoint ptr %.sroa.0241.0 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0, i64 noundef %i.eh) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge289, %bb.m
  %.not.i.i.i191 = icmp eq ptr %.sroa.0249.0280, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.n:                                             ; preds = %bb.l
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

bb.o:                                             ; preds = %.lr.ph288, %._crit_edge
  %indvars.iv313 = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next314, %._crit_edge ] ; 3 uses
  %i.ej = load i8, ptr %i.dw, align 4, !tbaa !392, !range !164, !noalias !394, !noundef !165
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = trunc nuw i64 %indvars.iv313 to i32     ; 2 uses
  br i1 %i.ek, label %.cont231, label %.else232

.else232:                                         ; preds = %bb.o
  %i.em = load ptr, ptr %i.dx, align 8, !noalias !394
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv313
  %storemerge.i193.else.val = load i32, ptr %i.en, align 4, !tbaa !58, !noalias !394
  br label %.cont231

.cont231:                                         ; preds = %.else232, %bb.o
  %storemerge.i193 = phi i32 [ %i.el, %bb.o ], [ %storemerge.i193.else.val, %.else232 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %storemerge.i193, ptr %3, align 4, !tbaa !132
  %i.eo = load i8, ptr %i.dk, align 8, !tbaa !67
  %i.ep = invoke noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %.097274, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3, i8 noundef signext %i.eo, ptr noundef nonnull %.sroa.0249.0280)
          to label %_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEPT_.exit unwind label %bb.p ; 0 uses

_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEPT_.exit: ; preds = %.cont231
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eq = load i8, ptr %i.dk, align 8, !tbaa !67  ; 4 uses
  %.not310 = icmp eq i8 %i.eq, 0
  br i1 %.not310, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEPT_.exit
  %i.er = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %wide.trip.count = zext i8 %i.eq to i64         ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.er, i64 %i.dz ; 6 uses
  %min.iters.check = icmp ult i8 %i.eq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.es = ptrtoaddr ptr %i.er to i64
  %.reass = add i64 %i.es, %invariant.op
  %diff.check371 = icmp ugt i64 %.reass, -32
  %conflict.rdx = or i1 %diff.check, %diff.check371
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <4 x i32>, ptr %i.et, align 4, !tbaa !58
  %wide.load372 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !58
  %i.ev = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %wide.load373 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !58
  %wide.load374 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !58
  %i.ex = sub nsw <4 x i32> %wide.load, %wide.load373
  %i.ey = sub nsw <4 x i32> %wide.load372, %wide.load374
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x i32> %i.ex, ptr %i.ez, align 4, !tbaa !58
  store <4 x i32> %i.ey, ptr %i.fa, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %indvars.iv.prol
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !58
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fe = load i32, ptr %gep.prol, align 4, !tbaa !58
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %indvars.iv.prol
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !354

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEPT_.exit
  %i.fj = zext i8 %i.eq to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = load ptr, ptr %i.bc, align 8, !tbaa !163
  %i.fm = load i32, ptr %i.am, align 4, !tbaa !159
  %i.fn = mul i32 %i.fm, %i.el
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fq, ptr nonnull align 1 %.sroa.0241.0, i64 %i.fk, i1 false)
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %._crit_edge289.loopexit, label %bb.o, !llvm.loop !355

bb.p:                                             ; preds = %.cont231
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i195 = icmp eq ptr %.sroa.0241.0, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit198, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fs = ptrtoint ptr %.sroa.11246.0 to i64
  %i.ft = ptrtoint ptr %.sroa.0241.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0, i64 noundef %i.fu) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %indvars.iv
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !58
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fx = load i32, ptr %gep, align 4, !tbaa !58
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %indvars.iv
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %indvars.iv.next
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !58
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gc = load i32, ptr %gep.1, align 4, !tbaa !58
  %i.gd = sub nsw i32 %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %indvars.iv.next
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %indvars.iv.next.1
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !58
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.gh = load i32, ptr %gep.2, align 4, !tbaa !58
  %i.gi = sub nsw i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %indvars.iv.next.1
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0249.0280, i64 %indvars.iv.next.2
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !58
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gm = load i32, ptr %gep.3, align 4, !tbaa !58
  %i.gn = sub nsw i32 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0241.0, i64 %indvars.iv.next.2
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !356

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %bb.q, %bb.p, %bb.n
  %.sroa.0249.0282 = phi ptr [ %i.do, %bb.n ], [ %.sroa.0249.0280, %bb.p ], [ %.sroa.0249.0280, %bb.q ] ; 2 uses
  %.sroa.11254.0277 = phi ptr [ %i.dp, %bb.n ], [ %.sroa.11254.0278, %bb.p ], [ %.sroa.11254.0278, %bb.q ]
end_hunk_0
