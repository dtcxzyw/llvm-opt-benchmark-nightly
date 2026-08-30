Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/strtod?download=true
inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd(ptr nofree readonly captures(none) %0, i32 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.double_conversion::DiyFp", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, %1                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 309
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.c, -323
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %1, 16
  br i1 %i.f, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  %or.cond31.i = icmp ugt i32 %2, -23
  br i1 %or.cond31.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = sub nsw i32 0, %2
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i, label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.09.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.o, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = sext i8 %i.k to i64
  %i.m = mul nuw i64 %.09.i.i, 10
  %i.n = add i64 %i.m, -48
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next.i.i, %i.i
  %i.q = icmp ult i64 %i.o, 1844674407370955161
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !11

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.s = uitofp i64 %i.o to double
  br label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i

_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.f ], [ %i.s, %._crit_edge.loopexit.i.i ]
  %i.t = zext nneg i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN17double_conversionL19exact_powers_of_tenE, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !8
  %i.w = fdiv double %.0.lcssa.i.i, %i.v
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %or.cond.i = icmp ult i32 %2, 23
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %.lr.ph.preheader.i34.i, label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit40.i

.lr.ph.preheader.i34.i:                           ; preds = %bb.h
  %i.y = zext nneg i32 %1 to i64
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i, %.lr.ph.preheader.i34.i
  %indvars.iv.i36.i = phi i64 [ 0, %.lr.ph.preheader.i34.i ], [ %indvars.iv.next.i38.i, %.lr.ph.i35.i ] ; 2 uses
  %.09.i37.i = phi i64 [ 0, %.lr.ph.preheader.i34.i ], [ %i.ae, %.lr.ph.i35.i ]
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i36.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = sext i8 %i.aa to i64
  %i.ac = mul nuw i64 %.09.i37.i, 10
  %i.ad = add i64 %i.ac, -48
  %i.ae = add i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next.i38.i, %i.y
  %i.ag = icmp ult i64 %i.ae, 1844674407370955161
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i35.i, label %._crit_edge.loopexit.i39.i, !llvm.loop !11

._crit_edge.loopexit.i39.i:                       ; preds = %.lr.ph.i35.i
  %i.ai = uitofp i64 %i.ae to double
  br label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit40.i

_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit40.i: ; preds = %._crit_edge.loopexit.i39.i, %bb.h
  %.0.lcssa.i33.i = phi double [ 0.000000e+00, %bb.h ], [ %i.ai, %._crit_edge.loopexit.i39.i ]
  %i.aj = zext nneg i32 %2 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN17double_conversionL19exact_powers_of_tenE, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8
  %i.am = fmul double %.0.lcssa.i33.i, %i.al
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %2, -1
  %i.ao = sub nsw i32 15, %1                      ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nsw i32 %2, %i.ao                   ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 23
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph.preheader.i43.i, label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit49.i

.lr.ph.preheader.i43.i:                           ; preds = %bb.k
  %i.as = zext nneg i32 %1 to i64
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i, %.lr.ph.preheader.i43.i
  %indvars.iv.i45.i = phi i64 [ 0, %.lr.ph.preheader.i43.i ], [ %indvars.iv.next.i47.i, %.lr.ph.i44.i ] ; 2 uses
  %.09.i46.i = phi i64 [ 0, %.lr.ph.preheader.i43.i ], [ %i.ay, %.lr.ph.i44.i ]
  %indvars.iv.next.i47.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i45.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = sext i8 %i.au to i64
  %i.aw = mul nuw i64 %.09.i46.i, 10
  %i.ax = add i64 %i.aw, -48
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next.i47.i, %i.as
  %i.ba = icmp ult i64 %i.ay, 1844674407370955161
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.lr.ph.i44.i, label %._crit_edge.loopexit.i48.i, !llvm.loop !11

._crit_edge.loopexit.i48.i:                       ; preds = %.lr.ph.i44.i
  %i.bc = uitofp i64 %i.ay to double
  br label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit49.i

_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit49.i: ; preds = %._crit_edge.loopexit.i48.i, %bb.k
  %.0.lcssa.i42.i = phi double [ 0.000000e+00, %bb.k ], [ %i.bc, %._crit_edge.loopexit.i48.i ]
  %i.bd = zext nneg i32 %i.ao to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN17double_conversionL19exact_powers_of_tenE, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8
  %i.bg = fmul double %.0.lcssa.i42.i, %i.bf
  %i.bh = sext i32 %i.ap to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @_ZN17double_conversionL19exact_powers_of_tenE, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8
  %i.bk = fmul double %i.bg, %i.bj
  br label %.sink.split

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.bl = icmp sgt i32 %1, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.i.i, label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.l
  %i.bm = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = sext i8 %i.bo to i64
  %i.bq = mul nuw i64 %.09.i.i.i, 10
  %i.br = add i64 %i.bq, -48
  %i.bs = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bm
  %i.bu = icmp ult i64 %i.bs, 1844674407370955161
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !11

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i

