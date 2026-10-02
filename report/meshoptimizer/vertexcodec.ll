Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@meshopt_decodeVertexBuffer:bb.a
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %.0, %i.ab
  %i.ae = icmp ult i64 %i.ad, %1
  %i.af = sub nuw i64 %1, %.0
  %i.ag = select i1 %i.ae, i64 %i.ab, i64 %i.af   ; 2 uses
  %i.ah = mul i64 %.0, %2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = call noundef ptr %_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i._ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i(ptr noundef nonnull %.055, ptr noundef nonnull %i.e, ptr noundef %i.ai, i64 noundef %i.ag, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef %i.x, i32 noundef %i.l), !callees !38 ; 2 uses
  %.not62.not = icmp eq ptr %i.aj, null
  %i.ak = add i64 %i.ag, %.0
  br i1 %.not62.not, label %.loopexit, label %bb.f, !llvm.loop !37

bb.h:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %.055 to i64
  %i.am = sub i64 %i.f, %i.al
  %.not61 = icmp eq i64 %i.am, %i.s
  %. = select i1 %.not61, i32 0, i32 -3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h
  %.2 = phi i32 [ %., %bb.h ], [ -2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit, %bb.d, %bb.c, %bb.a
  %.6 = phi i32 [ -2, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.2, %.loopexit ], [ -2, %bb.d ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %i.b = alloca [8192 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add i64 %3, 15                           ; 3 uses
  %i.d = and i64 %i.c, -16                        ; 18 uses
  %i.e = icmp eq i32 %7, 0                        ; 4 uses
  %i.f = lshr i64 %4, 2
  %i.g = select i1 %i.e, i64 0, i64 %i.f          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %.not149.not = icmp eq i64 %4, 0
  br i1 %.not149.not, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = lshr i64 %i.c, 4
  %i.n = add nuw nsw i64 %i.m, 3
  %i.o = lshr i64 %i.n, 2                         ; 2 uses
  %i.p = icmp ugt i64 %i.c, 63
  %.not.i110 = icmp eq i64 %i.d, 0                ; 3 uses
  %i.q = shl i64 %i.d, 1                          ; 3 uses
  %i.r = mul i64 %i.d, 3                          ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit
  %.084151 = phi i64 [ 0, %.lr.ph ], [ %i.afp, %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit ] ; 9 uses
  %.092150 = phi ptr [ %i.l, %.lr.ph ], [ %.395114, %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit ]
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr exact i64 %.084151, 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread123
  %.0148 = phi i64 [ 0, %bb.e ], [ %i.px, %.thread123 ] ; 5 uses
  %.193147 = phi ptr [ %.092150, %bb.e ], [ %.395114, %.thread123 ] ; 8 uses
  %.0.tr = trunc nuw nsw i64 %.0148 to i32
  %i.x = shl nuw nsw i32 %.0.tr, 1
  %i.y = lshr i32 %i.w, %i.x
  %i.z = and i32 %i.y, 3                          ; 2 uses
  switch i32 %i.z, label %bb.j [
    i32 3, label %bb.g
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %.193147 to i64
  %i.ab = sub i64 %i.h, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.d
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = mul i64 %.0148, %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ae, ptr align 1 %.193147, i64 %i.d, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.193147, i64 %3
  br label %.thread123

bb.i:                                             ; preds = %bb.f
  %i.ag = mul i64 %.0148, %i.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ah, i8 0, i64 %i.d, i1 false)
  br label %.thread123

bb.j:                                             ; preds = %bb.f
  %i.ai = or disjoint i32 %i.z, 4
  %i.aj = select i1 %i.e, i32 0, i32 %i.ai        ; 7 uses
  %i.ak = mul i64 %.0148, %i.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak ; 3 uses
  %i.am = ptrtoint ptr %.193147 to i64
  %i.an = sub i64 %i.h, %i.am
  %i.ao = icmp ult i64 %i.an, %i.o
  br i1 %i.ao, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.193147, i64 %i.o ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 95
  %i.at = select i1 %i.p, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.au = icmp ne i32 %i.aj, 5
  %i.av = icmp ne i32 %i.aj, 4
  br label %bb.l

.preheader.i:                                     ; preds = %bb.q, %bb.k
  %.067.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.ax, %bb.q ] ; 2 uses
  %.065.lcssa.i = phi ptr [ %i.ap, %bb.k ], [ %.166.i, %bb.q ] ; 3 uses
  %i.aw = icmp ult i64 %.067.lcssa.i, %i.d
  br i1 %i.aw, label %.lr.ph80.i, label %bb.s

bb.l:                                             ; preds = %bb.q, %.lr.ph.i
  %i.ax = phi i64 [ 64, %.lr.ph.i ], [ %i.mk, %bb.q ] ; 3 uses
  %.06576.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.166.i, %bb.q ] ; 6 uses
  %.06775.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.q ] ; 3 uses
  %i.ay = lshr exact i64 %.06775.i, 6
  %i.az = getelementptr inbounds nuw i8, ptr %.193147, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 3 uses
  %i.bb = zext i8 %i.ba to i32                    ; 4 uses
  %i.bc = icmp eq i8 %i.ba, 0
  %or.cond.i = select i1 %i.au, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %.06775.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.be = icmp eq i8 %i.ba, -1
  %or.cond5.i = select i1 %i.av, i1 %i.be, i1 false
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %.06775.i ; 5 uses
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, ptr noundef nonnull align 1 dereferenceable(64) %.06576.i, i64 64, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.06576.i, i64 64
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bh = and i32 %i.bb, 3
  %i.bi = add nuw nsw i32 %i.bh, %i.aj
  %i.bj = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13 ; 3 uses
  %.0.copyload.i.i = load i64, ptr %.06576.i, align 1 ; 3 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = lshr i64 %.0.copyload.i.i, %i.bm
  %i.bo = and i64 %i.bn, %.0.copyload.i.i         ; 2 uses
  %i.bp = ashr i32 %i.bl, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes, i64 %i.bj
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !47
  %i.bu = and i64 %i.bt, %i.br
  %i.bv = and i64 %i.bu, %i.bo
  %i.bw = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bv)
  %i.bx = shl i32 2, %i.bl                        ; 2 uses
  %i.by = and i32 %i.bx, 14
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.06576.i, i64 %i.bz
  %i.cb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.copyload.i.i, i64 0
  %i.cc = load <16 x i8>, ptr %i.ca, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr @_ZN7meshoptL23kDecodeBytesGroupConfigE, i64 %i.bj ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load <16 x i8>, ptr %i.ce, align 16, !tbaa !9
  %i.cg = bitcast <2 x i64> %i.cb to <16 x i8>
  %i.ch = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cg, <16 x i8> %i.cf)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cj = load <8 x i16>, ptr %i.ci, align 16, !tbaa !9
  %i.ck = bitcast <16 x i8> %i.ch to <8 x i16>    ; 2 uses
  %8 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ck, <8 x i16> %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cm = load <8 x i16>, ptr %i.cl, align 16, !tbaa !9
  %9 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ck, <8 x i16> %i.cm)
  %i.cn = shl <8 x i16> %9, splat (i16 8)
  %i.co = or <8 x i16> %i.cn, %8
  %i.cp = bitcast <8 x i16> %i.co to <2 x i64>
  %i.cq = load <2 x i64>, ptr %i.cd, align 16, !tbaa !9 ; 2 uses
  %i.cr = and <2 x i64> %i.cq, %i.cp              ; 2 uses
  %i.cs = bitcast <2 x i64> %i.cr to <16 x i8>
  %i.ct = bitcast <2 x i64> %i.cq to <16 x i8>
  %i.cu = icmp eq <16 x i8> %i.cs, %i.ct          ; 2 uses
  %i.cv = sext <16 x i1> %i.cu to <16 x i8>       ; 2 uses
  %i.cw = bitcast <16 x i1> %i.cu to i16
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = lshr i32 %i.cx, 8
  %i.cz = and i32 %i.cx, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !9
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = zext nneg i32 %i.cy to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !9
  %i.dh = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %i.di = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cv, <16 x i8> zeroinitializer)
  %i.dj = bitcast <2 x i64> %i.di to <16 x i8>
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = bitcast <2 x i64> %i.dh to <16 x i8>
  %i.dm = sub <16 x i8> %i.dl, %i.dk
  %i.dn = bitcast <16 x i8> %i.dm to <2 x i64>
  %i.do = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dp = bitcast <2 x i64> %i.do to <16 x i8>
  %i.dq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cc, <16 x i8> %i.dp)
  %i.dr = bitcast <16 x i8> %i.dq to <2 x i64>
  %i.ds = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.dt = xor <2 x i64> %i.ds, splat (i64 -1)
  %i.du = and <2 x i64> %i.cr, %i.dt
  %i.dv = or <2 x i64> %i.du, %i.dr
  store <2 x i64> %i.dv, ptr %i.bf, align 16, !tbaa !9
  %i.dw = and i32 %i.bx, 30
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.06576.i, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.bw ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.eb = lshr i32 %i.bb, 2
  %i.ec = and i32 %i.eb, 3
  %i.ed = add nuw nsw i32 %i.ec, %i.aj
  %i.ee = zext nneg i32 %i.ed to i64              ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !13 ; 3 uses
  %.0.copyload.i71.i = load i64, ptr %i.dz, align 1 ; 3 uses
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = lshr i64 %.0.copyload.i71.i, %i.eh
  %i.ej = and i64 %i.ei, %.0.copyload.i71.i       ; 2 uses
  %i.ek = ashr i32 %i.eg, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = lshr i64 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes, i64 %i.ee
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = and i64 %i.eo, %i.em
  %i.eq = and i64 %i.ep, %i.ej
  %i.er = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eq)
  %i.es = shl i32 2, %i.eg                        ; 2 uses
  %i.et = and i32 %i.es, 14
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eu
  %i.ew = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.copyload.i71.i, i64 0
  %i.ex = load <16 x i8>, ptr %i.ev, align 1, !tbaa !9
  %i.ey = getelementptr inbounds nuw [64 x i8], ptr @_ZN7meshoptL23kDecodeBytesGroupConfigE, i64 %i.ee ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load <16 x i8>, ptr %i.ez, align 16, !tbaa !9
  %i.fb = bitcast <2 x i64> %i.ew to <16 x i8>
  %i.fc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fb, <16 x i8> %i.fa)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fe = load <8 x i16>, ptr %i.fd, align 16, !tbaa !9
  %i.ff = bitcast <16 x i8> %i.fc to <8 x i16>    ; 2 uses
  %10 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ff, <8 x i16> %i.fe)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fh = load <8 x i16>, ptr %i.fg, align 16, !tbaa !9
  %11 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ff, <8 x i16> %i.fh)
  %i.fi = shl <8 x i16> %11, splat (i16 8)
  %i.fj = or <8 x i16> %i.fi, %10
  %i.fk = bitcast <8 x i16> %i.fj to <2 x i64>
  %i.fl = load <2 x i64>, ptr %i.ey, align 16, !tbaa !9 ; 2 uses
  %i.fm = and <2 x i64> %i.fl, %i.fk              ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fm to <16 x i8>
  %i.fo = bitcast <2 x i64> %i.fl to <16 x i8>
  %i.fp = icmp eq <16 x i8> %i.fn, %i.fo          ; 2 uses
  %i.fq = sext <16 x i1> %i.fp to <16 x i8>       ; 2 uses
  %i.fr = bitcast <16 x i1> %i.fp to i16
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = and i32 %i.fs, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !9
  %i.fy = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %i.fz = zext nneg i32 %i.ft to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.gc = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gd = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.fq, <16 x i8> zeroinitializer)
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = bitcast <2 x i64> %i.gc to <16 x i8>
  %i.gh = sub <16 x i8> %i.gg, %i.gf
  %i.gi = bitcast <16 x i8> %i.gh to <2 x i64>
  %i.gj = shufflevector <2 x i64> %i.fy, <2 x i64> %i.gi, <2 x i32> <i32 0, i32 2>
  %i.gk = bitcast <2 x i64> %i.gj to <16 x i8>
  %i.gl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ex, <16 x i8> %i.gk)
  %i.gm = bitcast <16 x i8> %i.gl to <2 x i64>
  %i.gn = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.go = xor <2 x i64> %i.gn, splat (i64 -1)
  %i.gp = and <2 x i64> %i.fm, %i.go
  %i.gq = or <2 x i64> %i.gp, %i.gm
  store <2 x i64> %i.gq, ptr %i.ea, align 16, !tbaa !9
  %i.gr = and i32 %i.es, 30
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.er ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.gw = lshr i32 %i.bb, 4
  %i.gx = and i32 %i.gw, 3
  %i.gy = add nuw nsw i32 %i.gx, %i.aj
  %i.gz = zext nneg i32 %i.gy to i64              ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !13 ; 3 uses
  %.0.copyload.i72.i = load i64, ptr %i.gu, align 1 ; 3 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 %.0.copyload.i72.i, %i.hc
  %i.he = and i64 %i.hd, %.0.copyload.i72.i       ; 2 uses
  %i.hf = ashr i32 %i.hb, 1
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes, i64 %i.gz
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !47
  %i.hk = and i64 %i.hj, %i.hh
  %i.hl = and i64 %i.hk, %i.he
  %i.hm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hl)
  %i.hn = shl i32 2, %i.hb                        ; 2 uses
  %i.ho = and i32 %i.hn, 14
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hp
  %i.hr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.copyload.i72.i, i64 0
  %i.hs = load <16 x i8>, ptr %i.hq, align 1, !tbaa !9
  %i.ht = getelementptr inbounds nuw [64 x i8], ptr @_ZN7meshoptL23kDecodeBytesGroupConfigE, i64 %i.gz ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load <16 x i8>, ptr %i.hu, align 16, !tbaa !9
  %i.hw = bitcast <2 x i64> %i.hr to <16 x i8>
  %i.hx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.hw, <16 x i8> %i.hv)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hz = load <8 x i16>, ptr %i.hy, align 16, !tbaa !9
  %i.ia = bitcast <16 x i8> %i.hx to <8 x i16>    ; 2 uses
  %12 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ia, <8 x i16> %i.hz)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.ic = load <8 x i16>, ptr %i.ib, align 16, !tbaa !9
  %13 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ia, <8 x i16> %i.ic)
  %i.id = shl <8 x i16> %13, splat (i16 8)
  %i.ie = or <8 x i16> %i.id, %12
  %i.if = bitcast <8 x i16> %i.ie to <2 x i64>
  %i.ig = load <2 x i64>, ptr %i.ht, align 16, !tbaa !9 ; 2 uses
  %i.ih = and <2 x i64> %i.ig, %i.if              ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ih to <16 x i8>
  %i.ij = bitcast <2 x i64> %i.ig to <16 x i8>
  %i.ik = icmp eq <16 x i8> %i.ii, %i.ij          ; 2 uses
  %i.il = sext <16 x i1> %i.ik to <16 x i8>       ; 2 uses
  %i.im = bitcast <16 x i1> %i.ik to i16
  %i.in = zext i16 %i.im to i32                   ; 2 uses
  %i.io = lshr i32 %i.in, 8
  %i.ip = and i32 %i.in, 255
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !9
  %i.it = insertelement <2 x i64> poison, i64 %i.is, i64 0
  %i.iu = zext nneg i32 %i.io to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !9
  %i.ix = insertelement <2 x i64> poison, i64 %i.iw, i64 0
  %i.iy = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.il, <16 x i8> zeroinitializer)
  %i.iz = bitcast <2 x i64> %i.iy to <16 x i8>
  %i.ja = shufflevector <16 x i8> %i.iz, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = bitcast <2 x i64> %i.ix to <16 x i8>
  %i.jc = sub <16 x i8> %i.jb, %i.ja
  %i.jd = bitcast <16 x i8> %i.jc to <2 x i64>
  %i.je = shufflevector <2 x i64> %i.it, <2 x i64> %i.jd, <2 x i32> <i32 0, i32 2>
  %i.jf = bitcast <2 x i64> %i.je to <16 x i8>
  %i.jg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.hs, <16 x i8> %i.jf)
  %i.jh = bitcast <16 x i8> %i.jg to <2 x i64>
  %i.ji = bitcast <16 x i8> %i.il to <2 x i64>
  %i.jj = xor <2 x i64> %i.ji, splat (i64 -1)
  %i.jk = and <2 x i64> %i.ih, %i.jj
  %i.jl = or <2 x i64> %i.jk, %i.jh
  store <2 x i64> %i.jl, ptr %i.gv, align 16, !tbaa !9
  %i.jm = and i32 %i.hn, 30
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.hm ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.jr = lshr i32 %i.bb, 6
  %i.js = add nuw nsw i32 %i.jr, %i.aj
  %i.jt = zext nneg i32 %i.js to i64              ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !13 ; 3 uses
  %.0.copyload.i73.i = load i64, ptr %i.jp, align 1 ; 3 uses
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = lshr i64 %.0.copyload.i73.i, %i.jw
  %i.jy = and i64 %i.jx, %.0.copyload.i73.i       ; 2 uses
  %i.jz = ashr i32 %i.jv, 1
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = lshr i64 %i.jy, %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes, i64 %i.jt
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !47
  %i.ke = and i64 %i.kd, %i.kb
  %i.kf = and i64 %i.ke, %i.jy
  %i.kg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kf)
  %i.kh = shl i32 2, %i.jv                        ; 2 uses
  %i.ki = and i32 %i.kh, 14
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kj
  %i.kl = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.copyload.i73.i, i64 0
  %i.km = load <16 x i8>, ptr %i.kk, align 1, !tbaa !9
  %i.kn = getelementptr inbounds nuw [64 x i8], ptr @_ZN7meshoptL23kDecodeBytesGroupConfigE, i64 %i.jt ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load <16 x i8>, ptr %i.ko, align 16, !tbaa !9
  %i.kq = bitcast <2 x i64> %i.kl to <16 x i8>
  %i.kr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kq, <16 x i8> %i.kp)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kt = load <8 x i16>, ptr %i.ks, align 16, !tbaa !9
  %i.ku = bitcast <16 x i8> %i.kr to <8 x i16>    ; 2 uses
  %14 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ku, <8 x i16> %i.kt)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.kw = load <8 x i16>, ptr %i.kv, align 16, !tbaa !9
  %15 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ku, <8 x i16> %i.kw)
  %i.kx = shl <8 x i16> %15, splat (i16 8)
  %i.ky = or <8 x i16> %i.kx, %14
  %i.kz = bitcast <8 x i16> %i.ky to <2 x i64>
  %i.la = load <2 x i64>, ptr %i.kn, align 16, !tbaa !9 ; 2 uses
  %i.lb = and <2 x i64> %i.la, %i.kz              ; 2 uses
  %i.lc = bitcast <2 x i64> %i.lb to <16 x i8>
  %i.ld = bitcast <2 x i64> %i.la to <16 x i8>
  %i.le = icmp eq <16 x i8> %i.lc, %i.ld          ; 2 uses
  %i.lf = sext <16 x i1> %i.le to <16 x i8>       ; 2 uses
  %i.lg = bitcast <16 x i1> %i.le to i16
  %i.lh = zext i16 %i.lg to i32                   ; 2 uses
  %i.li = lshr i32 %i.lh, 8
  %i.lj = and i32 %i.lh, 255
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !9
  %i.ln = insertelement <2 x i64> poison, i64 %i.lm, i64 0
  %i.lo = zext nneg i32 %i.li to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.lo
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !9
  %i.lr = insertelement <2 x i64> poison, i64 %i.lq, i64 0
  %i.ls = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.lf, <16 x i8> zeroinitializer)
  %i.lt = bitcast <2 x i64> %i.ls to <16 x i8>
  %i.lu = shufflevector <16 x i8> %i.lt, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = bitcast <2 x i64> %i.lr to <16 x i8>
  %i.lw = sub <16 x i8> %i.lv, %i.lu
  %i.lx = bitcast <16 x i8> %i.lw to <2 x i64>
  %i.ly = shufflevector <2 x i64> %i.ln, <2 x i64> %i.lx, <2 x i32> <i32 0, i32 2>
  %i.lz = bitcast <2 x i64> %i.ly to <16 x i8>
  %i.ma = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.km, <16 x i8> %i.lz)
  %i.mb = bitcast <16 x i8> %i.ma to <2 x i64>
  %i.mc = bitcast <16 x i8> %i.lf to <2 x i64>
  %i.md = xor <2 x i64> %i.mc, splat (i64 -1)
  %i.me = and <2 x i64> %i.lb, %i.md
  %i.mf = or <2 x i64> %i.me, %i.mb
  store <2 x i64> %i.mf, ptr %i.jq, align 16, !tbaa !9
  %i.mg = and i32 %i.kh, 30
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.kg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.166.i = phi ptr [ %.06576.i, %bb.m ], [ %i.bg, %bb.o ], [ %i.mj, %bb.p ] ; 3 uses
  %i.mk = add i64 %i.ax, 64                       ; 2 uses
  %i.ml = icmp ule i64 %i.mk, %i.d
  %i.mm = ptrtoint ptr %.166.i to i64
  %i.mn = sub i64 %i.h, %i.mm
  %i.mo = icmp ugt i64 %i.mn, 95
  %i.mp = select i1 %i.ml, i1 %i.mo, i1 false
  br i1 %i.mp, label %bb.l, label %.preheader.i, !llvm.loop !39

