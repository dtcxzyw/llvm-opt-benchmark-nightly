Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_modular?download=true
inline.NumInlined: 5470
inline.NumDeleted: 2759
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl19ModularFrameEncoder11AddVarDCTDCERKNS_11FrameHeaderERKNS_6Image3IfEERKNS_5RectTImEEmbPNS_18PassesEncoderStateEb:_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit
bb.h:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr %i.bb, align 16, !tbaa !329 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bt, %bb.h ]
  %i.bu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !331
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %i.bu) #25, !inline_history !2
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !326
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.h
  %i.bx = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.bs, %bb.h ] ; 2 uses
  store ptr %i.bs, ptr %i.bb, align 16, !tbaa !329
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !327
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #27
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, %bb.g
  %i.cc = load ptr, ptr %11, align 16, !tbaa !335 ; 5 uses
  %.not.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i, label %_ZN3jxl5ImageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.cd = load ptr, ptr %i.au, align 8, !tbaa !336 ; 2 uses
  %.not6.i.i.i.i2.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not6.i.i.i.i2.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i3.i

.lr.ph.i.i.i.i3.i:                                ; preds = %bb.i, %.lr.ph.i.i.i.i3.i
  %.07.i.i.i.i4.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i3.i ], [ %i.cd, %bb.i ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i, i64 -88 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i, i64 -64
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cf) #25
  %.not.i.i.i.i5.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i.i.i.i5.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i3.i, !llvm.loop !4

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i3.i
  %.pre1.i.i6.i = load ptr, ptr %11, align 16, !tbaa !335
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.i
  %i.cg = phi ptr [ %.pre1.i.i6.i, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  store ptr %i.cc, ptr %i.au, align 8, !tbaa !336
  %i.ch = load ptr, ptr %i.av, align 16, !tbaa !321
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #27
  br label %_ZN3jxl5ImageD2Ev.exit

_ZN3jxl5ImageD2Ev.exit:                           ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 1272 ; 4 uses
  br i1 %5, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN3jxl5ImageD2Ev.exit
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !228
  %i.cn = getelementptr inbounds nuw [152 x i8], ptr %i.cm, i64 %i.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 84
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !230
  %i.cq = icmp eq i32 %i.cp, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !233 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !215
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !343
  %i.cy = icmp eq i8 %i.cs, %i.cx                 ; 2 uses
  br i1 %i.cq, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  br i1 %i.cy, label %bb.l, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !234 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.cv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !343
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %bb.m, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.df = load i32, ptr %i.de, align 8, !tbaa !215
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !343
  %i.dj = icmp eq i8 %i.cs, %i.di
  br i1 %i.dj, label %bb.n, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !343
  %i.dm = icmp eq i8 %i.da, %i.dl
  br i1 %i.dm, label %bb.o, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !215
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !343
  %i.ds = icmp eq i8 %i.cs, %i.dr
  br i1 %i.ds, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit:    ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.dp
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !343
  %i.dv = icmp eq i8 %i.da, %i.du
  br i1 %i.dv, label %.preheader374, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

.preheader374:                                    ; preds = %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 1040
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !993 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 1020
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !994
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 1012
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 1024
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !995
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !143
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = fdiv float %i.eg, %i.l
  %i.ei = load i64, ptr %i.ap, align 8, !tbaa !388 ; 3 uses
  %.not433 = icmp eq i64 %i.ei, 0
  br i1 %.not433, label %.critedge305, label %.preheader374.split

.preheader374.split:                              ; preds = %.preheader374
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.bo, align 8, !tbaa !317
  %i.em = getelementptr inbounds nuw [96 x i8], ptr %i.el, i64 %i.m
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !335 ; 3 uses
  %i.eo = load i64, ptr %i.ek, align 8, !tbaa !378 ; 2 uses
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !341 ; 2 uses
  %i.eq = load i64, ptr %3, align 8, !tbaa !377   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %.preheader374.split, %._crit_edge421
  %.0293.idx423 = phi i64 [ 0, %.preheader374.split ], [ %.0293.add, %._crit_edge421 ] ; 2 uses
  %.0293.ptr = getelementptr inbounds nuw i8, ptr @.ref.tmp.53, i64 %.0293.idx423
  %i.et = load i32, ptr %.0293.ptr, align 4, !tbaa !215 ; 3 uses
  %i.eu = sext i32 %i.et to i64                   ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !143
  %i.ex = load i32, ptr %i.eb, align 4, !tbaa !996
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = fmul float %i.ea, %i.ey
  %i.fa = fmul float %i.ew, %i.ez
  %i.fb = fmul float %i.fa, %i.l                  ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.eu
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !143
  %i.fe = icmp ult i32 %i.et, 2
  %i.ff = zext i1 %i.fe to i64
  %i.fg = xor i64 %i.ff, %i.eu
  %i.fh = getelementptr inbounds nuw [88 x i8], ptr %i.en, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !342 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !341 ; 3 uses
  %i.fm = lshr i64 %i.fl, 2                       ; 2 uses
  %i.fn = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.eu
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !342 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = icmp eq i32 %i.et, 1
  %i.fr = fmul float %i.fd, %i.eh
  %i.fs = xor i64 %i.fm, -1                       ; 2 uses
  %.pre.i314 = sub nsw i64 0, %i.fm               ; 4 uses
  br i1 %i.fq, label %.lr.ph420.split.us, label %.lr.ph420.split

.lr.ph420.split.us:                               ; preds = %.lr.ph420
  %i.ft = load i64, ptr %i.an, align 8, !tbaa !387 ; 2 uses
  %.not435 = icmp eq i64 %i.ft, 0
  br i1 %.not435, label %._crit_edge421, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph420.split.us, %..loopexit_crit_edge.us.us
  %.0292417.us.us = phi i64 [ %i.hg, %..loopexit_crit_edge.us.us ], [ 0, %.lr.ph420.split.us ] ; 4 uses
  %i.fu = mul i64 %i.fl, %.0292417.us.us
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fv, i64 64) ]
  %i.fw = add i64 %i.eo, %.0292417.us.us
  %i.fx = mul i64 %i.fw, %i.ep
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fy, i64 64) ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.eq
  %.not.not.i.i.us.us = icmp eq i64 %.0292417.us.us, 0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us, %.preheader.us.us
  %.0291415.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.hf, %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us ] ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.0291415.us.us
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !143
  %i.gc = fmul float %i.fb, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.0291415.us.us ; 5 uses
  %i.ge = and i64 %.0291415.us.us, 4294967295
  %.not29.i.i.us.us = icmp eq i64 %i.ge, 0
  br i1 %.not29.i.i.us.us, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !215, !alias.scope !997 ; 4 uses
  br i1 %.not.not.i.i.us.us, label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fs
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !215, !alias.scope !997
  %.in.in.i.phi.trans.insert.i.us.us = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %.pre.i314
  %.in.i.pre.i.us.us = load i32, ptr %.in.in.i.phi.trans.insert.i.us.us, align 4, !tbaa !215, !alias.scope !997
  br label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us

