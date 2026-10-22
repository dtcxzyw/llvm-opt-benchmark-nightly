Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/CrwDecompressor?download=true
inline.NumInlined: 946
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8rawspeed15CrwDecompressor10decompressEv:bb.a
  store <32 x i16> %interleaved.vec, ptr %i.ct, align 2, !tbaa !156, !alias.scope !214, !noalias !213
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = add i32 %i.co, 32
  %i.ef = icmp eq i64 %index.next, 664
  br i1 %i.ef, label %.split.us201.us.preheader.new, label %vector.body, !llvm.loop !203

.split.us201.us.preheader.new:                    ; preds = %vector.body, %.preheader.us
  %indvars.iv233.ph = phi i64 [ 0, %.preheader.us ], [ 2656, %vector.body ]
  br label %.split.us201.us

.split.us201.us:                                  ; preds = %.split.us201.us, %.split.us201.us.preheader.new
  %indvars.iv233 = phi i64 [ %indvars.iv233.ph, %.split.us201.us.preheader.new ], [ %indvars.iv.next234.1, %.split.us201.us ] ; 5 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv233 to i32
  %i.eh = lshr exact i32 %i.eg, 2                 ; 2 uses
  %i.ei = icmp samesign ult i32 %i.eh, %i.bt
  call void @llvm.assume(i1 %i.ei)
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !106
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv233 ; 2 uses
  %i.en = zext i8 %i.el to i16
  %i.eo = insertelement <4 x i16> poison, i16 %i.en, i64 0
  %i.ep = shufflevector <4 x i16> %i.eo, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.eq = lshr <4 x i16> %i.ep, <i16 0, i16 2, i16 4, i16 6>
  %i.er = and <4 x i16> %i.eq, <i16 3, i16 3, i16 3, i16 -1>
  %i.es = load <4 x i16>, ptr %i.em, align 2, !tbaa !156
  %i.et = shl <4 x i16> %i.es, splat (i16 2)      ; 2 uses
  %i.eu = or disjoint <4 x i16> %i.et, %i.er      ; 2 uses
  %i.ev = icmp ult <4 x i16> %i.et, splat (i16 512)
  %i.ew = add nuw nsw <4 x i16> %i.eu, splat (i16 2)
  %i.ex = select <4 x i1> %i.ev, <4 x i16> %i.ew, <4 x i16> %i.eu
  store <4 x i16> %i.ex, ptr %i.em, align 2, !tbaa !156
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 4 ; 3 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv.next234 to i32
  %i.ez = lshr exact i32 %i.ey, 2                 ; 2 uses
  %i.fa = icmp samesign ult i32 %i.ez, %i.bt
  call void @llvm.assume(i1 %i.fa)
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !106
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.next234 ; 2 uses
  %i.ff = icmp samesign ult i64 %indvars.iv233, 2672
  call void @llvm.assume(i1 %i.ff)
  %i.fg = zext i8 %i.fd to i16
  %i.fh = insertelement <4 x i16> poison, i16 %i.fg, i64 0
  %i.fi = shufflevector <4 x i16> %i.fh, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.fj = lshr <4 x i16> %i.fi, <i16 0, i16 2, i16 4, i16 6>
  %i.fk = and <4 x i16> %i.fj, <i16 3, i16 3, i16 3, i16 -1>
  %i.fl = load <4 x i16>, ptr %i.fe, align 2, !tbaa !156
  %i.fm = shl <4 x i16> %i.fl, splat (i16 2)      ; 2 uses
  %i.fn = or disjoint <4 x i16> %i.fm, %i.fk      ; 2 uses
  %i.fo = icmp ult <4 x i16> %i.fm, splat (i16 512)
  %i.fp = add nuw nsw <4 x i16> %i.fn, splat (i16 2)
  %i.fq = select <4 x i1> %i.fo, <4 x i16> %i.fp, <4 x i16> %i.fn
  store <4 x i16> %i.fq, ptr %i.fe, align 2, !tbaa !156
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 8
  %i.fr = icmp samesign ult i64 %indvars.iv.next234, 2668
  br i1 %i.fr, label %.split.us201.us, label %.split207.us.us, !llvm.loop !204

.split207.us.us:                                  ; preds = %.split.us201.us
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit186, label %.preheader.us, !llvm.loop !205