.lr.ph80.i:                                       ; preds = %.preheader.i, %bb.r
  %.279.i = phi ptr [ %i.pu, %bb.r ], [ %.065.lcssa.i, %.preheader.i ] ; 4 uses
  %.16878.i = phi i64 [ %i.pv, %bb.r ], [ %.067.lcssa.i, %.preheader.i ] ; 4 uses
  %i.mq = ptrtoint ptr %.279.i to i64
  %i.mr = sub i64 %i.h, %i.mq
  %i.ms = icmp ult i64 %i.mr, 24
  br i1 %i.ms, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph80.i
  %i.mt = lshr i64 %.16878.i, 6
  %i.mu = getelementptr inbounds nuw i8, ptr %.193147, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %i.al, i64 %.16878.i
  %i.mx = zext i8 %i.mv to i32
  %i.my = trunc i64 %.16878.i to i32
  %i.mz = lshr exact i32 %i.my, 3
  %i.na = and i32 %i.mz, 6
  %i.nb = lshr i32 %i.mx, %i.na
  %i.nc = and i32 %i.nb, 3
  %i.nd = add nuw nsw i32 %i.nc, %i.aj
  %i.ne = zext nneg i32 %i.nd to i64              ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !13 ; 3 uses
  %.0.copyload.i74.i = load i64, ptr %.279.i, align 1 ; 3 uses
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = lshr i64 %.0.copyload.i74.i, %i.nh
  %i.nj = and i64 %i.ni, %.0.copyload.i74.i       ; 2 uses
  %i.nk = ashr i32 %i.ng, 1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = lshr i64 %i.nj, %i.nl
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr @_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes, i64 %i.ne
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !47
  %i.np = and i64 %i.no, %i.nm
  %i.nq = and i64 %i.np, %i.nj
  %i.nr = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.nq)
  %i.ns = shl i32 2, %i.ng                        ; 2 uses
  %i.nt = and i32 %i.ns, 14
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %.279.i, i64 %i.nu
  %i.nw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.copyload.i74.i, i64 0
  %i.nx = load <16 x i8>, ptr %i.nv, align 1, !tbaa !9
  %i.ny = getelementptr inbounds nuw [64 x i8], ptr @_ZN7meshoptL23kDecodeBytesGroupConfigE, i64 %i.ne ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load <16 x i8>, ptr %i.nz, align 16, !tbaa !9
  %i.ob = bitcast <2 x i64> %i.nw to <16 x i8>
  %i.oc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ob, <16 x i8> %i.oa)
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oe = load <8 x i16>, ptr %i.od, align 16, !tbaa !9
  %i.of = bitcast <16 x i8> %i.oc to <8 x i16>    ; 2 uses
  %16 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.of, <8 x i16> %i.oe)
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oh = load <8 x i16>, ptr %i.og, align 16, !tbaa !9
  %17 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.of, <8 x i16> %i.oh)
  %i.oi = shl <8 x i16> %17, splat (i16 8)
  %i.oj = or <8 x i16> %i.oi, %16
  %i.ok = bitcast <8 x i16> %i.oj to <2 x i64>
  %i.ol = load <2 x i64>, ptr %i.ny, align 16, !tbaa !9 ; 2 uses
  %i.om = and <2 x i64> %i.ol, %i.ok              ; 2 uses
  %i.on = bitcast <2 x i64> %i.om to <16 x i8>
  %i.oo = bitcast <2 x i64> %i.ol to <16 x i8>
  %i.op = icmp eq <16 x i8> %i.on, %i.oo          ; 2 uses
  %i.oq = sext <16 x i1> %i.op to <16 x i8>       ; 2 uses
  %i.or = bitcast <16 x i1> %i.op to i16
  %i.os = zext i16 %i.or to i32                   ; 2 uses
  %i.ot = lshr i32 %i.os, 8
  %i.ou = and i32 %i.os, 255
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.ov
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !9
  %i.oy = insertelement <2 x i64> poison, i64 %i.ox, i64 0
  %i.oz = zext nneg i32 %i.ot to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %i.oz
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !9
  %i.pc = insertelement <2 x i64> poison, i64 %i.pb, i64 0
  %i.pd = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.oq, <16 x i8> zeroinitializer)
  %i.pe = bitcast <2 x i64> %i.pd to <16 x i8>
  %i.pf = shufflevector <16 x i8> %i.pe, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pg = bitcast <2 x i64> %i.pc to <16 x i8>
  %i.ph = sub <16 x i8> %i.pg, %i.pf
  %i.pi = bitcast <16 x i8> %i.ph to <2 x i64>
  %i.pj = shufflevector <2 x i64> %i.oy, <2 x i64> %i.pi, <2 x i32> <i32 0, i32 2>
  %i.pk = bitcast <2 x i64> %i.pj to <16 x i8>
  %i.pl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.nx, <16 x i8> %i.pk)
  %i.pm = bitcast <16 x i8> %i.pl to <2 x i64>
  %i.pn = bitcast <16 x i8> %i.oq to <2 x i64>
  %i.po = xor <2 x i64> %i.pn, splat (i64 -1)
  %i.pp = and <2 x i64> %i.om, %i.po
  %i.pq = or <2 x i64> %i.pp, %i.pm
  store <2 x i64> %i.pq, ptr %i.mw, align 1, !tbaa !9
  %i.pr = and i32 %i.ns, 30
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %.279.i, i64 %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.nr ; 2 uses
  %i.pv = add nuw i64 %.16878.i, 16               ; 2 uses
  %i.pw = icmp ult i64 %i.pv, %i.d
  br i1 %i.pw, label %.lr.ph80.i, label %.thread123, !llvm.loop !40