bb.s:                                             ; preds = %bb.p
  br i1 %.not.not.i.i.us.us, label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us, label %.thread36.i.i.us.us

.thread36.i.i.us.us:                              ; preds = %bb.s
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %.pre.i314
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !215, !alias.scope !997 ; 3 uses
  br label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us

_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us: ; preds = %.thread36.i.i.us.us, %bb.s, %bb.r, %bb.q
  %i.gl = phi i32 [ 0, %bb.s ], [ %i.gg, %bb.q ], [ %.in.i.pre.i.us.us, %bb.r ], [ %i.gk, %.thread36.i.i.us.us ] ; 3 uses
  %i.gm = phi i32 [ 0, %bb.s ], [ %i.gg, %bb.q ], [ %i.gg, %bb.r ], [ %i.gk, %.thread36.i.i.us.us ] ; 3 uses
  %i.gn = phi i32 [ 0, %bb.s ], [ %i.gg, %bb.q ], [ %i.gi, %bb.r ], [ %i.gk, %.thread36.i.i.us.us ] ; 3 uses
  %.sroa.speculated9.i.i.us.us = call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.gl) ; 2 uses
  %.sroa.speculated.i.i.us.us = call i32 @llvm.smax.i32(i32 %i.gm, i32 %i.gl) ; 2 uses
  %i.go = add i32 %i.gm, %i.gl
  %i.gp = sub i32 %i.go, %i.gn
  %i.gq = icmp sgt i32 %.sroa.speculated9.i.i.us.us, %i.gn
  %i.gr = select i1 %i.gq, i32 %.sroa.speculated.i.i.us.us, i32 %i.gp
  %i.gs = icmp slt i32 %.sroa.speculated.i.i.us.us, %i.gn
  %i.gt = select i1 %i.gs, i32 %.sroa.speculated9.i.i.us.us, i32 %i.gr ; 2 uses
  %i.gu = sitofp i32 %i.gt to float
  %i.gv = fsub float %i.gc, %i.gu                 ; 2 uses
  %i.gw = call float @llvm.fabs.f32(float %i.gv)
  %or.cond.i.us.us = fcmp olt float %i.gw, 6.200000e-01
  %spec.store.select.i.us.us = select i1 %or.cond.i.us.us, float 0.000000e+00, float %i.gv ; 2 uses
  %i.gx = call noundef float @llvm.round.f32(float %spec.store.select.i.us.us)
  %i.gy = fptosi float %i.gx to i32               ; 2 uses
  %i.gz = add i32 %i.gy, -3
  %or.cond3.i.us.us = icmp ult i32 %i.gz, -5
  br i1 %or.cond3.i.us.us, label %bb.t, label %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us