_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i: ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %.07.lcssa.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bw, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bs, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.bx = icmp eq i32 %1, %.07.lcssa.i.i.i
  br i1 %i.bx, label %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i, label %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i

_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i: ; preds = %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i
  %i.by = zext nneg i32 %.07.lcssa.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cb = icmp sgt i8 %i.ca, 52
  %i.cc = zext i1 %i.cb to i64
  %spec.select.i.i = add i64 %.0.lcssa.i.i.i, %i.cc
  %i.cd = sub i32 %i.c, %.07.lcssa.i.i.i
  br label %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i

_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i: ; preds = %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i
  %i.ce = phi i32 [ %i.cd, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i ], [ %2, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i ] ; 4 uses
  %spec.select.sink.i102.i = phi i64 [ %spec.select.i.i, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i ], [ %.0.lcssa.i.i.i, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i ] ; 3 uses
  %i.cf = phi i64 [ 4, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.i ], [ 0, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i.i ]
  %i.cg = icmp ult i64 %spec.select.sink.i102.i, 18014398509481984
  br i1 %i.cg, label %.lr.ph.i.i15, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i15, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i
  %.08.lcssa.i.i = phi i64 [ %spec.select.sink.i102.i, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i ], [ %i.ci, %.lr.ph.i.i15 ] ; 3 uses
  %.0.lcssa.i.i13 = phi i32 [ 0, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i ], [ %i.cj, %.lr.ph.i.i15 ] ; 2 uses
  %i.ch = icmp sgt i64 %.08.lcssa.i.i, -1
  br i1 %i.ch, label %.lr.ph15.i.i, label %_ZN17double_conversion5DiyFp9NormalizeEv.exit.i

.lr.ph.i.i15:                                     ; preds = %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i, %.lr.ph.i.i15
  %.011.i.i = phi i32 [ %i.cj, %.lr.ph.i.i15 ], [ 0, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i ]
  %.0810.i.i = phi i64 [ %i.ci, %.lr.ph.i.i15 ], [ %spec.select.sink.i102.i, %_ZN17double_conversionL9ReadDiyFpENS_6VectorIKcEEPNS_5DiyFpEPi.exit.thread.i ] ; 2 uses
  %i.ci = shl nuw i64 %.0810.i.i, 10              ; 2 uses
  %i.cj = add nsw i32 %.011.i.i, -10              ; 2 uses
  %i.ck = icmp ult i64 %.0810.i.i, 17592186044416
  br i1 %i.ck, label %.lr.ph.i.i15, label %.preheader.i.i, !llvm.loop !13

.lr.ph15.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph15.i.i
  %.114.i.i = phi i32 [ %i.cm, %.lr.ph15.i.i ], [ %.0.lcssa.i.i13, %.preheader.i.i ]
  %.1913.i.i = phi i64 [ %i.cl, %.lr.ph15.i.i ], [ %.08.lcssa.i.i, %.preheader.i.i ]
  %i.cl = shl nuw i64 %.1913.i.i, 1               ; 3 uses
  %i.cm = add nsw i32 %.114.i.i, -1               ; 2 uses
  %i.cn = icmp sgt i64 %i.cl, -1
  br i1 %i.cn, label %.lr.ph15.i.i, label %_ZN17double_conversion5DiyFp9NormalizeEv.exit.i, !llvm.loop !14

