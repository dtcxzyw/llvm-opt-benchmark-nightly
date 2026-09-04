Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PhaseOneDecompressor?download=true
inline.NumInlined: 420
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !111
  store i32 %i.ar, ptr %3, align 4, !tbaa !111
  %.mask.peel = and i64 %i.an, 144115188075855872
  %.not44.us.1172.peel = icmp eq i64 %.mask.peel, 0
  %.mask195.peel = and i64 %i.an, 72057594037927936
  %.not44.us.1.1.peel = icmp eq i64 %.mask195.peel, 0
  %or.cond219 = and i1 %.not44.us.1172.peel, %.not44.us.1.1.peel
  %.mask196.peel = and i64 %i.an, 36028797018963968
  %.not44.us.2.1.peel = icmp eq i64 %.mask196.peel, 0
  %or.cond220 = select i1 %or.cond219, i1 %.not44.us.2.1.peel, i1 false
  %.mask197.peel = and i64 %i.an, 18014398509481984
  %.not44.us.3.1.peel = icmp eq i64 %.mask197.peel, 0
  %or.cond221 = select i1 %or.cond220, i1 %.not44.us.3.1.peel, i1 false
  br i1 %or.cond221, label %bb.d, label %.split.us

bb.d:                                             ; preds = %.thread.loopexit.us.peel
  %i.as = shl i64 %i.an, 10                       ; 2 uses
  %.not44.us.4.1.peel = icmp sgt i64 %i.as, -1
  br i1 %.not44.us.4.1.peel, label %.thread.loopexit.us.1.peel, label %.split.us

.thread.loopexit.us.1.peel:                       ; preds = %bb.d
  %i.at = lshr i64 %i.as, 62
  %i.au = shl i64 %i.an, 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !111
  store i32 %i.ax, ptr %i.ag, align 4, !tbaa !111
  br label %.loopexit.peel

.loopexit.peel:                                   ; preds = %.thread.loopexit.us.1.peel, %bb.c
  %.sroa.13.5.peel = phi i32 [ 32, %bb.c ], [ 20, %.thread.loopexit.us.1.peel ] ; 3 uses
  %.sroa.054.5.peel = phi i64 [ %i.an, %bb.c ], [ %i.au, %.thread.loopexit.us.1.peel ] ; 3 uses
  %i.ay = load i32, ptr %3, align 4, !tbaa !111   ; 8 uses
  %i.az = icmp eq i32 %i.ay, 14
  br i1 %i.az, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit.peel
  %i.ba = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i32 %i.ay, 33
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ule i32 %i.ay, %.sroa.13.5.peel
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = sub nuw nsw i32 64, %i.ay
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %.sroa.054.5.peel, %i.be
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = sub nuw nsw i32 %.sroa.13.5.peel, %i.ay
  %i.bi = zext nneg i32 %i.ay to i64
  %i.bj = add nsw i32 %i.ay, -1
  %.neg.peel = shl nsw i32 -1, %i.bj
  %i.bk = load i32, ptr %2, align 4, !tbaa !111
  %i.bl = add nsw i32 %.neg.peel, 1
  %i.bm = add i32 %i.bl, %i.bg
  %i.bn = add nsw i32 %i.bm, %i.bk                ; 2 uses
  store i32 %i.bn, ptr %2, align 4, !tbaa !111
  %i.bo = trunc i32 %i.bn to i16
  br label %.peel.next

bb.f:                                             ; preds = %.loopexit.peel
  %i.bp = lshr i64 %.sroa.054.5.peel, 48          ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = add nsw i32 %.sroa.13.5.peel, -16
  store i32 %i.bq, ptr %2, align 4, !tbaa !111
  %i.bs = trunc nuw i64 %i.bp to i16
  br label %.peel.next

.peel.next:                                       ; preds = %bb.f, %bb.e
  %.sink.peel = phi i16 [ %i.bo, %bb.e ], [ %i.bs, %bb.f ]
  %.sroa.13.6.peel = phi i32 [ %i.bh, %bb.e ], [ %i.br, %bb.f ]
  %.pn.peel = phi i64 [ %i.bi, %bb.e ], [ 16, %bb.f ]
  %.sroa.054.6.peel = shl i64 %.sroa.054.5.peel, %.pn.peel
  tail call void @llvm.assume(i1 %i.ah)
  store i16 %.sink.peel, ptr %i.ak, align 2, !tbaa !144
  br label %bb.g