bb.t:                                             ; preds = %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us
  %i.ha = fmul float %spec.store.select.i.us.us, 5.000000e-01
  %i.hb = call noundef float @llvm.round.f32(float %i.ha)
  %i.hc = fmul float %i.hb, 2.000000e+00
  %i.hd = fptosi float %i.hc to i32
  br label %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us

_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us:  ; preds = %bb.t, %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us
  %.0.i310.us.us = phi i32 [ %i.hd, %bb.t ], [ %i.gy, %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i.us.us ]
  %i.he = add i32 %.0.i310.us.us, %i.gt
  store i32 %i.he, ptr %i.gd, align 4, !tbaa !215
  %i.hf = add nuw i64 %.0291415.us.us, 1          ; 2 uses
  %exitcond463.not = icmp eq i64 %i.hf, %i.ft
  br i1 %exitcond463.not, label %..loopexit_crit_edge.us.us, label %bb.p, !llvm.loop !961

..loopexit_crit_edge.us.us:                       ; preds = %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit.us.us
  %i.hg = add nuw i64 %.0292417.us.us, 1          ; 2 uses
  %exitcond464.not = icmp eq i64 %i.hg, %i.ei
  br i1 %exitcond464.not, label %._crit_edge421, label %.preheader.us.us, !llvm.loop !962

.lr.ph420.split:                                  ; preds = %.lr.ph420
  %i.hh = load ptr, ptr %i.er, align 8, !tbaa !342
  %i.hi = load i64, ptr %i.es, align 8, !tbaa !341
  %i.hj = load i64, ptr %i.an, align 8, !tbaa !387 ; 2 uses
  %.not434 = icmp eq i64 %i.hj, 0
  br i1 %.not434, label %._crit_edge421, label %.lr.ph414.us

.lr.ph414.us:                                     ; preds = %.lr.ph420.split, %..loopexit373_crit_edge.us
  %.0292417.us422 = phi i64 [ %i.jd, %..loopexit373_crit_edge.us ], [ 0, %.lr.ph420.split ] ; 5 uses
  %i.hk = mul i64 %i.fl, %.0292417.us422
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hl, i64 64) ]
  %i.hm = add i64 %i.eo, %.0292417.us422
  %i.hn = mul i64 %i.hm, %i.ep
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.hn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ho, i64 64) ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.eq
  %i.hq = mul i64 %i.hi, %.0292417.us422
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hr, i64 64) ]
  %.not.not.i.i313.us = icmp eq i64 %.0292417.us422, 0 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us, %.lr.ph414.us
  %.0290412.us = phi i64 [ 0, %.lr.ph414.us ], [ %i.jc, %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us ] ; 5 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %.0290412.us
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !143
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.0290412.us
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !215
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = fneg float %i.hw
  %i.hy = call float @llvm.fmuladd.f32(float %i.hx, float %i.fr, float %i.ht)
  %i.hz = fmul float %i.fb, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.0290412.us ; 5 uses
  %i.ib = and i64 %.0290412.us, 4294967295
  %.not29.i.i312.us = icmp eq i64 %i.ib, 0
  br i1 %.not29.i.i312.us, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !215, !alias.scope !998 ; 4 uses
  br i1 %.not.not.i.i313.us, label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.fs
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !215, !alias.scope !998
  %.in.in.i.phi.trans.insert.i315.us = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %.pre.i314
  %.in.i.pre.i316.us = load i32, ptr %.in.in.i.phi.trans.insert.i315.us, align 4, !tbaa !215, !alias.scope !998
  br label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us