_ZN17double_conversion5DiyFp9NormalizeEv.exit.i:  ; preds = %.lr.ph15.i.i, %.preheader.i.i
  %.19.lcssa.i.i = phi i64 [ %.08.lcssa.i.i, %.preheader.i.i ], [ %i.cl, %.lr.ph15.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i13, %.preheader.i.i ], [ %i.cm, %.lr.ph15.i.i ] ; 3 uses
  %i.co = sub nsw i32 0, %.1.lcssa.i.i
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl i64 %i.cf, %i.cp                    ; 3 uses
  %i.cr = icmp slt i32 %i.ce, -348
  br i1 %i.cr, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversion5DiyFp9NormalizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @_ZN17double_conversion16PowersOfTenCache32GetCachedPowerForDecimalExponentEiPNS_5DiyFpEPi(i32 noundef %i.ce, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i32 %i.ct, %i.ce
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sub nsw i32 %i.ce, %i.ct                ; 3 uses
  %i.cv = icmp ult i32 %i.cu, 8
  br i1 %i.cv, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #6
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %switch.tableidx = add nsw i32 %i.cu, -1        ; 2 uses
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd, i64 %i.cw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.cx = zext nneg i32 %switch.tableidx to i64
  %switch.gep96 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd.1, i64 %i.cx
  %switch.load97 = load i32, ptr %switch.gep96, align 4
  %switch.ext98 = zext i32 %switch.load97 to i64  ; 2 uses
  %i.cy = lshr i64 %.19.lcssa.i.i, 32
  %i.cz = and i64 %.19.lcssa.i.i, 4294967295
  %i.da = mul nuw i64 %i.cy, %switch.ext98
  %i.db = mul nuw i64 %i.cz, %switch.ext98        ; 2 uses
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = add nuw nsw i64 %i.dc, 2147483648
  %i.de = add nsw i32 %.1.lcssa.i.i, %switch.ext
  %i.df = lshr i64 %i.db, 32
  %i.dg = add nuw i64 %i.df, %i.da
  %i.dh = lshr i64 %i.dd, 32
  %i.di = add nuw i64 %i.dg, %i.dh
  %i.dj = sub nsw i32 19, %1
  %.not59.i = icmp slt i32 %i.dj, %i.cu
  %i.dk = add i64 %i.cq, 4
  %spec.select.i = select i1 %.not59.i, i64 %i.dk, i64 %i.cq
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.m
  %.sroa.080.0.i = phi i64 [ %.19.lcssa.i.i, %bb.m ], [ %i.di, %switch.lookup ] ; 2 uses
  %.sroa.16.0.i = phi i32 [ %.1.lcssa.i.i, %bb.m ], [ %i.de, %switch.lookup ]
  %.153.i = phi i64 [ %i.cq, %bb.m ], [ %spec.select.i, %switch.lookup ] ; 2 uses
  %i.dl = lshr i64 %.sroa.080.0.i, 32             ; 2 uses
  %i.dm = and i64 %.sroa.080.0.i, 4294967295      ; 2 uses
  %i.dn = load i64, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.do = lshr i64 %i.dn, 32                      ; 2 uses
  %i.dp = and i64 %i.dn, 4294967295               ; 2 uses
  %i.dq = mul nuw i64 %i.do, %i.dl
  %i.dr = mul nuw i64 %i.do, %i.dm                ; 2 uses
  %i.ds = mul nuw i64 %i.dp, %i.dl                ; 2 uses
  %i.dt = mul nuw i64 %i.dp, %i.dm
  %i.du = lshr i64 %i.dt, 32
  %i.dv = and i64 %i.ds, 4294967295
  %i.dw = and i64 %i.dr, 4294967295
  %i.dx = add nuw nsw i64 %i.dv, 2147483648
  %i.dy = add nuw nsw i64 %i.dx, %i.du
  %i.dz = add nuw nsw i64 %i.dy, %i.dw
  %i.ea = load i32, ptr %i.cs, align 8, !tbaa !18
  %i.eb = add i32 %.sroa.16.0.i, 64
  %i.ec = add i32 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ds, 32
  %i.ee = add nuw i64 %i.ed, %i.dq
  %i.ef = lshr i64 %i.dr, 32
  %i.eg = add nuw i64 %i.ee, %i.ef
  %i.eh = lshr i64 %i.dz, 32
  %i.ei = add i64 %i.eg, %i.eh                    ; 3 uses
  %.not60.i = icmp eq i64 %.153.i, 0
  %i.ej = select i1 %.not60.i, i64 8, i64 9
  %i.ek = add i64 %i.ej, %.153.i
  %i.el = icmp ult i64 %i.ei, 18014398509481984
  br i1 %i.el, label %.lr.ph.i70.i, label %.preheader.i62.i

.preheader.i62.i:                                 ; preds = %.lr.ph.i70.i, %bb.p
  %.08.lcssa.i63.i = phi i64 [ %i.ei, %bb.p ], [ %i.en, %.lr.ph.i70.i ] ; 3 uses
  %.0.lcssa.i64.i = phi i32 [ %i.ec, %bb.p ], [ %i.eo, %.lr.ph.i70.i ] ; 2 uses
  %i.em = icmp sgt i64 %.08.lcssa.i63.i, -1
  br i1 %i.em, label %.lr.ph15.i67.i, label %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i

.lr.ph.i70.i:                                     ; preds = %bb.p, %.lr.ph.i70.i
  %.011.i71.i = phi i32 [ %i.eo, %.lr.ph.i70.i ], [ %i.ec, %bb.p ]
  %.0810.i72.i = phi i64 [ %i.en, %.lr.ph.i70.i ], [ %i.ei, %bb.p ] ; 2 uses
  %i.en = shl nuw i64 %.0810.i72.i, 10            ; 2 uses
  %i.eo = add nsw i32 %.011.i71.i, -10            ; 2 uses
  %i.ep = icmp ult i64 %.0810.i72.i, 17592186044416
  br i1 %i.ep, label %.lr.ph.i70.i, label %.preheader.i62.i, !llvm.loop !13

.lr.ph15.i67.i:                                   ; preds = %.preheader.i62.i, %.lr.ph15.i67.i
  %.114.i68.i = phi i32 [ %i.er, %.lr.ph15.i67.i ], [ %.0.lcssa.i64.i, %.preheader.i62.i ]
  %.1913.i69.i = phi i64 [ %i.eq, %.lr.ph15.i67.i ], [ %.08.lcssa.i63.i, %.preheader.i62.i ]
  %i.eq = shl nuw i64 %.1913.i69.i, 1             ; 3 uses
  %i.er = add nsw i32 %.114.i68.i, -1             ; 2 uses
  %i.es = icmp sgt i64 %i.eq, -1
  br i1 %i.es, label %.lr.ph15.i67.i, label %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i, !llvm.loop !14

_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i: ; preds = %.lr.ph15.i67.i, %.preheader.i62.i
  %.19.lcssa.i65.i = phi i64 [ %.08.lcssa.i63.i, %.preheader.i62.i ], [ %i.eq, %.lr.ph15.i67.i ] ; 2 uses
  %.1.lcssa.i66.i = phi i32 [ %.0.lcssa.i64.i, %.preheader.i62.i ], [ %i.er, %.lr.ph15.i67.i ] ; 5 uses
  %i.et = sub nsw i32 %i.ec, %.1.lcssa.i66.i
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl i64 %i.ek, %i.eu                    ; 2 uses
  %i.ew = add nsw i32 %.1.lcssa.i66.i, 64
  %i.ex = icmp sgt i32 %.1.lcssa.i66.i, -1086
  %spec.select.i74.i = call i32 @llvm.usub.sat.i32(i32 %i.ew, i32 -1074)
  %.0.i.i = select i1 %i.ex, i32 53, i32 %spec.select.i74.i ; 3 uses
  %i.ey = sub nsw i32 64, %.0.i.i
  %i.ez = icmp samesign ult i32 %.0.i.i, 4
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i
  %i.fa = sub nuw nsw i32 4, %.0.i.i              ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fc = lshr i64 %.19.lcssa.i65.i, %i.fb
  %i.fd = add nsw i32 %i.fa, %.1.lcssa.i66.i
  %i.fe = lshr i64 %i.ev, %i.fb
  %i.ff = add nuw i64 %i.fe, 9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i
  %.sroa.080.1.i = phi i64 [ %i.fc, %bb.q ], [ %.19.lcssa.i65.i, %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %.sroa.16.1.i = phi i32 [ %i.fd, %bb.q ], [ %.1.lcssa.i66.i, %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i ]
  %.2.i14 = phi i64 [ %i.ff, %bb.q ], [ %i.ev, %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %.052.i = phi i32 [ 60, %bb.q ], [ %i.ey, %_ZN17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 3 uses
  %i.fg = zext i32 %.052.i to i64                 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.fg
  %i.fh = xor i64 %notmask.i, -1
  %i.fi = and i64 %.sroa.080.1.i, %i.fh
  %i.fj = add nsw i32 %.052.i, -1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fi, 3                        ; 2 uses
  %i.fm = shl i64 8, %i.fk                        ; 2 uses
  %i.fn = lshr i64 %.sroa.080.1.i, %i.fg
  %i.fo = add nsw i32 %.052.i, %.sroa.16.1.i      ; 2 uses
  %i.fp = add i64 %i.fm, %.2.i14
  %.not61.i = icmp uge i64 %i.fl, %i.fp           ; 2 uses
  %i.fq = zext i1 %.not61.i to i64
  %spec.select105.i = add i64 %i.fn, %i.fq        ; 3 uses
  %i.fr = icmp ugt i64 %spec.select105.i, 9007199254740991
  br i1 %i.fr, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i

.lr.ph.i.i75.i:                                   ; preds = %bb.r, %.lr.ph.i.i75.i
  %.01521.i.i.i = phi i32 [ %i.ft, %.lr.ph.i.i75.i ], [ %i.fo, %bb.r ]
  %.01620.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i75.i ], [ %spec.select105.i, %bb.r ] ; 2 uses
  %i.fs = lshr i64 %.01620.i.i.i, 1               ; 2 uses
  %i.ft = add nsw i32 %.01521.i.i.i, 1            ; 2 uses
  %i.fu = icmp ugt i64 %.01620.i.i.i, 18014398509481983
  br i1 %i.fu, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i, !llvm.loop !20

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i75.i, %bb.r
  %.016.lcssa.i.i.i = phi i64 [ %spec.select105.i, %bb.r ], [ %i.fs, %.lr.ph.i.i75.i ] ; 3 uses
  %.015.lcssa.i.i.i = phi i32 [ %i.fo, %bb.r ], [ %i.ft, %.lr.ph.i.i75.i ] ; 5 uses
  %i.fv = icmp sgt i32 %.015.lcssa.i.i.i, 971
  br i1 %i.fv, label %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.fw = icmp slt i32 %.015.lcssa.i.i.i, -1074
  br i1 %i.fw, label %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.fx = icmp ne i32 %.015.lcssa.i.i.i, -1074
  %i.fy = and i64 %.016.lcssa.i.i.i, 4503599627370496
  %i.fz = icmp eq i64 %i.fy, 0                    ; 2 uses
  %i.ga = and i1 %i.fx, %i.fz
  br i1 %i.ga, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph25.i.i.i
  %.124.i.i.i = phi i32 [ %i.gc, %.lr.ph25.i.i.i ], [ %.015.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.11723.i.i.i = phi i64 [ %i.gb, %.lr.ph25.i.i.i ], [ %.016.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.gb = shl i64 %.11723.i.i.i, 1                ; 2 uses
  %i.gc = add nsw i32 %.124.i.i.i, -1             ; 2 uses
  %i.gd = icmp sgt i32 %.124.i.i.i, -1073
  %i.ge = and i64 %.11723.i.i.i, 2251799813685248
  %i.gf = icmp eq i64 %i.ge, 0                    ; 2 uses
  %i.gg = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %i.gg, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i, !llvm.loop !21

._crit_edge26.i.i.i:                              ; preds = %.lr.ph25.i.i.i, %.preheader.i.i.i
  %.117.lcssa.i.i.i = phi i64 [ %.016.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.gb, %.lr.ph25.i.i.i ]
  %.1.lcssa.i.i.i = phi i32 [ %.015.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.gc, %.lr.ph25.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.fz, %.preheader.i.i.i ], [ %i.gf, %.lr.ph25.i.i.i ]
  %i.gh = icmp eq i32 %.1.lcssa.i.i.i, -1074
  %brmerge.not.i.i.i = select i1 %i.gh, i1 %.lcssa.i.i.i, i1 false
  %i.gi = add nsw i32 %.1.lcssa.i.i.i, 1075
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 52
  %.0.i.i.i = select i1 %brmerge.not.i.i.i, i64 0, i64 %i.gk
  %i.gl = and i64 %.117.lcssa.i.i.i, 4503599627370495
  %i.gm = or disjoint i64 %.0.i.i.i, %i.gl
  %i.gn = bitcast i64 %i.gm to double
  br label %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit

_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit: ; preds = %._crit_edge.i.i.i, %bb.s, %._crit_edge26.i.i.i
  %i.go = phi double [ %i.gn, %._crit_edge26.i.i.i ], [ +inf, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.s ] ; 2 uses
  store double %i.go, ptr %3, align 8, !tbaa !8
  %i.gp = sub i64 %i.fm, %.2.i14
  %i.gq = icmp uge i64 %i.gp, %i.fl
  %or.cond.not.i = or i1 %i.gq, %.not61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.gr = fcmp oeq double %i.go, +inf
  %spec.select = select i1 %or.cond.not.i, i1 true, i1 %i.gr
  br label %bb.t

.sink.split:                                      ; preds = %_ZN17double_conversion5DiyFp9NormalizeEv.exit.i, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit49.i, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit40.i, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i, %bb.c, %bb.b, %bb.a
  %.sink = phi double [ %i.w, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit.i ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.bk, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit49.i ], [ %i.am, %_ZN17double_conversionL10ReadUint64ENS_6VectorIKcEEPi.exit40.i ], [ 0.000000e+00, %_ZN17double_conversion5DiyFp9NormalizeEv.exit.i ]
  store double %.sink, ptr %3, align 8, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit, %.sink.split
  %.0 = phi i1 [ true, %.sink.split ], [ %spec.select, %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN17double_conversionL22CompareBufferWithDiyFpENS_6VectorIKcEEiNS_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %3, i32 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.double_conversion::Bignum", align 4 ; 8 uses
  %6 = alloca %"class.double_conversion::Bignum", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i16 0, ptr %5, align 4, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store i16 0, ptr %6, align 4, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !25
  call void @_ZN17double_conversion6Bignum19AssignDecimalStringENS_6VectorIKcEE(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr %0, i32 %1)
  call void @_ZN17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %6, i64 noundef %3)
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nsw i32 0, %2
  call void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %4)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %4
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr noundef nonnull align 4 dereferenceable(516) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN17double_conversion6StrtodENS_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [780 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.e, 48
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i, label %.lr.ph.i.i, !llvm.loop !26

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.h = sub nuw nsw i32 %1, %i.g
  br label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i

_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.i = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.i, label %.lr.ph, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i

.lr.ph:                                           ; preds = %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i
  %i.j = zext nneg i32 %.sroa.3.1.i.i to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.k = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i, !llvm.loop !27

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i
  %i.m = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.k, %bb.d ] ; 3 uses
  %indvars.iv.i22.i26 = phi i64 [ %i.j, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.o = add nsw i64 %indvars.iv.i22.i26, -1      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %.not.i26.i = icmp eq i8 %i.q, 48
  br i1 %.not.i26.i, label %bb.d, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i, !llvm.loop !27

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.r = sub nsw i32 %.sroa.3.1.i.i, %i.n
  %i.s = add nsw i32 %i.r, %2                     ; 2 uses
  %i.t = icmp ugt i64 %indvars.iv.i22.i26, 780
  br i1 %i.t, label %.preheader.i.preheader, label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.b, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 779
  store i8 49, ptr %i.u, align 1, !tbaa !10
  %i.v = add nsw i32 %i.n, -780
  %i.w = add nsw i32 %i.v, %i.s
  br label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit: ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %i.n, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.b, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ] ; 2 uses
  %.0 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.m, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %i.s, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.x = call fastcc noundef zeroext i1 @_ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, ptr noundef %i.a)
  %i.y = load double, ptr %i.a, align 8, !tbaa !8 ; 6 uses
  br i1 %i.x, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit
  %i.z = bitcast double %i.y to i64               ; 11 uses
  %i.aa = and i64 %i.z, 9218868437227405312
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = shl i64 %i.z, 1
  %i.ad = and i64 %i.ac, 9007199254740990
  %i.ae = select i1 %i.ab, i64 1, i64 9007199254740993
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = lshr i64 %i.z, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nsw i32 %i.ai, -1076
  %i.ak = select i1 %i.ab, i32 -1075, i32 %i.aj
  %i.al = call fastcc noundef i32 @_ZN17double_conversionL22CompareBufferWithDiyFpENS_6VectorIKcEEiNS_5DiyFpE(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, i64 %i.af, i32 %i.ak) ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i64 %i.z, 9218868437227405312
  br i1 %i.an, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp slt i64 %i.z, 0
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.ap, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i64 %i.z, -1
  %i.ar = bitcast i64 %i.aq to double
  br label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit

bb.l:                                             ; preds = %bb.i
  %i.as = add nuw i64 %i.z, 1
  %i.at = bitcast i64 %i.as to double
  br label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit

bb.m:                                             ; preds = %bb.g
  %i.au = and i64 %i.z, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp slt i64 %i.z, 0
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.ax, label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i64 %i.z, -1
  %i.az = bitcast i64 %i.ay to double
  br label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit

bb.q:                                             ; preds = %bb.n
  %i.ba = add nuw i64 %i.z, 1
  %i.bb = bitcast i64 %i.ba to double
  br label %_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit

_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi.exit: ; preds = %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit, %bb.f, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.1.i = phi double [ %i.az, %bb.p ], [ %i.y, %bb.m ], [ %i.y, %bb.f ], [ +inf, %bb.h ], [ 0.000000e+00, %bb.j ], [ %i.at, %bb.l ], [ %i.ar, %bb.k ], [ 0.000000e+00, %bb.o ], [ %i.bb, %bb.q ], [ %i.y, %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret double %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN17double_conversion6StrtofENS_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [780 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.d, 48
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i, label %.lr.ph.i.i, !llvm.loop !26

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.f = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.g = sub nuw nsw i32 %1, %i.f
  br label %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i

_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.h, label %.lr.ph, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i

.lr.ph:                                           ; preds = %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i
  %i.i = zext nneg i32 %.sroa.3.1.i.i to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.j = trunc nuw i64 %i.n to i32                ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i, !llvm.loop !27

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN17double_conversionL16TrimLeadingZerosENS_6VectorIKcEE.exit.i
  %i.l = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %indvars.iv.i22.i25 = phi i64 [ %i.i, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i22.i25, -1      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %.not.i26.i = icmp eq i8 %i.p, 48
  br i1 %.not.i26.i, label %bb.d, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i, !llvm.loop !27

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.q = sub nsw i32 %.sroa.3.1.i.i, %i.m
  %i.r = add nsw i32 %i.q, %2                     ; 2 uses
  %i.s = icmp ugt i64 %indvars.iv.i22.i25, 780
  br i1 %i.s, label %.preheader.i.preheader, label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.a, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 779
  store i8 49, ptr %i.t, align 1, !tbaa !10
  %i.u = add nsw i32 %i.m, -780
  %i.v = add nsw i32 %i.u, %i.r
  br label %_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit

_ZN17double_conversionL10TrimAndCutENS_6VectorIKcEEiPciPS2_Pi.exit: ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %i.m, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ]
  %.sroa.0.0 = phi ptr [ %i.a, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ]
  %.0 = phi i32 [ %i.v, %.preheader.i.preheader ], [ %i.l, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.thread.i ], [ %i.r, %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit.i ]
  %i.w = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret float %i.w
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call fastcc noundef zeroext i1 @_ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd(ptr %0, i32 %1, i32 noundef %2, ptr noundef %i.a)
  %i.c = load double, ptr %i.a, align 8, !tbaa !8 ; 6 uses
  %i.d = fcmp ult double %i.c, f0x47EFFFFFE0000000
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ult double %i.c, f0x47EFFFFFF0000000
  br i1 %i.e, label %_ZN17double_conversionL18SanitizedDoubletofEd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit

bb.d:                                             ; preds = %bb.a
  %i.f = fptrunc double %i.c to float
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit

_ZN17double_conversionL18SanitizedDoubletofEd.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ +inf, %bb.c ], [ %i.f, %bb.d ], [ f0x7F7FFFFF, %bb.b ] ; 3 uses
  %i.g = fpext float %.0.i to double
  %i.h = fcmp oeq double %i.c, %i.g
  br i1 %i.h, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZN17double_conversionL18SanitizedDoubletofEd.exit
  %i.i = bitcast double %i.c to i64               ; 7 uses
  %i.j = icmp eq i64 %i.i, 9218868437227405312
  br i1 %i.j, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.l, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit, label %_ZNK17double_conversion6Double10NextDoubleEv.exit

_ZNK17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.g
  %i.m = add i64 %i.i, -1
  %i.n = bitcast i64 %i.m to double               ; 2 uses
  %i.o = icmp eq i64 %i.i, -4503599627370496
  br i1 %i.o, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit

bb.h:                                             ; preds = %bb.f
  %i.p = add nuw i64 %i.i, 1
  %i.q = bitcast i64 %i.p to double               ; 2 uses
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit

_ZNK17double_conversion6Double14PreviousDoubleEv.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNK17double_conversion6Double10NextDoubleEv.exit
  %.sink = phi i64 [ 1, %bb.g ], [ 1, %_ZNK17double_conversion6Double10NextDoubleEv.exit ], [ -1, %bb.e ], [ -1, %bb.h ]
  %.0.i4970 = phi double [ 0.000000e+00, %bb.g ], [ %i.n, %_ZNK17double_conversion6Double10NextDoubleEv.exit ], [ +inf, %bb.e ], [ %i.q, %bb.h ] ; 3 uses
  %i.s = add nsw i64 %.sink, %i.i
  %.0.i50 = bitcast i64 %i.s to double            ; 3 uses
  %i.t = fcmp ult double %.0.i50, f0x47EFFFFFE0000000
  br i1 %i.t, label %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK17double_conversion6Double14PreviousDoubleEv.exit
  %i.u = fcmp ult double %.0.i50, f0x47EFFFFFF0000000
  br i1 %i.u, label %_ZN17double_conversionL18SanitizedDoubletofEd.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit52

_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread: ; preds = %_ZNK17double_conversion6Double10NextDoubleEv.exit, %bb.h, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit
  %.0.i5083 = phi double [ %.0.i50, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit ], [ -inf, %_ZNK17double_conversion6Double10NextDoubleEv.exit ], [ -0.000000e+00, %bb.h ]
  %.0.i497082 = phi double [ %.0.i4970, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit ], [ %i.n, %_ZNK17double_conversion6Double10NextDoubleEv.exit ], [ %i.q, %bb.h ]
  %i.v = fptrunc double %.0.i5083 to float
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit52

_ZN17double_conversionL18SanitizedDoubletofEd.exit52: ; preds = %bb.i, %bb.j, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread
  %.0.i497081 = phi double [ %.0.i4970, %bb.j ], [ %.0.i497082, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ %.0.i4970, %bb.i ] ; 5 uses
  %.0.i51 = phi float [ +inf, %bb.j ], [ %i.v, %_ZNK17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ f0x7F7FFFFF, %bb.i ] ; 6 uses
  %i.w = fcmp ult double %.0.i497081, f0x47EFFFFFE0000000
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN17double_conversionL18SanitizedDoubletofEd.exit52
  %i.x = fcmp ult double %.0.i497081, f0x47EFFFFFF0000000
  br i1 %i.x, label %_ZN17double_conversionL18SanitizedDoubletofEd.exit54, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit54

bb.m:                                             ; preds = %_ZN17double_conversionL18SanitizedDoubletofEd.exit52
  %i.y = fptrunc double %.0.i497081 to float
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit54

_ZN17double_conversionL18SanitizedDoubletofEd.exit54: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i53 = phi float [ +inf, %bb.l ], [ %i.y, %bb.m ], [ f0x7F7FFFFF, %bb.k ]
  br i1 %i.b, label %_ZN17double_conversionL18SanitizedDoubletofEd.exit58, label %bb.n

bb.n:                                             ; preds = %_ZN17double_conversionL18SanitizedDoubletofEd.exit54
  %i.z = bitcast double %.0.i497081 to i64        ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9218868437227405312
  br i1 %i.aa, label %.thread89, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %bb.p, label %_ZNK17double_conversion6Double10NextDoubleEv.exit56

bb.p:                                             ; preds = %bb.o
  %i.ac = fcmp oeq double %.0.i497081, 0.000000e+00
  br i1 %i.ac, label %_ZNK17double_conversion6Double10NextDoubleEv.exit56.thread, label %_ZNK17double_conversion6Double10NextDoubleEv.exit56

_ZNK17double_conversion6Double10NextDoubleEv.exit56: ; preds = %bb.o, %bb.p
  %.sink95 = phi i64 [ -1, %bb.p ], [ 1, %bb.o ]
  %i.ad = add i64 %.sink95, %i.z
  %.0.i55 = bitcast i64 %i.ad to double           ; 3 uses
  %i.ae = fcmp ult double %.0.i55, f0x47EFFFFFE0000000
  br i1 %i.ae, label %_ZNK17double_conversion6Double10NextDoubleEv.exit56.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK17double_conversion6Double10NextDoubleEv.exit56
  %i.af = fcmp ult double %.0.i55, f0x47EFFFFFF0000000
  br i1 %i.af, label %_ZN17double_conversionL18SanitizedDoubletofEd.exit58, label %.thread89

.thread89:                                        ; preds = %bb.n, %bb.q
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit58

_ZNK17double_conversion6Double10NextDoubleEv.exit56.thread: ; preds = %bb.p, %_ZNK17double_conversion6Double10NextDoubleEv.exit56
  %.0.i5585 = phi double [ %.0.i55, %_ZNK17double_conversion6Double10NextDoubleEv.exit56 ], [ 0.000000e+00, %bb.p ]
  %i.ag = fptrunc double %.0.i5585 to float
  br label %_ZN17double_conversionL18SanitizedDoubletofEd.exit58

_ZN17double_conversionL18SanitizedDoubletofEd.exit58: ; preds = %_ZNK17double_conversion6Double10NextDoubleEv.exit56.thread, %.thread89, %bb.q, %_ZN17double_conversionL18SanitizedDoubletofEd.exit54
  %.046 = phi float [ %.0.i53, %_ZN17double_conversionL18SanitizedDoubletofEd.exit54 ], [ +inf, %.thread89 ], [ %i.ag, %_ZNK17double_conversion6Double10NextDoubleEv.exit56.thread ], [ f0x7F7FFFFF, %bb.q ] ; 3 uses
  %i.ah = fcmp oeq float %.0.i51, %.046
  br i1 %i.ah, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZN17double_conversionL18SanitizedDoubletofEd.exit58
  %i.ai = fcmp oeq float %.0.i51, 0.000000e+00
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = bitcast float %.0.i51 to i32            ; 3 uses
  %i.ak = and i32 %i.aj, 2139095040
  %i.al = icmp eq i32 %i.ak, 0                    ; 2 uses
  %i.am = shl i32 %i.aj, 1
  %i.an = and i32 %i.am, 16777214
  %i.ao = select i1 %i.al, i32 1, i32 16777217
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i32 %i.aj, 23
  %i.as = and i32 %i.ar, 255
  %i.at = add nsw i32 %i.as, -151
  %i.au = select i1 %i.al, i32 -150, i32 %i.at
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.6.0 = phi i32 [ %i.au, %bb.s ], [ -202, %bb.r ]
  %.sroa.064.0 = phi i64 [ %i.aq, %bb.s ], [ 4503599627370496, %bb.r ]
  %i.av = tail call fastcc noundef i32 @_ZN17double_conversionL22CompareBufferWithDiyFpENS_6VectorIKcEEiNS_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %.sroa.064.0, i32 %.sroa.6.0) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = bitcast float %.0.i51 to i32
  %i.ay = and i32 %i.ax, 1
  %i.az = icmp eq i32 %i.ay, 0
  %..046 = select i1 %i.az, float %.0.i51, float %.046
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v, %_ZN17double_conversionL18SanitizedDoubletofEd.exit58, %_ZN17double_conversionL18SanitizedDoubletofEd.exit
  %.2 = phi float [ %.0.i, %_ZN17double_conversionL18SanitizedDoubletofEd.exit ], [ %.0.i, %_ZN17double_conversionL18SanitizedDoubletofEd.exit58 ], [ %.046, %bb.u ], [ %.0.i51, %bb.t ], [ %..046, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret float %.2
}

declare void @_ZN17double_conversion16PowersOfTenCache32GetCachedPowerForDecimalExponentEiPNS_5DiyFpEPi(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @_ZN17double_conversion6Bignum19AssignDecimalStringENS_6VectorIKcEE(ptr noundef nonnull align 4 dereferenceable(516), ptr, i32) local_unnamed_addr #2

declare void @_ZN17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516), i64 noundef) local_unnamed_addr #2

declare void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #2

declare void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN17double_conversion5DiyFpE", !17, i64 0, !5, i64 8}
!17 = !{!"long", !6, i64 0}
!18 = !{!16, !5, i64 8}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN17double_conversion6BignumE", !24, i64 0, !24, i64 2, !6, i64 4}
!24 = !{!"short", !6, i64 0}
!25 = !{!23, !24, i64 2}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
end_hunk_0
