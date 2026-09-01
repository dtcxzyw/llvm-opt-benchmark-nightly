Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/strtod?download=true
inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0_@_ZN17double_conversionL12ComputeGuessENS_6VectorIKcEEiPd:bb.a

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
  %.154.i = phi i64 [ %i.cq, %bb.m ], [ %spec.select.i, %switch.lookup ] ; 2 uses
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
  %.not60.i = icmp eq i64 %.154.i, 0
  %i.ej = select i1 %.not60.i, i64 8, i64 9
  %i.ek = add i64 %i.ej, %.154.i
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
  %5 = icmp eq i32 %.1.lcssa.i.i.i, -1074
  %brmerge.not.i.i.i = select i1 %5, i1 %.lcssa.i.i.i, i1 false
  %i.gh = add nsw i32 %.1.lcssa.i.i.i, 1075
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 52
  %.0.i.i.i = select i1 %brmerge.not.i.i.i, i64 0, i64 %i.gj
  %i.gk = and i64 %.117.lcssa.i.i.i, 4503599627370495
  %i.gl = or disjoint i64 %.0.i.i.i, %i.gk
  %i.gm = bitcast i64 %i.gl to double
  br label %_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit

_ZN17double_conversionL11DiyFpStrtodENS_6VectorIKcEEiPd.exit: ; preds = %._crit_edge.i.i.i, %bb.s, %._crit_edge26.i.i.i
  %i.gn = phi double [ %i.gm, %._crit_edge26.i.i.i ], [ +inf, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.s ] ; 2 uses
  store double %i.gn, ptr %3, align 8, !tbaa !8
  %i.go = sub i64 %i.fm, %.2.i14
  %i.gp = icmp uge i64 %i.go, %i.fl
  %or.cond.not.i = or i1 %i.gp, %.not61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.gq = fcmp oeq double %i.gn, +inf
  %spec.select = select i1 %or.cond.not.i, i1 true, i1 %i.gq
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

end_hunk_0