bb.s:                                             ; preds = %.preheader.i
  %.not.not.not = icmp eq ptr %.065.lcssa.i, null
  br i1 %.not.not.not, label %.critedge, label %.thread123

.thread123:                                       ; preds = %bb.r, %bb.h, %bb.i, %bb.s
  %.395114 = phi ptr [ %i.af, %bb.h ], [ %.065.lcssa.i, %bb.s ], [ %.193147, %bb.i ], [ %i.pu, %bb.r ] ; 3 uses
  %i.px = add nuw nsw i64 %.0148, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.px, 4
  br i1 %exitcond, label %.thread127, label %bb.f, !llvm.loop !41

.thread127:                                       ; preds = %.thread123
  br i1 %i.e, label %.thread132, label %bb.t

bb.t:                                             ; preds = %.thread127
  %i.py = lshr exact i64 %.084151, 2
  %i.pz = getelementptr inbounds nuw i8, ptr %6, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !9
  %i.qb = zext i8 %i.qa to i32                    ; 2 uses
  %i.qc = and i32 %i.qb, 3
  switch i32 %i.qc, label %default.unreachable166 [
    i32 0, label %.thread132
    i32 1, label %bb.v
    i32 2, label %bb.x
    i32 3, label %.critedge
  ]

.thread132:                                       ; preds = %.thread127, %bb.t
  br i1 %.not.i110, label %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.thread132
  %i.qd = getelementptr inbounds nuw i8, ptr %5, i64 %.084151
  %.val = load i32, ptr %i.qd, align 4, !tbaa !13
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 %.084151
  %i.qf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val, i64 0
  %i.qg = bitcast <4 x i32> %i.qf to <16 x i8>
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i104
  %.014.i = phi <16 x i8> [ %i.qg, %.lr.ph.i104 ], [ %i.ve, %bb.u ]
  %.011313.i = phi ptr [ %i.qe, %.lr.ph.i104 ], [ %i.vq, %bb.u ] ; 2 uses
  %.011412.i = phi i64 [ 0, %.lr.ph.i104 ], [ %i.vr, %bb.u ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.011412.i ; 4 uses
  %i.qi = load <16 x i8>, ptr %i.qh, align 16, !tbaa !9 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.d
  %i.qk = load <16 x i8>, ptr %i.qj, align 16, !tbaa !9 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.q
  %i.qm = load <16 x i8>, ptr %i.ql, align 16, !tbaa !9 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.r
  %i.qo = load <16 x i8>, ptr %i.qn, align 16, !tbaa !9 ; 2 uses
  %i.qp = shufflevector <16 x i8> %i.qi, <16 x i8> %i.qk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.qq = shufflevector <16 x i8> %i.qi, <16 x i8> %i.qk, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qr = shufflevector <16 x i8> %i.qm, <16 x i8> %i.qo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.qs = shufflevector <16 x i8> %i.qm, <16 x i8> %i.qo, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qt = shufflevector <16 x i8> %i.qp, <16 x i8> %i.qr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23> ; 2 uses
  %i.qu = bitcast <16 x i8> %i.qt to <8 x i16>
  %i.qv = shufflevector <16 x i8> %i.qp, <16 x i8> %i.qr, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qw = bitcast <16 x i8> %i.qv to <8 x i16>
  %i.qx = shufflevector <16 x i8> %i.qq, <16 x i8> %i.qs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23> ; 2 uses
  %i.qy = bitcast <16 x i8> %i.qx to <8 x i16>
  %i.qz = shufflevector <16 x i8> %i.qq, <16 x i8> %i.qs, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ra = bitcast <16 x i8> %i.qz to <8 x i16>
  %i.rb = and <16 x i8> %i.qt, splat (i8 1)
  %i.rc = sub nsw <16 x i8> zeroinitializer, %i.rb
  %i.rd = bitcast <16 x i8> %i.rc to <2 x i64>
  %i.re = lshr <8 x i16> %i.qu, splat (i16 1)
  %i.rf = bitcast <8 x i16> %i.re to <2 x i64>
  %i.rg = and <2 x i64> %i.rf, splat (i64 9187201950435737471)
  %i.rh = xor <2 x i64> %i.rg, %i.rd              ; 4 uses
  %i.ri = bitcast <2 x i64> %i.rh to <16 x i8>
  %i.rj = add <16 x i8> %.014.i, %i.ri            ; 2 uses
  %i.rk = bitcast <2 x i64> %i.rh to <16 x i8>
  %i.rl = shufflevector <16 x i8> %i.rk, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rm = add <16 x i8> %i.rj, %i.rl              ; 2 uses
  %i.rn = bitcast <2 x i64> %i.rh to <16 x i8>
  %i.ro = shufflevector <16 x i8> %i.rn, <16 x i8> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rp = add <16 x i8> %i.rm, %i.ro              ; 2 uses
  %i.rq = bitcast <2 x i64> %i.rh to <16 x i8>
  %i.rr = shufflevector <16 x i8> %i.rq, <16 x i8> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rs = add <16 x i8> %i.rp, %i.rr              ; 2 uses
  %i.rt = bitcast <16 x i8> %i.rj to <4 x i32>
  %i.ru = extractelement <4 x i32> %i.rt, i64 0
  store i32 %i.ru, ptr %.011313.i, align 4, !tbaa !13
  %i.rv = getelementptr inbounds nuw i8, ptr %.011313.i, i64 %4 ; 2 uses
  %i.rw = bitcast <16 x i8> %i.rm to <4 x i32>
  %i.rx = extractelement <4 x i32> %i.rw, i64 0
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !13
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %4 ; 2 uses
  %i.rz = bitcast <16 x i8> %i.rp to <4 x i32>
  %i.sa = extractelement <4 x i32> %i.rz, i64 0
  store i32 %i.sa, ptr %i.ry, align 4, !tbaa !13
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %4 ; 2 uses
  %i.sc = bitcast <16 x i8> %i.rs to <4 x i32>
  %i.sd = extractelement <4 x i32> %i.sc, i64 0
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !13
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 %4 ; 2 uses
  %i.sf = and <16 x i8> %i.qv, splat (i8 1)
  %i.sg = sub nsw <16 x i8> zeroinitializer, %i.sf
  %i.sh = bitcast <16 x i8> %i.sg to <2 x i64>
  %i.si = lshr <8 x i16> %i.qw, splat (i16 1)
  %i.sj = bitcast <8 x i16> %i.si to <2 x i64>
  %i.sk = and <2 x i64> %i.sj, splat (i64 9187201950435737471)
  %i.sl = xor <2 x i64> %i.sk, %i.sh              ; 4 uses
  %i.sm = bitcast <2 x i64> %i.sl to <16 x i8>
  %i.sn = add <16 x i8> %i.rs, %i.sm              ; 2 uses
  %i.so = bitcast <2 x i64> %i.sl to <16 x i8>
  %i.sp = shufflevector <16 x i8> %i.so, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sq = add <16 x i8> %i.sn, %i.sp              ; 2 uses
  %i.sr = bitcast <2 x i64> %i.sl to <16 x i8>
  %i.ss = shufflevector <16 x i8> %i.sr, <16 x i8> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.st = add <16 x i8> %i.sq, %i.ss              ; 2 uses
  %i.su = bitcast <2 x i64> %i.sl to <16 x i8>
  %i.sv = shufflevector <16 x i8> %i.su, <16 x i8> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sw = add <16 x i8> %i.st, %i.sv              ; 2 uses
  %i.sx = bitcast <16 x i8> %i.sn to <4 x i32>
  %i.sy = extractelement <4 x i32> %i.sx, i64 0
  store i32 %i.sy, ptr %i.se, align 4, !tbaa !13
  %i.sz = getelementptr inbounds nuw i8, ptr %i.se, i64 %4 ; 2 uses
  %i.ta = bitcast <16 x i8> %i.sq to <4 x i32>
  %i.tb = extractelement <4 x i32> %i.ta, i64 0
  store i32 %i.tb, ptr %i.sz, align 4, !tbaa !13
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %4 ; 2 uses
  %i.td = bitcast <16 x i8> %i.st to <4 x i32>
  %i.te = extractelement <4 x i32> %i.td, i64 0
  store i32 %i.te, ptr %i.tc, align 4, !tbaa !13
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %4 ; 2 uses
  %i.tg = bitcast <16 x i8> %i.sw to <4 x i32>
  %i.th = extractelement <4 x i32> %i.tg, i64 0
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !13
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %4 ; 2 uses
  %i.tj = and <16 x i8> %i.qx, splat (i8 1)
  %i.tk = sub nsw <16 x i8> zeroinitializer, %i.tj
  %i.tl = bitcast <16 x i8> %i.tk to <2 x i64>
  %i.tm = lshr <8 x i16> %i.qy, splat (i16 1)
  %i.tn = bitcast <8 x i16> %i.tm to <2 x i64>
  %i.to = and <2 x i64> %i.tn, splat (i64 9187201950435737471)
  %i.tp = xor <2 x i64> %i.to, %i.tl              ; 4 uses
  %i.tq = bitcast <2 x i64> %i.tp to <16 x i8>
  %i.tr = add <16 x i8> %i.sw, %i.tq              ; 2 uses
  %i.ts = bitcast <2 x i64> %i.tp to <16 x i8>
  %i.tt = shufflevector <16 x i8> %i.ts, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.tu = add <16 x i8> %i.tr, %i.tt              ; 2 uses
  %i.tv = bitcast <2 x i64> %i.tp to <16 x i8>
  %i.tw = shufflevector <16 x i8> %i.tv, <16 x i8> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.tx = add <16 x i8> %i.tu, %i.tw              ; 2 uses
  %i.ty = bitcast <2 x i64> %i.tp to <16 x i8>
  %i.tz = shufflevector <16 x i8> %i.ty, <16 x i8> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ua = add <16 x i8> %i.tx, %i.tz              ; 2 uses
  %i.ub = bitcast <16 x i8> %i.tr to <4 x i32>
  %i.uc = extractelement <4 x i32> %i.ub, i64 0
  store i32 %i.uc, ptr %i.ti, align 4, !tbaa !13
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ti, i64 %4 ; 2 uses
  %i.ue = bitcast <16 x i8> %i.tu to <4 x i32>
  %i.uf = extractelement <4 x i32> %i.ue, i64 0
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %4 ; 2 uses
  %i.uh = bitcast <16 x i8> %i.tx to <4 x i32>
end_hunk_0
begin_hunk_1_@_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i:bb.a

.split.us.i:                                      ; preds = %bb.t
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 %.081148
  %i.xa = load i32, ptr %i.wz, align 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.split.us.i
  %.04056.us.i = phi i64 [ %i.xx, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %.155.us.i = phi i32 [ %i.xu, %.preheader.us.i ], [ %i.xa, %.split.us.i ]
  %.04354.us.i = phi i64 [ %i.xw, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04056.us.i ; 4 uses
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !9
  %i.xd = zext i8 %i.xc to i32
  %i.xe = getelementptr i8, ptr %i.xb, i64 %3
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !9
  %i.xg = zext i8 %i.xf to i32
  %i.xh = shl nuw nsw i32 %i.xg, 8
  %i.xi = or disjoint i32 %i.xh, %i.xd
  %i.xj = getelementptr i8, ptr %i.xb, i64 %i.p
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !9
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, 16
  %i.xn = or disjoint i32 %i.xi, %i.xm
  %i.xo = getelementptr i8, ptr %i.xb, i64 %i.q
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !9
  %i.xq = zext i8 %i.xp to i32
  %i.xr = shl nuw i32 %i.xq, 24
  %i.xs = or disjoint i32 %i.xn, %i.xr            ; 2 uses
  %i.xt = tail call i32 @llvm.fshr.i32(i32 %i.xs, i32 %i.xs, i32 %i.wy)
  %i.xu = xor i32 %i.xt, %.155.us.i               ; 2 uses
  %i.xv = getelementptr i8, ptr %i.wx, i64 %.04354.us.i
  store i32 %i.xu, ptr %i.xv, align 1
  %i.xw = add i64 %.04354.us.i, %4
  %i.xx = add nuw nsw i64 %.04056.us.i, 1         ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.xx, %3
  br i1 %exitcond.not.i108, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.preheader.us.i, !llvm.loop !52

default.unreachable161:                           ; preds = %bb.r
  unreachable

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.2.i.new
  br i1 %lcmp.mod206.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader204

.epil.preheader204:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %._crit_edge.2.i
  %.03950.3.i.epil.init = phi i64 [ 0, %._crit_edge.2.i ], [ %i.sx, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.149.3.i.epil.init = phi i8 [ %i.sd, %._crit_edge.2.i ], [ %i.su, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.04248.3.i.epil.init = phi i64 [ 3, %._crit_edge.2.i ], [ %i.sw, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i.epil.init
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !9   ; 2 uses
  %i.ya = and i8 %i.xz, 1
  %i.yb = sub nsw i8 0, %i.ya
  %i.yc = lshr i8 %i.xz, 1
  %i.yd = xor i8 %i.yc, %i.yb
  %i.ye = add i8 %i.yd, %.149.3.i.epil.init
  %i.yf = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i.epil.init
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !9
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa: ; preds = %._crit_edge.us.i.new
  br i1 %lcmp.mod182.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %._crit_edge.us.i
  %.03953.us.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ww, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.152.us.1.i.epil.init = phi i16 [ %i.vq, %._crit_edge.us.i ], [ %i.wt, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.04251.us.1.i.epil.init = phi i64 [ 2, %._crit_edge.us.i ], [ %i.wv, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i.epil.init ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !9
  %i.yi = zext i8 %i.yh to i16                    ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yg, i64 %3
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !9
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = or disjoint i16 %i.ym, %i.yi
  %i.yo = and i16 %i.yi, 1
  %i.yp = sub nsw i16 0, %i.yo
  %i.yq = lshr i16 %i.yn, 1
  %i.yr = xor i16 %i.yq, %i.yp
  %i.ys = add i16 %i.yr, %.152.us.1.i.epil.init
  %i.yt = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i.epil.init
  store i16 %i.ys, ptr %i.yt, align 1
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit: ; preds = %.preheader.us.i, %.epil.preheader180, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %.epil.preheader204, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %bb.t, %bb.s, %.thread134
  %i.yu = add i64 %.081148, 4                     ; 2 uses
  %.not100 = icmp ult i64 %i.yu, %4
  br i1 %.not100, label %bb.c, label %.critedge.thread, !llvm.loop !53

.critedge.thread:                                 ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, %bb.b
  %.088.lcssa = phi ptr [ %i.l, %bb.b ], [ %.391112, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ]
  %i.yv = mul i64 %4, %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.yv, i1 false)
  %i.yw = add i64 %3, -1
  %i.yx = mul i64 %4, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.yy, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.thread126, %bb.g, %bb.j, %bb.q, %.critedge.thread, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %.088.lcssa, %.critedge.thread ], [ null, %.thread126 ], [ null, %bb.q ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #9

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_vertexcodec.cpp() #10 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind1 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next2, %vector.body ] ; 9 uses
  %i.a = and <2 x i32> %vec.ind1, splat (i32 1)   ; 2 uses
  %i.b = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.c = lshr <2 x i32> %vec.ind1, splat (i32 1)
  %i.d = and <2 x i32> %i.c, splat (i32 1)        ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = add nuw nsw <2 x i32> %i.d, %i.a         ; 2 uses
  %i.g = lshr <2 x i32> %vec.ind1, splat (i32 2)
  %i.h = and <2 x i32> %i.g, splat (i32 1)        ; 2 uses
  %i.i = icmp eq <2 x i32> %i.h, zeroinitializer
  %i.j = add nuw nsw <2 x i32> %i.f, %i.h         ; 2 uses
  %i.k = lshr <2 x i32> %vec.ind1, splat (i32 3)
  %i.l = and <2 x i32> %i.k, splat (i32 1)        ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add nuw nsw <2 x i32> %i.j, %i.l         ; 2 uses
  %i.o = lshr <2 x i32> %vec.ind1, splat (i32 4)
  %i.p = and <2 x i32> %i.o, splat (i32 1)        ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer
  %i.r = add nuw nsw <2 x i32> %i.n, %i.p         ; 2 uses
  %i.s = lshr <2 x i32> %vec.ind1, splat (i32 5)
  %i.t = and <2 x i32> %i.s, splat (i32 1)        ; 2 uses
  %i.u = icmp eq <2 x i32> %i.t, zeroinitializer
  %i.v = add nuw nsw <2 x i32> %i.r, %i.t         ; 2 uses
  %i.w = lshr <2 x i32> %vec.ind1, splat (i32 6)
  %i.x = and <2 x i32> %i.w, splat (i32 1)        ; 2 uses
  %i.y = icmp eq <2 x i32> %i.x, zeroinitializer
  %i.z = add nuw nsw <2 x i32> %i.v, %i.x
  %i.aa = and <2 x i32> %vec.ind1, splat (i32 128)
  %i.ab = icmp eq <2 x i32> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %index
  %i.ad = select <2 x i1> %i.ab, <2 x i32> splat (i32 128), <2 x i32> %i.z
  %i.ae = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.af = shl nuw <2 x i64> %i.ae, splat (i64 56)
  %i.ag = select <2 x i1> %i.y, <2 x i32> splat (i32 128), <2 x i32> %i.v
  %i.ah = zext nneg <2 x i32> %i.ag to <2 x i64>
  %i.ai = shl nuw nsw <2 x i64> %i.ah, splat (i64 48)
  %i.aj = add nuw nsw <2 x i64> %i.af, %i.ai
  %i.ak = select <2 x i1> %i.u, <2 x i32> splat (i32 128), <2 x i32> %i.r
  %i.al = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.am = shl nuw nsw <2 x i64> %i.al, splat (i64 40)
  %i.an = select <2 x i1> %i.q, <2 x i32> splat (i32 128), <2 x i32> %i.n
  %i.ao = zext nneg <2 x i32> %i.an to <2 x i64>
  %i.ap = shl nuw nsw <2 x i64> %i.ao, splat (i64 32)
  %i.aq = shl nuw nsw <2 x i32> %i.j, splat (i32 24)
  %i.ar = select <2 x i1> %i.m, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.aq
  %i.as = zext <2 x i32> %i.ar to <2 x i64>
  %i.at = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.au = select <2 x i1> %i.i, <2 x i32> splat (i32 8388608), <2 x i32> %i.at
  %i.av = zext nneg <2 x i32> %i.au to <2 x i64>
  %i.aw = shl nuw nsw <2 x i64> %vec.ind, splat (i64 8)
  %i.ax = and <2 x i64> %i.aw, splat (i64 256)
  %i.ay = select <2 x i1> %i.e, <2 x i64> splat (i64 32768), <2 x i64> %i.ax
  %i.az = select <2 x i1> %i.b, <2 x i64> splat (i64 128), <2 x i64> zeroinitializer
  %i.ba = or disjoint <2 x i64> %i.ay, %i.az
  %i.bb = or disjoint <2 x i64> %i.ba, %i.av
  %i.bc = or disjoint <2 x i64> %i.bb, %i.as
  %i.bd = or disjoint <2 x i64> %i.bc, %i.ap
  %i.be = or <2 x i64> %i.bd, %i.am
  %i.bf = or <2 x i64> %i.be, %i.aj
  store <2 x i64> %i.bf, ptr %i.ac, align 16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next2 = add <2 x i32> %vec.ind1, splat (i32 2)
  %i.bg = icmp eq i64 %index.next, 256
  br i1 %i.bg, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !54

__cxx_global_var_init.exit:                       ; preds = %vector.body
  %i.bh = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #13, !srcloc !55
  %i.bi = extractvalue { i32, i32, i32, i32 } %i.bh, 2
  store i32 %i.bi, ptr @_ZN7meshoptL5cpuidE, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i14 @llvm.ctpop.i14(i14) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v16i64(<16 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !34}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !12, !11}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !12, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"long", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !10}
!38 = !{ptr @_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i, ptr @_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = !{!"long long", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10, !11, !12}
!55 = !{i64 2148922228, i64 2148922310, i64 2148922391}
end_hunk_1