.preheader:                                       ; preds = %.preheader.preheader, %.split207
  %indvars.iv223 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next224, %.split207 ] ; 3 uses
  %i.fs = mul nuw nsw i64 %indvars.iv223, %i.by
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.fs ; 5 uses
  %i.fu = mul nuw nsw i64 %indvars.iv223, %i.bw
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fu ; 5 uses
  br i1 %i.cc, label %.split.us.epil.preheader, label %.split.us

.split207.unr-lcssa:                              ; preds = %.split.us
  br i1 %lcmp.mod.not, label %.split207, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %.split207.unr-lcssa, %.preheader
  %indvars.iv220.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next221.3, %.split207.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.split.us.epil

.split.us.epil:                                   ; preds = %.split.us.epil, %.split.us.epil.preheader
  %indvars.iv220.epil = phi i64 [ %indvars.iv220.epil.init, %.split.us.epil.preheader ], [ %indvars.iv.next221.epil, %.split.us.epil ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.split.us.epil.preheader ], [ %epil.iter.next, %.split.us.epil ]
  %i.fw = trunc nuw nsw i64 %indvars.iv220.epil to i32
  %i.fx = ashr exact i32 %i.fw, 2                 ; 2 uses
  %i.fy = icmp samesign ult i32 %i.fx, %i.bt
  call void @llvm.assume(i1 %i.fy)
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !106
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv220.epil ; 2 uses
  %indvars.iv.next217.2.epil = or disjoint i64 %indvars.iv220.epil, 3
  %i.gd = icmp samesign ult i64 %indvars.iv.next217.2.epil, %i.bx
  call void @llvm.assume(i1 %i.gd)
  %i.ge = zext i8 %i.gb to i16
  %i.gf = insertelement <4 x i16> poison, i16 %i.ge, i64 0
  %i.gg = shufflevector <4 x i16> %i.gf, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gh = lshr <4 x i16> %i.gg, <i16 0, i16 2, i16 4, i16 6>
  %i.gi = and <4 x i16> %i.gh, <i16 3, i16 3, i16 3, i16 -1>
  %i.gj = load <4 x i16>, ptr %i.gc, align 2, !tbaa !156
  %i.gk = shl <4 x i16> %i.gj, splat (i16 2)
  %i.gl = or disjoint <4 x i16> %i.gk, %i.gi
  store <4 x i16> %i.gl, ptr %i.gc, align 2, !tbaa !156
  %indvars.iv.next221.epil = add nuw nsw i64 %indvars.iv220.epil, 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split207, label %.split.us.epil, !llvm.loop !206

.split207:                                        ; preds = %.split.us.epil, %.split207.unr-lcssa
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.loopexit186, label %.preheader, !llvm.loop !205