.loopexit215:                                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %.peel.next, %bb.x
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.x ] ; 5 uses
  %.sroa.054.0153 = phi i64 [ %.sroa.054.6.peel, %.peel.next ], [ %.sroa.054.6, %bb.x ] ; 2 uses
  %.sroa.13.0152 = phi i32 [ %.sroa.13.6.peel, %.peel.next ], [ %.sroa.13.6, %bb.x ] ; 5 uses
  %.sroa.3368.0151 = phi i32 [ 4, %.peel.next ], [ %.sroa.3368.1, %bb.x ] ; 5 uses
  %i.bt = icmp samesign ult i32 %.sroa.13.0152, 65
  tail call void @llvm.assume(i1 %i.bt)
  %.not.i = icmp samesign ult i32 %.sroa.13.0152, 32
  br i1 %.not.i, label %bb.h, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bu = add nuw nsw i32 %.sroa.3368.0151, 4     ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.bu, %i.v
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h
  %i.bv = zext nneg i32 %.sroa.3368.0151 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp samesign ugt i32 %.sroa.3368.0151, %i.ae
  br i1 %i.bx, label %.loopexit214, label %bb.k, !prof !112

.loopexit214:                                     ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #17
  unreachable

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.3368.0151) ; 3 uses
  %i.by = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.by)
  %i.bz = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, 5
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = zext nneg i32 %i.bz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.cc, i64 %i.cd, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.k ], [ %i.bw, %bb.i ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ce = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.cf = or disjoint i32 %.sroa.13.0152, 32
  %i.cg = sub nuw nsw i32 32, %.sroa.13.0152
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 %i.ce, %i.ch
  %i.cj = or i64 %i.ci, %.sroa.054.0153
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.g, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %.sroa.3368.1 = phi i32 [ %i.bu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.3368.0151, %bb.g ] ; 5 uses
  %.sroa.13.7 = phi i32 [ %i.cf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.13.0152, %bb.g ] ; 7 uses
  %.sroa.054.7 = phi i64 [ %i.cj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.054.0153, %bb.g ] ; 8 uses
  %.not = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  store i32 14, ptr %i.ag, align 4, !tbaa !111
  store i32 14, ptr %3, align 4, !tbaa !111
  br label %.loopexit

bb.m:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.ck = and i64 %indvars.iv, 7
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.preheader135, label %.loopexit

.preheader135:                                    ; preds = %bb.m
  %i.cm = icmp sgt i32 %.sroa.3368.1, -1
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = and i32 %.sroa.3368.1, 3
  %i.co = icmp eq i32 %i.cn, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp samesign ult i32 %.sroa.13.7, 65
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = add nsw i32 %.sroa.13.7, -1             ; 3 uses
  %i.cr = shl i64 %.sroa.054.7, 1                 ; 3 uses
  %.not44 = icmp slt i64 %.sroa.054.7, 0
  br i1 %.not44, label %.preheader.1, label %bb.n

.split.us:                                        ; preds = %bb.d, %.thread.loopexit.us.peel, %.preheader.us.preheader.peel
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE) #17
  unreachable