bb.x:                                             ; preds = %bb.u
  br i1 %.not.not.i.i313.us, label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us, label %.thread36.i.i325.us

.thread36.i.i325.us:                              ; preds = %bb.x
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %.pre.i314
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !215, !alias.scope !998 ; 3 uses
  br label %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us

_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us: ; preds = %.thread36.i.i325.us, %bb.x, %bb.w, %bb.v
  %i.ii = phi i32 [ 0, %bb.x ], [ %i.id, %bb.v ], [ %.in.i.pre.i316.us, %bb.w ], [ %i.ih, %.thread36.i.i325.us ] ; 3 uses
  %i.ij = phi i32 [ 0, %bb.x ], [ %i.id, %bb.v ], [ %i.id, %bb.w ], [ %i.ih, %.thread36.i.i325.us ] ; 3 uses
  %i.ik = phi i32 [ 0, %bb.x ], [ %i.id, %bb.v ], [ %i.if, %bb.w ], [ %i.ih, %.thread36.i.i325.us ] ; 3 uses
  %.sroa.speculated9.i.i318.us = call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.ii) ; 2 uses
  %.sroa.speculated.i.i319.us = call i32 @llvm.smax.i32(i32 %i.ij, i32 %i.ii) ; 2 uses
  %i.il = add i32 %i.ij, %i.ii
  %i.im = sub i32 %i.il, %i.ik
  %i.in = icmp sgt i32 %.sroa.speculated9.i.i318.us, %i.ik
  %i.io = select i1 %i.in, i32 %.sroa.speculated.i.i319.us, i32 %i.im
  %i.ip = icmp slt i32 %.sroa.speculated.i.i319.us, %i.ik
  %i.iq = select i1 %i.ip, i32 %.sroa.speculated9.i.i318.us, i32 %i.io ; 2 uses
  %i.ir = sitofp i32 %i.iq to float
  %i.is = fsub float %i.hz, %i.ir                 ; 2 uses
  %i.it = call float @llvm.fabs.f32(float %i.is)
  %or.cond.i320.us = fcmp olt float %i.it, 6.200000e-01
  %spec.store.select.i321.us = select i1 %or.cond.i320.us, float 0.000000e+00, float %i.is ; 2 uses
  %i.iu = call noundef float @llvm.round.f32(float %spec.store.select.i321.us)
  %i.iv = fptosi float %i.iu to i32               ; 2 uses
  %i.iw = add i32 %i.iv, -3
  %or.cond3.i322.us = icmp ult i32 %i.iw, -5
  br i1 %or.cond3.i322.us, label %bb.y, label %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us

bb.y:                                             ; preds = %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us
  %i.ix = fmul float %spec.store.select.i321.us, 5.000000e-01
  %i.iy = call noundef float @llvm.round.f32(float %i.ix)
  %i.iz = fmul float %i.iy, 2.000000e+00
  %i.ja = fptosi float %i.iz to i32
  br label %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us

_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us:  ; preds = %bb.y, %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us
  %.0.i323.us = phi i32 [ %i.ja, %bb.y ], [ %i.iv, %_ZN3jxl17PredictNoTreeNoWPEmPKiliiNS_9PredictorE.exit.i317.us ]
  %i.jb = add i32 %.0.i323.us, %i.iq
  store i32 %i.jb, ptr %i.ia, align 4, !tbaa !215
  %i.jc = add nuw i64 %.0290412.us, 1             ; 2 uses
  %exitcond460.not = icmp eq i64 %i.jc, %i.hj
  br i1 %exitcond460.not, label %..loopexit373_crit_edge.us, label %bb.u, !llvm.loop !967