.split.us:                                        ; preds = %.preheader, %.split.us
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.3, %.split.us ], [ 0, %.preheader ] ; 10 uses
  %niter = phi i32 [ %niter.next.3, %.split.us ], [ 0, %.preheader ]
  %i.gm = trunc nuw nsw i64 %indvars.iv220 to i32
  %i.gn = ashr exact i32 %i.gm, 2                 ; 2 uses
  %i.go = icmp samesign ult i32 %i.gn, %i.bt
  call void @llvm.assume(i1 %i.go)
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !106
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv220 ; 2 uses
  %indvars.iv.next217.2 = or disjoint i64 %indvars.iv220, 3
  %i.gt = icmp samesign ult i64 %indvars.iv.next217.2, %i.bx
  call void @llvm.assume(i1 %i.gt)
  %i.gu = zext i8 %i.gr to i16
  %i.gv = insertelement <4 x i16> poison, i16 %i.gu, i64 0
  %i.gw = shufflevector <4 x i16> %i.gv, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gx = lshr <4 x i16> %i.gw, <i16 0, i16 2, i16 4, i16 6>
  %i.gy = and <4 x i16> %i.gx, <i16 3, i16 3, i16 3, i16 -1>
  %i.gz = load <4 x i16>, ptr %i.gs, align 2, !tbaa !156
  %i.ha = shl <4 x i16> %i.gz, splat (i16 2)
  %i.hb = or disjoint <4 x i16> %i.ha, %i.gy
  store <4 x i16> %i.hb, ptr %i.gs, align 2, !tbaa !156
  %indvars.iv.next221 = or disjoint i64 %indvars.iv220, 4 ; 2 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv.next221 to i32
  %i.hd = ashr exact i32 %i.hc, 2                 ; 2 uses
  %i.he = icmp samesign ult i32 %i.hd, %i.bt
  call void @llvm.assume(i1 %i.he)
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !106
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221 ; 2 uses
  %indvars.iv.next217.2.1 = or disjoint i64 %indvars.iv220, 7
  %i.hj = icmp samesign ult i64 %indvars.iv.next217.2.1, %i.bx
  call void @llvm.assume(i1 %i.hj)
  %i.hk = zext i8 %i.hh to i16
  %i.hl = insertelement <4 x i16> poison, i16 %i.hk, i64 0
  %i.hm = shufflevector <4 x i16> %i.hl, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.hn = lshr <4 x i16> %i.hm, <i16 0, i16 2, i16 4, i16 6>
  %i.ho = and <4 x i16> %i.hn, <i16 3, i16 3, i16 3, i16 -1>
  %i.hp = load <4 x i16>, ptr %i.hi, align 2, !tbaa !156
  %i.hq = shl <4 x i16> %i.hp, splat (i16 2)
  %i.hr = or disjoint <4 x i16> %i.hq, %i.ho
  store <4 x i16> %i.hr, ptr %i.hi, align 2, !tbaa !156
  %indvars.iv.next221.1 = or disjoint i64 %indvars.iv220, 8 ; 2 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.next221.1 to i32
  %i.ht = ashr exact i32 %i.hs, 2                 ; 2 uses
  %i.hu = icmp samesign ult i32 %i.ht, %i.bt
  call void @llvm.assume(i1 %i.hu)
  %i.hv = zext nneg i32 %i.ht to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !106
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221.1 ; 2 uses
  %indvars.iv.next217.2.2 = or disjoint i64 %indvars.iv220, 11
  %i.hz = icmp samesign ult i64 %indvars.iv.next217.2.2, %i.bx
  call void @llvm.assume(i1 %i.hz)
  %i.ia = zext i8 %i.hx to i16
  %i.ib = insertelement <4 x i16> poison, i16 %i.ia, i64 0
  %i.ic = shufflevector <4 x i16> %i.ib, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.id = lshr <4 x i16> %i.ic, <i16 0, i16 2, i16 4, i16 6>
  %i.ie = and <4 x i16> %i.id, <i16 3, i16 3, i16 3, i16 -1>
  %i.if = load <4 x i16>, ptr %i.hy, align 2, !tbaa !156
  %i.ig = shl <4 x i16> %i.if, splat (i16 2)
  %i.ih = or disjoint <4 x i16> %i.ig, %i.ie
  store <4 x i16> %i.ih, ptr %i.hy, align 2, !tbaa !156
  %indvars.iv.next221.2 = or disjoint i64 %indvars.iv220, 12 ; 2 uses
  %i.ii = trunc nuw nsw i64 %indvars.iv.next221.2 to i32
  %i.ij = ashr exact i32 %i.ii, 2                 ; 2 uses
  %i.ik = icmp samesign ult i32 %i.ij, %i.bt
  call void @llvm.assume(i1 %i.ik)
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !106
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221.2 ; 2 uses
  %indvars.iv.next217.2.3 = or disjoint i64 %indvars.iv220, 15
  %i.ip = icmp samesign ult i64 %indvars.iv.next217.2.3, %i.bx
  call void @llvm.assume(i1 %i.ip)
  %i.iq = zext i8 %i.in to i16
  %i.ir = insertelement <4 x i16> poison, i16 %i.iq, i64 0
  %i.is = shufflevector <4 x i16> %i.ir, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.it = lshr <4 x i16> %i.is, <i16 0, i16 2, i16 4, i16 6>
  %i.iu = and <4 x i16> %i.it, <i16 3, i16 3, i16 3, i16 -1>
  %i.iv = load <4 x i16>, ptr %i.io, align 2, !tbaa !156
  %i.iw = shl <4 x i16> %i.iv, splat (i16 2)
  %i.ix = or disjoint <4 x i16> %i.iw, %i.iu
  store <4 x i16> %i.ix, ptr %i.io, align 2, !tbaa !156
  %indvars.iv.next221.3 = add nuw nsw i64 %indvars.iv220, 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split207.unr-lcssa, label %.split.us, !llvm.loop !207

