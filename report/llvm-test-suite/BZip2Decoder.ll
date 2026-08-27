Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BZip2Decoder?download=true
inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN9NCompress6NBZip28CDecoder10DecodeFileERbP21ICompressProgressInfo:bb.a
  store i8 1, ptr %1, align 1, !tbaa !74
  %i.dh = and i32 %i.cx, 255
  %i.di = mul nuw nsw i32 %i.dh, 100000
  %i.dj = add nsw i32 %i.di, -4800000             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28684
  store i32 0, ptr %i.dk, align 4, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28860
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !62, !range !63, !noundef !64
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28864
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28872 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.do, i8 0, i64 7, i1 false)
  %i.dq = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 28696 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 248
  %i.du = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28984
  store i32 %i.dj, ptr %i.dv, align 8, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 28980 ; 2 uses
  store i32 0, ptr %i.dw, align 4, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28976 ; 2 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 28712 ; 2 uses
  %i.dz = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dy) ; 0 uses
  %i.ea = load i32, ptr %i.l, align 8, !tbaa !58
  %.not166 = icmp eq i32 %i.ea, 0
  br i1 %.not166, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.o, %.lr.ph159
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph159 ], [ 0, %bb.o ] ; 2 uses
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [608 x i8], ptr %i.eb, i64 %indvars.iv172
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = tail call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.ed) ; 0 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !58
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %indvars.iv.next173, %i.eg
  br i1 %i.eh, label %.lr.ph159, label %._crit_edge160, !llvm.loop !80

._crit_edge160:                                   ; preds = %.lr.ph159, %bb.o
  %i.ei = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dy) ; 0 uses
  %i.ej = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.ek = load i32, ptr %i.l, align 8, !tbaa !58
  %.not167 = icmp eq i32 %i.ek, 0
  br i1 %.not167, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %._crit_edge160, %.lr.ph163
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph163 ], [ 0, %._crit_edge160 ] ; 2 uses
  %i.el = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.em = getelementptr inbounds nuw [608 x i8], ptr %i.el, i64 %indvars.iv175
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  %i.eo = tail call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.en) ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.ep = load i32, ptr %i.l, align 8, !tbaa !58
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next176, %i.eq
  br i1 %i.er, label %.lr.ph163, label %._crit_edge164, !llvm.loop !81

._crit_edge164:                                   ; preds = %.lr.ph163, %._crit_edge160
  %i.es = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.et = load i32, ptr %i.dw, align 4, !tbaa !78 ; 2 uses
  %.not115 = icmp eq i32 %i.et, 0
  br i1 %.not115, label %bb.p, label %.thread129

bb.p:                                             ; preds = %._crit_edge164
  %i.eu = load i32, ptr %i.dx, align 8, !tbaa !79 ; 2 uses
  %.not116 = icmp eq i32 %i.eu, 0
  br i1 %.not116, label %bb.ac, label %.thread129

bb.q:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 28696
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 18396
  br label %bb.r

bb.r:                                             ; preds = %bb.ab, %bb.q
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !82
  %i.fe = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !83
  %i.fg = load i32, ptr %i.ae, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !75
  %.not.i117 = icmp eq ptr %i.fh, null
  br i1 %.not.i117, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit: ; preds = %bb.r
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i32 32, %i.fg
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = load i64, ptr %i.ez, align 8, !tbaa !84
  %.neg146 = add i64 %i.fd, %i.fi
  %i.fo = add i64 %i.fj, %i.fm
  %i.fp = add i64 %i.fo, %i.fn
  %i.fq = sub i64 %.neg146, %i.fp
  store i64 %i.fq, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.fr = call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.fa)
  store i64 %i.fr, ptr %i.d, align 8, !tbaa !85
  %i.fs = load ptr, ptr %i.j, align 8, !tbaa !75  ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d), !inline_history !86 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not111 = icmp eq i32 %i.fw, 0
  br i1 %.not111, label %bb.s, label %.thread129

bb.s:                                             ; preds = %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.fx = call noundef i32 @_ZN9NCompress6NBZip28CDecoder14ReadSignaturesERbRj(ptr noundef nonnull align 8 dereferenceable(28988) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.not112 = icmp eq i32 %i.fx, 0
  br i1 %.not112, label %bb.t, label %.thread140

bb.t:                                             ; preds = %bb.s
  %i.fy = load i8, ptr %i.e, align 1, !tbaa !74, !range !63, !noundef !64
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.thread140, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.ga = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.gb = call fastcc noundef i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef nonnull %i.ae, ptr noundef %i.ga, i32 noundef %i.dj, ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fc, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull %i.i)
  %.not113 = icmp eq i32 %i.gb, 0
  br i1 %.not113, label %bb.v, label %.thread143

