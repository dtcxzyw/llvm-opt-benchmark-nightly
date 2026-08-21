Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw18kodak_65000_decodeEPsi:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !call_target !175
  %i.i = add i32 %2, 3                            ; 2 uses
  %i.j = and i32 %i.i, -4                         ; 3 uses
  %i.k = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = sext i32 %i.j to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !178

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n), !call_target !179 ; 2 uses
  %i.s = trunc i32 %i.r to i8                     ; 3 uses
  %i.t = and i8 %i.s, 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  store i8 %i.t, ptr %i.u, align 2, !tbaa !87
  %i.v = and i32 %i.r, 15
  %i.w = icmp samesign ugt i32 %i.v, 12
  br i1 %i.w, label %.lr.ph77, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = lshr i8 %i.s, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !87
  %i.z = icmp ugt i8 %i.s, -49
  br i1 %i.z, label %.lr.ph77, label %bb.b

.lr.ph77:                                         ; preds = %.lr.ph, %bb.c
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.h, i32 noundef 0), !call_target !159 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph77, %bb.d
  %indvars.iv87 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next88, %bb.d ] ; 2 uses
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b, i32 noundef 6)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87
  %i.ah = load <2 x i16>, ptr %i.b, align 4, !tbaa !78 ; 2 uses
  %i.ai = load <4 x i16>, ptr %i.af, align 4, !tbaa !78 ; 3 uses
  %i.aj = lshr <2 x i16> %i.ah, splat (i16 4)
  %i.ak = and <2 x i16> %i.aj, splat (i16 3840)
  %i.al = shufflevector <4 x i16> %i.ai, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.am = lshr <2 x i16> %i.al, splat (i16 8)
  %i.an = and <2 x i16> %i.am, splat (i16 240)
  %i.ao = or disjoint <2 x i16> %i.an, %i.ak
  %i.ap = shufflevector <2 x i16> %i.ao, <2 x i16> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x i16> %i.ai, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.as = lshr <4 x i16> %i.ai, <i16 poison, i16 poison, i16 12, i16 12>
  %i.at = shufflevector <4 x i16> %i.as, <4 x i16> poison, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> <i16 poison, i16 poison, i16 4095, i16 4095, i16 4095, i16 4095, i16 4095, i16 4095>, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.av = or disjoint <8 x i16> %i.ar, %i.au
  %i.aw = and <8 x i16> %i.ar, %i.au
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i16> %i.ax, ptr %i.ag, align 2, !tbaa !78
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 8 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv.next88 to i32
  %i.az = icmp sgt i32 %i.j, %i.ay
  br i1 %i.az, label %bb.d, label %.loopexit, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ba = and i32 %i.i, 4
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !135
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb), !call_target !179
  %i.bg = shl i32 %i.bf, 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi), !call_target !179
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, %i.bh
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.057 = phi i64 [ %i.bo, %bb.e ], [ 0, %._crit_edge ]
  %.054 = phi i32 [ 16, %bb.e ], [ 0, %._crit_edge ]
  br i1 %i.k, label %.lr.ph73.preheader, label %.loopexit

.lr.ph73.preheader:                               ; preds = %bb.f
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.j
  %indvars.iv80 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next81, %bb.j ] ; 3 uses
  %.15570 = phi i32 [ %.054, %.lr.ph73.preheader ], [ %i.df, %bb.j ] ; 4 uses
  %.15869 = phi i64 [ %.057, %.lr.ph73.preheader ], [ %i.de, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv80
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87  ; 3 uses
  %i.br = zext i8 %i.bq to i32                    ; 5 uses
  %i.bs = icmp slt i32 %.15570, %i.br
  br i1 %i.bs, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %.lr.ph73
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i32 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt), !call_target !179
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by), !call_target !179
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !135
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd), !call_target !179
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci), !call_target !179
  %i.cn = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.cc, i64 1
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.ch, i64 2
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.cm, i64 3
  %i.cr = sext <4 x i32> %i.cq to <4 x i64>
  %i.cs = insertelement <4 x i32> poison, i32 %.15570, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = add nsw <4 x i32> %i.ct, <i32 8, i32 0, i32 24, i32 16>
  %i.cv = zext nneg <4 x i32> %i.cu to <4 x i64>
  %i.cw = shl <4 x i64> %i.cr, %i.cv
  %i.cx = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cw)
  %op.rdx = add i64 %i.cx, %.15869
  %i.cy = add nsw i32 %.15570, 32
  br label %bb.g

bb.g:                                             ; preds = %.preheader.preheader, %.lr.ph73
  %.3 = phi i64 [ %op.rdx, %.preheader.preheader ], [ %.15869, %.lr.ph73 ] ; 2 uses
  %.256 = phi i32 [ %i.cy, %.preheader.preheader ], [ %.15570, %.lr.ph73 ]
  %i.cz = sub nsw i32 16, %i.br
  %i.da = lshr i32 65535, %i.cz
  %i.db = trunc i64 %.3 to i32
  %i.dc = and i32 %i.da, %i.db                    ; 4 uses
  %i.dd = zext nneg i8 %i.bq to i64
  %i.de = ashr i64 %.3, %i.dd
  %i.df = sub nsw i32 %.256, %i.br
  %.not64 = icmp eq i8 %i.bq, 0
  br i1 %.not64, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = add nsw i32 %i.br, -1
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = and i32 %i.dc, %i.dh
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %notmask = shl nsw i32 -1, %i.br
  %.neg = add nuw nsw i32 %notmask, 1
  %i.dk = add nsw i32 %.neg, %i.dc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ %i.dk, %bb.i ], [ %i.dc, %bb.h ], [ %i.dc, %bb.g ]
  %i.dl = trunc i32 %.0 to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv80
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !78
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph73, !llvm.loop !183