.loopexit186:                                     ; preds = %.split207, %.split207.us.us, %bb.n, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed15CrwDecompressor11decodeBlockEPSt5arrayIsLm64EERKS1_INS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS5_EEEELm2EERNS_15BitStreamerJPEGE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03472 = phi i32 [ 0, %bb.a ], [ %.2, %bb.m ]  ; 4 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 65
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i32, ptr %i.b, align 8, !tbaa !157  ; 5 uses
  %i.h = icmp sgt i32 %i.g, 7
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !153  ; 5 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i39 = icmp samesign ult i32 %i.e, 32
  br i1 %.not.i39, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = add nuw nsw i32 %i.i, 8
  %.not.i.i = icmp samesign ugt i32 %i.k, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !107

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !16, !noalias !219
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.l
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 16
  %i.o = icmp samesign ugt i32 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g, !prof !107

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !16
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.p = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.p)
  %i.q = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 9
  tail call void @llvm.assume(i1 %i.r)
  %i.s = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.m, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.v = tail call noundef i32 @_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i) ; 3 uses
  %i.w = load i32, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i32 %i.w, %i.v
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !153
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !150 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 31
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i, %bb.b
  %i.ad = phi i32 [ %i.e, %bb.b ], [ %i.ab, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i ] ; 2 uses
  %i.ae = icmp sgt i32 %.03472, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [152 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ad, 65
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %2, align 8, !tbaa !149   ; 2 uses
  %i.aj = lshr i64 %i.ai, 53                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %i.ao = ashr i32 %i.an, 9
  %i.ap = and i32 %i.an, 255                      ; 4 uses
  %i.aq = icmp samesign ult i32 %i.ap, 33
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.ad, %i.ap            ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !150
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ai, %i.as                    ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !149
  %.not17.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i, label %bb.h, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %i.au = trunc nuw nsw i64 %i.aj to i32
  %.sroa.0.0.insert.insert66 = or disjoint i32 %i.au, 720896
  %i.av = icmp eq i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nsw i32 %i.ar, -11
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !150
  %i.ax = shl i64 %i.at, 11
  store i64 %i.ax, ptr %2, align 8, !tbaa !149
  %i.ay = tail call i64 @_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 %.sroa.0.0.insert.insert66)
  %.sroa.453.0.extract.shift = lshr i64 %i.ay, 32
  %i.az = trunc nuw i64 %.sroa.453.0.extract.shift to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit: ; preds = %bb.h, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %.0.i = phi i32 [ %i.ao, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50 ], [ %i.az, %bb.h ] ; 2 uses
  %i.ba = and i32 %.0.i, 15                       ; 8 uses
  %i.bb = lshr i32 %.0.i, 4                       ; 2 uses
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %i.bd = icmp eq i32 %i.ba, 0
  %i.be = or i32 %i.bc, %i.ba
  %or.cond = icmp eq i32 %i.be, 0
  %i.bf = icmp ne i32 %.03472, 0
  %or.cond3 = and i1 %i.bf, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit
  %i.bg = and i32 %i.ba, %i.bb
  %or.cond5 = icmp eq i32 %i.bg, 15
  br i1 %or.cond5, label %bb.m, label %bb.j, !llvm.loop !218

bb.j:                                             ; preds = %bb.i
  %i.bh = add nsw i32 %i.bc, %.03472              ; 4 uses
  br i1 %i.bd, label %bb.m, label %bb.k, !llvm.loop !218

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !150 ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 65
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ule i32 %i.ba, %i.bi
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %2, align 8, !tbaa !149   ; 3 uses
  %i.bm = sub nuw nsw i32 %i.bi, %i.ba
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !150
  %i.bn = zext nneg i32 %i.ba to i64
  %i.bo = shl i64 %i.bl, %i.bn
  store i64 %i.bo, ptr %2, align 8, !tbaa !149
  %i.bp = icmp sgt i32 %i.bh, 63
  br i1 %i.bp, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nuw nsw i32 64, %i.ba
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bl, %i.br
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = icmp sgt i64 %i.bl, -1
  %notmask.i = shl nsw i32 -1, %i.ba
  %.neg.i = or disjoint i32 %notmask.i, 1
  %i.bv = select i1 %i.bu, i32 %.neg.i, i32 0
  %.0.i51 = add nsw i32 %i.bv, %i.bt
  %i.bw = trunc nsw i32 %.0.i51 to i16
  %i.bx = sext i32 %i.bh to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bx
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !156
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.l
  %.2.in = phi i32 [ %i.bh, %bb.l ], [ %.03472, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %.2 = add nsw i32 %.2.in, 1
  %i.bz = icmp slt i32 %.2.in, 63
  br i1 %i.bz, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.k, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !call_target !103, !inline_history !220
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
end_hunk_0