bb.n:                                             ; preds = %.preheader135
  %i.cs = icmp ne i32 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = shl i64 %.sroa.054.7, 2                 ; 3 uses
  %.not44.1 = icmp sgt i64 %i.cr, -1
  br i1 %.not44.1, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cu = add nsw i32 %.sroa.13.7, -2             ; 2 uses
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = shl i64 %.sroa.054.7, 3                 ; 3 uses
  %.not44.2 = icmp sgt i64 %i.ct, -1
  br i1 %.not44.2, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cx = add nsw i32 %.sroa.13.7, -3             ; 2 uses
  %i.cy = icmp ne i32 %i.cx, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = shl i64 %.sroa.054.7, 4                 ; 3 uses
  %.not44.3 = icmp sgt i64 %i.cw, -1
  br i1 %.not44.3, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.da = add nsw i32 %.sroa.13.7, -4             ; 2 uses
  %i.db = icmp ne i32 %i.da, 0
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = shl i64 %.sroa.054.7, 5
  %.not44.4 = icmp sgt i64 %i.cz, -1
  %i.dd = select i1 %.not44.4, i64 10, i64 8
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.n, %bb.o, %bb.p
  %.sroa.054.2144162 = phi i64 [ %i.cz, %bb.q ], [ %i.cw, %bb.p ], [ %i.ct, %bb.o ], [ %i.cr, %bb.n ]
  %.sroa.13.2143160 = phi i32 [ %i.da, %bb.q ], [ %i.cx, %bb.p ], [ %i.cu, %bb.o ], [ %i.cq, %bb.n ]
  %i.de = phi i64 [ %i.dc, %bb.q ], [ %i.cz, %bb.p ], [ %i.cw, %bb.o ], [ %i.ct, %bb.n ]
  %.0137 = phi i64 [ %i.dd, %bb.q ], [ 6, %bb.p ], [ 4, %bb.o ], [ 2, %bb.n ]
  %i.df = lshr i64 %i.de, 63
  %i.dg = add nsw i32 %.sroa.13.2143160, -2
  %i.dh = shl i64 %.sroa.054.2144162, 2
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.df
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %.0137
  %4 = getelementptr i8, ptr %i.dj, i64 -8
  %i.dk = load i32, ptr %4, align 4, !tbaa !111
  store i32 %i.dk, ptr %3, align 4, !tbaa !111
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader135, %.thread
  %.sroa.13.4 = phi i32 [ %i.dg, %.thread ], [ %i.cq, %.preheader135 ] ; 6 uses
  %.sroa.054.4 = phi i64 [ %i.dh, %.thread ], [ %i.cr, %.preheader135 ] ; 6 uses
  %i.dl = icmp samesign ult i32 %.sroa.13.4, 65
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp ne i32 %.sroa.13.4, 0
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nsw i32 %.sroa.13.4, -1             ; 3 uses
  %i.do = shl i64 %.sroa.054.4, 1                 ; 3 uses
  %.not44.1171 = icmp slt i64 %.sroa.054.4, 0
  br i1 %.not44.1171, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader.1
  %i.dp = icmp ne i32 %i.dn, 0
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = shl i64 %.sroa.054.4, 2                 ; 3 uses
  %.not44.1.1 = icmp sgt i64 %i.do, -1
  br i1 %.not44.1.1, label %bb.s, label %.thread.1

bb.s:                                             ; preds = %bb.r
  %i.dr = add nsw i32 %.sroa.13.4, -2             ; 2 uses
  %i.ds = icmp ne i32 %i.dr, 0
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = shl i64 %.sroa.054.4, 3                 ; 3 uses
  %.not44.2.1 = icmp sgt i64 %i.dq, -1
  br i1 %.not44.2.1, label %bb.t, label %.thread.1

bb.t:                                             ; preds = %bb.s
  %i.du = add nsw i32 %.sroa.13.4, -3             ; 2 uses
  %i.dv = icmp ne i32 %i.du, 0
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = shl i64 %.sroa.054.4, 4                 ; 3 uses
  %.not44.3.1 = icmp sgt i64 %i.dt, -1
  br i1 %.not44.3.1, label %bb.u, label %.thread.1

bb.u:                                             ; preds = %bb.t
  %i.dx = add nsw i32 %.sroa.13.4, -4             ; 2 uses
  %i.dy = icmp ne i32 %i.dx, 0
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = shl i64 %.sroa.054.4, 5
  %.not44.4.1 = icmp sgt i64 %i.dw, -1
  %i.ea = select i1 %.not44.4.1, i64 10, i64 8
  br label %.thread.1