.loopexit:                                        ; preds = %bb.j, %bb.d, %bb.f
  %.060 = phi i32 [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.060
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20kodak_65000_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [272 x i16], align 16             ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !75
  %.not36 = icmp eq i16 %i.c, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %._crit_edge31
  %.02232 = phi i32 [ 0, %.lr.ph34 ], [ %i.ay, %._crit_edge31 ] ; 3 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = load i16, ptr %i.d, align 2, !tbaa !11   ; 2 uses
  %.not37 = icmp eq i16 %i.i, 0
  br i1 %.not37, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b, %._crit_edge
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %bb.b ] ; 5 uses
  %.in = phi i16 [ %i.av, %._crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = zext i16 %.in to i32
  store i32 0, ptr %i.h, align 4, !tbaa !154
  store i32 0, ptr %.sroa.0, align 8, !tbaa !154
  %i.k = trunc nuw nsw i64 %indvars.iv44 to i32
  %i.l = sub nuw nsw i32 %i.j, %i.k
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.l, i32 256) ; 2 uses
  %i.m = call noundef i32 @_ZN6LibRaw18kodak_65000_decodeEPsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef %spec.select)
  %i.n = zext i16 %.in to i64
  %.not38 = icmp eq i64 %indvars.iv44, %i.n
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph30
  %.not = icmp eq i32 %i.m, 0
  %i.o = zext nneg i32 %spec.select to i64        ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %bb.d ], [ 0, %.lr.ph ] ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv41
  %i.q = load i16, ptr %i.p, align 2, !tbaa !78
  %i.r = sext i16 %i.q to i32
  %i.s = and i64 %indvars.iv41, 1                 ; 2 uses
  %.sroa.0.0..sroa_stride = shl nuw nsw i64 %i.s, 2
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride
  %i.t = load i32, ptr %.sroa.0.0..sroa_idx, align 4, !tbaa !154
  %i.u = add nsw i32 %i.t, %i.r                   ; 3 uses
  %.sroa.0.0..sroa_stride53 = shl nuw nsw i64 %i.s, 2
  %.sroa.0.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride53
  store i32 %i.u, ptr %.sroa.0.0..sroa_idx55, align 4, !tbaa !154
  %or.cond.us = icmp ult i32 %i.u, 65535
  br i1 %or.cond.us, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !78   ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.z = load i16, ptr %i.g, align 2, !tbaa !74
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw nsw i32 %.02232, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv41
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv44
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ac
  store i16 %i.x, ptr %i.af, align 2, !tbaa !78
  %.not25.us = icmp ult i16 %i.x, 4096
  br i1 %.not25.us, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %.lr.ph.split.us
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next42, %i.o
  br i1 %i.ag, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !184

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !78 ; 2 uses
  %or.cond = icmp sgt i16 %i.ai, -1
  br i1 %or.cond, label %bb.e, label %.sink.split50

bb.e:                                             ; preds = %.lr.ph.split
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !78 ; 2 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.an = load i16, ptr %i.g, align 2, !tbaa !74
  %i.ao = zext i16 %i.an to i32
  %i.ap = mul nuw nsw i32 %.02232, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv44
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aq
  store i16 %i.al, ptr %i.at, align 2, !tbaa !78
  %.not25 = icmp ult i16 %i.al, 4096
  br i1 %.not25, label %bb.f, label %.sink.split50

.sink.split50:                                    ; preds = %.lr.ph.split, %bb.e
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split50, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.au, label %.lr.ph.split, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.f, %bb.d, %.lr.ph30
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 256 ; 2 uses
  %i.av = load i16, ptr %i.d, align 2, !tbaa !11  ; 2 uses
  %i.aw = zext i16 %i.av to i64
  %i.ax = icmp samesign ult i64 %indvars.iv.next45, %i.aw
  br i1 %i.ax, label %.lr.ph30, label %._crit_edge31, !llvm.loop !185

._crit_edge31:                                    ; preds = %._crit_edge, %bb.b
  %i.ay = add nuw nsw i32 %.02232, 1              ; 2 uses
  %i.az = load i16, ptr %i.b, align 4, !tbaa !75
  %i.ba = zext i16 %i.az to i32
  %i.bb = icmp samesign ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge35, !llvm.loop !186