..loopexit373_crit_edge.us:                       ; preds = %_ZN3jxl16QuantizeGradientEPKimmmmmff.exit326.us
  %i.jd = add nuw i64 %.0292417.us422, 1          ; 2 uses
  %exitcond461.not = icmp eq i64 %i.jd, %i.ei
  br i1 %exitcond461.not, label %._crit_edge421, label %.lr.ph414.us, !llvm.loop !962

._crit_edge421:                                   ; preds = %..loopexit373_crit_edge.us, %..loopexit_crit_edge.us.us, %.lr.ph420.split, %.lr.ph420.split.us
  %.0293.add = add nuw nsw i64 %.0293.idx423, 4   ; 2 uses
  %.not303 = icmp eq i64 %.0293.add, 12
  br i1 %.not303, label %.critedge305, label %.lr.ph420

bb.z:                                             ; preds = %bb.j
  br i1 %i.cy, label %bb.aa, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !234 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.cv
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !343
  %i.ji = icmp eq i8 %i.jf, %i.jh
  br i1 %i.ji, label %bb.ab, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !215
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !343
  %i.jo = icmp eq i8 %i.cs, %i.jn
  br i1 %i.jo, label %bb.ac, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.jl
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !343
  %i.jr = icmp eq i8 %i.jf, %i.jq
  br i1 %i.jr, label %bb.ad, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !215
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !343
  %i.jx = icmp eq i8 %i.cs, %i.jw
  br i1 %i.jx, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit327, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit327: ; preds = %bb.ad
  %i.jy = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.ju
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !343
  %i.ka = icmp eq i8 %i.jf, %i.jz
  br i1 %i.ka, label %.preheader378, label %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit.thread

.preheader378:                                    ; preds = %_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev.exit327
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 1040
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 1020
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 1012
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 1024
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 152
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 128
  %.ptr1.1.i = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ks = getelementptr inbounds nuw i8, ptr %13, i64 104
  %.ptr1.2.i = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.lh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 112
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader378, %_ZN3jxl8weighted5StateD2Ev.exit
  %.0289.idx411 = phi i64 [ 0, %.preheader378 ], [ %.0289.add, %_ZN3jxl8weighted5StateD2Ev.exit ] ; 2 uses
  %.0289.ptr = getelementptr inbounds nuw i8, ptr @.ref.tmp.53, i64 %.0289.idx411
  %i.lj = load i32, ptr %.0289.ptr, align 4, !tbaa !215 ; 3 uses
  %i.lk = sext i32 %i.lj to i64                   ; 4 uses
  %i.ll = load ptr, ptr %i.kb, align 8, !tbaa !993 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 60
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lk
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !143
  %i.lp = load float, ptr %i.kc, align 4, !tbaa !994
  %i.lq = load i32, ptr %i.kd, align 4, !tbaa !996
  %i.lr = sitofp i32 %i.lq to float
  %i.ls = fmul float %i.lp, %i.lr
  %i.lt = fmul float %i.lo, %i.ls
  %i.lu = fmul float %i.lt, %i.l                  ; 2 uses
  %i.lv = load float, ptr %i.ke, align 8, !tbaa !995
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !143
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.lk
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8weighted6HeaderE, i64 16), ptr %12, align 8, !tbaa !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.kf, i8 0, i64 44, i1 false)
  call void @_ZN3jxl6Bundle4InitEPNS_6FieldsE(ptr noundef nonnull align 8 dereferenceable(56) %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ma = load i64, ptr %i.an, align 8, !tbaa !387
  %i.mb = load i64, ptr %i.ap, align 8, !tbaa !388
  call void @_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm(ptr noundef nonnull align 8 dereferenceable(424) %13, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.ma, i64 noundef %i.mb) #26
  %i.mc = load i64, ptr %i.ap, align 8, !tbaa !388 ; 3 uses
  %.not429 = icmp eq i64 %i.mc, 0
  br i1 %.not429, label %._crit_edge410, label %.lr.ph409

.lr.ph409:                                        ; preds = %bb.ae
  %i.md = fmul float %i.lv, %i.lx
end_hunk_0