.thread.1:                                        ; preds = %bb.u, %bb.r, %bb.s, %bb.t
  %.sroa.054.2144162.1 = phi i64 [ %i.dw, %bb.u ], [ %i.dt, %bb.t ], [ %i.dq, %bb.s ], [ %i.do, %bb.r ]
  %.sroa.13.2143160.1 = phi i32 [ %i.dx, %bb.u ], [ %i.du, %bb.t ], [ %i.dr, %bb.s ], [ %i.dn, %bb.r ]
  %i.eb = phi i64 [ %i.dz, %bb.u ], [ %i.dw, %bb.t ], [ %i.dt, %bb.s ], [ %i.dq, %bb.r ]
  %.0137.1 = phi i64 [ %i.ea, %bb.u ], [ 6, %bb.t ], [ 4, %bb.s ], [ 2, %bb.r ]
  %i.ec = lshr i64 %i.eb, 63
  %i.ed = add nsw i32 %.sroa.13.2143160.1, -2
  %i.ee = shl i64 %.sroa.054.2144162.1, 2
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.ec
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %.0137.1
  %5 = getelementptr i8, ptr %i.eg, i64 -8
  %i.eh = load i32, ptr %5, align 4, !tbaa !111
  store i32 %i.eh, ptr %i.ag, align 4, !tbaa !111
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.1, %.preheader.1, %bb.m, %bb.l
  %.sroa.13.5 = phi i32 [ %.sroa.13.7, %bb.l ], [ %i.dn, %.preheader.1 ], [ %.sroa.13.7, %bb.m ], [ %i.ed, %.thread.1 ] ; 5 uses
  %.sroa.054.5 = phi i64 [ %.sroa.054.7, %bb.l ], [ %i.do, %.preheader.1 ], [ %.sroa.054.7, %bb.m ], [ %i.ee, %.thread.1 ] ; 3 uses
  %i.ei = and i64 %indvars.iv, 1                  ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !111 ; 8 uses
  %i.el = icmp eq i32 %i.ek, 14
  %i.em = icmp samesign ult i32 %.sroa.13.5, 65
  tail call void @llvm.assume(i1 %i.em)
  %i.en = icmp sgt i32 %.sroa.3368.1, -1
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = and i32 %.sroa.3368.1, 3
  %i.ep = icmp eq i32 %i.eo, 0
  tail call void @llvm.assume(i1 %i.ep)
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.eq = icmp samesign ugt i32 %.sroa.13.5, 15
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = lshr i64 %.sroa.054.5, 48               ; 2 uses
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = add nsw i32 %.sroa.13.5, -16
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ei
  store i32 %i.es, ptr %i.eu, align 4, !tbaa !111
  %i.ev = trunc nuw i64 %i.er to i16
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ew = icmp ne i32 %i.ek, 0
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ult i32 %i.ek, 33
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp samesign ule i32 %i.ek, %.sroa.13.5
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = sub nuw nsw i32 64, %i.ek
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 %.sroa.054.5, %i.fa
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = sub nuw nsw i32 %.sroa.13.5, %i.ek
  %i.fe = zext nneg i32 %i.ek to i64
  %i.ff = add nsw i32 %i.ek, -1
  %.neg = shl nsw i32 -1, %i.ff
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ei ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !111
  %i.fi = add nsw i32 %.neg, 1
  %i.fj = add i32 %i.fi, %i.fc
  %i.fk = add nsw i32 %i.fj, %i.fh                ; 2 uses
  store i32 %i.fk, ptr %i.fg, align 4, !tbaa !111
  %i.fl = trunc i32 %i.fk to i16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.fl, %bb.w ], [ %i.ev, %bb.v ]
  %.sroa.13.6 = phi i32 [ %i.fd, %bb.w ], [ %i.et, %bb.v ]
  %.pn = phi i64 [ %i.fe, %bb.w ], [ 16, %bb.v ]
  %.sroa.054.6 = shl i64 %.sroa.054.5, %.pn
  tail call void @llvm.assume(i1 %i.ah)
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  store i16 %.sink, ptr %i.fm, align 2, !tbaa !144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit215, label %bb.g, !llvm.loop !134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed20PhaseOneDecompressor16decompressThreadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 68719476736
  %i.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i64 %i.g, 68719476704                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %.not14 = icmp samesign eq i64 %i.j, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.015 = phi ptr [ %i.b, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  invoke void @_ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %.015)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null                          ; 2 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = extractvalue { ptr, i32 } %i.m, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed17RawspeedExceptionE) #26
  %i.q = icmp eq i32 %i.o, %i.p
  %i.r = call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 2 uses
  call void @llvm.assume(i1 %i.q)
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !call_target !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !110
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.015, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !114
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
end_hunk_0