._crit_edge35:                                    ; preds = %._crit_edge31, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20kodak_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [384 x i16], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 5, ptr %i.d, align 16, !tbaa !76
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158  ; 2 uses
  %i.g = add i32 %i.f, -10
  %or.cond70 = icmp ult i32 %i.g, 7
  %i.h = select i1 %or.cond70, i32 %i.f, i32 10   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 7 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !11
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !75   ; 2 uses
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.n, %i.k               ; 4 uses
  %.not91 = icmp eq i16 %i.m, 0
  br i1 %.not91, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 12 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph89, %._crit_edge86
  %indvars.iv109 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next110, %._crit_edge86 ] ; 4 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.q = load i16, ptr %i.i, align 2, !tbaa !11   ; 2 uses
  %.not92 = icmp eq i16 %i.q, 0
  br i1 %.not92, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.d
  %i.r = or disjoint i64 %indvars.iv109, 1        ; 2 uses
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %._crit_edge
  %indvars.iv106 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next107, %._crit_edge ] ; 4 uses
  %.in = phi i16 [ %i.q, %.lr.ph85.preheader ], [ %i.fj, %._crit_edge ] ; 2 uses
  %i.s = zext i16 %.in to i32
  %i.t = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.u = sub nuw nsw i32 %i.s, %i.t
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.u, i32 128) ; 2 uses
  %i.v = mul nuw nsw i32 %spec.select, 3
  %i.w = call noundef i32 @_ZN6LibRaw18kodak_65000_decodeEPsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef %i.v) ; 0 uses
  %i.x = zext i16 %.in to i64
  %.not93 = icmp eq i64 %indvars.iv106, %i.x
  br i1 %.not93, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph85
  %i.y = zext nneg i32 %spec.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.1.1
  %.sroa.9.0 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ef, %.loopexit.1.1 ]
  %.sroa.4.0 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bv, %.loopexit.1.1 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.1.1 ] ; 2 uses
  %.082 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ag, %.loopexit.1.1 ]
  %.05481 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %.loopexit.1.1 ]
  %.06179 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.fh, %.loopexit.1.1 ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06179, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !78
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add nsw i32 %.05481, %i.ab              ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06179, i64 10
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !78
  %i.af = sext i16 %i.ae to i32
  %i.ag = add nsw i32 %.082, %i.af                ; 3 uses
  %i.ah = add i32 %i.ac, 2
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = ashr i32 %i.ai, 2                       ; 6 uses
  %i.ak = sub nsw i32 %i.ac, %i.aj                ; 4 uses
  %i.al = sub nsw i32 %i.ag, %i.aj                ; 4 uses
  %i.am = add nuw nsw i64 %indvars.iv, %indvars.iv106 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06179, i64 2
  %i.ao = load i16, ptr %.06179, align 2, !tbaa !78
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %.sroa.4.0, %i.ap           ; 5 uses
  %i.ar = ashr i32 %i.aq, %i.h
  %.not69 = icmp eq i32 %i.ar, 0
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.as = load i16, ptr %i.i, align 2, !tbaa !11
  %i.at = zext i16 %i.as to i64
  %i.au = mul nuw nsw i64 %indvars.iv109, %i.at
  %i.av = add nuw nsw i64 %i.am, %i.au            ; 2 uses
  %.wide = icmp samesign ult i64 %i.av, %i.o
  br i1 %.wide, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %i.ay = add nsw i32 %i.al, %i.aq
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 4095)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !78
  store i16 %i.bd, ptr %i.ax, align 2, !tbaa !78
  %i.be = sub nsw i32 %i.aq, %i.aj
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 4095)
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !78
  %i.bl = add nsw i32 %i.ak, %i.aq
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 4095)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.06179, i64 4
  %i.bt = load i16, ptr %i.an, align 2, !tbaa !78
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.aq, %i.bu                ; 5 uses
  %i.bw = ashr i32 %i.bv, %i.h
  %.not69.1 = icmp eq i32 %i.bw, 0
  br i1 %.not69.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.bx = load i16, ptr %i.i, align 2, !tbaa !11
  %i.by = zext i16 %i.bx to i64
  %i.bz = mul nuw nsw i64 %indvars.iv109, %i.by
  %i.ca = or disjoint i64 %i.am, 1                ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, %i.bz            ; 2 uses
  %.wide.1 = icmp samesign ult i64 %i.cb, %i.o
  br i1 %.wide.1, label %.loopexit.loopexit.1, label %.loopexit.1

.loopexit.loopexit.1:                             ; preds = %bb.h
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 3 uses
  %i.ce = add nsw i32 %i.al, %i.bv
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 4095)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !78
  store i16 %i.cj, ptr %i.cd, align 2, !tbaa !78
  %i.ck = sub nsw i32 %i.bv, %i.aj
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 4095)
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !78
  %i.cr = add nsw i32 %i.ak, %i.bv
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 4095)
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !78
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.loopexit.1, %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.06179, i64 6
  %i.cz = load i16, ptr %i.bs, align 2, !tbaa !78
  %i.da = sext i16 %i.cz to i32
  %i.db = add nsw i32 %.sroa.9.0, %i.da           ; 5 uses
  %i.dc = ashr i32 %i.db, %i.h
  %.not69.198 = icmp eq i32 %i.dc, 0
  br i1 %.not69.198, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.1
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.j

end_hunk_0