.thread143:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread129

bb.v:                                             ; preds = %bb.u
  %i.gc = load ptr, ptr %i.ew, align 8, !tbaa !8  ; 8 uses
  %i.gd = load i32, ptr %i.g, align 4, !tbaa !4   ; 4 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1024 ; 8 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.gd, i32 1) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gf = icmp ult i32 %i.gd, 2
  br i1 %i.gf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %bb.v
  %indvars.iv.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i.3, %bb.x ] ; 5 uses
  %.01819.i = phi i32 [ 0, %bb.v ], [ %i.gu, %bb.x ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  %i.gi = add i32 %i.gh, %.01819.i                ; 2 uses
  store i32 %.01819.i, ptr %i.gg, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = add i32 %i.gl, %i.gi                    ; 2 uses
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %i.gq = add i32 %i.gp, %i.gm                    ; 2 uses
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = add i32 %i.gt, %i.gq
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %bb.w, label %bb.x, !llvm.loop !87

bb.y:                                             ; preds = %bb.y, %.new
  %indvars.iv22.i = phi i64 [ 0, %.new ], [ %indvars.iv.next23.i.1, %bb.y ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.y ]
  %i.gv = trunc nuw i64 %indvars.iv22.i to i32
  %i.gw = shl i32 %i.gv, 8
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv22.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = and i32 %i.gy, 255
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4  ; 2 uses
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !4
  %i.he = zext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = or i32 %i.hg, %i.gw
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !4
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next23.i to i32
  %i.hj = shl i32 %i.hi, 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next23.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = and i32 %i.hl, 255
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4  ; 2 uses
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !4
  %i.hr = zext i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = or i32 %i.ht, %i.hj
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !4
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, label %bb.y, !llvm.loop !88

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %bb.w
  %indvars.iv22.i.epil.init = phi i64 [ 0, %bb.w ], [ %indvars.iv.next23.i.1, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.hv = trunc nuw i64 %indvars.iv22.i.epil.init to i32
  %i.hw = shl i32 %i.hv, 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv22.i.epil.init
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = and i32 %i.hy, 255
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4  ; 2 uses
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !4
  %i.ie = zext i32 %i.ic to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = or i32 %i.ig, %i.hw
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !4
  br label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit:     ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %.epil.preheader
  %i.ii = load i8, ptr %i.i, align 1, !tbaa !74, !range !63, !noundef !64
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = load i32, ptr %i.h, align 4, !tbaa !4   ; 2 uses
  br i1 %i.ij, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.il = call fastcc noundef i32 @_ZN9NCompress6NBZip2L16DecodeBlock2RandEPKjjjR10COutBuffer(ptr noundef nonnull %i.ge, i32 noundef %i.gd, i32 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(49) %i.fa)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.im = call fastcc noundef i32 @_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer(ptr noundef nonnull %i.ge, i32 noundef %i.gd, i32 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(49) %i.fa)
  br label %bb.ab

.thread140:                                       ; preds = %bb.s, %bb.t
  %.16.ph = phi i32 [ 0, %bb.t ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread129

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.in = phi i32 [ %i.il, %bb.z ], [ %i.im, %bb.aa ]
  %i.io = load i32, ptr %i.f, align 4, !tbaa !4
  %.not114 = icmp eq i32 %i.in, %i.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br i1 %.not114, label %bb.r, label %.thread129, !llvm.loop !89

bb.ac:                                            ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !82
  %i.ir = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !83
  %i.iu = load i32, ptr %i.ae, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.iv = load ptr, ptr %i.j, align 8, !tbaa !75
  %.not.i119 = icmp eq ptr %i.iv, null
  br i1 %.not.i119, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit121, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iw = ptrtoint ptr %i.ir to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i32 32, %i.iu
  %i.iz = lshr i32 %i.iy, 3
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !84
  %.neg151 = add i64 %i.iq, %i.iw
  %i.jd = add i64 %i.ix, %i.ja
  %i.je = add i64 %i.jd, %i.jc
  %i.jf = sub i64 %.neg151, %i.je
  store i64 %i.jf, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jh = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jg)
  store i64 %i.jh, ptr %i.b, align 8, !tbaa !85
  %i.ji = load ptr, ptr %i.j, align 8, !tbaa !75  ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !35
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = call noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit121

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit121: ; preds = %bb.ac, %bb.ad
  %.0.i120 = phi i32 [ %i.jm, %bb.ad ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread129

.thread129:                                       ; preds = %bb.c, %bb.d, %_ZN9NCompress6NBZip26CState5AllocEv.exit, %bb.e, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit, %bb.ab, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3, %bb.p, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit121, %.thread140, %.thread143, %._crit_edge164, %bb.a
  %.20 = phi i32 [ %i.fw, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit ], [ %i.k, %bb.a ], [ 0, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3 ], [ %.0.i120, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit121 ], [ %i.eu, %bb.p ], [ %.16.ph, %.thread140 ], [ %i.et, %._crit_edge164 ], [ 1, %.thread143 ], [ 1, %bb.ab ], [ %i.w, %bb.c ], [ %i.aa, %bb.e ], [ -2147024882, %_ZN9NCompress6NBZip26CState5AllocEv.exit ], [ %i.y, %bb.d ]
  ret i32 %.20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy(ptr noundef nonnull align 8 dereferenceable(28988) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %i.g = sub i64 %1, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
  store i64 %i.i, ptr %i.b, align 8, !tbaa !85
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.NCompress::CMtf8Decoder", align 8 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 14 uses
  %i.c = alloca [258 x i8], align 16              ; 6 uses
  %.not = icmp eq ptr %7, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20 ; 4 uses
  %.pre327 = load i32, ptr %0, align 8, !tbaa !27 ; 3 uses
  br i1 %.not, label %._crit_edge326, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %.pre327, 1                      ; 4 uses
  store i32 %i.d, ptr %0, align 8, !tbaa !27
  %i.e = icmp ugt i32 %i.d, 7
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = phi i32 [ %i.d, %.lr.ph.i.i.i.i ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.i = phi i32 [ %.pre, %.lr.ph.i.i.i.i ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.j = shl i32 %i.i, 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.f)
  %.pre1.i.i.i.i = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !28
  %i.o = load i8, ptr %i.k, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %.pre1.i.i.i.i, %bb.d ], [ %i.h, %bb.e ]
  %.0.i.i.i.i.i = phi i8 [ %i.m, %bb.d ], [ %i.o, %bb.e ]
end_hunk_0
begin_hunk_1_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a

bb.az:                                            ; preds = %bb.ay
  %i.jd = load i64, ptr %8, align 8, !tbaa !85    ; 2 uses
  %i.je = trunc i64 %i.jd to i32
  %i.jf = and i32 %i.je, 255                      ; 6 uses
  %i.jg = and i64 %i.jd, 255
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = add i32 %i.ji, %.0
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !4
  %min.iters.check = icmp ult i32 %.0, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.az
  %i.jk = add i32 %.0, -1
  %i.jl = sub i32 -257, %.0130.ph
  %i.jm = icmp ult i32 %i.jl, %i.jk
  br i1 %i.jm, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %.0, -8                        ; 3 uses
  %i.jn = add i32 %.0130.ph, %n.vec               ; 2 uses
  %i.jo = and i32 %.0, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add i32 %.0130.ph, 256
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.jp = zext i32 %.reass to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.jq, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.jr, align 4, !tbaa !4
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.js = icmp eq i32 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.0, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.az, %middle.block
  %.1131.ph = phi i32 [ %.0130.ph, %vector.scevcheck ], [ %.0130.ph, %bb.az ], [ %i.jn, %middle.block ] ; 2 uses
  %.1.ph = phi i32 [ %.0, %vector.scevcheck ], [ %.0, %bb.az ], [ %i.jo, %middle.block ] ; 4 uses
  %i.jt = add i32 %.1.ph, -1
  %xtraiter = and i32 %.1.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1131.prol = phi i32 [ %i.ju, %scalar.ph.prol ], [ %.1131.ph, %scalar.ph.preheader ] ; 2 uses
  %.1.prol = phi i32 [ %i.jy, %scalar.ph.prol ], [ %.1.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ju = add i32 %.1131.prol, 1                  ; 3 uses
  %i.jv = add i32 %.1131.prol, 256
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jw
  store i32 %i.jf, ptr %i.jx, align 4, !tbaa !4
  %i.jy = add i32 %.1.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa437.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ju, %scalar.ph.prol ]
  %.1131.unr = phi i32 [ %.1131.ph, %scalar.ph.preheader ], [ %i.ju, %scalar.ph.prol ]
  %.1.unr = phi i32 [ %.1.ph, %scalar.ph.preheader ], [ %i.jy, %scalar.ph.prol ]
  %i.jz = icmp ult i32 %i.jt, 3
  br i1 %i.jz, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1131 = phi i32 [ %i.kj, %scalar.ph ], [ %.1131.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1 = phi i32 [ %i.kn, %scalar.ph ], [ %.1.unr, %scalar.ph.prol.loopexit ]
  %i.ka = add i32 %.1131, 256
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kb
  store i32 %i.jf, ptr %i.kc, align 4, !tbaa !4
  %i.kd = add i32 %.1131, 257
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ke
  store i32 %i.jf, ptr %i.kf, align 4, !tbaa !4
  %i.kg = add i32 %.1131, 258
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kh
  store i32 %i.jf, ptr %i.ki, align 4, !tbaa !4
  %i.kj = add i32 %.1131, 4                       ; 2 uses
  %i.kk = add i32 %.1131, 259
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kl
  store i32 %i.jf, ptr %i.km, align 4, !tbaa !4
  %i.kn = add i32 %.1, -4                         ; 2 uses
  %.not180.3 = icmp eq i32 %i.kn, 0
  br i1 %.not180.3, label %.loopexit, label %scalar.ph, !llvm.loop !101

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay
  %.2132 = phi i32 [ %.0130.ph, %bb.ay ], [ %i.jn, %middle.block ], [ %.lcssa437.unr, %scalar.ph.prol.loopexit ], [ %i.kj, %scalar.ph ] ; 5 uses
  %.1122 = phi i32 [ %.0121, %bb.ay ], [ 0, %middle.block ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  %.not181 = icmp ugt i32 %i.iw, %.1153
  br i1 %.not181, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.ko = add nsw i32 %i.iw, -1
  %i.kp = call noundef zeroext i8 @_ZN9NCompress12CMtf8Decoder10GetAndMoveEj(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef %i.ko) ; 2 uses
  %.not182 = icmp ult i32 %.2132, %2
  br i1 %.not182, label %bb.bb, label %.thread249

bb.bb:                                            ; preds = %bb.ba
  %i.kq = zext i8 %i.kp to i32
  %i.kr = zext i8 %i.kp to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = add i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !4
  %i.kv = add nuw i32 %.2132, 1
  %i.kw = add i32 %.2132, 256
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kx
  store i32 %i.kq, ptr %i.ky, align 4, !tbaa !4
  br label %.preheader.outer

bb.bc:                                            ; preds = %.loopexit
  %i.kz = add nuw i32 %.1153, 1
  %i.la = icmp eq i32 %i.iw, %i.kz
  br i1 %i.la, label %bb.bd, label %.thread249

bb.bd:                                            ; preds = %bb.bc
  store i32 %.2132, ptr %5, align 4, !tbaa !4
  %i.lb = load i32, ptr %6, align 4, !tbaa !4
  %i.lc = icmp uge i32 %i.lb, %.2132
  %i.ld = zext i1 %i.lc to i32
  br label %.thread249

.critedge186:                                     ; preds = %.preheader254, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.thread249

.critedge:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread249

.thread249:                                       ; preds = %._crit_edge274, %bb.ax, %bb.au, %bb.ba, %bb.bc, %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit211, %.critedge186, %bb.bd, %.critedge, %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit217, %bb.r
  %.13 = phi i32 [ 1, %bb.r ], [ 1, %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit211 ], [ %i.ld, %bb.bd ], [ 1, %.critedge ], [ 1, %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit217 ], [ 1, %.critedge186 ], [ 1, %bb.ax ], [ 1, %bb.bc ], [ 1, %bb.ba ], [ 1, %bb.au ], [ 1, %._crit_edge274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.be

bb.be:                                            ; preds = %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit, %.thread249
  %.14 = phi i32 [ %.13, %.thread249 ], [ 1, %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit ]
  ret i32 %.14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN9NCompress6NBZip2L12DecodeBlock1EPjj(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 6 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp ult i32 %1, 2
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.01819 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = add i32 %i.d, %.01819                    ; 2 uses
  store i32 %.01819, ptr %i.c, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = add i32 %i.h, %i.e                       ; 2 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = add i32 %i.l, %i.i                       ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = add i32 %i.p, %i.m
  store i32 %i.m, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !87

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv22 = phi i64 [ 0, %.new ], [ %indvars.iv.next23.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.r = trunc nuw i64 %indvars.iv22 to i32
  %i.s = shl i32 %i.r, 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv22
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !4
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = or i32 %i.ac, %i.s
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next23 = or disjoint i64 %indvars.iv22, 1 ; 2 uses
  %i.ae = trunc nuw i64 %indvars.iv.next23 to i32
  %i.af = shl i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next23
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !4
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = or i32 %i.ap, %i.af
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next23.1 = add nuw nsw i64 %indvars.iv22, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !88

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv22.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next23.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod26 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ar = trunc nuw i64 %indvars.iv22.epil.init to i32
  %i.as = shl i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv22.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = and i32 %i.au, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = or i32 %i.bc, %i.as
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN9NCompress6NBZip2L16DecodeBlock2RandEPKjjjR10COutBuffer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(49) %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = lshr i32 %i.c, 8
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = and i32 %i.g, 255
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit38, %bb.a
  %.sroa.0.0 = phi i32 [ -1, %bb.a ], [ %.sroa.0.2, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 4 uses
  %.034 = phi i32 [ %1, %bb.a ], [ %i.bi, %_ZN10COutBuffer9WriteByteEh.exit38 ]
  %.032 = phi i32 [ 1, %bb.a ], [ %.133, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 3 uses
  %.030 = phi i32 [ 617, %bb.a ], [ %i.x, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 2 uses
  %.028 = phi i32 [ 0, %bb.a ], [ %.2, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 2 uses
  %.027 = phi i32 [ %i.g, %bb.a ], [ %i.o, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 2 uses
  %.025 = phi i32 [ %i.h, %bb.a ], [ %.126, %_ZN10COutBuffer9WriteByteEh.exit38 ] ; 5 uses
  %i.k = and i32 %.027, 255                       ; 2 uses
  %i.l = lshr i32 %.027, 8
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = icmp eq i32 %.030, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = xor i32 %i.k, 1
  %i.r = add nuw nsw i32 %.032, 1
  %i.s = zext nneg i32 %.032 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN9NCompress6NBZip2L9kRandNumsE, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !102
  %i.v = zext i16 %i.u to i32
  %i.w = and i32 %i.r, 511
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.133 = phi i32 [ %i.w, %bb.c ], [ %.032, %bb.b ]
  %.131 = phi i32 [ %i.v, %bb.c ], [ %.030, %bb.b ]
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.k, %bb.b ]  ; 7 uses
  %i.x = add i32 %.131, -1
  %i.y = icmp eq i32 %.028, 4
  br i1 %i.y, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %.not3641 = icmp eq i32 %.0, 0
  br i1 %.not3641, label %_ZN10COutBuffer9WriteByteEh.exit38, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.z = trunc nuw i32 %.025 to i8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN10COutBuffer9WriteByteEh.exit
  %.143 = phi i32 [ %.0, %.lr.ph ], [ %i.ap, %_ZN10COutBuffer9WriteByteEh.exit ]
  %.sroa.0.142 = phi i32 [ %.sroa.0.0, %.lr.ph ], [ %i.ag, %_ZN10COutBuffer9WriteByteEh.exit ] ; 2 uses
  %i.aa = lshr i32 %.sroa.0.142, 24
  %i.ab = xor i32 %i.aa, %.025
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = shl i32 %.sroa.0.142, 8
  %i.ag = xor i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !37
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !41
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  store i8 %i.z, ptr %i.al, align 1, !tbaa !30
  %i.am = load i32, ptr %i.i, align 8, !tbaa !41
  %i.an = load i32, ptr %i.j, align 4, !tbaa !104
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZN10COutBuffer9WriteByteEh.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %3)
  br label %_ZN10COutBuffer9WriteByteEh.exit

_ZN10COutBuffer9WriteByteEh.exit:                 ; preds = %bb.e, %bb.f
  %i.ap = add nsw i32 %.143, -1                   ; 2 uses
  %.not36 = icmp eq i32 %i.ap, 0
  br i1 %.not36, label %_ZN10COutBuffer9WriteByteEh.exit38, label %bb.e, !llvm.loop !105

bb.g:                                             ; preds = %bb.d
  %.not = icmp eq i32 %.0, %.025
  %i.aq = add i32 %.028, 1
  %i.ar = select i1 %.not, i32 %i.aq, i32 1       ; 2 uses
  %i.as = lshr i32 %.sroa.0.0, 24
  %i.at = xor i32 %.0, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = shl i32 %.sroa.0.0, 8
  %i.ay = xor i32 %i.aw, %i.ax                    ; 2 uses
  %i.az = trunc nuw i32 %.0 to i8
  %i.ba = load ptr, ptr %3, align 8, !tbaa !37
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !41
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  store i8 %i.az, ptr %i.be, align 1, !tbaa !30
  %i.bf = load i32, ptr %i.i, align 8, !tbaa !41
  %i.bg = load i32, ptr %i.j, align 4, !tbaa !104
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %_ZN10COutBuffer9WriteByteEh.exit38

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %3)
  br label %_ZN10COutBuffer9WriteByteEh.exit38

_ZN10COutBuffer9WriteByteEh.exit38:               ; preds = %_ZN10COutBuffer9WriteByteEh.exit, %.preheader, %bb.h, %bb.g
  %.sroa.0.2 = phi i32 [ %i.ay, %bb.h ], [ %i.ay, %bb.g ], [ %.sroa.0.0, %.preheader ], [ %i.ag, %_ZN10COutBuffer9WriteByteEh.exit ] ; 2 uses
  %.2 = phi i32 [ %i.ar, %bb.h ], [ %i.ar, %bb.g ], [ 0, %.preheader ], [ 0, %_ZN10COutBuffer9WriteByteEh.exit ]
  %.126 = phi i32 [ %.0, %bb.h ], [ %.0, %bb.g ], [ %.025, %.preheader ], [ %.025, %_ZN10COutBuffer9WriteByteEh.exit ]
  %i.bi = add i32 %.034, -1                       ; 2 uses
  %.not37 = icmp eq i32 %i.bi, 0
  br i1 %.not37, label %bb.i, label %bb.b, !llvm.loop !106

bb.i:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit38
  %i.bj = xor i32 %.sroa.0.2, -1
  ret i32 %i.bj
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(49) %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = lshr i32 %i.c, 8
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = and i32 %i.g, 255
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit28, %bb.a
  %.sroa.0.0 = phi i32 [ -1, %bb.a ], [ %.sroa.0.2, %_ZN10COutBuffer9WriteByteEh.exit28 ] ; 4 uses
  %.024 = phi i32 [ %1, %bb.a ], [ %i.az, %_ZN10COutBuffer9WriteByteEh.exit28 ]
  %.023 = phi i32 [ %i.g, %bb.a ], [ %i.o, %_ZN10COutBuffer9WriteByteEh.exit28 ] ; 3 uses
  %.021 = phi i32 [ %i.h, %bb.a ], [ %.122, %_ZN10COutBuffer9WriteByteEh.exit28 ] ; 5 uses
  %.020 = phi i32 [ 0, %bb.a ], [ %.2, %_ZN10COutBuffer9WriteByteEh.exit28 ] ; 2 uses
  %i.k = and i32 %.023, 255                       ; 6 uses
  %i.l = lshr i32 %.023, 8
  %i.m = zext nneg i32 %i.l to i64
end_hunk_1
begin_hunk_2_@_ZN9NCompress6NBZip26CState10ThreadFuncEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28712
  %i.ak = call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.aj) ; 0 uses
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28816
  %i.an = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #20 ; 0 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !68  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28868
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !61, !range !63, !noundef !64
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %._crit_edge, label %bb.b, !llvm.loop !118

bb.d:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 28864 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !119 ; 2 uses
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 28856
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !58
  %i.ax = icmp eq i32 %i.au, %i.aw
  %spec.store.select = select i1 %i.ax, i32 0, i32 %i.au ; 4 uses
  store i32 %spec.store.select, ptr %i.as, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i8 0, ptr %i.f, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.ay = invoke noundef i32 @_ZN9NCompress6NBZip28CDecoder14ReadSignaturesERbRj(ptr noundef nonnull align 8 dereferenceable(28988) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %.invoke

bb.g:                                             ; preds = %.invoke, %.noexc51.invoke, %.noexc52.invoke, %bb.k, %bb.d
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr null                          ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = extractvalue { ptr, i32 } %i.ba, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18CInBufferException) #20
  %i.be = icmp eq i32 %i.bc, %i.bd
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.bb) #20
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !114
  %.not42 = icmp eq i32 %i.bg, 0
  call void @__cxa_end_catch()
  br i1 %.not42, label %.select.unfold_crit_edge, label %bb.m

.select.unfold_crit_edge:                         ; preds = %bb.h
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %select.unfold

bb.i:                                             ; preds = %bb.g
  call void @__cxa_end_catch()
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.bh = load i8, ptr %i.g, align 1, !tbaa !74, !range !63, !noundef !64
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !68  ; 5 uses
  br i1 %i.bi, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  %i.bl = load ptr, ptr %0, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 28984
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 392
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 18396
  %i.bq = invoke fastcc noundef i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef nonnull %i.bk, ptr noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.f)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  %.not41 = icmp eq i32 %i.bq, 0
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !68  ; 6 uses
  br i1 %.not41, label %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit, label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.j, %bb.f
  %.sink91 = phi ptr [ %i.az, %bb.f ], [ %i.bj, %bb.j ], [ %i.br, %bb.l ] ; 2 uses
  %.sink = phi i32 [ 1, %bb.f ], [ 0, %bb.j ], [ 1, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink91, i64 28976
  store i32 %.sink, ptr %i.bs, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink91, i64 28869
  store i8 1, ptr %i.bt, align 1, !tbaa !117
  %i.bu = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
          to label %.noexc51.invoke unwind label %bb.g ; 0 uses

.noexc51.invoke:                                  ; preds = %.invoke
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28816
  %i.bx = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #20 ; 0 uses
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28872
  %i.ca = invoke noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.bz)
          to label %.noexc52.invoke unwind label %bb.g ; 0 uses

.noexc52.invoke:                                  ; preds = %.noexc51.invoke
  %i.cb = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit.thread unwind label %bb.g ; 0 uses

_ZN9NCompress6NBZip26CState12FinishStreamEv.exit.thread: ; preds = %.noexc52.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ab

_ZN9NCompress6NBZip26CState12FinishStreamEv.exit: ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 336
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 344
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 376
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !83
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = load i32, ptr %i.cc, align 8, !tbaa !27
  %i.cm = sub i32 32, %i.cl
  %i.cn = lshr i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64
  %.neg83 = add i64 %i.cf, %i.cj
  %i.cp = add i64 %i.ck, %i.co
  %i.cq = sub i64 %.neg83, %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %select.unfold

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !68  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 28976
  store i32 -2147467259, ptr %i.cs, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 28869
  store i8 1, ptr %i.ct, align 1, !tbaa !117
  %i.cu = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.s) ; 0 uses
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28816
  %i.cx = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #20 ; 0 uses
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28872
  %i.da = call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.cz) ; 0 uses
  %i.db = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.t) ; 0 uses
  br label %bb.ab, !llvm.loop !118

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit
  %i.dc = phi ptr [ %i.br, %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit ], [ %.pre, %.select.unfold_crit_edge ]
  %.136.ph = phi i64 [ %i.cq, %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit ], [ 0, %.select.unfold_crit_edge ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28816
  %i.de = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dd) #20 ; 0 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !8     ; 8 uses
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !4   ; 4 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1024 ; 6 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.dg, i32 1) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.di = icmp ult i32 %i.dg, 2
  br i1 %i.di, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.n
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %select.unfold
  %indvars.iv.i = phi i64 [ 0, %select.unfold ], [ %indvars.iv.next.i.3, %bb.o ] ; 5 uses
  %.01819.i = phi i32 [ 0, %select.unfold ], [ %i.dx, %bb.o ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = add i32 %i.dk, %.01819.i                ; 2 uses
  store i32 %.01819.i, ptr %i.dj, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = add i32 %i.do, %i.dl                    ; 2 uses
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = add i32 %i.ds, %i.dp                    ; 2 uses
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.dx = add i32 %i.dw, %i.dt
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %bb.n, label %bb.o, !llvm.loop !87

bb.p:                                             ; preds = %bb.p, %.new
  %indvars.iv22.i = phi i64 [ 0, %.new ], [ %indvars.iv.next23.i.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.p ]
  %i.dy = trunc nuw i64 %indvars.iv22.i to i32
  %i.dz = shl i32 %i.dy, 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv22.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = and i32 %i.eb, 255
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !4
  %i.ek = or i32 %i.ej, %i.dz
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !4
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv.next23.i to i32
  %i.em = shl i32 %i.el, 8
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next23.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4  ; 2 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !4
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = or i32 %i.ew, %i.em
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !4
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, label %bb.p, !llvm.loop !88

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %bb.n
  %indvars.iv22.i.epil.init = phi i64 [ 0, %bb.n ], [ %indvars.iv.next23.i.1, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.ey = trunc nuw i64 %indvars.iv22.i.epil.init to i32
  %i.ez = shl i32 %i.ey, 8
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv22.i.epil.init
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = and i32 %i.fb, 255
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4  ; 2 uses
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !4
  %i.fh = zext i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = or i32 %i.fj, %i.ez
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !4
  br label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit:     ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %.epil.preheader
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 28696
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !47
  %i.fo = zext i32 %i.at to i64
  %i.fp = getelementptr inbounds nuw [608 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 248
  %i.fr = invoke noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.fq)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit unwind label %bb.w ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit: ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !68  ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 28870
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !120, !range !63, !noundef !64
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit
  %i.fw = load i8, ptr %i.f, align 1, !tbaa !74, !range !63, !noundef !64
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = load ptr, ptr %0, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1024 ; 2 uses
  %i.ga = load i32, ptr %i.e, align 4, !tbaa !4   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  br i1 %i.fx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gc = invoke fastcc noundef i32 @_ZN9NCompress6NBZip2L16DecodeBlock2RandEPKjjjR10COutBuffer(ptr noundef nonnull %i.fz, i32 noundef %i.dg, i32 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(49) %i.gb)
          to label %bb.t unwind label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.gd = invoke fastcc noundef i32 @_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer(ptr noundef nonnull %i.fz, i32 noundef %i.dg, i32 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(49) %i.gb)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ge = phi i32 [ %i.gc, %bb.r ], [ %i.gd, %bb.s ]
  %i.gf = load i32, ptr %i.c, align 4, !tbaa !4
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.u, label %.thread67

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.h, align 8, !tbaa !68  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 28688 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.gj, null
  br i1 %.not.i, label %.thread78, label %bb.v

.thread78:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge81

bb.v:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 28672
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !84
  %i.gm = sub i64 %.136.ph, %i.gl
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.go = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.gn)
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.v
  store i64 %i.go, ptr %i.b, align 8, !tbaa !85
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !35
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef i32 %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.z unwind label %bb.w, !inline_history !86 ; 2 uses

bb.w:                                             ; preds = %.noexc56, %bb.v, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit, %bb.s, %bb.r
  %.032 = phi i1 [ false, %.noexc56 ], [ false, %bb.r ], [ false, %bb.s ], [ true, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit ], [ false, %bb.v ]
  %i.gu = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  %i.gw = extractvalue { ptr, i32 } %i.gu, 1
  %i.gx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #20
  %i.gy = icmp eq i32 %i.gw, %i.gx
  %i.gz = call ptr @__cxa_begin_catch(ptr %i.gv) #20
  br i1 %i.gy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !114
  %.not44 = icmp eq i32 %i.ha, 0
  call void @__cxa_end_catch()
  br i1 %.not44, label %.thread75, label %.thread67

bb.y:                                             ; preds = %bb.w
  call void @__cxa_end_catch()
  br label %.thread67

bb.z:                                             ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not80 = icmp eq i32 %i.gt, 0
  br i1 %.not80, label %..critedge81_crit_edge, label %.thread67

..critedge81_crit_edge:                           ; preds = %bb.z
  %.pre85 = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %.critedge81

.thread67:                                        ; preds = %bb.t, %bb.y, %bb.x, %bb.z
  %.272 = phi i32 [ %i.gt, %bb.z ], [ 1, %bb.t ], [ -2147467259, %bb.y ], [ -2147467259, %bb.x ]
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !68  ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 28980
  store i32 %.272, ptr %i.hc, align 4, !tbaa !78
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 28870
  store i8 1, ptr %i.hd, align 2, !tbaa !120
  br label %.critedge

.thread75:                                        ; preds = %bb.x
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 28696
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !47
  %i.hh = zext i32 %spec.store.select to i64
  %i.hi = getelementptr inbounds nuw [608 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 248
  %i.hk = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.hj) ; 0 uses
  br i1 %.032, label %bb.aa, label %bb.ab

.critedge:                                        ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit, %.thread67
  %i.hl = phi ptr [ %i.fs, %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit ], [ %i.hb, %.thread67 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 28696
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !47
  %i.ho = zext i32 %spec.store.select to i64
  %i.hp = getelementptr inbounds nuw [608 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  %i.hr = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.hq) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %.thread75
  %i.hs = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.s) ; 0 uses
  %i.ht = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 28872
  %i.hv = call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.hu) ; 0 uses
  %i.hw = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.t) ; 0 uses
  br label %bb.ab

.critedge81:                                      ; preds = %..critedge81_crit_edge, %.thread78
  %i.hx = phi ptr [ %.pre85, %..critedge81_crit_edge ], [ %i.gh, %.thread78 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 28696
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ia = zext i32 %spec.store.select to i64
  %i.ib = getelementptr inbounds nuw [608 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 248
  %i.id = call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.ic) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge81, %_ZN9NCompress6NBZip26CState12FinishStreamEv.exit.thread, %bb.aa, %.thread75, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.backedge
}
end_hunk_2
