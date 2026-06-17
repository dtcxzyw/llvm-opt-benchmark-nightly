inline.NumInlined: 306
inline.NumDeleted: 162
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft28RunDecompressionOptimizationERNS2_5GraphEPNS0_4ZoneE:bb.a
_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableIhEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableIhEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit.i.loopexit, %.thread.i.i.i.i
  %.pre-phi65 = phi i64 [ %.pre64, %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableIhEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit.i.loopexit ], [ %i.l, %.thread.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %sum.shift.i = lshr i64 %.pre-phi65, 4          ; 2 uses
  %.not.i.i.not.i = icmp eq i64 %sum.shift.i, 0
  br i1 %.not.i.i.not.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableIhEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %sum.shift.i)
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableIhEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit.i, %bb.d
  %i.ah = load ptr, ptr %2, align 8, !nonnull !10, !align !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i
  %.012.i = phi i32 [ %.1.i, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i ], [ %i.ar, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit ] ; 2 uses
  %i.at = add nsw i32 %.012.i, -1                 ; 4 uses
  %i.au = load ptr, ptr %2, align 8, !nonnull !10, !align !11 ; 5 uses
  %i.av = zext nneg i32 %.012.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = icmp eq i8 %i.bb, 1
  %i.bd = getelementptr i8, ptr %i.az, i64 44
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bd, align 4, !noalias !10 ; 3 uses
  %i.be = getelementptr i8, ptr %i.az, i64 48
  %.sroa.0.0.copyload.i16.i.i = load i32, ptr %i.be, align 8, !noalias !10 ; 3 uses
  %.not.i.i36.i.i = icmp eq i32 %.sroa.0.0.copyload.i16.i.i, %.sroa.01.0.copyload.i.i.i ; 2 uses
  br i1 %i.bc, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %.not.i.i36.i.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %.pre.i.i = load ptr, ptr %i.bf, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.2.i = phi i32 [ %i.at, %.lr.ph.i.i ], [ %.3.i, %bb.j ] ; 4 uses
  %i.bi = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cm, %bb.j ]
  %.sroa.024.037.i.i = phi i32 [ %.sroa.0.0.copyload.i16.i.i, %.lr.ph.i.i ], [ %i.cr, %bb.j ] ; 3 uses
  %i.bj = lshr i32 %.sroa.024.037.i.i, 4
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 3
  %i.bq = sub i32 %.sroa.024.037.i.i, %i.bp
  %i.br = load ptr, ptr %i.bg, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = zext i32 %i.bq to i64
  %i.bu = add i64 %i.bt, %i.bs                    ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %i.bx = icmp eq i8 %i.bw, 91
  br i1 %i.bx, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val14.i.i = load ptr, ptr %2, align 8
  %.val15.i.i = load ptr, ptr %i.n, align 8       ; 2 uses
  %i.by = getelementptr i8, ptr %.val14.i.i, i64 8
  %.val14.val.i.i = load ptr, ptr %i.by, align 8
  %i.bz = ptrtoint ptr %.val14.val.i.i to i64
  %i.ca = sub i64 %i.bu, %i.bz
  %i.cb = lshr i64 %i.ca, 4
  %i.cc = and i64 %i.cb, 268435455
  %i.cd = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %.not.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cf, align 4
  %i.cg = lshr i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %.not35.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not35.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = load ptr, ptr %i.bh, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %.sroa.0.0.copyload.i20.i.i = load i32, ptr %i.cl, align 4
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %.2.i, i32 %.sroa.0.0.copyload.i20.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.3.i = phi i32 [ %.2.i, %bb.g ], [ %.sroa.speculated.i.i, %bb.i ], [ %.2.i, %bb.h ], [ %.2.i, %bb.f ] ; 2 uses
  call fastcc void @_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer16ProcessOperationERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bv)
  %i.cm = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.bl
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 3
  %i.cr = sub i32 %.sroa.024.037.i.i, %i.cq       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cr, %.sroa.01.0.copyload.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i, label %bb.f

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %.not.i.i36.i.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre.i6.i = load ptr, ptr %i.cs, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i5.i
  %i.cu = phi ptr [ %.pre.i6.i, %.lr.ph.i5.i ], [ %i.di, %bb.l ]
  %.sroa.01.011.i.i = phi i32 [ %.sroa.0.0.copyload.i16.i.i, %.lr.ph.i5.i ], [ %i.dn, %bb.l ] ; 3 uses
  %i.cv = lshr i32 %.sroa.01.011.i.i, 4
  %i.cw = add nsw i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 3
  %i.dc = sub i32 %.sroa.01.011.i.i, %i.db
  %i.dd = load ptr, ptr %i.ct, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = zext i32 %i.dc to i64
  %i.dg = add i64 %i.df, %i.de
  %i.dh = inttoptr i64 %i.dg to ptr
  call fastcc void @_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer16ProcessOperationERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.dh)
  %i.di = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cx
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 3
  %i.dn = sub i32 %.sroa.01.011.i.i, %i.dm        ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.dn, %.sroa.01.0.copyload.i.i.i
  br i1 %.not.i.i.i7.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i, label %bb.l

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i: ; preds = %bb.l, %bb.j, %bb.k, %bb.e
  %.1.i = phi i32 [ %.3.i, %bb.j ], [ %i.at, %bb.e ], [ %i.at, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %i.do = icmp sgt i32 %.1.i, -1
  br i1 %i.do, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit, !llvm.loop !12

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer12ProcessBlockILb1EEEvRKNS2_5BlockEPi.exit.i, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzerC2ERKNS2_5GraphEPNS0_4ZoneE.exit
  %i.dp = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not51.a = icmp eq ptr %i.dp, %i.dr
  br i1 %.not51.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit, %.critedge
  %.052 = phi ptr [ %i.es, %.critedge ], [ %i.dp, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer3RunEv.exit ] ; 2 uses
  %.sroa.032.0.copyload = load i32, ptr %.052, align 4
  %i.ds = load ptr, ptr %i.e, align 8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = zext i32 %.sroa.032.0.copyload to i64
  %i.dv = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = inttoptr i64 %i.dv to ptr               ; 8 uses
  %.val = load ptr, ptr %2, align 8
  %.val43 = load ptr, ptr %i.n, align 8
  %i.dx = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.dx, align 8
  %i.dy = ptrtoint ptr %.val.val to i64
  %i.dz = sub i64 %i.dv, %i.dy
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = and i64 %i.ea, 268435455
  %i.ec = getelementptr inbounds nuw i8, ptr %.val43, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %.not49 = icmp eq i8 %i.ed, 0
  br i1 %.not49, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.ee = load i8, ptr %i.dw, align 4
  switch i8 %i.ee, label %.critedge [
    i8 75, label %bb.n
    i8 91, label %bb.p
    i8 77, label %bb.r
    i8 72, label %3
  ]

bb.n:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = icmp eq i8 %i.eg, 8
  br i1 %i.eh, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  store i8 9, ptr %i.ef, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %.sroa.020.0.copyload = load i8, ptr %i.ei, align 4
  %i.ej = icmp eq i8 %.sroa.020.0.copyload, 4
  br i1 %i.ej, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i8 5, ptr %i.ei, align 4
  br label %.critedge

bb.r:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  %i.el = load i8, ptr %i.ek, align 1
  %.off.i = add i8 %i.el, -11
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  store i8 5, ptr %i.em, align 2
  br label %.critedge

3:                                                ; preds = %bb.m
  %4 = getelementptr inbounds nuw i8, ptr %i.dw, i64 5 ; 2 uses
  %.sroa.09.0.copyload = load i8, ptr %4, align 1
  %5 = icmp eq i8 %.sroa.09.0.copyload, 4
  br i1 %5, label %bb.t, label %.critedge

bb.t:                                             ; preds = %3
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 6 ; 2 uses
  %.sroa.06.0.copyload.a = load i8, ptr %i.en, align 2
  %i.eo = icmp eq i8 %.sroa.06.0.copyload.a, 1
  br i1 %i.eo, label %.critedge2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.eq = load i8, ptr %i.ep, align 4
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.t, %bb.u
  store i8 5, ptr %4, align 1
  store i8 0, ptr %i.en, align 2
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.o, %bb.n, %bb.q, %bb.p, %bb.s, %bb.r, %3, %.critedge2, %bb.u, %.lr.ph
  %i.es = getelementptr inbounds nuw i8, ptr %.052, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.es, %i.dr
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #7
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_121DecompressionAnalyzer16ProcessOperationERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4                 ; 2 uses
  switch i8 %i.a, label %bb.ac [
    i8 78, label %bb.b
    i8 92, label %.critedge
    i8 91, label %bb.d
    i8 68, label %bb.h
    i8 60, label %bb.j
    i8 67, label %bb.l
    i8 69, label %bb.n
    i8 72, label %bb.q
    i8 75, label %bb.v
    i8 77, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val111 = load ptr, ptr %i.c, align 8
  %i.d = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val111, i64 %i.e
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i112 = load i32, ptr %i.j, align 4 ; 2 uses
  %.not167 = icmp eq i32 %.sroa.0.0.copyload.i.i112, -1
  br i1 %.not167, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit115

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit115: ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  %.val110 = load ptr, ptr %i.c, align 8
  %i.k = lshr i32 %.sroa.0.0.copyload.i.i112, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val110, i64 %i.l
  store i8 1, ptr %i.m, align 1
  br label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread: ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit115, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.o = load i8, ptr %i.n, align 1
  %.off.i = add i8 %i.o, -11
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i116 = load i32, ptr %i.p, align 4
  %.val109 = load ptr, ptr %i.c, align 8
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i116, 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val109, i64 %i.r
  store i8 1, ptr %i.s, align 1
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.val96 = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.val97 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val96, i64 8
  %.val96.val = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %.val96.val to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = and i64 %i.y, 268435455
  %i.aa = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not166 = icmp eq i8 %i.ab, 0
  br i1 %.not166, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %i.af = zext i16 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not87169 = icmp eq i16 %i.ae, 0
  br i1 %.not87169, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ah = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ai = lshr exact i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0170.prol = phi ptr [ %i.an, %.lr.ph.prol ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.sroa.050.0.copyload.prol = load i32, ptr %.0170.prol, align 4
  %.val108.prol = load ptr, ptr %i.t, align 8
  %i.ak = lshr i32 %.sroa.050.0.copyload.prol, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.val108.prol, i64 %i.al
  store i8 1, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0170.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0170.unr = phi ptr [ %i.ac, %.lr.ph.preheader ], [ %i.an, %.lr.ph.prol ]
  %i.ao = icmp ult i64 %i.ah, 12
  br i1 %i.ao, label %.critedge, label %.lr.ph

end_hunk_0
