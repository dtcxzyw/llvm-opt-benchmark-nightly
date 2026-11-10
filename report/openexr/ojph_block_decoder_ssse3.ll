Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_ssse3?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb:bb.a
  %i.iw = and i32 %i.il, 63
  %i.ix = add nuw nsw i32 %.0823, %i.iw
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !65
  %i.jb = zext i16 %i.ja to i32                   ; 5 uses
  %i.jc = and i32 %i.jb, 7                        ; 2 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ij, %i.jd                   ; 2 uses
  %i.jf = add nuw nsw i32 %i.ik, %i.jc
  %i.jg = trunc i64 %i.je to i32
  %i.jh = lshr i32 %i.jb, 3
  %i.ji = and i32 %i.jh, 15                       ; 3 uses
  %notmask904 = shl nsw i32 -1, %i.ji
  %i.jj = xor i32 %notmask904, -1
  %i.jk = and i32 %i.jg, %i.jj                    ; 2 uses
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = lshr i64 %i.je, %i.jl
  store i64 %i.jm, ptr %i.az, align 8, !tbaa !22
  %i.jn = add nuw nsw i32 %i.jf, %i.ji
  %i.jo = sub i32 %i.hk, %i.jn
  store i32 %i.jo, ptr %i.ba, align 8, !tbaa !23
  %i.jp = lshr i32 %i.jb, 7
  %i.jq = and i32 %i.jp, 7                        ; 2 uses
  %i.jr = lshr i32 %i.jb, 10
  %i.js = and i32 %i.jr, 7
  %i.jt = add nuw nsw i32 %i.js, 1
  %i.ju = shl nuw nsw i32 255, %i.jq
  %i.jv = xor i32 %i.ju, -1
  %i.jw = and i32 %i.jk, %i.jv
  %i.jx = add nuw nsw i32 %i.jt, %i.jw
  %i.jy = trunc nuw i32 %i.jx to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %.0819983, i64 2
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !65
  %i.ka = lshr i32 %i.jb, 13
  %i.kb = add nuw nsw i32 %i.ka, 1
  %i.kc = lshr i32 %i.jk, %i.jq
  %i.kd = add nuw nsw i32 %i.kb, %i.kc
  %i.ke = trunc nuw i32 %i.kd to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %.0819983, i64 6
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !65
  %i.kg = getelementptr inbounds nuw i8, ptr %.0819983, i64 8 ; 2 uses
  %i.kh = icmp ult i32 %i.ia, %6
  br i1 %i.kh, label %bb.y, label %._crit_edge, !llvm.loop !43

._crit_edge1000.loopexit.unr-lcssa:               ; preds = %.lr.ph999.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1000, label %.lr.ph999.split.epil.preheader

.lr.ph999.split.epil.preheader:                   ; preds = %._crit_edge1000.loopexit.unr-lcssa, %.lr.ph999.split.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph999.split.preheader ], [ %indvars.iv.next.3, %._crit_edge1000.loopexit.unr-lcssa ]
  %lcmp.mod1346 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1346)
  br label %.lr.ph999.split.epil

.lr.ph999.split.epil:                             ; preds = %.lr.ph999.split.epil, %.lr.ph999.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph999.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph999.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph999.split.epil.preheader ], [ %epil.iter.next, %.lr.ph999.split.epil ]
  %i.ki = lshr exact i64 %indvars.iv.epil, 1
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = mul i32 %i.at, %i.kj
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  store i16 0, ptr %i.kn, align 2, !tbaa !65
  store i16 0, ptr %i.km, align 16, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1000, label %.lr.ph999.split.epil, !llvm.loop !44

._crit_edge1000:                                  ; preds = %._crit_edge993.us, %._crit_edge1000.loopexit.unr-lcssa, %.lr.ph999.split.epil, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.ko = icmp ugt i32 %2, 13
  %i.kp = sub nuw nsw i32 %4, %i.ao               ; 2 uses
  br i1 %i.ko, label %bb.ai, label %bb.aw

.lr.ph999.split:                                  ; preds = %.lr.ph999.split, %.lr.ph999.split.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph999.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph999.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph999.split.preheader.new ], [ %niter.next.3, %.lr.ph999.split ]
  %i.kq = lshr exact i64 %indvars.iv, 1
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = mul i32 %i.at, %i.kr
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  store i16 0, ptr %i.kv, align 2, !tbaa !65
  store i16 0, ptr %i.ku, align 16, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.kw = lshr exact i64 %indvars.iv.next, 1
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = mul i32 %i.at, %i.kx
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  store i16 0, ptr %i.lb, align 2, !tbaa !65
  store i16 0, ptr %i.la, align 16, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.lc = lshr exact i64 %indvars.iv.next.1, 1
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = mul i32 %i.at, %i.ld
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i16 0, ptr %i.lh, align 2, !tbaa !65
  store i16 0, ptr %i.lg, align 16, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6
  %i.li = lshr exact i64 %indvars.iv.next.2, 1
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = mul i32 %i.at, %i.lj
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  store i16 0, ptr %i.ln, align 2, !tbaa !65
  store i16 0, ptr %i.lm, align 16, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge1000.loopexit.unr-lcssa, label %.lr.ph999.split, !llvm.loop !42

bb.ai:                                            ; preds = %._crit_edge1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4160) %i.b, i8 0, i64 4160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.kp)
  store i32 2, ptr %i.b, align 16, !tbaa !25
  br i1 %.not1131, label %.critedge.preheader, label %.lr.ph1024

.lr.ph1024:                                       ; preds = %bb.ai
  %i.lo = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lq = sub nuw nsw i32 29, %2                  ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.lu = zext i32 %8 to i64
  %.splatinsert1135 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %.splat1136 = shufflevector <4 x i32> %.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  %.splatinsert1137 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %.splat1138 = shufflevector <4 x i32> %.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.aj

.critedge.preheader:                              ; preds = %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, %bb.ai
  br i1 %i.bc, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge.preheader
  %i.lv = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lx = sub nuw nsw i32 29, %2                  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.mb = zext i32 %8 to i64
  %.splatinsert1139 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %.splat1140 = shufflevector <4 x i32> %.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  %.splatinsert1141 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %.splat1142 = shufflevector <4 x i32> %.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader

bb.aj:                                            ; preds = %.lr.ph1024, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit
  %.08441022 = phi ptr [ %i.a, %.lr.ph1024 ], [ %i.ut, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 2 uses
  %.08451021 = phi ptr [ %i.b, %.lr.ph1024 ], [ %i.uu, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 3 uses
  %.08501020 = phi ptr [ %1, %.lr.ph1024 ], [ %i.uv, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ] ; 3 uses
  %.08511019 = phi i32 [ 0, %.lr.ph1024 ], [ %i.us, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ]
  %i.mc = load <4 x i32>, ptr %.08441022, align 1, !tbaa !12 ; 3 uses
  %i.md = lshr <4 x i32> %i.mc, splat (i32 16)    ; 3 uses
  %i.me = icmp sgt <4 x i32> %i.md, %i.lp
  %i.mf = sext <4 x i1> %i.me to <4 x i32>
  %i.mg = bitcast <4 x i32> %i.mf to <16 x i8>
  %i.mh = icmp slt <16 x i8> %i.mg, zeroinitializer
  %i.mi = bitcast <16 x i1> %i.mh to i16
  %i.mj = and i16 %i.mi, 255
  %.not886 = icmp eq i16 %i.mj, 0
  br i1 %.not886, label %bb.ak, label %.thread955

bb.ak:                                            ; preds = %bb.aj
  %i.mk = shufflevector <4 x i32> %i.mc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ml = bitcast <4 x i32> %i.mk to <2 x i64>
  %i.mm = and <2 x i64> %i.ml, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.mn = bitcast <2 x i64> %i.mm to <4 x i32>
  %i.mo = icmp eq <4 x i32> %i.mn, zeroinitializer ; 3 uses
  %i.mp = sext <4 x i1> %i.mo to <4 x i32>        ; 2 uses
  %i.mq = bitcast <4 x i32> %i.mp to <16 x i8>
  %i.mr = icmp sgt <16 x i8> %i.mq, splat (i8 -1)
  %i.ms = bitcast <16 x i1> %i.mr to i16
  %.not.i = icmp eq i16 %i.ms, 0
  br i1 %.not.i, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mt = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mu = bitcast <2 x i64> %i.mm to <8 x i16>
  %i.mv = shl <8 x i16> %i.mu, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.mw = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.mx = bitcast <8 x i16> %i.mv to <4 x i32>
  %i.my = lshr <4 x i32> %i.mx, splat (i32 15)    ; 2 uses
  %i.mz = sub nsw <4 x i32> %i.mt, %i.my
  %i.na = bitcast <4 x i32> %i.mp to <2 x i64>
  %i.nb = xor <2 x i64> %i.na, splat (i64 -1)
  %.inner1265 = select <4 x i1> %i.mo, <4 x i32> zeroinitializer, <4 x i32> %i.mz ; 2 uses
  %16 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1265, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nc = add nsw <4 x i32> %16, %.inner1265      ; 2 uses
  %17 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.nc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nd = add <4 x i32> %i.nc, %17                ; 2 uses
  %i.ne = bitcast <4 x i32> %i.nd to <8 x i16>
  %i.nf = extractelement <8 x i16> %i.ne, i64 6   ; 2 uses
  %i.ng = bitcast <4 x i32> %i.nd to <16 x i8>
  %18 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ng, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.nh = bitcast <16 x i8> %18 to <4 x i32>
  %i.ni = lshr <4 x i32> %i.nh, splat (i32 3)
  %i.nj = bitcast <16 x i8> %18 to <2 x i64>
  %i.nk = and <2 x i64> %i.nj, splat (i64 30064771079) ; 2 uses
  %i.nl = bitcast <4 x i32> %i.ni to <16 x i8>
  %i.nm = shufflevector <16 x i8> %i.nl, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.nn = bitcast <16 x i8> %i.nm to <4 x i32>    ; 2 uses
  %i.no = add <4 x i32> %i.nn, splat (i32 50462976)
  %i.np = bitcast <2 x i64> %i.mw to <16 x i8>    ; 2 uses
  %i.nq = bitcast <4 x i32> %i.no to <16 x i8>
  %i.nr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.np, <16 x i8> %i.nq)
  %i.ns = add <4 x i32> %i.nn, splat (i32 67305985)
  %i.nt = bitcast <4 x i32> %i.ns to <16 x i8>
  %i.nu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.np, <16 x i8> %i.nt)
  %i.nv = bitcast <2 x i64> %i.nk to <4 x i32>
  %i.nw = shl nuw nsw <4 x i32> %i.nv, splat (i32 16)
  %i.nx = bitcast <4 x i32> %i.nw to <2 x i64>
  %i.ny = or disjoint <2 x i64> %i.nk, %i.nx
  %i.nz = bitcast <2 x i64> %i.ny to <16 x i8>
  %i.oa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.nz)
  %i.ob = bitcast <16 x i8> %i.oa to <8 x i16>
  %i.oc = add <8 x i16> %i.ob, splat (i16 257)    ; 2 uses
  %i.od = bitcast <16 x i8> %i.nr to <8 x i16>
  %i.oe = mul <8 x i16> %i.oc, %i.od
  %i.of = lshr <8 x i16> %i.oe, splat (i16 8)
  %i.og = bitcast <16 x i8> %i.nu to <8 x i16>
  %i.oh = mul <8 x i16> %i.oc, %i.og
  %.inner1267 = and <8 x i16> %i.oh, splat (i16 -256)
  %.inner1268 = or disjoint <8 x i16> %.inner1267, %i.of
  %i.oi = bitcast <8 x i16> %.inner1268 to <2 x i64>
  %i.oj = add nuw nsw <4 x i32> %i.mt, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.ok = sub nuw nsw <4 x i32> splat (i32 2), %i.my
  %i.ol = and <4 x i32> %i.oj, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.om = shufflevector <4 x i32> %i.ol, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.on = shl <4 x i32> %i.ok, %i.om              ; 2 uses
  %i.oo = add <4 x i32> %i.on, splat (i32 -1)
  %i.op = bitcast <4 x i32> %i.oo to <2 x i64>
  %i.oq = and <2 x i64> %i.oi, %i.op
  %i.or = bitcast <8 x i16> %i.mv to <4 x i32>
  %i.os = and <4 x i32> %i.or, splat (i32 2048)
  %.not79.i = icmp eq <4 x i32> %i.os, zeroinitializer
  %i.ot = select <4 x i1> %.not79.i, <4 x i32> zeroinitializer, <4 x i32> %i.on
  %i.ou = bitcast <4 x i32> %i.ot to <2 x i64>
  %i.ov = or <2 x i64> %i.oq, %i.ou               ; 2 uses
  %i.ow = bitcast <2 x i64> %i.ov to <4 x i32>
  %i.ox = shl <4 x i32> %i.ow, splat (i32 31)
  %i.oy = or <2 x i64> %i.ov, splat (i64 4294967297) ; 2 uses
  %i.oz = bitcast <2 x i64> %i.oy to <4 x i32>
  %i.pa = add <4 x i32> %i.oz, splat (i32 2)
  %i.pb = shl <4 x i32> %i.pa, %.splat1136
  %i.pc = or <4 x i32> %i.ox, %i.pb
  %.inner1270 = select <4 x i1> %i.mo, <4 x i32> zeroinitializer, <4 x i32> %i.pc ; 2 uses
  %i.pd = and <2 x i64> %i.oy, %i.nb
  %i.pe = bitcast <2 x i64> %i.pd to <16 x i8>
  %i.pf = shufflevector <16 x i8> %i.pe, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.pg = bitcast <16 x i8> %i.pf to <2 x i64>
  %i.ph = or <2 x i64> %i.pg, splat (i64 8589934594) ; 2 uses
  %.not78.i = icmp eq i16 %i.nf, 0
  br i1 %.not78.i, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pi = zext i16 %i.nf to i32                   ; 3 uses
  %i.pj = load i32, ptr %i.lr, align 8, !tbaa !27
  %i.pk = sub i32 %i.pj, %i.pi
  store i32 %i.pk, ptr %i.lr, align 8, !tbaa !27
  %i.pl = lshr i32 %i.pi, 3
  %i.pm = and i32 %i.pl, 24
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.pn ; 2 uses
  %i.pp = and i32 %i.pi, 63                       ; 2 uses
  %i.pq = load <2 x i64>, ptr %i.po, align 8, !tbaa !12 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.ps = load <2 x i64>, ptr %i.pr, align 8, !tbaa !12 ; 3 uses
  %i.pt = zext nneg i32 %i.pp to i64
  %i.pu = insertelement <2 x i64> poison, i64 %i.pt, i64 0
  %i.pv = shufflevector <2 x i64> %i.pu, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pw = lshr <2 x i64> %i.pq, %i.pv
  %i.px = shufflevector <2 x i64> %i.pq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.py = sub nuw nsw i32 64, %i.pp
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = insertelement <2 x i64> poison, i64 %i.pz, i64 0
  %i.qb = shufflevector <2 x i64> %i.qa, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.px, <2 x i64> %i.qb)
  %i.qd = or <2 x i64> %i.qc, %i.pw
  %19 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ps, <2 x i32> <i32 1, i32 2>
  %i.qe = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %19, <2 x i64> %i.qb)
  %i.qf = or <2 x i64> %i.qd, %i.qe
  store <2 x i64> %i.qf, ptr %i.ls, align 8, !tbaa !12
  %i.qg = lshr <2 x i64> %i.ps, %i.pv
  %i.qh = shufflevector <2 x i64> %i.ps, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.qi = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.qh, <2 x i64> %i.qb)
  %i.qj = or <2 x i64> %i.qi, %i.qg
  store <2 x i64> %i.qj, ptr %i.lt, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit

_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit: ; preds = %bb.ak, %bb.al, %bb.am
  %.0946 = phi <2 x i64> [ splat (i64 8589934594), %bb.ak ], [ %i.ph, %bb.al ], [ %i.ph, %bb.am ] ; 2 uses
  %i.qk = phi <4 x i32> [ zeroinitializer, %bb.ak ], [ %.inner1270, %bb.al ], [ %.inner1270, %bb.am ] ; 2 uses
  %i.ql = shufflevector <4 x i32> %i.mc, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qm = bitcast <4 x i32> %i.ql to <2 x i64>
  %i.qn = and <2 x i64> %i.qm, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.qo = bitcast <2 x i64> %i.qn to <4 x i32>
  %i.qp = icmp eq <4 x i32> %i.qo, zeroinitializer ; 3 uses
  %i.qq = sext <4 x i1> %i.qp to <4 x i32>        ; 2 uses
  %i.qr = bitcast <4 x i32> %i.qq to <16 x i8>
  %i.qs = icmp sgt <16 x i8> %i.qr, splat (i8 -1)
  %i.qt = bitcast <16 x i1> %i.qs to i16
  %.not.i914 = icmp eq i16 %i.qt, 0
  br i1 %.not.i914, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit
  %i.qu = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.qv = bitcast <2 x i64> %i.qn to <8 x i16>
  %i.qw = shl <8 x i16> %i.qv, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.qx = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.qy = bitcast <8 x i16> %i.qw to <4 x i32>
  %i.qz = lshr <4 x i32> %i.qy, splat (i32 15)    ; 2 uses
  %i.ra = sub nsw <4 x i32> %i.qu, %i.qz
  %i.rb = bitcast <4 x i32> %i.qq to <2 x i64>
  %i.rc = xor <2 x i64> %i.rb, splat (i64 -1)
  %.inner1274 = select <4 x i1> %i.qp, <4 x i32> zeroinitializer, <4 x i32> %i.ra ; 2 uses
  %20 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1274, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rd = add nsw <4 x i32> %20, %.inner1274      ; 2 uses
  %21 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.rd, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.re = add <4 x i32> %i.rd, %21                ; 2 uses
  %i.rf = bitcast <4 x i32> %i.re to <8 x i16>
  %i.rg = extractelement <8 x i16> %i.rf, i64 6   ; 2 uses
  %i.rh = bitcast <4 x i32> %i.re to <16 x i8>
  %22 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.rh, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ri = bitcast <16 x i8> %22 to <4 x i32>
  %i.rj = lshr <4 x i32> %i.ri, splat (i32 3)
  %i.rk = bitcast <16 x i8> %22 to <2 x i64>
  %i.rl = and <2 x i64> %i.rk, splat (i64 30064771079) ; 2 uses
  %i.rm = bitcast <4 x i32> %i.rj to <16 x i8>
  %i.rn = shufflevector <16 x i8> %i.rm, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.ro = bitcast <16 x i8> %i.rn to <4 x i32>    ; 2 uses
  %i.rp = add <4 x i32> %i.ro, splat (i32 50462976)
  %i.rq = bitcast <2 x i64> %i.qx to <16 x i8>    ; 2 uses
  %i.rr = bitcast <4 x i32> %i.rp to <16 x i8>
  %i.rs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.rq, <16 x i8> %i.rr)
  %i.rt = add <4 x i32> %i.ro, splat (i32 67305985)
  %i.ru = bitcast <4 x i32> %i.rt to <16 x i8>
  %i.rv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.rq, <16 x i8> %i.ru)
  %i.rw = bitcast <2 x i64> %i.rl to <4 x i32>
  %i.rx = shl nuw nsw <4 x i32> %i.rw, splat (i32 16)
  %i.ry = bitcast <4 x i32> %i.rx to <2 x i64>
  %i.rz = or disjoint <2 x i64> %i.rl, %i.ry
  %i.sa = bitcast <2 x i64> %i.rz to <16 x i8>
  %i.sb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.sa)
  %i.sc = bitcast <16 x i8> %i.sb to <8 x i16>
  %i.sd = add <8 x i16> %i.sc, splat (i16 257)    ; 2 uses
  %i.se = bitcast <16 x i8> %i.rs to <8 x i16>
  %i.sf = mul <8 x i16> %i.sd, %i.se
  %i.sg = lshr <8 x i16> %i.sf, splat (i16 8)
  %i.sh = bitcast <16 x i8> %i.rv to <8 x i16>
  %i.si = mul <8 x i16> %i.sd, %i.sh
  %.inner1276 = and <8 x i16> %i.si, splat (i16 -256)
  %.inner1277 = or disjoint <8 x i16> %.inner1276, %i.sg
  %i.sj = bitcast <8 x i16> %.inner1277 to <2 x i64>
  %i.sk = add nuw nsw <4 x i32> %i.qu, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.sl = sub nuw nsw <4 x i32> splat (i32 2), %i.qz
  %i.sm = and <4 x i32> %i.sk, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <4 x i32> %i.sm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.so = shl <4 x i32> %i.sl, %i.sn              ; 2 uses
  %i.sp = add <4 x i32> %i.so, splat (i32 -1)
  %i.sq = bitcast <4 x i32> %i.sp to <2 x i64>
  %i.sr = and <2 x i64> %i.sj, %i.sq
  %i.ss = bitcast <8 x i16> %i.qw to <4 x i32>
  %i.st = and <4 x i32> %i.ss, splat (i32 2048)
  %.not79.i915 = icmp eq <4 x i32> %i.st, zeroinitializer
  %i.su = select <4 x i1> %.not79.i915, <4 x i32> zeroinitializer, <4 x i32> %i.so
  %i.sv = bitcast <4 x i32> %i.su to <2 x i64>
  %i.sw = or <2 x i64> %i.sr, %i.sv               ; 2 uses
  %i.sx = bitcast <2 x i64> %i.sw to <4 x i32>
  %i.sy = shl <4 x i32> %i.sx, splat (i32 31)
  %i.sz = or <2 x i64> %i.sw, splat (i64 4294967297) ; 2 uses
  %i.ta = bitcast <2 x i64> %i.sz to <4 x i32>
  %i.tb = add <4 x i32> %i.ta, splat (i32 2)
  %i.tc = shl <4 x i32> %i.tb, %.splat1138
  %i.td = or <4 x i32> %i.sy, %i.tc
  %.inner1279 = select <4 x i1> %i.qp, <4 x i32> zeroinitializer, <4 x i32> %i.td ; 2 uses
  %i.te = and <2 x i64> %i.sz, %i.rc
  %i.tf = bitcast <2 x i64> %i.te to <16 x i8>
  %i.tg = shufflevector <16 x i8> %i.tf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16>
  %i.th = bitcast <16 x i8> %i.tg to <2 x i64>
  %i.ti = or <2 x i64> %.0946, %i.th              ; 2 uses
  %.not78.i916 = icmp eq i16 %i.rg, 0
  br i1 %.not78.i916, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tj = zext i16 %i.rg to i32                   ; 3 uses
  %i.tk = load i32, ptr %i.lr, align 8, !tbaa !27
  %i.tl = sub i32 %i.tk, %i.tj
  store i32 %i.tl, ptr %i.lr, align 8, !tbaa !27
  %i.tm = lshr i32 %i.tj, 3
  %i.tn = and i32 %i.tm, 24
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.to ; 2 uses
  %i.tq = and i32 %i.tj, 63                       ; 2 uses
  %i.tr = load <2 x i64>, ptr %i.tp, align 8, !tbaa !12 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tt = load <2 x i64>, ptr %i.ts, align 8, !tbaa !12 ; 3 uses
  %i.tu = zext nneg i32 %i.tq to i64
  %i.tv = insertelement <2 x i64> poison, i64 %i.tu, i64 0
  %i.tw = shufflevector <2 x i64> %i.tv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tx = lshr <2 x i64> %i.tr, %i.tw
  %i.ty = shufflevector <2 x i64> %i.tr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.tz = sub nuw nsw i32 64, %i.tq
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = insertelement <2 x i64> poison, i64 %i.ua, i64 0
  %i.uc = shufflevector <2 x i64> %i.ub, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ud = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ty, <2 x i64> %i.uc)
  %i.ue = or <2 x i64> %i.ud, %i.tx
  %23 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.tt, <2 x i32> <i32 1, i32 2>
  %i.uf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %23, <2 x i64> %i.uc)
  %i.ug = or <2 x i64> %i.ue, %i.uf
  store <2 x i64> %i.ug, ptr %i.ls, align 8, !tbaa !12
  %i.uh = lshr <2 x i64> %i.tt, %i.tw
  %i.ui = shufflevector <2 x i64> %i.tt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.uj = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ui, <2 x i64> %i.uc)
  %i.uk = or <2 x i64> %i.uj, %i.uh
  store <2 x i64> %i.uk, ptr %i.lt, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit

_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit: ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit, %bb.an, %bb.ao
  %.1947 = phi <2 x i64> [ %.0946, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ], [ %i.ti, %bb.an ], [ %i.ti, %bb.ao ]
  %i.ul = phi <4 x i32> [ zeroinitializer, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit ], [ %.inner1279, %bb.an ], [ %.inner1279, %bb.ao ] ; 2 uses
  %i.um = load <2 x i64>, ptr %.08451021, align 1, !tbaa !12
  %i.un = and <2 x i64> %i.um, <i64 4294967295, i64 0>
  %i.uo = or <2 x i64> %i.un, %.1947
  store <2 x i64> %i.uo, ptr %.08451021, align 1, !tbaa !12
  %i.up = shufflevector <4 x i32> %i.qk, <4 x i32> %i.ul, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.uq = shufflevector <4 x i32> %i.qk, <4 x i32> %i.ul, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.up, ptr %.08501020, align 16, !tbaa !12
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.08501020, i64 %i.lu
  store <4 x i32> %i.uq, ptr %i.ur, align 16, !tbaa !12
  %i.us = add i32 %.08511019, 4                   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.08441022, i64 8
  %i.uu = getelementptr inbounds nuw i8, ptr %.08451021, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %.08501020, i64 16
  %.not887 = icmp ult i32 %i.us, %6
  br i1 %.not887, label %bb.aj, label %.critedge.preheader, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge908
  %.08541034 = phi i32 [ 2, %.preheader.lr.ph ], [ %i.afq, %.critedge908 ] ; 3 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  store i32 2, ptr %i.b, align 16, !tbaa !25
  br i1 %.not1131, label %.critedge908, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.ap
  %i.uw = mul i32 %.08541034, %8
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ux
  %i.uz = lshr exact i32 %.08541034, 1
  %i.va = mul i32 %i.uz, %i.at
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vb
  br label %.lr.ph1033

bb.aq:                                            ; preds = %.preheader, %bb.aq
  %.08521026 = phi i32 [ 0, %.preheader ], [ %i.wa, %bb.aq ]
  %.08531025 = phi ptr [ %i.b, %.preheader ], [ %i.wb, %bb.aq ] ; 3 uses
  %i.vd = load <2 x i64>, ptr %.08531025, align 1, !tbaa !12 ; 2 uses
  %i.ve = bitcast <2 x i64> %i.vd to <8 x i16>
  %i.vf = lshr <8 x i16> %i.ve, splat (i16 4)
  %i.vg = bitcast <2 x i64> %i.vd to <16 x i8>
  %i.vh = and <16 x i8> %i.vg, splat (i8 15)
  %i.vi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 31, i8 7, i8 6, i8 6, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <16 x i8> %i.vh)
  %i.vj = bitcast <8 x i16> %i.vf to <16 x i8>
  %i.vk = and <16 x i8> %i.vj, splat (i8 15)
  %i.vl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 31, i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.vk)
  %i.vm = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.vl, <16 x i8> %i.vi) ; 2 uses
  %i.vn = bitcast <16 x i8> %i.vm to <8 x i16>
  %i.vo = lshr <8 x i16> %i.vn, splat (i16 8)
  %i.vp = or <16 x i8> %i.vm, <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>
  %i.vq = bitcast <8 x i16> %i.vo to <16 x i8>
  %i.vr = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.vp, <16 x i8> %i.vq) ; 2 uses
  %i.vs = bitcast <16 x i8> %i.vr to <4 x i32>
  %i.vt = lshr <4 x i32> %i.vs, splat (i32 16)
  %i.vu = or <16 x i8> %i.vr, <i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0>
  %i.vv = bitcast <4 x i32> %i.vt to <16 x i8>
  %i.vw = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.vu, <16 x i8> %i.vv)
  %i.vx = bitcast <16 x i8> %i.vw to <8 x i16>
  %i.vy = sub nsw <8 x i16> <i16 31, i16 0, i16 31, i16 0, i16 31, i16 0, i16 31, i16 0>, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %.08531025, i64 2080
  store <8 x i16> %i.vy, ptr %i.vz, align 1, !tbaa !12
  %i.wa = add i32 %.08521026, 8                   ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.08531025, i64 16
  %.not888 = icmp ugt i32 %i.wa, %6
  br i1 %.not888, label %bb.ap, label %bb.aq, !llvm.loop !46

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927
  %.08461031 = phi i32 [ %i.afm, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ 0, %.lr.ph1033.preheader ]
  %.08471030 = phi ptr [ %i.afp, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.uy, %.lr.ph1033.preheader ] ; 3 uses
  %.08481029 = phi ptr [ %i.afn, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.vc, %.lr.ph1033.preheader ] ; 2 uses
  %.08491028 = phi ptr [ %i.afo, %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927 ], [ %i.b, %.lr.ph1033.preheader ] ; 4 uses
  %i.wc = load <2 x i64>, ptr %.08481029, align 1, !tbaa !12 ; 3 uses
  %i.wd = bitcast <2 x i64> %i.wc to <4 x i32>
  %i.we = bitcast <2 x i64> %i.wc to <4 x i32>
  %i.wf = and <4 x i32> %i.we, splat (i32 240)
  %i.wg = add <4 x i32> %i.wd, splat (i32 240)
  %i.wh = and <4 x i32> %i.wg, %i.wf
  %i.wi = icmp ne <4 x i32> %i.wh, zeroinitializer
  %i.wj = getelementptr inbounds nuw i8, ptr %.08491028, i64 2080
  %i.wk = load <2 x i64>, ptr %i.wj, align 1, !tbaa !12 ; 2 uses
  %i.wl = bitcast <2 x i64> %i.wk to <16 x i8>
  %i.wm = shufflevector <16 x i8> %i.wl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.wn = bitcast <16 x i8> %i.wm to <8 x i16>
  %i.wo = bitcast <2 x i64> %i.wk to <8 x i16>
  %i.wp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wn, <8 x i16> %i.wo)
  %i.wq = sext <4 x i1> %i.wi to <4 x i32>
  %i.wr = bitcast <4 x i32> %i.wq to <8 x i16>
  %i.ws = and <8 x i16> %i.wp, %i.wr
  %i.wt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ws, <8 x i16> <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>)
  %i.wu = bitcast <2 x i64> %i.wc to <4 x i32>    ; 3 uses
  %i.wv = lshr <4 x i32> %i.wu, splat (i32 16)
  %i.ww = bitcast <8 x i16> %i.wt to <4 x i32>
  %i.wx = add nuw <4 x i32> %i.wv, %i.ww          ; 3 uses
  %i.wy = icmp sgt <4 x i32> %i.wx, %i.lw
  %i.wz = sext <4 x i1> %i.wy to <4 x i32>
  %i.xa = bitcast <4 x i32> %i.wz to <16 x i8>
  %i.xb = icmp slt <16 x i8> %i.xa, zeroinitializer
  %i.xc = bitcast <16 x i1> %i.xb to i16
  %i.xd = and i16 %i.xc, 255
  %.not889 = icmp eq i16 %i.xd, 0
  br i1 %.not889, label %bb.ar, label %.thread955

bb.ar:                                            ; preds = %.lr.ph1033
  %i.xe = shufflevector <4 x i32> %i.wu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xf = bitcast <4 x i32> %i.xe to <2 x i64>
  %i.xg = and <2 x i64> %i.xf, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.xh = bitcast <2 x i64> %i.xg to <4 x i32>
  %i.xi = icmp eq <4 x i32> %i.xh, zeroinitializer ; 3 uses
  %i.xj = sext <4 x i1> %i.xi to <4 x i32>        ; 2 uses
  %i.xk = bitcast <4 x i32> %i.xj to <16 x i8>
  %i.xl = icmp sgt <16 x i8> %i.xk, splat (i8 -1)
  %i.xm = bitcast <16 x i1> %i.xl to i16
  %.not.i918 = icmp eq i16 %i.xm, 0
  br i1 %.not.i918, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.xn = shufflevector <4 x i32> %i.wx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xo = bitcast <2 x i64> %i.xg to <8 x i16>
  %i.xp = shl <8 x i16> %i.xo, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.xq = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.xr = bitcast <8 x i16> %i.xp to <4 x i32>
  %i.xs = lshr <4 x i32> %i.xr, splat (i32 15)    ; 2 uses
  %i.xt = sub <4 x i32> %i.xn, %i.xs
  %i.xu = bitcast <4 x i32> %i.xj to <2 x i64>
  %i.xv = xor <2 x i64> %i.xu, splat (i64 -1)
  %.inner1285 = select <4 x i1> %i.xi, <4 x i32> zeroinitializer, <4 x i32> %i.xt ; 2 uses
  %24 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1285, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.xw = add <4 x i32> %24, %.inner1285          ; 2 uses
  %25 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.xw, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.xx = add <4 x i32> %i.xw, %25                ; 2 uses
  %i.xy = bitcast <4 x i32> %i.xx to <8 x i16>
  %i.xz = extractelement <8 x i16> %i.xy, i64 6   ; 2 uses
  %i.ya = bitcast <4 x i32> %i.xx to <16 x i8>
  %26 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ya, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.yb = bitcast <16 x i8> %26 to <4 x i32>
  %i.yc = lshr <4 x i32> %i.yb, splat (i32 3)
  %i.yd = bitcast <16 x i8> %26 to <2 x i64>
  %i.ye = and <2 x i64> %i.yd, splat (i64 30064771079) ; 2 uses
  %i.yf = bitcast <4 x i32> %i.yc to <16 x i8>
  %i.yg = shufflevector <16 x i8> %i.yf, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.yh = bitcast <16 x i8> %i.yg to <4 x i32>    ; 2 uses
  %i.yi = add <4 x i32> %i.yh, splat (i32 50462976)
  %i.yj = bitcast <2 x i64> %i.xq to <16 x i8>    ; 2 uses
  %i.yk = bitcast <4 x i32> %i.yi to <16 x i8>
  %i.yl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.yj, <16 x i8> %i.yk)
  %i.ym = add <4 x i32> %i.yh, splat (i32 67305985)
  %i.yn = bitcast <4 x i32> %i.ym to <16 x i8>
  %i.yo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.yj, <16 x i8> %i.yn)
  %i.yp = bitcast <2 x i64> %i.ye to <4 x i32>
  %i.yq = shl nuw nsw <4 x i32> %i.yp, splat (i32 16)
  %i.yr = bitcast <4 x i32> %i.yq to <2 x i64>
  %i.ys = or disjoint <2 x i64> %i.ye, %i.yr
  %i.yt = bitcast <2 x i64> %i.ys to <16 x i8>
  %i.yu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.yt)
  %i.yv = bitcast <16 x i8> %i.yu to <8 x i16>
  %i.yw = add <8 x i16> %i.yv, splat (i16 257)    ; 2 uses
  %i.yx = bitcast <16 x i8> %i.yl to <8 x i16>
  %i.yy = mul <8 x i16> %i.yw, %i.yx
  %i.yz = lshr <8 x i16> %i.yy, splat (i16 8)
  %i.za = bitcast <16 x i8> %i.yo to <8 x i16>
  %i.zb = mul <8 x i16> %i.yw, %i.za
  %.inner1287 = and <8 x i16> %i.zb, splat (i16 -256)
  %.inner1288 = or disjoint <8 x i16> %.inner1287, %i.yz
  %i.zc = bitcast <8 x i16> %.inner1288 to <2 x i64>
  %i.zd = add <4 x i32> %i.xn, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.ze = sub nuw nsw <4 x i32> splat (i32 2), %i.xs
  %i.zf = and <4 x i32> %i.zd, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.zg = shufflevector <4 x i32> %i.zf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zh = shl <4 x i32> %i.ze, %i.zg              ; 2 uses
  %i.zi = add <4 x i32> %i.zh, splat (i32 -1)
  %i.zj = bitcast <4 x i32> %i.zi to <2 x i64>
  %i.zk = and <2 x i64> %i.zc, %i.zj
  %i.zl = bitcast <8 x i16> %i.xp to <4 x i32>
  %i.zm = and <4 x i32> %i.zl, splat (i32 2048)
  %.not79.i919 = icmp eq <4 x i32> %i.zm, zeroinitializer
  %i.zn = select <4 x i1> %.not79.i919, <4 x i32> zeroinitializer, <4 x i32> %i.zh
  %i.zo = bitcast <4 x i32> %i.zn to <2 x i64>
  %i.zp = or <2 x i64> %i.zk, %i.zo               ; 2 uses
  %i.zq = bitcast <2 x i64> %i.zp to <4 x i32>
  %i.zr = shl <4 x i32> %i.zq, splat (i32 31)
  %i.zs = or <2 x i64> %i.zp, splat (i64 4294967297) ; 2 uses
  %i.zt = bitcast <2 x i64> %i.zs to <4 x i32>
  %i.zu = add <4 x i32> %i.zt, splat (i32 2)
  %i.zv = shl <4 x i32> %i.zu, %.splat1140
  %i.zw = or <4 x i32> %i.zr, %i.zv
  %.inner1290 = select <4 x i1> %i.xi, <4 x i32> zeroinitializer, <4 x i32> %i.zw ; 2 uses
  %i.zx = and <2 x i64> %i.zs, %i.xv
  %i.zy = bitcast <2 x i64> %i.zx to <16 x i8>
  %i.zz = shufflevector <16 x i8> %i.zy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.aaa = bitcast <16 x i8> %i.zz to <2 x i64>
  %i.aab = or <2 x i64> %i.aaa, splat (i64 8589934594) ; 2 uses
  %.not78.i920 = icmp eq i16 %i.xz, 0
  br i1 %.not78.i920, label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.aac = zext i16 %i.xz to i32                  ; 3 uses
  %i.aad = load i32, ptr %i.ly, align 8, !tbaa !27
  %i.aae = sub i32 %i.aad, %i.aac
  store i32 %i.aae, ptr %i.ly, align 8, !tbaa !27
  %i.aaf = lshr i32 %i.aac, 3
  %i.aag = and i32 %i.aaf, 24
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.aah ; 2 uses
  %i.aaj = and i32 %i.aac, 63                     ; 2 uses
  %i.aak = load <2 x i64>, ptr %i.aai, align 8, !tbaa !12 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aam = load <2 x i64>, ptr %i.aal, align 8, !tbaa !12 ; 3 uses
  %i.aan = zext nneg i32 %i.aaj to i64
  %i.aao = insertelement <2 x i64> poison, i64 %i.aan, i64 0
  %i.aap = shufflevector <2 x i64> %i.aao, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aaq = lshr <2 x i64> %i.aak, %i.aap
  %i.aar = shufflevector <2 x i64> %i.aak, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aas = sub nuw nsw i32 64, %i.aaj
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = insertelement <2 x i64> poison, i64 %i.aat, i64 0
  %i.aav = shufflevector <2 x i64> %i.aau, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aaw = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aar, <2 x i64> %i.aav)
  %i.aax = or <2 x i64> %i.aaw, %i.aaq
  %27 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aam, <2 x i32> <i32 1, i32 2>
  %i.aay = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %27, <2 x i64> %i.aav)
  %i.aaz = or <2 x i64> %i.aax, %i.aay
  store <2 x i64> %i.aaz, ptr %i.lz, align 8, !tbaa !12
  %i.aba = lshr <2 x i64> %i.aam, %i.aap
  %i.abb = shufflevector <2 x i64> %i.aam, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.abc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.abb, <2 x i64> %i.aav)
  %i.abd = or <2 x i64> %i.abc, %i.aba
  store <2 x i64> %i.abd, ptr %i.ma, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922

_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922: ; preds = %bb.ar, %bb.as, %bb.at
  %.0945 = phi <2 x i64> [ splat (i64 8589934594), %bb.ar ], [ %i.aab, %bb.as ], [ %i.aab, %bb.at ] ; 2 uses
  %i.abe = phi <4 x i32> [ zeroinitializer, %bb.ar ], [ %.inner1290, %bb.as ], [ %.inner1290, %bb.at ] ; 2 uses
  %i.abf = shufflevector <4 x i32> %i.wu, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abg = bitcast <4 x i32> %i.abf to <2 x i64>
  %i.abh = and <2 x i64> %i.abg, <i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.abi = bitcast <2 x i64> %i.abh to <4 x i32>
  %i.abj = icmp eq <4 x i32> %i.abi, zeroinitializer ; 3 uses
  %i.abk = sext <4 x i1> %i.abj to <4 x i32>      ; 2 uses
  %i.abl = bitcast <4 x i32> %i.abk to <16 x i8>
  %i.abm = icmp sgt <16 x i8> %i.abl, splat (i8 -1)
  %i.abn = bitcast <16 x i1> %i.abm to i16
  %.not.i923 = icmp eq i16 %i.abn, 0
  br i1 %.not.i923, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, label %bb.au

bb.au:                                            ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922
  %i.abo = shufflevector <4 x i32> %i.wx, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.abp = bitcast <2 x i64> %i.abh to <8 x i16>
  %i.abq = shl <8 x i16> %i.abp, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.abr = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %12)
  %i.abs = bitcast <8 x i16> %i.abq to <4 x i32>
  %i.abt = lshr <4 x i32> %i.abs, splat (i32 15)  ; 2 uses
  %i.abu = sub <4 x i32> %i.abo, %i.abt
  %i.abv = bitcast <4 x i32> %i.abk to <2 x i64>
  %i.abw = xor <2 x i64> %i.abv, splat (i64 -1)
  %.inner1294 = select <4 x i1> %i.abj, <4 x i32> zeroinitializer, <4 x i32> %i.abu ; 2 uses
  %28 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %.inner1294, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.abx = add <4 x i32> %28, %.inner1294         ; 2 uses
  %29 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.abx, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aby = add <4 x i32> %i.abx, %29              ; 2 uses
  %i.abz = bitcast <4 x i32> %i.aby to <8 x i16>
  %i.aca = extractelement <8 x i16> %i.abz, i64 6 ; 2 uses
  %i.acb = bitcast <4 x i32> %i.aby to <16 x i8>
  %30 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.acb, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.acc = bitcast <16 x i8> %30 to <4 x i32>
  %i.acd = lshr <4 x i32> %i.acc, splat (i32 3)
  %i.ace = bitcast <16 x i8> %30 to <2 x i64>
  %i.acf = and <2 x i64> %i.ace, splat (i64 30064771079) ; 2 uses
  %i.acg = bitcast <4 x i32> %i.acd to <16 x i8>
  %i.ach = shufflevector <16 x i8> %i.acg, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.aci = bitcast <16 x i8> %i.ach to <4 x i32>  ; 2 uses
  %i.acj = add <4 x i32> %i.aci, splat (i32 50462976)
  %i.ack = bitcast <2 x i64> %i.abr to <16 x i8>  ; 2 uses
  %i.acl = bitcast <4 x i32> %i.acj to <16 x i8>
  %i.acm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ack, <16 x i8> %i.acl)
  %i.acn = add <4 x i32> %i.aci, splat (i32 67305985)
  %i.aco = bitcast <4 x i32> %i.acn to <16 x i8>
  %i.acp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ack, <16 x i8> %i.aco)
  %i.acq = bitcast <2 x i64> %i.acf to <4 x i32>
  %i.acr = shl nuw nsw <4 x i32> %i.acq, splat (i32 16)
  %i.acs = bitcast <4 x i32> %i.acr to <2 x i64>
  %i.act = or disjoint <2 x i64> %i.acf, %i.acs
  %i.acu = bitcast <2 x i64> %i.act to <16 x i8>
  %i.acv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.acu)
  %i.acw = bitcast <16 x i8> %i.acv to <8 x i16>
  %i.acx = add <8 x i16> %i.acw, splat (i16 257)  ; 2 uses
  %i.acy = bitcast <16 x i8> %i.acm to <8 x i16>
  %i.acz = mul <8 x i16> %i.acx, %i.acy
  %i.ada = lshr <8 x i16> %i.acz, splat (i16 8)
  %i.adb = bitcast <16 x i8> %i.acp to <8 x i16>
  %i.adc = mul <8 x i16> %i.acx, %i.adb
  %.inner1296 = and <8 x i16> %i.adc, splat (i16 -256)
  %.inner1297 = or disjoint <8 x i16> %.inner1296, %i.ada
  %i.add = bitcast <8 x i16> %.inner1297 to <2 x i64>
  %i.ade = add <4 x i32> %i.abo, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.adf = sub nuw nsw <4 x i32> splat (i32 2), %i.abt
  %i.adg = and <4 x i32> %i.ade, <i32 31, i32 poison, i32 poison, i32 poison>
  %i.adh = shufflevector <4 x i32> %i.adg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adi = shl <4 x i32> %i.adf, %i.adh           ; 2 uses
  %i.adj = add <4 x i32> %i.adi, splat (i32 -1)
  %i.adk = bitcast <4 x i32> %i.adj to <2 x i64>
  %i.adl = and <2 x i64> %i.add, %i.adk
  %i.adm = bitcast <8 x i16> %i.abq to <4 x i32>
  %i.adn = and <4 x i32> %i.adm, splat (i32 2048)
  %.not79.i924 = icmp eq <4 x i32> %i.adn, zeroinitializer
  %i.ado = select <4 x i1> %.not79.i924, <4 x i32> zeroinitializer, <4 x i32> %i.adi
  %i.adp = bitcast <4 x i32> %i.ado to <2 x i64>
  %i.adq = or <2 x i64> %i.adl, %i.adp            ; 2 uses
  %i.adr = bitcast <2 x i64> %i.adq to <4 x i32>
  %i.ads = shl <4 x i32> %i.adr, splat (i32 31)
  %i.adt = or <2 x i64> %i.adq, splat (i64 4294967297) ; 2 uses
  %i.adu = bitcast <2 x i64> %i.adt to <4 x i32>
  %i.adv = add <4 x i32> %i.adu, splat (i32 2)
  %i.adw = shl <4 x i32> %i.adv, %.splat1142
  %i.adx = or <4 x i32> %i.ads, %i.adw
  %.inner1299 = select <4 x i1> %i.abj, <4 x i32> zeroinitializer, <4 x i32> %i.adx ; 2 uses
  %i.ady = and <2 x i64> %i.adt, %i.abw
  %i.adz = bitcast <2 x i64> %i.ady to <16 x i8>
  %i.aea = shufflevector <16 x i8> %i.adz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16>
  %i.aeb = bitcast <16 x i8> %i.aea to <2 x i64>
  %i.aec = or <2 x i64> %.0945, %i.aeb            ; 2 uses
  %.not78.i925 = icmp eq i16 %i.aca, 0
  br i1 %.not78.i925, label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aed = zext i16 %i.aca to i32                 ; 3 uses
  %i.aee = load i32, ptr %i.ly, align 8, !tbaa !27
  %i.aef = sub i32 %i.aee, %i.aed
  store i32 %i.aef, ptr %i.ly, align 8, !tbaa !27
  %i.aeg = lshr i32 %i.aed, 3
  %i.aeh = and i32 %i.aeg, 24
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.aei ; 2 uses
  %i.aek = and i32 %i.aed, 63                     ; 2 uses
  %i.ael = load <2 x i64>, ptr %i.aej, align 8, !tbaa !12 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aen = load <2 x i64>, ptr %i.aem, align 8, !tbaa !12 ; 3 uses
  %i.aeo = zext nneg i32 %i.aek to i64
  %i.aep = insertelement <2 x i64> poison, i64 %i.aeo, i64 0
  %i.aeq = shufflevector <2 x i64> %i.aep, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aer = lshr <2 x i64> %i.ael, %i.aeq
  %i.aes = shufflevector <2 x i64> %i.ael, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aet = sub nuw nsw i32 64, %i.aek
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = insertelement <2 x i64> poison, i64 %i.aeu, i64 0
  %i.aew = shufflevector <2 x i64> %i.aev, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aex = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aes, <2 x i64> %i.aew)
  %i.aey = or <2 x i64> %i.aex, %i.aer
  %31 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aen, <2 x i32> <i32 1, i32 2>
  %i.aez = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %31, <2 x i64> %i.aew)
  %i.afa = or <2 x i64> %i.aey, %i.aez
  store <2 x i64> %i.afa, ptr %i.lz, align 8, !tbaa !12
  %i.afb = lshr <2 x i64> %i.aen, %i.aeq
  %i.afc = shufflevector <2 x i64> %i.aen, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.afd = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.afc, <2 x i64> %i.aew)
  %i.afe = or <2 x i64> %i.afd, %i.afb
  store <2 x i64> %i.afe, ptr %i.ma, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927

_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927: ; preds = %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922, %bb.au, %bb.av
  %.1 = phi <2 x i64> [ %.0945, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922 ], [ %i.aec, %bb.au ], [ %i.aec, %bb.av ]
  %i.aff = phi <4 x i32> [ zeroinitializer, %_ZN4ojph5localL17decode_one_quad32ILi0EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit922 ], [ %.inner1299, %bb.au ], [ %.inner1299, %bb.av ] ; 2 uses
  %i.afg = load <2 x i64>, ptr %.08491028, align 1, !tbaa !12
  %i.afh = and <2 x i64> %i.afg, <i64 4294967295, i64 0>
  %i.afi = or <2 x i64> %i.afh, %.1
  store <2 x i64> %i.afi, ptr %.08491028, align 1, !tbaa !12
  %i.afj = shufflevector <4 x i32> %i.abe, <4 x i32> %i.aff, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.afk = shufflevector <4 x i32> %i.abe, <4 x i32> %i.aff, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.afj, ptr %.08471030, align 16, !tbaa !12
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.08471030, i64 %i.mb
  store <4 x i32> %i.afk, ptr %i.afl, align 16, !tbaa !12
  %i.afm = add nuw i32 %.08461031, 4              ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.08481029, i64 8
  %i.afo = getelementptr inbounds nuw i8, ptr %.08491028, i64 8
  %i.afp = getelementptr inbounds nuw i8, ptr %.08471030, i64 16
  %.not890 = icmp ult i32 %i.afm, %6
  br i1 %.not890, label %.lr.ph1033, label %.critedge908, !llvm.loop !47

.critedge908:                                     ; preds = %_ZN4ojph5localL17decode_one_quad32ILi1EEEDv2_xS2_S2_PNS0_17frwd_struct_ssse3EjRS2_.exit927, %bb.ap
  %i.afq = add i32 %.08541034, 2                  ; 2 uses
  %i.afr = icmp ult i32 %i.afq, %7
  br i1 %i.afr, label %.preheader, label %.critedge._crit_edge, !llvm.loop !48

.thread955:                                       ; preds = %bb.aj, %.lr.ph1033
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.dl

.critedge._crit_edge:                             ; preds = %.critedge908, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.bg

bb.aw:                                            ; preds = %._crit_edge1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2080) %i.c, i8 0, i64 2080, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %i.kp)
  store i16 2, ptr %i.c, align 16, !tbaa !65
  br i1 %.not1131, label %.critedge910.preheader, label %.lr.ph1007

.lr.ph1007:                                       ; preds = %bb.aw
  %i.afs = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.aft = shufflevector <4 x i32> %i.afs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.afu = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.afx = zext i32 %8 to i64
  %i.afy = trunc nuw nsw i32 %2 to i16
  %i.afz = sub nuw nsw i16 13, %i.afy
  %.splatinsert = insertelement <8 x i16> poison, i16 %i.afz, i64 0
  %.splat = shufflevector <8 x i16> %.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.ax

.critedge910.preheader:                           ; preds = %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, %bb.aw
  br i1 %i.bc, label %.preheader975.lr.ph, label %.critedge910._crit_edge

.preheader975.lr.ph:                              ; preds = %.critedge910.preheader
  %i.aga = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.agb = shufflevector <4 x i32> %i.aga, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agc = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.agf = zext i32 %8 to i64
  %i.agg = trunc nuw nsw i32 %2 to i16
  %i.agh = sub nuw nsw i16 13, %i.agg
  %.splatinsert1133 = insertelement <8 x i16> poison, i16 %i.agh, i64 0
  %.splat1134 = shufflevector <8 x i16> %.splatinsert1133, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %.preheader975

bb.ax:                                            ; preds = %.lr.ph1007, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit
  %.08401005 = phi i32 [ 0, %.lr.ph1007 ], [ %i.ako, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ]
  %.08411004 = phi ptr [ %1, %.lr.ph1007 ], [ %i.akr, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 3 uses
  %.08421003 = phi ptr [ %i.c, %.lr.ph1007 ], [ %i.akq, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 3 uses
  %.08431002 = phi ptr [ %i.a, %.lr.ph1007 ], [ %i.akp, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit ] ; 2 uses
  %i.agi = load <2 x i64>, ptr %.08431002, align 1, !tbaa !12 ; 2 uses
  %i.agj = bitcast <2 x i64> %i.agi to <4 x i32>
  %i.agk = lshr <4 x i32> %i.agj, splat (i32 16)  ; 2 uses
  %i.agl = icmp sgt <4 x i32> %i.agk, %i.aft
  %i.agm = sext <4 x i1> %i.agl to <4 x i32>
  %i.agn = bitcast <4 x i32> %i.agm to <16 x i8>
  %i.ago = icmp slt <16 x i8> %i.agn, zeroinitializer
  %i.agp = bitcast <16 x i1> %i.ago to i16
  %i.agq = and i16 %i.agp, 255
  %.not = icmp eq i16 %i.agq, 0
  br i1 %.not, label %bb.ay, label %.thread961

bb.ay:                                            ; preds = %bb.ax
  %i.agr = bitcast <2 x i64> %i.agi to <8 x i16>
  %i.ags = shufflevector <8 x i16> %i.agr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.agt = and <8 x i16> %i.ags, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.agu = icmp eq <8 x i16> %i.agt, zeroinitializer ; 4 uses
  %i.agv = sext <8 x i1> %i.agu to <8 x i16>
  %i.agw = bitcast <8 x i16> %i.agv to <16 x i8>
  %i.agx = icmp sgt <16 x i8> %i.agw, splat (i8 -1)
  %i.agy = bitcast <16 x i1> %i.agx to i16
  %.not.i928 = icmp eq i16 %i.agy, 0
  br i1 %.not.i928, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.agz = bitcast <4 x i32> %i.agk to <16 x i8>
  %i.aha = shufflevector <16 x i8> %i.agz, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.ahb = shl <8 x i16> %i.agt, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ahc = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.ahd = lshr <8 x i16> %i.ahb, splat (i16 15)  ; 2 uses
  %i.ahe = bitcast <16 x i8> %i.aha to <8 x i16>
  %i.ahf = sub <8 x i16> %i.ahe, %i.ahd
  %.inner1301 = select <8 x i1> %i.agu, <8 x i16> zeroinitializer, <8 x i16> %i.ahf ; 2 uses
  %32 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1301, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ahg = add <8 x i16> %32, %.inner1301         ; 2 uses
  %33 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.ahg, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ahh = add <8 x i16> %i.ahg, %33              ; 2 uses
  %34 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ahh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ahi = add <8 x i16> %i.ahh, %34              ; 2 uses
  %i.ahj = extractelement <8 x i16> %i.ahi, i64 7 ; 2 uses
  %i.ahk = bitcast <8 x i16> %i.ahi to <16 x i8>
  %35 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ahk, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.ahl = bitcast <16 x i8> %35 to <8 x i16>
  %i.ahm = lshr <8 x i16> %i.ahl, splat (i16 3)
  %i.ahn = bitcast <8 x i16> %i.ahm to <16 x i8>
  %i.aho = shufflevector <16 x i8> %i.ahn, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.ahp = bitcast <16 x i8> %i.aho to <8 x i16>  ; 2 uses
  %i.ahq = add <8 x i16> %i.ahp, splat (i16 256)
  %i.ahr = bitcast <2 x i64> %i.ahc to <16 x i8>  ; 2 uses
  %i.ahs = bitcast <8 x i16> %i.ahq to <16 x i8>
  %i.aht = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ahr, <16 x i8> %i.ahs)
  %i.ahu = add <8 x i16> %i.ahp, splat (i16 513)
  %i.ahv = bitcast <8 x i16> %i.ahu to <16 x i8>
  %i.ahw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ahr, <16 x i8> %i.ahv)
  %i.ahx = and <16 x i8> %35, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.ahy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.ahx)
  %i.ahz = bitcast <16 x i8> %i.ahy to <8 x i16>
  %i.aia = add <8 x i16> %i.ahz, splat (i16 257)  ; 2 uses
  %i.aib = bitcast <16 x i8> %i.aht to <8 x i16>
  %i.aic = mul <8 x i16> %i.aia, %i.aib
  %i.aid = lshr <8 x i16> %i.aic, splat (i16 8)
  %i.aie = bitcast <16 x i8> %i.ahw to <8 x i16>
  %i.aif = mul <8 x i16> %i.aia, %i.aie
  %.inner1302 = and <8 x i16> %i.aif, splat (i16 -256)
  %.inner1303 = or disjoint <8 x i16> %.inner1302, %i.aid
  %i.aig = bitcast <16 x i8> %i.aha to <4 x i32>
  %i.aih = add <4 x i32> %i.aig, splat (i32 -65537) ; 2 uses
  %i.aii = bitcast <4 x i32> %i.aih to <16 x i8>
  %i.aij = shufflevector <16 x i8> %i.aii, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aik = sub nuw nsw <8 x i16> splat (i16 2), %i.ahd ; 2 uses
  %i.ail = and <8 x i16> %i.aik, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.aim = bitcast <4 x i32> %i.aih to <8 x i16>
  %i.ain = and <8 x i16> %i.aim, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.aio = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ail, <8 x i16> %i.ain)
  %i.aip = and <8 x i16> %i.aik, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.aiq = bitcast <16 x i8> %i.aij to <8 x i16>
  %i.air = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aip, <8 x i16> %i.aiq)
  %i.ais = or <8 x i16> %i.air, %i.aio            ; 2 uses
  %i.ait = add <8 x i16> %i.ais, splat (i16 -1)
  %.inner1305 = and <8 x i16> %.inner1303, %i.ait
  %i.aiu = and <8 x i16> %i.ahb, splat (i16 2048)
  %.not90.i = icmp eq <8 x i16> %i.aiu, zeroinitializer
  %i.aiv = select <8 x i1> %.not90.i, <8 x i16> zeroinitializer, <8 x i16> %i.ais
  %.inner1306 = or <8 x i16> %.inner1305, %i.aiv  ; 2 uses
  %i.aiw = shl <8 x i16> %.inner1306, splat (i16 15)
  %.inner1307 = or <8 x i16> %.inner1306, splat (i16 1) ; 2 uses
  %i.aix = add <8 x i16> %.inner1307, splat (i16 2)
  %i.aiy = shl <8 x i16> %i.aix, %.splat
  %i.aiz = or <8 x i16> %i.aiw, %i.aiy
  %.inner1308 = select <8 x i1> %i.agu, <8 x i16> zeroinitializer, <8 x i16> %i.aiz
  %i.aja = bitcast <8 x i16> %.inner1308 to <2 x i64> ; 2 uses
  %.inner1309 = select <8 x i1> %i.agu, <8 x i16> zeroinitializer, <8 x i16> %.inner1307
  %i.ajb = bitcast <8 x i16> %.inner1309 to <16 x i8> ; 2 uses
  %i.ajc = shufflevector <16 x i8> %i.ajb, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1310 = or <16 x i8> %i.ajc, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.ajd = shufflevector <16 x i8> %i.ajb, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1311 = or <16 x i8> %.inner1310, %i.ajd
  %i.aje = bitcast <16 x i8> %.inner1311 to <2 x i64> ; 2 uses
  %.not89.i = icmp eq i16 %i.ahj, 0
  br i1 %.not89.i, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ajf = zext i16 %i.ahj to i32                 ; 3 uses
  %i.ajg = load i32, ptr %i.afu, align 8, !tbaa !27
  %i.ajh = sub i32 %i.ajg, %i.ajf
  store i32 %i.ajh, ptr %i.afu, align 8, !tbaa !27
  %i.aji = lshr i32 %i.ajf, 3
  %i.ajj = and i32 %i.aji, 24
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.ajk ; 2 uses
  %i.ajm = and i32 %i.ajf, 63                     ; 2 uses
  %i.ajn = load <2 x i64>, ptr %i.ajl, align 8, !tbaa !12 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajp = load <2 x i64>, ptr %i.ajo, align 8, !tbaa !12 ; 3 uses
  %i.ajq = zext nneg i32 %i.ajm to i64
  %i.ajr = insertelement <2 x i64> poison, i64 %i.ajq, i64 0
  %i.ajs = shufflevector <2 x i64> %i.ajr, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajt = lshr <2 x i64> %i.ajn, %i.ajs
  %i.aju = shufflevector <2 x i64> %i.ajn, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ajv = sub nuw nsw i32 64, %i.ajm
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = insertelement <2 x i64> poison, i64 %i.ajw, i64 0
  %i.ajy = shufflevector <2 x i64> %i.ajx, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ajz = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aju, <2 x i64> %i.ajy)
  %i.aka = or <2 x i64> %i.ajz, %i.ajt
  %36 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ajp, <2 x i32> <i32 1, i32 2>
  %i.akb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %36, <2 x i64> %i.ajy)
  %i.akc = or <2 x i64> %i.aka, %i.akb
  store <2 x i64> %i.akc, ptr %i.afv, align 8, !tbaa !12
  %i.akd = lshr <2 x i64> %i.ajp, %i.ajs
  %i.ake = shufflevector <2 x i64> %i.ajp, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ake, <2 x i64> %i.ajy)
  %i.akg = or <2 x i64> %i.akf, %i.akd
  store <2 x i64> %i.akg, ptr %i.afw, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0944 = phi <2 x i64> [ splat (i64 562958543486978), %bb.ay ], [ %i.aje, %bb.az ], [ %i.aje, %bb.ba ]
  %.0.i929 = phi <2 x i64> [ zeroinitializer, %bb.ay ], [ %i.aja, %bb.az ], [ %i.aja, %bb.ba ]
  %i.akh = load <2 x i64>, ptr %.08421003, align 1, !tbaa !12
  %i.aki = and <2 x i64> %i.akh, <i64 65535, i64 0>
  %i.akj = or <2 x i64> %i.aki, %.0944
  store <2 x i64> %i.akj, ptr %.08421003, align 1, !tbaa !12
  %i.akk = bitcast <2 x i64> %.0.i929 to <16 x i8> ; 2 uses
  %i.akl = shufflevector <16 x i8> %i.akk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.akl, ptr %.08411004, align 16, !tbaa !12
  %i.akm = shufflevector <16 x i8> %i.akk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %.08411004, i64 %i.afx
  store <16 x i8> %i.akm, ptr %i.akn, align 16, !tbaa !12
  %i.ako = add i32 %.08401005, 4                  ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.08431002, i64 8
  %i.akq = getelementptr inbounds nuw i8, ptr %.08421003, i64 4
  %i.akr = getelementptr inbounds nuw i8, ptr %.08411004, i64 16
  %.not882 = icmp ult i32 %i.ako, %6
  br i1 %.not882, label %bb.ax, label %.critedge910.preheader, !llvm.loop !49

.preheader975:                                    ; preds = %.preheader975.lr.ph, %.critedge912
  %.08391017 = phi i32 [ 2, %.preheader975.lr.ph ], [ %i.aqz, %.critedge912 ] ; 3 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  store i16 2, ptr %i.c, align 16, !tbaa !65
  br i1 %.not1131, label %.critedge912, label %.lr.ph1016.preheader

.lr.ph1016.preheader:                             ; preds = %bb.bb
  %i.aks = mul i32 %.08391017, %8
  %i.akt = zext i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.akt
  %i.akv = lshr exact i32 %.08391017, 1
  %i.akw = mul i32 %i.akv, %i.at
  %i.akx = zext i32 %i.akw to i64
  %i.aky = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.akx
  br label %.lr.ph1016

bb.bc:                                            ; preds = %.preheader975, %bb.bc
  %.08371009 = phi i32 [ 0, %.preheader975 ], [ %i.alr, %bb.bc ]
  %.08381008 = phi ptr [ %i.c, %.preheader975 ], [ %i.als, %bb.bc ] ; 3 uses
  %i.akz = load <2 x i64>, ptr %.08381008, align 1, !tbaa !12 ; 2 uses
  %i.ala = bitcast <2 x i64> %i.akz to <8 x i16>
  %i.alb = lshr <8 x i16> %i.ala, splat (i16 4)
  %i.alc = bitcast <2 x i64> %i.akz to <16 x i8>
  %i.ald = and <16 x i8> %i.alc, splat (i8 15)
  %i.ale = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 7, i8 6, i8 6, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <16 x i8> %i.ald)
  %i.alf = bitcast <8 x i16> %i.alb to <16 x i8>
  %i.alg = and <16 x i8> %i.alf, splat (i8 15)
  %i.alh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.alg)
  %i.ali = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.alh, <16 x i8> %i.ale) ; 2 uses
  %i.alj = bitcast <16 x i8> %i.ali to <8 x i16>
  %i.alk = lshr <8 x i16> %i.alj, splat (i16 8)
  %i.all = or <16 x i8> %i.ali, <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>
  %i.alm = bitcast <8 x i16> %i.alk to <16 x i8>
  %i.aln = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.all, <16 x i8> %i.alm)
  %i.alo = bitcast <16 x i8> %i.aln to <8 x i16>
  %i.alp = sub nsw <8 x i16> splat (i16 15), %i.alo
  %i.alq = getelementptr inbounds nuw i8, ptr %.08381008, i64 1040
  store <8 x i16> %i.alp, ptr %i.alq, align 1, !tbaa !12
  %i.alr = add i32 %.08371009, 16                 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.08381008, i64 16
  %.not883 = icmp ugt i32 %i.alr, %6
  br i1 %.not883, label %bb.bb, label %bb.bc, !llvm.loop !50

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934
  %.08311014 = phi i32 [ %i.aqv, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ 0, %.lr.ph1016.preheader ]
  %.08321013 = phi ptr [ %i.aqy, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.aku, %.lr.ph1016.preheader ] ; 3 uses
  %.08331012 = phi ptr [ %i.aqw, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.aky, %.lr.ph1016.preheader ] ; 2 uses
  %.08341011 = phi ptr [ %i.aqx, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.c, %.lr.ph1016.preheader ] ; 4 uses
  %i.alt = load <2 x i64>, ptr %.08331012, align 1, !tbaa !12 ; 4 uses
  %i.alu = bitcast <2 x i64> %i.alt to <4 x i32>
  %i.alv = bitcast <2 x i64> %i.alt to <4 x i32>
  %i.alw = and <4 x i32> %i.alv, splat (i32 240)
  %i.alx = add <4 x i32> %i.alu, splat (i32 240)
  %i.aly = and <4 x i32> %i.alx, %i.alw
  %i.alz = icmp ne <4 x i32> %i.aly, zeroinitializer
  %i.ama = getelementptr inbounds nuw i8, ptr %.08341011, i64 1040
  %i.amb = load <2 x i64>, ptr %i.ama, align 1, !tbaa !12 ; 2 uses
  %i.amc = bitcast <2 x i64> %i.amb to <8 x i16>
  %i.amd = shufflevector <8 x i16> %i.amc, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ame = bitcast <2 x i64> %i.amb to <8 x i16>
  %i.amf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.amd, <8 x i16> %i.ame)
  %i.amg = bitcast <8 x i16> %i.amf to <16 x i8>
  %i.amh = shufflevector <16 x i8> %i.amg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16>
  %i.ami = bitcast <16 x i8> %i.amh to <2 x i64>
  %i.amj = sext <4 x i1> %i.alz to <4 x i32>
  %i.amk = bitcast <4 x i32> %i.amj to <2 x i64>
  %i.aml = and <2 x i64> %i.ami, %i.amk
  %i.amm = bitcast <2 x i64> %i.aml to <8 x i16>
  %i.amn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.amm, <8 x i16> <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>)
  %i.amo = bitcast <2 x i64> %i.alt to <4 x i32>
  %i.amp = lshr <4 x i32> %i.amo, splat (i32 16)
  %i.amq = bitcast <8 x i16> %i.amn to <4 x i32>
  %i.amr = add nuw nsw <4 x i32> %i.amp, %i.amq   ; 2 uses
  %i.ams = icmp sgt <4 x i32> %i.amr, %i.agb
  %i.amt = sext <4 x i1> %i.ams to <4 x i32>
  %i.amu = bitcast <4 x i32> %i.amt to <16 x i8>
  %i.amv = icmp slt <16 x i8> %i.amu, zeroinitializer
  %i.amw = bitcast <16 x i1> %i.amv to i16
  %i.amx = and i16 %i.amw, 255
  %.not884 = icmp eq i16 %i.amx, 0
  br i1 %.not884, label %bb.bd, label %.thread961

bb.bd:                                            ; preds = %.lr.ph1016
  %i.amy = bitcast <2 x i64> %i.alt to <8 x i16>
  %i.amz = shufflevector <8 x i16> %i.amy, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.ana = and <8 x i16> %i.amz, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.anb = icmp eq <8 x i16> %i.ana, zeroinitializer ; 4 uses
  %i.anc = sext <8 x i1> %i.anb to <8 x i16>
  %i.and = bitcast <8 x i16> %i.anc to <16 x i8>
  %i.ane = icmp sgt <16 x i8> %i.and, splat (i8 -1)
  %i.anf = bitcast <16 x i1> %i.ane to i16
  %.not.i930 = icmp eq i16 %i.anf, 0
  br i1 %.not.i930, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ang = bitcast <4 x i32> %i.amr to <16 x i8>
  %i.anh = shufflevector <16 x i8> %i.ang, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.ani = shl <8 x i16> %i.ana, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.anj = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.ank = lshr <8 x i16> %i.ani, splat (i16 15)  ; 2 uses
  %i.anl = bitcast <16 x i8> %i.anh to <8 x i16>
  %i.anm = sub <8 x i16> %i.anl, %i.ank
  %.inner1316 = select <8 x i1> %i.anb, <8 x i16> zeroinitializer, <8 x i16> %i.anm ; 2 uses
  %37 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1316, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ann = add <8 x i16> %37, %.inner1316         ; 2 uses
  %38 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.ann, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ano = add <8 x i16> %i.ann, %38              ; 2 uses
  %39 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ano, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.anp = add <8 x i16> %i.ano, %39              ; 2 uses
  %i.anq = extractelement <8 x i16> %i.anp, i64 7 ; 2 uses
  %i.anr = bitcast <8 x i16> %i.anp to <16 x i8>
  %40 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.anr, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.ans = bitcast <16 x i8> %40 to <8 x i16>
  %i.ant = lshr <8 x i16> %i.ans, splat (i16 3)
  %i.anu = bitcast <8 x i16> %i.ant to <16 x i8>
  %i.anv = shufflevector <16 x i8> %i.anu, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.anw = bitcast <16 x i8> %i.anv to <8 x i16>  ; 2 uses
  %i.anx = add <8 x i16> %i.anw, splat (i16 256)
  %i.any = bitcast <2 x i64> %i.anj to <16 x i8>  ; 2 uses
  %i.anz = bitcast <8 x i16> %i.anx to <16 x i8>
  %i.aoa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.any, <16 x i8> %i.anz)
  %i.aob = add <8 x i16> %i.anw, splat (i16 513)
  %i.aoc = bitcast <8 x i16> %i.aob to <16 x i8>
  %i.aod = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.any, <16 x i8> %i.aoc)
  %i.aoe = and <16 x i8> %40, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.aof = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.aoe)
  %i.aog = bitcast <16 x i8> %i.aof to <8 x i16>
  %i.aoh = add <8 x i16> %i.aog, splat (i16 257)  ; 2 uses
  %i.aoi = bitcast <16 x i8> %i.aoa to <8 x i16>
  %i.aoj = mul <8 x i16> %i.aoh, %i.aoi
  %i.aok = lshr <8 x i16> %i.aoj, splat (i16 8)
  %i.aol = bitcast <16 x i8> %i.aod to <8 x i16>
  %i.aom = mul <8 x i16> %i.aoh, %i.aol
  %.inner1317 = and <8 x i16> %i.aom, splat (i16 -256)
  %.inner1318 = or disjoint <8 x i16> %.inner1317, %i.aok
  %i.aon = bitcast <16 x i8> %i.anh to <4 x i32>
  %i.aoo = add <4 x i32> %i.aon, splat (i32 -65537) ; 2 uses
  %i.aop = bitcast <4 x i32> %i.aoo to <16 x i8>
  %i.aoq = shufflevector <16 x i8> %i.aop, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aor = sub nuw nsw <8 x i16> splat (i16 2), %i.ank ; 2 uses
  %i.aos = and <8 x i16> %i.aor, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.aot = bitcast <4 x i32> %i.aoo to <8 x i16>
  %i.aou = and <8 x i16> %i.aot, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.aov = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aos, <8 x i16> %i.aou)
  %i.aow = and <8 x i16> %i.aor, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.aox = bitcast <16 x i8> %i.aoq to <8 x i16>
  %i.aoy = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aow, <8 x i16> %i.aox)
  %i.aoz = or <8 x i16> %i.aoy, %i.aov            ; 2 uses
  %i.apa = add <8 x i16> %i.aoz, splat (i16 -1)
  %.inner1320 = and <8 x i16> %.inner1318, %i.apa
  %i.apb = and <8 x i16> %i.ani, splat (i16 2048)
  %.not90.i931 = icmp eq <8 x i16> %i.apb, zeroinitializer
  %i.apc = select <8 x i1> %.not90.i931, <8 x i16> zeroinitializer, <8 x i16> %i.aoz
  %.inner1321 = or <8 x i16> %.inner1320, %i.apc  ; 2 uses
  %i.apd = shl <8 x i16> %.inner1321, splat (i16 15)
  %.inner1322 = or <8 x i16> %.inner1321, splat (i16 1) ; 2 uses
  %i.ape = add <8 x i16> %.inner1322, splat (i16 2)
  %i.apf = shl <8 x i16> %i.ape, %.splat1134
  %i.apg = or <8 x i16> %i.apd, %i.apf
  %.inner1323 = select <8 x i1> %i.anb, <8 x i16> zeroinitializer, <8 x i16> %i.apg
  %i.aph = bitcast <8 x i16> %.inner1323 to <2 x i64> ; 2 uses
  %.inner1324 = select <8 x i1> %i.anb, <8 x i16> zeroinitializer, <8 x i16> %.inner1322
  %i.api = bitcast <8 x i16> %.inner1324 to <16 x i8> ; 2 uses
  %i.apj = shufflevector <16 x i8> %i.api, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1325 = or <16 x i8> %i.apj, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.apk = shufflevector <16 x i8> %i.api, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1326 = or <16 x i8> %.inner1325, %i.apk
  %i.apl = bitcast <16 x i8> %.inner1326 to <2 x i64> ; 2 uses
  %.not89.i932 = icmp eq i16 %i.anq, 0
  br i1 %.not89.i932, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.apm = zext i16 %i.anq to i32                 ; 3 uses
  %i.apn = load i32, ptr %i.agc, align 8, !tbaa !27
  %i.apo = sub i32 %i.apn, %i.apm
  store i32 %i.apo, ptr %i.agc, align 8, !tbaa !27
  %i.app = lshr i32 %i.apm, 3
  %i.apq = and i32 %i.app, 24
  %i.apr = zext nneg i32 %i.apq to i64
  %i.aps = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.apr ; 2 uses
  %i.apt = and i32 %i.apm, 63                     ; 2 uses
  %i.apu = load <2 x i64>, ptr %i.aps, align 8, !tbaa !12 ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 16
  %i.apw = load <2 x i64>, ptr %i.apv, align 8, !tbaa !12 ; 3 uses
  %i.apx = zext nneg i32 %i.apt to i64
  %i.apy = insertelement <2 x i64> poison, i64 %i.apx, i64 0
  %i.apz = shufflevector <2 x i64> %i.apy, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqa = lshr <2 x i64> %i.apu, %i.apz
  %i.aqb = shufflevector <2 x i64> %i.apu, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aqc = sub nuw nsw i32 64, %i.apt
  %i.aqd = zext nneg i32 %i.aqc to i64
  %i.aqe = insertelement <2 x i64> poison, i64 %i.aqd, i64 0
  %i.aqf = shufflevector <2 x i64> %i.aqe, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aqg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aqb, <2 x i64> %i.aqf)
  %i.aqh = or <2 x i64> %i.aqg, %i.aqa
  %41 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.apw, <2 x i32> <i32 1, i32 2>
  %i.aqi = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %41, <2 x i64> %i.aqf)
  %i.aqj = or <2 x i64> %i.aqh, %i.aqi
  store <2 x i64> %i.aqj, ptr %i.agd, align 8, !tbaa !12
  %i.aqk = lshr <2 x i64> %i.apw, %i.apz
  %i.aql = shufflevector <2 x i64> %i.apw, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aqm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aql, <2 x i64> %i.aqf)
  %i.aqn = or <2 x i64> %i.aqm, %i.aqk
  store <2 x i64> %i.aqn, ptr %i.age, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934: ; preds = %bb.bd, %bb.be, %bb.bf
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bd ], [ %i.apl, %bb.be ], [ %i.apl, %bb.bf ]
  %.0.i933 = phi <2 x i64> [ zeroinitializer, %bb.bd ], [ %i.aph, %bb.be ], [ %i.aph, %bb.bf ]
  %i.aqo = load <2 x i64>, ptr %.08341011, align 1, !tbaa !12
  %i.aqp = and <2 x i64> %i.aqo, <i64 65535, i64 0>
  %i.aqq = or <2 x i64> %i.aqp, %.0
  store <2 x i64> %i.aqq, ptr %.08341011, align 1, !tbaa !12
  %i.aqr = bitcast <2 x i64> %.0.i933 to <16 x i8> ; 2 uses
  %i.aqs = shufflevector <16 x i8> %i.aqr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.aqs, ptr %.08321013, align 16, !tbaa !12
  %i.aqt = shufflevector <16 x i8> %i.aqr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.08321013, i64 %i.agf
  store <16 x i8> %i.aqt, ptr %i.aqu, align 16, !tbaa !12
  %i.aqv = add nuw i32 %.08311014, 4              ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.08331012, i64 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %.08341011, i64 4
  %i.aqy = getelementptr inbounds nuw i8, ptr %.08321013, i64 16
  %.not885 = icmp ult i32 %i.aqv, %6
  br i1 %.not885, label %.lr.ph1016, label %.critedge912, !llvm.loop !51

.critedge912:                                     ; preds = %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, %bb.bb
  %i.aqz = add i32 %.08391017, 2                  ; 2 uses
  %i.ara = icmp ult i32 %i.aqz, %7
  br i1 %i.ara, label %.preheader975, label %.critedge910._crit_edge, !llvm.loop !52

.thread961:                                       ; preds = %bb.ax, %.lr.ph1016
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.dl

.critedge910._crit_edge:                          ; preds = %.critedge912, %.critedge910.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge910._crit_edge, %.critedge._crit_edge
  %i.arb = icmp ugt i32 %.1742, 1
  br i1 %i.arb, label %bb.bh, label %bb.dl

bb.bh:                                            ; preds = %bb.bg
  %i.arc = add i32 %6, 3
  %i.ard = lshr i32 %i.arc, 2
  %i.are = add nuw nsw i32 %i.ard, 9
  %i.arf = and i32 %i.are, 2147483640             ; 11 uses
  %.not1143 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1143, label %._crit_edge1045, label %.lr.ph1044

.lr.ph1044:                                       ; preds = %bb.bh
  %i.arg = zext i32 %i.at to i64
  %i.arh = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1131, label %.lr.ph1044.split.preheader, label %.lr.ph1039.us

.lr.ph1044.split.preheader:                       ; preds = %.lr.ph1044
  %i.ari = add nsw i64 %i.arh, -1
  %i.arj = lshr i64 %i.ari, 2
  %i.ark = add nuw nsw i64 %i.arj, 1              ; 2 uses
  %xtraiter1347 = and i64 %i.ark, 3               ; 3 uses
  %i.arl = icmp ult i32 %7, 13
  br i1 %i.arl, label %.lr.ph1044.split.epil.preheader, label %.lr.ph1044.split.preheader.new

.lr.ph1044.split.preheader.new:                   ; preds = %.lr.ph1044.split.preheader
  %unroll_iter1352 = and i64 %i.ark, 9223372036854775804
  br label %.lr.ph1044.split

.lr.ph1039.us:                                    ; preds = %.lr.ph1044, %._crit_edge1040.us
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %._crit_edge1040.us ], [ 0, %.lr.ph1044 ] ; 3 uses
  %i.arm = lshr exact i64 %indvars.iv1174, 1
  %i.arn = trunc nuw nsw i64 %i.arm to i32
  %i.aro = mul i32 %i.at, %i.arn
  %i.arp = zext i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.arp
  %i.arr = lshr exact i64 %indvars.iv1174, 2
  %i.ars = trunc nuw nsw i64 %i.arr to i32
  %i.art = mul i32 %i.arf, %i.ars
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aru
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1039.us, %bb.bi
  %.08261037.us = phi i32 [ 0, %.lr.ph1039.us ], [ %i.asr, %bb.bi ]
  %.08271036.us = phi ptr [ %i.arv, %.lr.ph1039.us ], [ %i.ast, %bb.bi ] ; 2 uses
  %.08281035.us = phi ptr [ %i.arq, %.lr.ph1039.us ], [ %i.ass, %bb.bi ] ; 3 uses
  %i.arw = load <4 x i32>, ptr %.08281035.us, align 1, !tbaa !12 ; 2 uses
  %i.arx = lshr <4 x i32> %i.arw, splat (i32 4)
  %i.ary = bitcast <4 x i32> %i.arx to <2 x i64>
  %i.arz = and <2 x i64> %i.ary, splat (i64 12884901891)
  %i.asa = lshr <4 x i32> %i.arw, splat (i32 2)
  %i.asb = bitcast <4 x i32> %i.asa to <2 x i64>
  %i.asc = and <2 x i64> %i.asb, splat (i64 206158430256)
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %.08281035.us, i64 %i.arg
  %i.ase = load <2 x i64>, ptr %i.asd, align 1, !tbaa !12 ; 2 uses
  %i.asf = bitcast <2 x i64> %i.ase to <4 x i32>
  %i.asg = lshr <4 x i32> %i.asf, splat (i32 2)
  %i.ash = bitcast <4 x i32> %i.asg to <2 x i64>
  %i.asi = and <2 x i64> %i.ash, splat (i64 51539607564)
  %i.asj = and <2 x i64> %i.ase, splat (i64 824633721024)
  %i.ask = or disjoint <2 x i64> %i.asc, %i.asj
  %i.asl = or disjoint <2 x i64> %i.ask, %i.arz
  %i.asm = or disjoint <2 x i64> %i.asl, %i.asi
  %i.asn = bitcast <2 x i64> %i.asm to <16 x i8>
  %i.aso = shufflevector <16 x i8> %i.asn, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asp = bitcast <16 x i8> %i.aso to <8 x i16>
  %i.asq = shufflevector <8 x i16> %i.asp, <8 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %i.asq, ptr %.08271036.us, align 2, !tbaa !65
  %i.asr = add nuw i32 %.08261037.us, 8           ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.08281035.us, i64 16
  %i.ast = getelementptr inbounds nuw i8, ptr %.08271036.us, i64 4 ; 2 uses
  %i.asu = icmp ult i32 %i.asr, %6
  br i1 %i.asu, label %bb.bi, label %._crit_edge1040.us, !llvm.loop !53

._crit_edge1040.us:                               ; preds = %bb.bi
  store i16 0, ptr %i.ast, align 2, !tbaa !65
  %indvars.iv.next1175 = add nuw nsw i64 %indvars.iv1174, 4 ; 3 uses
  %i.asv = icmp samesign ult i64 %indvars.iv.next1175, %i.arh
  br i1 %i.asv, label %.lr.ph1039.us, label %._crit_edge1045.loopexit1151, !llvm.loop !54

.lr.ph1044.split:                                 ; preds = %.lr.ph1044.split, %.lr.ph1044.split.preheader.new
  %indvars.iv1177 = phi i64 [ 0, %.lr.ph1044.split.preheader.new ], [ %indvars.iv.next1178.3, %.lr.ph1044.split ] ; 5 uses
  %niter1353 = phi i64 [ 0, %.lr.ph1044.split.preheader.new ], [ %niter1353.next.3, %.lr.ph1044.split ]
  %i.asw = lshr exact i64 %indvars.iv1177, 2
  %i.asx = trunc nuw nsw i64 %i.asw to i32
  %i.asy = mul i32 %i.arf, %i.asx
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.asz
  store i16 0, ptr %i.ata, align 16, !tbaa !65
  %indvars.iv.next1178 = lshr exact i64 %indvars.iv1177, 2
  %i.atb = trunc i64 %indvars.iv.next1178 to i32
  %i.atc = or disjoint i32 %i.atb, 1
  %i.atd = mul i32 %i.arf, %i.atc
  %i.ate = zext i32 %i.atd to i64
  %i.atf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ate
  store i16 0, ptr %i.atf, align 16, !tbaa !65
  %indvars.iv.next1178.1 = lshr exact i64 %indvars.iv1177, 2
  %i.atg = trunc i64 %indvars.iv.next1178.1 to i32
  %i.ath = or disjoint i32 %i.atg, 2
  %i.ati = mul i32 %i.arf, %i.ath
  %i.atj = zext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.atj
  store i16 0, ptr %i.atk, align 16, !tbaa !65
  %indvars.iv.next1178.2 = lshr exact i64 %indvars.iv1177, 2
  %i.atl = trunc i64 %indvars.iv.next1178.2 to i32
  %i.atm = or disjoint i32 %i.atl, 3
  %i.atn = mul i32 %i.arf, %i.atm
  %i.ato = zext i32 %i.atn to i64
  %i.atp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ato
  store i16 0, ptr %i.atp, align 16, !tbaa !65
  %indvars.iv.next1178.3 = add nuw nsw i64 %indvars.iv1177, 16 ; 3 uses
  %niter1353.next.3 = add nuw nsw i64 %niter1353, 4 ; 2 uses
  %niter1353.ncmp.3.not = icmp eq i64 %niter1353.next.3, %unroll_iter1352
  br i1 %niter1353.ncmp.3.not, label %._crit_edge1045.thread.unr-lcssa, label %.lr.ph1044.split, !llvm.loop !54

._crit_edge1045.thread.unr-lcssa:                 ; preds = %.lr.ph1044.split
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1349.not, label %._crit_edge1045.thread, label %.lr.ph1044.split.epil.preheader

.lr.ph1044.split.epil.preheader:                  ; preds = %._crit_edge1045.thread.unr-lcssa, %.lr.ph1044.split.preheader
  %indvars.iv1177.epil.init = phi i64 [ 0, %.lr.ph1044.split.preheader ], [ %indvars.iv.next1178.3, %._crit_edge1045.thread.unr-lcssa ]
  %lcmp.mod1351 = icmp ne i64 %xtraiter1347, 0
  tail call void @llvm.assume(i1 %lcmp.mod1351)
  br label %.lr.ph1044.split.epil

.lr.ph1044.split.epil:                            ; preds = %.lr.ph1044.split.epil, %.lr.ph1044.split.epil.preheader
  %indvars.iv1177.epil = phi i64 [ %indvars.iv.next1178.epil, %.lr.ph1044.split.epil ], [ %indvars.iv1177.epil.init, %.lr.ph1044.split.epil.preheader ] ; 2 uses
  %epil.iter1348 = phi i64 [ %epil.iter1348.next, %.lr.ph1044.split.epil ], [ 0, %.lr.ph1044.split.epil.preheader ]
  %i.atq = lshr exact i64 %indvars.iv1177.epil, 2
  %i.atr = trunc nuw nsw i64 %i.atq to i32
  %i.ats = mul i32 %i.arf, %i.atr
  %i.att = zext i32 %i.ats to i64
  %i.atu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.att
  store i16 0, ptr %i.atu, align 16, !tbaa !65
  %indvars.iv.next1178.epil = add nuw nsw i64 %indvars.iv1177.epil, 4 ; 2 uses
  %epil.iter1348.next = add i64 %epil.iter1348, 1 ; 2 uses
  %epil.iter1348.cmp.not = icmp eq i64 %epil.iter1348.next, %xtraiter1347
  br i1 %epil.iter1348.cmp.not, label %._crit_edge1045.thread, label %.lr.ph1044.split.epil, !llvm.loop !55

._crit_edge1045.thread:                           ; preds = %.lr.ph1044.split.epil, %._crit_edge1045.thread.unr-lcssa
  %indvars.iv.next1178.lcssa = phi i64 [ %indvars.iv.next1178.3, %._crit_edge1045.thread.unr-lcssa ], [ %indvars.iv.next1178.epil, %.lr.ph1044.split.epil ]
  %i.atv = trunc nuw i64 %indvars.iv.next1178.lcssa to i32
  %i.atw = lshr exact i32 %i.atv, 2
  %i.atx = mul i32 %i.atw, %i.arf
  %i.aty = zext i32 %i.atx to i64
  %i.atz = getelementptr [2 x i8], ptr %i.a, i64 %i.aty
  br label %._crit_edge1051

._crit_edge1045.loopexit1151:                     ; preds = %._crit_edge1040.us
  %i.aua = trunc nuw i64 %indvars.iv.next1175 to i32
  %i.aub = lshr exact i32 %i.aua, 2
  %i.auc = mul i32 %i.aub, %i.arf
  %i.aud = zext i32 %i.auc to i64
  br label %._crit_edge1045
end_hunk_0
begin_hunk_1_@_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb:bb.a
  %i.auj = add nuw nsw i64 %i.aui, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aue, i8 0, i64 %i.auj, i1 false), !tbaa !12
  %i.auk = shl nuw nsw i64 %.0829.lcssa, 1
  %i.aul = getelementptr i8, ptr %i.a, i64 %i.auk
  %i.aum = getelementptr i8, ptr %i.aul, i64 %i.aui
  %scevgep = getelementptr i8, ptr %i.aum, i64 16
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1045.thread, %.lr.ph1050.preheader, %._crit_edge1045
  %.0818.lcssa = phi ptr [ %i.aue, %._crit_edge1045 ], [ %scevgep, %.lr.ph1050.preheader ], [ %i.atz, %._crit_edge1045.thread ]
  store i16 0, ptr %.0818.lcssa, align 2, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.d, i8 0, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.aun = zext nneg i32 %4 to i64
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 %i.aun
  call fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr noundef %14, ptr noundef nonnull %i.auo, i32 noundef %5)
  br i1 %.not1143, label %._crit_edge1079, label %.lr.ph1078

.lr.ph1078:                                       ; preds = %._crit_edge1051
  %.promoted1073 = load ptr, ptr %14, align 8
  %i.aup = zext nneg i32 %i.arf to i64
  %i.auq = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 7 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.auu = sub nsw i32 28, %2
  %i.auv = shl nuw nsw i32 3, %i.auu
  %i.auw = insertelement <4 x i32> poison, i32 %i.auv, i64 0
  %i.aux = shufflevector <4 x i32> %i.auw, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.auy = zext i32 %8 to i64                     ; 3 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ava = zext i32 %7 to i64                     ; 2 uses
  br label %bb.bj

._crit_edge1079:                                  ; preds = %._crit_edge1071, %._crit_edge1051
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not891 = icmp eq i32 %.1742, 2
  br i1 %.not891, label %bb.dl, label %bb.dd

bb.bj:                                            ; preds = %.lr.ph1078, %._crit_edge1071
  %indvars.iv1180 = phi i64 [ 0, %.lr.ph1078 ], [ %indvars.iv.next1181, %._crit_edge1071 ] ; 4 uses
  %.lcssa106110741075 = phi ptr [ %.promoted1073, %.lr.ph1078 ], [ %.lcssa1061, %._crit_edge1071 ] ; 2 uses
  %i.avb = sub nuw nsw i64 %i.ava, %indvars.iv1180 ; 3 uses
  %i.avc = icmp samesign ult i64 %i.avb, 4
  br i1 %i.avc, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %.not893 = icmp eq i64 %i.avb, 3
  br i1 %.not893, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.avd = icmp samesign ult i64 %i.avb, 2
  %spec.store.select27 = select i1 %i.avd, i32 4369, i32 13107
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bj
  %.0814 = phi i32 [ %spec.store.select27, %bb.bl ], [ 30583, %bb.bk ], [ 65535, %bb.bj ]
  br i1 %.not1131, label %._crit_edge1071, label %.lr.ph1070.preheader

.lr.ph1070.preheader:                             ; preds = %bb.bm
  %i.ave = trunc nuw i64 %indvars.iv1180 to i32
  %i.avf = mul i32 %8, %i.ave
  %i.avg = zext i32 %i.avf to i64
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.avg
  %i.avi = lshr exact i64 %indvars.iv1180, 2
  %i.avj = trunc nuw nsw i64 %i.avi to i32
  %i.avk = mul i32 %i.arf, %i.avj
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.avl
  br label %.lr.ph1070

._crit_edge1071:                                  ; preds = %bb.dc, %bb.bm
  %.lcssa1061 = phi ptr [ %.lcssa106110741075, %bb.bm ], [ %i.blb, %bb.dc ] ; 2 uses
  store ptr %.lcssa1061, ptr %14, align 8
  %indvars.iv.next1181 = add nuw nsw i64 %indvars.iv1180, 4 ; 2 uses
  %i.avn = icmp samesign ult i64 %indvars.iv.next1181, %i.ava
  br i1 %i.avn, label %bb.bj, label %._crit_edge1079, !llvm.loop !56

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %bb.dc
  %.08091068 = phi i32 [ %i.avp, %bb.dc ], [ 0, %.lr.ph1070.preheader ]
  %.08101066 = phi ptr [ %i.blj, %bb.dc ], [ %i.avh, %.lr.ph1070.preheader ] ; 4 uses
  %.08111065 = phi ptr [ %i.blk, %bb.dc ], [ %i.avm, %.lr.ph1070.preheader ] ; 3 uses
  %.08121064 = phi ptr [ %i.bll, %bb.dc ], [ %i.d, %.lr.ph1070.preheader ] ; 3 uses
  %.08131063 = phi i32 [ %i.bli, %bb.dc ], [ 0, %.lr.ph1070.preheader ]
  %.18151062 = phi i32 [ %i.avt, %bb.dc ], [ %.0814, %.lr.ph1070.preheader ]
  %i.avo = phi ptr [ %i.blb, %bb.dc ], [ %.lcssa106110741075, %.lr.ph1070.preheader ] ; 4 uses
  %i.avp = add nuw i32 %.08091068, 4              ; 3 uses
  %i.avq = sub nsw i32 %i.avp, %6
  %i.avr = tail call i32 @llvm.smax.i32(i32 %i.avq, i32 0)
  %i.avs = shl nuw nsw i32 %i.avr, 2
  %i.avt = lshr i32 %.18151062, %i.avs            ; 3 uses
  %i.avu = load i32, ptr %.08121064, align 4, !tbaa !25
  %i.avv = lshr i32 %i.avu, 3
  %i.avw = and i32 %i.avv, 286331153              ; 2 uses
  br i1 %9, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1070
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %.08111065, i64 %i.aup
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !25
  %i.avz = shl i32 %i.avy, 3
  %i.awa = and i32 %i.avz, -2004318072
  %i.awb = or disjoint i32 %i.awa, %i.avw
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph1070
  %.0808 = phi i32 [ %i.avw, %.lr.ph1070 ], [ %i.awb, %bb.bn ] ; 2 uses
  %i.awc = load i32, ptr %.08111065, align 4, !tbaa !25 ; 6 uses
  %i.awd = shl i32 %i.awc, 1                      ; 2 uses
  %i.awe = and i32 %i.awd, -286331154
  %i.awf = lshr i32 %i.awc, 1                     ; 2 uses
  %i.awg = and i32 %i.awf, 2004318071
  %i.awh = or i32 %i.awg, %i.awe
  %i.awi = or i32 %i.awh, %.0808
  %i.awj = or i32 %i.awi, %i.awc                  ; 3 uses
  %i.awk = shl i32 %i.awj, 4
  %i.awl = lshr i32 %i.awj, 4
  %i.awm = lshr exact i32 %.08131063, 12
  %i.awn = or i32 %i.awm, %i.awl
  %i.awo = or i32 %i.awn, %i.awk
  %i.awp = or i32 %i.awo, %i.awj
  %i.awq = xor i32 %i.awc, -1                     ; 2 uses
  %i.awr = and i32 %i.awp, %i.awq
  %i.aws = and i32 %i.awr, %i.avt                 ; 6 uses
  %.not894 = icmp eq i32 %i.aws, 0
  br i1 %.not894, label %bb.dc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.awt = load i32, ptr %i.auq, align 8, !tbaa !27 ; 4 uses
  %i.awu = icmp ult i32 %i.awt, 129
  br i1 %i.awu, label %bb.bq, label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit

bb.bq:                                            ; preds = %bb.bp
  %i.awv = load <2 x i64>, ptr %i.avo, align 1, !tbaa !12
  %i.aww = load i32, ptr %i.aur, align 8, !tbaa !28 ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.aww, i32 16) ; 3 uses
  %i.awx = trunc i32 %spec.select.i.i to i8
  %i.awy = insertelement <16 x i8> poison, i8 %i.awx, i64 0
  %i.awz = shufflevector <16 x i8> %i.awy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.axa = sext i32 %spec.select.i.i to i64
  %i.axb = getelementptr inbounds i8, ptr %i.avo, i64 %i.axa ; 3 uses
  %i.axc = sub nsw i32 %i.aww, %spec.select.i.i
  store i32 %i.axc, ptr %i.aur, align 8, !tbaa !28
  %i.axd = icmp sgt <16 x i8> %i.awz, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.axe = sext <16 x i1> %i.axd to <16 x i8>
  %i.axf = bitcast <16 x i8> %i.axe to <2 x i64>
  %i.axg = and <2 x i64> %i.awv, %i.axf           ; 3 uses
  %i.axh = bitcast <2 x i64> %i.axg to <16 x i8>  ; 2 uses
  %i.axi = icmp eq <16 x i8> %i.axh, splat (i8 -1)
  %i.axj = and <16 x i1> %i.axd, %i.axi
  %i.axk = bitcast <16 x i1> %i.axj to i16
  %i.axl = zext i16 %i.axk to i32                 ; 2 uses
  %i.axm = shl nuw nsw i32 %i.axl, 1
  %i.axn = load i32, ptr %i.aus, align 4, !tbaa !29
  %i.axo = or i32 %i.axm, %i.axn
  %i.axp = and i32 %i.axo, 65535                  ; 2 uses
  %.not74.i.i = icmp eq i32 %i.axp, 0
  br i1 %.not74.i.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bq, %.lr.ph.i.i
  %.077.i.i = phi <2 x i64> [ %i.ayh, %.lr.ph.i.i ], [ %i.axg, %bb.bq ] ; 2 uses
  %.07176.i.i = phi i32 [ %i.axq, %.lr.ph.i.i ], [ 128, %bb.bq ]
  %.07275.i.i = phi i32 [ %i.axt, %.lr.ph.i.i ], [ %i.axp, %bb.bq ] ; 3 uses
  %i.axq = add nsw i32 %.07176.i.i, -1            ; 2 uses
  %i.axr = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i.i, i1 true) ; 2 uses
  %i.axs = lshr exact i32 -2147483648, %i.axr     ; 2 uses
  %i.axt = xor i32 %i.axs, %.07275.i.i
  %i.axu = trunc nuw nsw i32 %i.axr to i8
  %i.axv = xor i8 %i.axu, 31
  %i.axw = insertelement <16 x i8> poison, i8 %i.axv, i64 0
  %i.axx = shufflevector <16 x i8> %i.axw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.axy = icmp samesign ult <16 x i8> %i.axx, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.axz = sext <16 x i1> %i.axy to <16 x i8>     ; 2 uses
  %i.aya = bitcast <16 x i8> %i.axz to <2 x i64>
  %i.ayb = and <2 x i64> %.077.i.i, %i.aya        ; 2 uses
  %i.ayc = shufflevector <2 x i64> %i.ayb, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ayd = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ayc, <2 x i64> %i.ayb, <2 x i64> splat (i64 63))
  %i.aye = bitcast <16 x i8> %i.axz to <2 x i64>
  %i.ayf = xor <2 x i64> %i.aye, splat (i64 -1)
  %i.ayg = and <2 x i64> %.077.i.i, %i.ayf
  %i.ayh = or <2 x i64> %i.ayd, %i.ayg            ; 3 uses
  %.not.i.i = icmp eq i32 %i.axs, %.07275.i.i
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = bitcast <2 x i64> %i.ayh to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.bq
  %.pre-phi.i.i = phi <16 x i8> [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.axh, %bb.bq ]
  %.071.lcssa.i.i = phi i32 [ %i.axq, %._crit_edge.loopexit.i.i ], [ 128, %bb.bq ] ; 2 uses
  %.0.lcssa.i.i = phi <2 x i64> [ %i.ayh, %._crit_edge.loopexit.i.i ], [ %i.axg, %bb.bq ] ; 2 uses
  %i.ayi = lshr i32 %i.axl, 15                    ; 2 uses
  %i.ayj = lshr i32 %i.awt, 3
  %i.ayk = and i32 %i.awt, 7                      ; 3 uses
  %i.ayl = zext nneg i32 %i.ayk to i64
  %i.aym = insertelement <2 x i64> poison, i64 %i.ayl, i64 0
  %i.ayn = shufflevector <2 x i64> %i.aym, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ayo = shl <2 x i64> %.0.lcssa.i.i, %i.ayn
  %42 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ayp = bitcast <16 x i8> %42 to <2 x i64>
  %i.ayq = sub nuw nsw i32 64, %i.ayk
  %i.ayr = zext nneg i32 %i.ayq to i64
  %i.ays = insertelement <2 x i64> poison, i64 %i.ayr, i64 0
  %i.ayt = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.ayp, <2 x i64> %i.ays)
  %i.ayu = zext nneg i32 %i.ayj to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.ayu ; 2 uses
  %i.ayw = load <2 x i64>, ptr %i.ayv, align 1, !tbaa !12
  %i.ayx = or <2 x i64> %i.ayo, %i.ayt
  %i.ayy = or <2 x i64> %i.ayx, %i.ayw
  store <2 x i64> %i.ayy, ptr %i.ayv, align 1, !tbaa !12
  %i.ayz = sub nuw nsw i32 128, %i.ayk
  %i.aza = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i.i, i32 %i.ayz) ; 2 uses
  %i.azb = load i32, ptr %i.auq, align 8, !tbaa !27
  %i.azc = add nsw i32 %i.aza, 7
  %i.azd = add i32 %i.azc, %i.azb
  %i.aze = lshr i32 %i.azd, 3
  %i.azf = bitcast <2 x i64> %.0.lcssa.i.i to <8 x i16>
  %i.azg = extractelement <8 x i16> %i.azf, i64 7
  %i.azh = zext i16 %i.azg to i32
  %i.azi = add nsw i32 %i.aza, -112
  %i.azj = lshr i32 %i.azh, %i.azi
  %i.azk = trunc i32 %i.azj to i8
  %i.azl = zext nneg i32 %i.aze to i64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.azl
  store i8 %i.azk, ptr %i.azm, align 1, !tbaa !12
  %i.azn = load i32, ptr %i.auq, align 8, !tbaa !27
  %i.azo = add i32 %i.azn, %.071.lcssa.i.i        ; 5 uses
  store i32 %i.azo, ptr %i.auq, align 8, !tbaa !27
  store i32 %i.ayi, ptr %i.aus, align 4, !tbaa !29
  %i.azp = icmp ult i32 %i.azo, 129
  br i1 %i.azp, label %bb.br, label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit

bb.br:                                            ; preds = %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i
  %i.azq = load <2 x i64>, ptr %i.axb, align 1, !tbaa !12
  %i.azr = load i32, ptr %i.aur, align 8, !tbaa !28 ; 2 uses
  %spec.select.i5.i = tail call i32 @llvm.smin.i32(i32 %i.azr, i32 16) ; 3 uses
  %i.azs = trunc i32 %spec.select.i5.i to i8
  %i.azt = insertelement <16 x i8> poison, i8 %i.azs, i64 0
  %i.azu = shufflevector <16 x i8> %i.azt, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.azv = sext i32 %spec.select.i5.i to i64
  %i.azw = getelementptr inbounds i8, ptr %i.axb, i64 %i.azv
  %i.azx = sub nsw i32 %i.azr, %spec.select.i5.i
  store i32 %i.azx, ptr %i.aur, align 8, !tbaa !28
  %i.azy = icmp sgt <16 x i8> %i.azu, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.azz = sext <16 x i1> %i.azy to <16 x i8>
  %i.baa = bitcast <16 x i8> %i.azz to <2 x i64>
  %i.bab = and <2 x i64> %i.azq, %i.baa           ; 3 uses
  %i.bac = bitcast <2 x i64> %i.bab to <16 x i8>  ; 2 uses
  %i.bad = icmp eq <16 x i8> %i.bac, splat (i8 -1)
  %i.bae = and <16 x i1> %i.azy, %i.bad
  %i.baf = bitcast <16 x i1> %i.bae to i16
  %i.bag = zext i16 %i.baf to i32                 ; 2 uses
  %i.bah = shl nuw nsw i32 %i.bag, 1
  %.masked.i = and i32 %i.bah, 65534
  %i.bai = or disjoint i32 %.masked.i, %i.ayi     ; 2 uses
  %.not74.i6.i = icmp eq i32 %i.bai, 0
  br i1 %.not74.i6.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.br, %.lr.ph.i7.i
  %.077.i8.i = phi <2 x i64> [ %i.bba, %.lr.ph.i7.i ], [ %i.bab, %bb.br ] ; 2 uses
  %.07176.i9.i = phi i32 [ %i.baj, %.lr.ph.i7.i ], [ 128, %bb.br ]
  %.07275.i10.i = phi i32 [ %i.bam, %.lr.ph.i7.i ], [ %i.bai, %bb.br ] ; 3 uses
  %i.baj = add nsw i32 %.07176.i9.i, -1           ; 2 uses
  %i.bak = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i10.i, i1 true) ; 2 uses
  %i.bal = lshr exact i32 -2147483648, %i.bak     ; 2 uses
  %i.bam = xor i32 %i.bal, %.07275.i10.i
  %i.ban = trunc nuw nsw i32 %i.bak to i8
  %i.bao = xor i8 %i.ban, 31
  %i.bap = insertelement <16 x i8> poison, i8 %i.bao, i64 0
  %i.baq = shufflevector <16 x i8> %i.bap, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bar = icmp samesign ult <16 x i8> %i.baq, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.bas = sext <16 x i1> %i.bar to <16 x i8>     ; 2 uses
  %i.bat = bitcast <16 x i8> %i.bas to <2 x i64>
  %i.bau = and <2 x i64> %.077.i8.i, %i.bat       ; 2 uses
  %i.bav = shufflevector <2 x i64> %i.bau, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.baw = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bav, <2 x i64> %i.bau, <2 x i64> splat (i64 63))
  %i.bax = bitcast <16 x i8> %i.bas to <2 x i64>
  %i.bay = xor <2 x i64> %i.bax, splat (i64 -1)
  %i.baz = and <2 x i64> %.077.i8.i, %i.bay
  %i.bba = or <2 x i64> %i.baw, %i.baz            ; 3 uses
  %.not.i11.i = icmp eq i32 %i.bal, %.07275.i10.i
  br i1 %.not.i11.i, label %._crit_edge.loopexit.i12.i, label %.lr.ph.i7.i, !llvm.loop !0

._crit_edge.loopexit.i12.i:                       ; preds = %.lr.ph.i7.i
  %.pre.i13.i = bitcast <2 x i64> %i.bba to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i: ; preds = %._crit_edge.loopexit.i12.i, %bb.br
  %.pre-phi.i14.i = phi <16 x i8> [ %.pre.i13.i, %._crit_edge.loopexit.i12.i ], [ %i.bac, %bb.br ]
  %.071.lcssa.i15.i = phi i32 [ %i.baj, %._crit_edge.loopexit.i12.i ], [ 128, %bb.br ] ; 2 uses
  %.0.lcssa.i16.i = phi <2 x i64> [ %i.bba, %._crit_edge.loopexit.i12.i ], [ %i.bab, %bb.br ] ; 2 uses
  %i.bbb = lshr i32 %i.bag, 15
  %i.bbc = lshr i32 %i.azo, 3
  %i.bbd = and i32 %i.azo, 7                      ; 3 uses
  %i.bbe = zext nneg i32 %i.bbd to i64
  %i.bbf = insertelement <2 x i64> poison, i64 %i.bbe, i64 0
  %i.bbg = shufflevector <2 x i64> %i.bbf, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bbh = shl <2 x i64> %.0.lcssa.i16.i, %i.bbg
  %43 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i14.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bbi = bitcast <16 x i8> %43 to <2 x i64>
  %i.bbj = sub nuw nsw i32 64, %i.bbd
  %i.bbk = zext nneg i32 %i.bbj to i64
  %i.bbl = insertelement <2 x i64> poison, i64 %i.bbk, i64 0
  %i.bbm = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bbi, <2 x i64> %i.bbl)
  %i.bbn = zext nneg i32 %i.bbc to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.bbn ; 2 uses
  %i.bbp = load <2 x i64>, ptr %i.bbo, align 1, !tbaa !12
  %i.bbq = or <2 x i64> %i.bbh, %i.bbm
  %i.bbr = or <2 x i64> %i.bbq, %i.bbp
  store <2 x i64> %i.bbr, ptr %i.bbo, align 1, !tbaa !12
  %i.bbs = sub nuw nsw i32 128, %i.bbd
  %i.bbt = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i15.i, i32 %i.bbs) ; 2 uses
  %i.bbu = load i32, ptr %i.auq, align 8, !tbaa !27
  %i.bbv = add nsw i32 %i.bbt, 7
  %i.bbw = add i32 %i.bbv, %i.bbu
  %i.bbx = lshr i32 %i.bbw, 3
  %i.bby = bitcast <2 x i64> %.0.lcssa.i16.i to <8 x i16>
  %i.bbz = extractelement <8 x i16> %i.bby, i64 7
  %i.bca = zext i16 %i.bbz to i32
  %i.bcb = add nsw i32 %i.bbt, -112
  %i.bcc = lshr i32 %i.bca, %i.bcb
  %i.bcd = trunc i32 %i.bcc to i8
  %i.bce = zext nneg i32 %i.bbx to i64
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.bce
  store i8 %i.bcd, ptr %i.bcf, align 1, !tbaa !12
  %i.bcg = load i32, ptr %i.auq, align 8, !tbaa !27
  %i.bch = add i32 %i.bcg, %.071.lcssa.i15.i
  store i32 %i.bbb, ptr %i.aus, align 4, !tbaa !29
  br label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit

_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit: ; preds = %bb.bp, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i
  %i.bci = phi i32 [ %i.awt, %bb.bp ], [ %i.azo, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i ], [ %i.bch, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i ]
  %i.bcj = phi ptr [ %i.avo, %bb.bp ], [ %i.axb, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit.i ], [ %i.azw, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit17.i ]
  %i.bck = load <8 x i16>, ptr %i.aut, align 8, !tbaa !12 ; 2 uses
  %i.bcl = extractelement <8 x i16> %i.bck, i64 0
  %i.bcm = zext i16 %i.bcl to i32                 ; 4 uses
  %i.bcn = and i32 %i.avt, %i.awq                 ; 16 uses
  %i.bco = and i32 %i.aws, 15
  %i.bcp = icmp eq i32 %i.bco, 0
  br i1 %i.bcp, label %bb.ca, label %bb.bs

bb.bs:                                            ; preds = %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit
  %i.bcq = and i32 %i.aws, 1
  %.not896 = icmp eq i32 %i.bcq, 0
  br i1 %.not896, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bcr = and i32 %i.aws, 65534
  %i.bcs = and i32 %i.bcm, 1
  %.not897 = icmp eq i32 %i.bcs, 0
  %i.bct = and i32 %i.bcn, 51
  %i.bcu = select i1 %.not897, i32 0, i32 %i.bct
  %.1798 = or i32 %i.bcu, %i.bcr
  %i.bcv = lshr i32 %i.bcm, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2799 = phi i32 [ %.1798, %bb.bt ], [ %i.aws, %bb.bs ] ; 3 uses
  %.1792 = phi i32 [ %i.bcv, %bb.bt ], [ %i.bcm, %bb.bs ] ; 3 uses
  %.1785 = phi i32 [ 1, %bb.bt ], [ 0, %bb.bs ]   ; 2 uses
  %i.bcw = and i32 %.2799, 2
  %.not898 = icmp eq i32 %i.bcw, 0
  br i1 %.not898, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bcx = and i32 %.2799, -3
  %i.bcy = and i32 %.1792, 1
  %.not899 = icmp eq i32 %i.bcy, 0
  %i.bcz = and i32 %i.bcn, 118
  %i.bda = select i1 %.not899, i32 0, i32 %i.bcz
  %.3800 = or i32 %i.bda, %i.bcx
  %i.bdb = lshr i32 %.1792, 1
  %i.bdc = add nuw nsw i32 %.1785, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.4801 = phi i32 [ %.3800, %bb.bv ], [ %.2799, %bb.bu ] ; 3 uses
  %.2793 = phi i32 [ %i.bdb, %bb.bv ], [ %.1792, %bb.bu ] ; 3 uses
  %.2786 = phi i32 [ %i.bdc, %bb.bv ], [ %.1785, %bb.bu ] ; 2 uses
  %i.bdd = and i32 %.4801, 4
  %.not900 = icmp eq i32 %i.bdd, 0
  br i1 %.not900, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bde = and i32 %.4801, -5
  %i.bdf = and i32 %.2793, 1
  %.not901 = icmp eq i32 %i.bdf, 0
  %i.bdg = and i32 %i.bcn, 236
  %i.bdh = select i1 %.not901, i32 0, i32 %i.bdg
  %.5802 = or i32 %i.bdh, %i.bde
  %i.bdi = lshr i32 %.2793, 1
  %i.bdj = add nuw nsw i32 %.2786, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.6803 = phi i32 [ %.5802, %bb.bx ], [ %.4801, %bb.bw ] ; 3 uses
  %.3794 = phi i32 [ %i.bdi, %bb.bx ], [ %.2793, %bb.bw ] ; 3 uses
  %.3787 = phi i32 [ %i.bdj, %bb.bx ], [ %.2786, %bb.bw ] ; 2 uses
  %i.bdk = and i32 %.6803, 8
  %.not902 = icmp eq i32 %i.bdk, 0
  br i1 %.not902, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.bdl = and i32 %.6803, -9
  %i.bdm = and i32 %.3794, 1
  %.not903 = icmp eq i32 %i.bdm, 0
  %i.bdn = and i32 %i.bcn, 200
  %i.bdo = select i1 %.not903, i32 0, i32 %i.bdn
  %.7804 = or i32 %i.bdo, %i.bdl
  %i.bdp = lshr i32 %.3794, 1
  %i.bdq = add nuw nsw i32 %.3787, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit
  %.9806 = phi i32 [ %i.aws, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit ], [ %.7804, %bb.bz ], [ %.6803, %bb.by ] ; 5 uses
  %.5796 = phi i32 [ %i.bcm, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit ], [ %i.bdp, %bb.bz ], [ %.3794, %bb.by ] ; 4 uses
  %.5789 = phi i32 [ 0, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_17frwd_struct_ssse3E.exit ], [ %i.bdq, %bb.bz ], [ %.3787, %bb.by ] ; 3 uses
  %i.bdr = and i32 %.9806, 240
  %i.bds = icmp eq i32 %i.bdr, 0
  br i1 %i.bds, label %bb.cj, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.bdt = and i32 %.9806, 16
  %.not896.1 = icmp eq i32 %i.bdt, 0
  br i1 %.not896.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.bdu = and i32 %.9806, -17
  %i.bdv = and i32 %.5796, 1
  %.not897.1 = icmp eq i32 %i.bdv, 0
  %i.bdw = and i32 %i.bcn, 816
  %i.bdx = select i1 %.not897.1, i32 0, i32 %i.bdw
  %.1798.1 = or i32 %i.bdx, %i.bdu
  %i.bdy = lshr i32 %.5796, 1
  %i.bdz = add nuw nsw i32 %.5789, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.2799.1 = phi i32 [ %.1798.1, %bb.cc ], [ %.9806, %bb.cb ] ; 3 uses
  %.1792.1 = phi i32 [ %i.bdy, %bb.cc ], [ %.5796, %bb.cb ] ; 3 uses
  %.1785.1 = phi i32 [ %i.bdz, %bb.cc ], [ %.5789, %bb.cb ] ; 2 uses
  %i.bea = and i32 %.2799.1, 32
  %.not898.1 = icmp eq i32 %i.bea, 0
  br i1 %.not898.1, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.beb = and i32 %.2799.1, -33
  %i.bec = and i32 %.1792.1, 1
  %.not899.1 = icmp eq i32 %i.bec, 0
  %i.bed = and i32 %i.bcn, 1888
  %i.bee = select i1 %.not899.1, i32 0, i32 %i.bed
  %.3800.1 = or i32 %i.bee, %i.beb
  %i.bef = lshr i32 %.1792.1, 1
  %i.beg = add nuw nsw i32 %.1785.1, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.4801.1 = phi i32 [ %.3800.1, %bb.ce ], [ %.2799.1, %bb.cd ] ; 3 uses
  %.2793.1 = phi i32 [ %i.bef, %bb.ce ], [ %.1792.1, %bb.cd ] ; 3 uses
  %.2786.1 = phi i32 [ %i.beg, %bb.ce ], [ %.1785.1, %bb.cd ] ; 2 uses
  %i.beh = and i32 %.4801.1, 64
  %.not900.1 = icmp eq i32 %i.beh, 0
  br i1 %.not900.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bei = and i32 %.4801.1, -65
  %i.bej = and i32 %.2793.1, 1
  %.not901.1 = icmp eq i32 %i.bej, 0
  %i.bek = and i32 %i.bcn, 3776
  %i.bel = select i1 %.not901.1, i32 0, i32 %i.bek
  %.5802.1 = or i32 %i.bel, %i.bei
  %i.bem = lshr i32 %.2793.1, 1
  %i.ben = add nuw nsw i32 %.2786.1, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.6803.1 = phi i32 [ %.5802.1, %bb.cg ], [ %.4801.1, %bb.cf ] ; 3 uses
  %.3794.1 = phi i32 [ %i.bem, %bb.cg ], [ %.2793.1, %bb.cf ] ; 3 uses
  %.3787.1 = phi i32 [ %i.ben, %bb.cg ], [ %.2786.1, %bb.cf ] ; 2 uses
  %i.beo = and i32 %.6803.1, 128
  %.not902.1 = icmp eq i32 %i.beo, 0
  br i1 %.not902.1, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.bep = and i32 %.6803.1, -129
  %i.beq = and i32 %.3794.1, 1
  %.not903.1 = icmp eq i32 %i.beq, 0
  %i.ber = and i32 %i.bcn, 3200
  %i.bes = select i1 %.not903.1, i32 0, i32 %i.ber
  %.7804.1 = or i32 %i.bes, %i.bep
  %i.bet = lshr i32 %.3794.1, 1
  %i.beu = add nuw nsw i32 %.3787.1, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.ca
  %.9806.1 = phi i32 [ %.9806, %bb.ca ], [ %.7804.1, %bb.ci ], [ %.6803.1, %bb.ch ] ; 5 uses
  %.5796.1 = phi i32 [ %.5796, %bb.ca ], [ %i.bet, %bb.ci ], [ %.3794.1, %bb.ch ] ; 4 uses
  %.5789.1 = phi i32 [ %.5789, %bb.ca ], [ %i.beu, %bb.ci ], [ %.3787.1, %bb.ch ] ; 3 uses
  %i.bev = and i32 %.9806.1, 3840
  %i.bew = icmp eq i32 %i.bev, 0
  br i1 %i.bew, label %bb.cs, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.bex = and i32 %.9806.1, 256
  %.not896.2 = icmp eq i32 %i.bex, 0
  br i1 %.not896.2, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bey = and i32 %.9806.1, -257
  %i.bez = and i32 %.5796.1, 1
  %.not897.2 = icmp eq i32 %i.bez, 0
  %i.bfa = and i32 %i.bcn, 13056
  %i.bfb = select i1 %.not897.2, i32 0, i32 %i.bfa
  %.1798.2 = or i32 %i.bfb, %i.bey
  %i.bfc = lshr i32 %.5796.1, 1
  %i.bfd = add nuw nsw i32 %.5789.1, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.2799.2 = phi i32 [ %.1798.2, %bb.cl ], [ %.9806.1, %bb.ck ] ; 3 uses
  %.1792.2 = phi i32 [ %i.bfc, %bb.cl ], [ %.5796.1, %bb.ck ] ; 3 uses
  %.1785.2 = phi i32 [ %i.bfd, %bb.cl ], [ %.5789.1, %bb.ck ] ; 2 uses
  %i.bfe = and i32 %.2799.2, 512
  %.not898.2 = icmp eq i32 %i.bfe, 0
  br i1 %.not898.2, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.bff = and i32 %.2799.2, -513
  %i.bfg = and i32 %.1792.2, 1
  %.not899.2 = icmp eq i32 %i.bfg, 0
  %i.bfh = and i32 %i.bcn, 30208
  %i.bfi = select i1 %.not899.2, i32 0, i32 %i.bfh
  %.3800.2 = or i32 %i.bfi, %i.bff
  %i.bfj = lshr i32 %.1792.2, 1
  %i.bfk = add nuw nsw i32 %.1785.2, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.4801.2 = phi i32 [ %.3800.2, %bb.cn ], [ %.2799.2, %bb.cm ] ; 3 uses
  %.2793.2 = phi i32 [ %i.bfj, %bb.cn ], [ %.1792.2, %bb.cm ] ; 3 uses
  %.2786.2 = phi i32 [ %i.bfk, %bb.cn ], [ %.1785.2, %bb.cm ] ; 2 uses
  %i.bfl = and i32 %.4801.2, 1024
  %.not900.2 = icmp eq i32 %i.bfl, 0
  br i1 %.not900.2, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bfm = and i32 %.4801.2, -1025
  %i.bfn = and i32 %.2793.2, 1
  %.not901.2 = icmp eq i32 %i.bfn, 0
  %i.bfo = and i32 %i.bcn, 60416
  %i.bfp = select i1 %.not901.2, i32 0, i32 %i.bfo
  %.5802.2 = or i32 %i.bfp, %i.bfm
  %i.bfq = lshr i32 %.2793.2, 1
  %i.bfr = add nuw nsw i32 %.2786.2, 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.6803.2 = phi i32 [ %.5802.2, %bb.cp ], [ %.4801.2, %bb.co ] ; 3 uses
  %.3794.2 = phi i32 [ %i.bfq, %bb.cp ], [ %.2793.2, %bb.co ] ; 3 uses
  %.3787.2 = phi i32 [ %i.bfr, %bb.cp ], [ %.2786.2, %bb.co ] ; 2 uses
  %i.bfs = and i32 %.6803.2, 2048
  %.not902.2 = icmp eq i32 %i.bfs, 0
  br i1 %.not902.2, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bft = and i32 %.6803.2, -2049
  %i.bfu = and i32 %.3794.2, 1
  %.not903.2 = icmp eq i32 %i.bfu, 0
  %i.bfv = and i32 %i.bcn, 51200
  %i.bfw = select i1 %.not903.2, i32 0, i32 %i.bfv
  %.7804.2 = or i32 %i.bfw, %i.bft
  %i.bfx = lshr i32 %.3794.2, 1
  %i.bfy = add nuw nsw i32 %.3787.2, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cj
  %.9806.2 = phi i32 [ %.9806.1, %bb.cj ], [ %.7804.2, %bb.cr ], [ %.6803.2, %bb.cq ] ; 5 uses
  %.5796.2 = phi i32 [ %.5796.1, %bb.cj ], [ %i.bfx, %bb.cr ], [ %.3794.2, %bb.cq ] ; 4 uses
  %.5789.2 = phi i32 [ %.5789.1, %bb.cj ], [ %i.bfy, %bb.cr ], [ %.3787.2, %bb.cq ] ; 3 uses
  %i.bfz = and i32 %.9806.2, 61440
  %i.bga = icmp eq i32 %i.bfz, 0
  br i1 %i.bga, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bgb = and i32 %.9806.2, 4096
  %.not896.3 = icmp eq i32 %i.bgb, 0
  br i1 %.not896.3, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bgc = and i32 %.9806.2, -4097
  %i.bgd = and i32 %.5796.2, 1
  %.not897.3 = icmp eq i32 %i.bgd, 0
  %i.bge = and i32 %i.bcn, 12288
  %i.bgf = select i1 %.not897.3, i32 0, i32 %i.bge
  %.1798.3 = or i32 %i.bgf, %i.bgc
  %i.bgg = lshr i32 %.5796.2, 1
  %i.bgh = add nuw nsw i32 %.5789.2, 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.2799.3 = phi i32 [ %.1798.3, %bb.cu ], [ %.9806.2, %bb.ct ] ; 3 uses
  %.1792.3 = phi i32 [ %i.bgg, %bb.cu ], [ %.5796.2, %bb.ct ] ; 3 uses
  %.1785.3 = phi i32 [ %i.bgh, %bb.cu ], [ %.5789.2, %bb.ct ] ; 2 uses
  %i.bgi = and i32 %.2799.3, 8192
  %.not898.3 = icmp eq i32 %i.bgi, 0
  br i1 %.not898.3, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bgj = and i32 %.2799.3, -8193
  %i.bgk = and i32 %.1792.3, 1
  %.not899.3 = icmp eq i32 %i.bgk, 0
  %i.bgl = and i32 %i.bcn, 24576
  %i.bgm = select i1 %.not899.3, i32 0, i32 %i.bgl
  %.3800.3 = or i32 %i.bgm, %i.bgj
  %i.bgn = lshr i32 %.1792.3, 1
  %i.bgo = add nuw nsw i32 %.1785.3, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.4801.3 = phi i32 [ %.3800.3, %bb.cw ], [ %.2799.3, %bb.cv ] ; 3 uses
  %.2793.3 = phi i32 [ %i.bgn, %bb.cw ], [ %.1792.3, %bb.cv ] ; 3 uses
  %.2786.3 = phi i32 [ %i.bgo, %bb.cw ], [ %.1785.3, %bb.cv ] ; 2 uses
  %i.bgp = and i32 %.4801.3, 16384
  %.not900.3 = icmp eq i32 %i.bgp, 0
  br i1 %.not900.3, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bgq = and i32 %.4801.3, -16385
  %i.bgr = and i32 %.2793.3, 1
  %.not901.3 = icmp eq i32 %i.bgr, 0
  %i.bgs = and i32 %i.bcn, 49152
  %i.bgt = select i1 %.not901.3, i32 0, i32 %i.bgs
  %.5802.3 = or i32 %i.bgt, %i.bgq
  %i.bgu = lshr i32 %.2793.3, 1
  %i.bgv = add nuw nsw i32 %.2786.3, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.6803.3 = phi i32 [ %.5802.3, %bb.cy ], [ %.4801.3, %bb.cx ] ; 3 uses
  %.3794.3 = phi i32 [ %i.bgu, %bb.cy ], [ %.2793.3, %bb.cx ] ; 3 uses
  %.3787.3 = phi i32 [ %i.bgv, %bb.cy ], [ %.2786.3, %bb.cx ] ; 2 uses
  %i.bgw = and i32 %.6803.3, 32768
  %.not902.3 = icmp eq i32 %i.bgw, 0
  br i1 %.not902.3, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bgx = and i32 %.6803.3, -32769
  %i.bgy = and i32 %.3794.3, 1
  %.not903.3 = icmp eq i32 %i.bgy, 0
  %i.bgz = and i32 %i.bcn, 32768
  %i.bha = select i1 %.not903.3, i32 0, i32 %i.bgz
  %.7804.3 = or disjoint i32 %i.bha, %i.bgx
  %i.bhb = lshr i32 %.3794.3, 1
  %i.bhc = add nuw nsw i32 %.3787.3, 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cs
  %.9806.3 = phi i32 [ %.9806.2, %bb.cs ], [ %.7804.3, %bb.da ], [ %.6803.3, %bb.cz ] ; 3 uses
  %.5796.3 = phi i32 [ %.5796.2, %bb.cs ], [ %i.bhb, %bb.da ], [ %.3794.3, %bb.cz ]
  %.5789.3 = phi i32 [ %.5789.2, %bb.cs ], [ %i.bhc, %bb.da ], [ %.3787.3, %bb.cz ] ; 3 uses
  %.not895 = icmp eq i32 %.9806.3, 0
  br i1 %.not895, label %.loopexit973, label %.loopexit973.loopexit

.loopexit973.loopexit:                            ; preds = %bb.db
  %i.bhd = extractelement <8 x i16> %i.bck, i64 1
  %i.bhe = zext i16 %i.bhd to i32
  %i.bhf = sub nuw nsw i32 16, %.5789.3
  %i.bhg = shl nuw i32 %i.bhe, %i.bhf
  %i.bhh = or i32 %i.bhg, %.5796.3
  %i.bhi = trunc nuw i32 %.9806.3 to i16
  %i.bhj = insertelement <8 x i16> poison, i16 %i.bhi, i64 0
  %i.bhk = bitcast <8 x i16> %i.bhj to <16 x i8>
  %i.bhl = shufflevector <16 x i8> %i.bhk, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bhm = and <16 x i8> %i.bhl, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bhn = icmp ne <16 x i8> %i.bhm, zeroinitializer ; 2 uses
  %.neg971 = zext <16 x i1> %i.bhn to <16 x i8>   ; 2 uses
  %i.bho = sext <16 x i1> %i.bhn to <16 x i8>     ; 4 uses
  %44 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg971, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bhp = add nuw nsw <16 x i8> %44, %.neg971    ; 2 uses
  %45 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bhp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bhq = add nuw nsw <16 x i8> %45, %i.bhp      ; 2 uses
  %46 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bhq, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bhr = add nuw nsw <16 x i8> %46, %i.bhq      ; 2 uses
  %47 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bhr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bhs = add <16 x i8> %47, %i.bhr              ; 2 uses
  %48 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.bhs, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bht = trunc i32 %i.bhh to i16
  %i.bhu = insertelement <8 x i16> poison, i16 %i.bht, i64 0
  %i.bhv = bitcast <8 x i16> %i.bhu to <16 x i8>
  %i.bhw = shufflevector <16 x i8> %i.bhv, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bhx = and <16 x i8> %i.bhw, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bhy = icmp ne <16 x i8> %i.bhx, zeroinitializer
  %.neg972 = zext <16 x i1> %i.bhy to <16 x i8>
  %i.bhz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.neg972, <16 x i8> %48) ; 4 uses
  %i.bia = load <2 x i64>, ptr %.08101066, align 16, !tbaa !12
  %i.bib = shufflevector <16 x i8> %i.bho, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bic = bitcast <16 x i8> %i.bib to <4 x i32>
  %i.bid = icmp eq <4 x i32> %i.bic, splat (i32 255)
  %i.bie = shufflevector <16 x i8> %i.bhz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bif = bitcast <16 x i8> %i.bie to <4 x i32>
  %i.big = shl <4 x i32> %i.bif, splat (i32 31)
  %i.bih = or disjoint <4 x i32> %i.big, %i.aux
  %i.bii = select <4 x i1> %i.bid, <4 x i32> %i.bih, <4 x i32> zeroinitializer
  %i.bij = bitcast <4 x i32> %i.bii to <2 x i64>
  %i.bik = or <2 x i64> %i.bia, %i.bij
  store <2 x i64> %i.bik, ptr %.08101066, align 16, !tbaa !12
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %.08101066, i64 %i.auy ; 3 uses
  %i.bim = load <2 x i64>, ptr %i.bil, align 16, !tbaa !12
  %i.bin = shufflevector <16 x i8> %i.bho, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bio = bitcast <16 x i8> %i.bin to <4 x i32>
  %i.bip = icmp eq <4 x i32> %i.bio, splat (i32 255)
  %i.biq = shufflevector <16 x i8> %i.bhz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bir = bitcast <16 x i8> %i.biq to <4 x i32>
  %i.bis = shl <4 x i32> %i.bir, splat (i32 31)
  %i.bit = or disjoint <4 x i32> %i.bis, %i.aux
  %i.biu = select <4 x i1> %i.bip, <4 x i32> %i.bit, <4 x i32> zeroinitializer
  %i.biv = bitcast <4 x i32> %i.biu to <2 x i64>
  %i.biw = or <2 x i64> %i.bim, %i.biv
  store <2 x i64> %i.biw, ptr %i.bil, align 16, !tbaa !12
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %i.auy ; 3 uses
  %i.biy = load <2 x i64>, ptr %i.bix, align 16, !tbaa !12
  %i.biz = shufflevector <16 x i8> %i.bho, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bja = bitcast <16 x i8> %i.biz to <4 x i32>
  %i.bjb = icmp eq <4 x i32> %i.bja, splat (i32 255)
  %i.bjc = shufflevector <16 x i8> %i.bhz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bjd = bitcast <16 x i8> %i.bjc to <4 x i32>
  %i.bje = shl <4 x i32> %i.bjd, splat (i32 31)
  %i.bjf = or disjoint <4 x i32> %i.bje, %i.aux
  %i.bjg = select <4 x i1> %i.bjb, <4 x i32> %i.bjf, <4 x i32> zeroinitializer
  %i.bjh = bitcast <4 x i32> %i.bjg to <2 x i64>
  %i.bji = or <2 x i64> %i.biy, %i.bjh
  store <2 x i64> %i.bji, ptr %i.bix, align 16, !tbaa !12
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.auy ; 2 uses
  %i.bjk = load <2 x i64>, ptr %i.bjj, align 16, !tbaa !12
  %i.bjl = shufflevector <16 x i8> %i.bho, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bjm = bitcast <16 x i8> %i.bjl to <4 x i32>
  %i.bjn = icmp eq <4 x i32> %i.bjm, splat (i32 255)
  %i.bjo = shufflevector <16 x i8> %i.bhz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bjp = bitcast <16 x i8> %i.bjo to <4 x i32>
  %i.bjq = shl <4 x i32> %i.bjp, splat (i32 31)
  %i.bjr = or disjoint <4 x i32> %i.bjq, %i.aux
  %i.bjs = select <4 x i1> %i.bjn, <4 x i32> %i.bjr, <4 x i32> zeroinitializer
  %i.bjt = bitcast <4 x i32> %i.bjs to <2 x i64>
  %i.bju = or <2 x i64> %i.bjk, %i.bjt
  store <2 x i64> %i.bju, ptr %i.bjj, align 16, !tbaa !12
  %i.bjv = bitcast <16 x i8> %i.bhs to <8 x i16>
  %i.bjw = extractelement <8 x i16> %i.bjv, i64 7
  %i.bjx = lshr i16 %i.bjw, 8
  %i.bjy = zext nneg i16 %i.bjx to i32
  %i.bjz = add nuw nsw i32 %.5789.3, %i.bjy
  br label %.loopexit973

.loopexit973:                                     ; preds = %.loopexit973.loopexit, %bb.db
  %.6790 = phi i32 [ %.5789.3, %bb.db ], [ %i.bjz, %.loopexit973.loopexit ] ; 3 uses
  %i.bka = sub i32 %i.bci, %.6790
  store i32 %i.bka, ptr %i.auq, align 8, !tbaa !27
  %i.bkb = lshr i32 %.6790, 3
  %i.bkc = and i32 %i.bkb, 24
  %i.bkd = zext nneg i32 %i.bkc to i64
  %i.bke = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.bkd ; 2 uses
  %i.bkf = and i32 %.6790, 63                     ; 2 uses
  %i.bkg = load <2 x i64>, ptr %i.bke, align 8, !tbaa !12 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bke, i64 16
  %i.bki = load <2 x i64>, ptr %i.bkh, align 8, !tbaa !12 ; 3 uses
  %i.bkj = zext nneg i32 %i.bkf to i64
  %i.bkk = insertelement <2 x i64> poison, i64 %i.bkj, i64 0
  %i.bkl = shufflevector <2 x i64> %i.bkk, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bkm = lshr <2 x i64> %i.bkg, %i.bkl
  %i.bkn = shufflevector <2 x i64> %i.bkg, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bko = sub nuw nsw i32 64, %i.bkf
  %i.bkp = zext nneg i32 %i.bko to i64
  %i.bkq = insertelement <2 x i64> poison, i64 %i.bkp, i64 0
  %i.bkr = shufflevector <2 x i64> %i.bkq, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bks = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.bkn, <2 x i64> %i.bkr)
  %i.bkt = or <2 x i64> %i.bks, %i.bkm
  %49 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.bki, <2 x i32> <i32 1, i32 2>
  %i.bku = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %49, <2 x i64> %i.bkr)
  %i.bkv = or <2 x i64> %i.bkt, %i.bku
  store <2 x i64> %i.bkv, ptr %i.aut, align 8, !tbaa !12
  %i.bkw = lshr <2 x i64> %i.bki, %i.bkl
  %i.bkx = shufflevector <2 x i64> %i.bki, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bky = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.bkx, <2 x i64> %i.bkr)
  %i.bkz = or <2 x i64> %i.bky, %i.bkw
  store <2 x i64> %i.bkz, ptr %i.auz, align 8, !tbaa !12
  %i.bla = or i32 %.9806.3, %i.awc                ; 3 uses
  %.pre = shl i32 %i.bla, 1
  %.pre1189 = lshr i32 %i.bla, 1
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit973, %bb.bo
  %.pre-phi1190 = phi i32 [ %.pre1189, %.loopexit973 ], [ %i.awf, %bb.bo ]
  %.pre-phi = phi i32 [ %.pre, %.loopexit973 ], [ %i.awd, %bb.bo ]
  %i.blb = phi ptr [ %i.bcj, %.loopexit973 ], [ %i.avo, %bb.bo ] ; 2 uses
  %.10807 = phi i32 [ %i.bla, %.loopexit973 ], [ %i.awc, %bb.bo ] ; 2 uses
  %i.blc = trunc i32 %.10807 to i16
  store i16 %i.blc, ptr %.08121064, align 4, !tbaa !65
  %i.bld = and i32 %.pre-phi, 57344
  %i.ble = and i32 %.pre-phi1190, 28672
  %i.blf = or i32 %i.ble, %i.bld
  %i.blg = or i32 %i.blf, %.0808
  %i.blh = or i32 %i.blg, %.10807
  %i.bli = and i32 %i.blh, 61440
  %i.blj = getelementptr inbounds nuw i8, ptr %.08101066, i64 16
  %i.blk = getelementptr inbounds nuw i8, ptr %.08111065, i64 2
  %i.bll = getelementptr inbounds nuw i8, ptr %.08121064, i64 2
  %i.blm = icmp ult i32 %i.avp, %6
  br i1 %i.blm, label %.lr.ph1070, label %._crit_edge1071, !llvm.loop !57

bb.dd:                                            ; preds = %._crit_edge1079
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr noundef %15, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5)
  %.promoted1107 = load ptr, ptr %15, align 8
  br i1 %.not1143, label %._crit_edge1113, label %.lr.ph1112

.lr.ph1112:                                       ; preds = %bb.dd
  %i.bln = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.blr = sub nsw i32 28, %2                     ; 4 uses
  %i.bls = zext i32 %8 to i64                     ; 3 uses
  br i1 %.not1131, label %._crit_edge1113, label %.lr.ph1096.us.preheader

.lr.ph1096.us.preheader:                          ; preds = %.lr.ph1112
  %.promoted1124 = load i8, ptr %i.blp, align 8
  %.promoted1121 = load i32, ptr %i.bln, align 8
  %.promoted1120 = load i64, ptr %i.blq, align 8
  %.promoted = load i32, ptr %i.blo, align 4
  %i.blt = zext i32 %7 to i64
  br label %.lr.ph1096.us

.lr.ph1096.us:                                    ; preds = %.lr.ph1096.us.preheader, %._crit_edge1097.us
  %indvars.iv1187 = phi i64 [ 0, %.lr.ph1096.us.preheader ], [ %indvars.iv.next1188, %._crit_edge1097.us ] ; 3 uses
  %.promoted11061128.us = phi i8 [ %.promoted1124, %.lr.ph1096.us.preheader ], [ %.promoted11061126.us, %._crit_edge1097.us ] ; 2 uses
  %.promoted10991123.us = phi i32 [ %.promoted1121, %.lr.ph1096.us.preheader ], [ %i.bvg, %._crit_edge1097.us ]
  %i.blu = phi i64 [ %.promoted1120, %.lr.ph1096.us.preheader ], [ %i.bvf, %._crit_edge1097.us ]
  %.promoted11011119.us = phi i32 [ %.promoted, %.lr.ph1096.us.preheader ], [ %.promoted11011115.us, %._crit_edge1097.us ] ; 2 uses
  %.lcssa10821090.lcssa11081109.us = phi ptr [ %.promoted1107, %.lr.ph1096.us.preheader ], [ %.lcssa10821087.us, %._crit_edge1097.us ]
  %i.blv = lshr exact i64 %indvars.iv1187, 2
  %i.blw = trunc nuw nsw i64 %i.blv to i32
  %i.blx = mul i32 %i.arf, %i.blw
  %i.bly = zext i32 %i.blx to i64
  %i.blz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bly
  %i.bma = trunc nuw i64 %indvars.iv1187 to i32
  %i.bmb = mul i32 %8, %i.bma
  %i.bmc = zext i32 %i.bmb to i64
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bmc
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph1096.us, %.loopexit.us
  %.promoted11061127.us = phi i8 [ %.promoted11061128.us, %.lr.ph1096.us ], [ %.promoted11061126.us, %.loopexit.us ]
  %.promoted11011118.us = phi i32 [ %.promoted11011119.us, %.lr.ph1096.us ], [ %.promoted11011115.us, %.loopexit.us ] ; 2 uses
  %i.bme = phi i8 [ %.promoted11061128.us, %.lr.ph1096.us ], [ %i.bst, %.loopexit.us ] ; 2 uses
  %.lcssa10831105.us = phi i32 [ %.promoted11011119.us, %.lr.ph1096.us ], [ %.lcssa10831102.us, %.loopexit.us ] ; 9 uses
  %.pre.i1100.us = phi i64 [ %i.blu, %.lr.ph1096.us ], [ %i.bvf, %.loopexit.us ] ; 2 uses
  %i.bmf = phi i32 [ %.promoted10991123.us, %.lr.ph1096.us ], [ %i.bvg, %.loopexit.us ] ; 4 uses
  %.07651094.us = phi i32 [ 0, %.lr.ph1096.us ], [ %i.bvh, %.loopexit.us ]
  %.07661093.us = phi ptr [ %i.bmd, %.lr.ph1096.us ], [ %i.bvi, %.loopexit.us ] ; 4 uses
  %.07671092.us = phi ptr [ %i.blz, %.lr.ph1096.us ], [ %i.bsw, %.loopexit.us ] ; 2 uses
  %.lcssa108210901091.us = phi ptr [ %.lcssa10821090.lcssa11081109.us, %.lr.ph1096.us ], [ %.lcssa10821087.us, %.loopexit.us ] ; 7 uses
  %i.bmg = icmp ult i32 %i.bmf, 32
  br i1 %i.bmg, label %bb.df, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.df:                                            ; preds = %bb.de
  %i.bmh = icmp sgt i32 %.lcssa10831105.us, 3
  br i1 %i.bmh, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bmi = icmp sgt i32 %.lcssa10831105.us, 0
  br i1 %i.bmi, label %.preheader.i.i.us.preheader, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

.preheader.i.i.us.preheader:                      ; preds = %bb.dg
  %xtraiter1354 = and i32 %.lcssa10831105.us, 3   ; 3 uses
  %i.bmj = icmp ult i32 %.lcssa10831105.us, 4
  br i1 %i.bmj, label %.preheader.i.i.us.epil.preheader, label %.preheader.i.i.us.preheader.new

.preheader.i.i.us.preheader.new:                  ; preds = %.preheader.i.i.us.preheader
  %unroll_iter1361 = and i32 %.lcssa10831105.us, 2147483644
  br label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %.preheader.i.i.us, %.preheader.i.i.us.preheader.new
  %i.bmk = phi ptr [ %.lcssa108210901091.us, %.preheader.i.i.us.preheader.new ], [ %i.bnd, %.preheader.i.i.us ] ; 5 uses
  %.047.i.i.us = phi i32 [ 0, %.preheader.i.i.us.preheader.new ], [ %i.bnh, %.preheader.i.i.us ]
  %.04446.i.i.us = phi i32 [ 24, %.preheader.i.i.us.preheader.new ], [ %i.bni, %.preheader.i.i.us ] ; 5 uses
  %niter1362 = phi i32 [ 0, %.preheader.i.i.us.preheader.new ], [ %niter1362.next.3, %.preheader.i.i.us ]
  %i.bml = getelementptr inbounds i8, ptr %i.bmk, i64 -1
  %i.bmm = load i8, ptr %i.bmk, align 1, !tbaa !12
  %i.bmn = zext i8 %i.bmm to i32
  %i.bmo = shl i32 %i.bmn, %.04446.i.i.us
  %i.bmp = or i32 %i.bmo, %.047.i.i.us
  %i.bmq = add nsw i32 %.04446.i.i.us, -8
  %i.bmr = getelementptr inbounds i8, ptr %i.bmk, i64 -2
  %i.bms = load i8, ptr %i.bml, align 1, !tbaa !12
  %i.bmt = zext i8 %i.bms to i32
  %i.bmu = shl i32 %i.bmt, %i.bmq
  %i.bmv = or i32 %i.bmu, %i.bmp
  %i.bmw = add nsw i32 %.04446.i.i.us, -16
  %i.bmx = getelementptr inbounds i8, ptr %i.bmk, i64 -3
  %i.bmy = load i8, ptr %i.bmr, align 1, !tbaa !12
  %i.bmz = zext i8 %i.bmy to i32
  %i.bna = shl i32 %i.bmz, %i.bmw
  %i.bnb = or i32 %i.bna, %i.bmv
  %i.bnc = add nsw i32 %.04446.i.i.us, -24
  %i.bnd = getelementptr inbounds i8, ptr %i.bmk, i64 -4 ; 2 uses
  %i.bne = load i8, ptr %i.bmx, align 1, !tbaa !12
  %i.bnf = zext i8 %i.bne to i32
  %i.bng = shl i32 %i.bnf, %i.bnc
  %i.bnh = or i32 %i.bng, %i.bnb                  ; 3 uses
  %i.bni = add nsw i32 %.04446.i.i.us, -32        ; 2 uses
  %niter1362.next.3 = add i32 %niter1362, 4       ; 2 uses
  %niter1362.ncmp.3.not = icmp eq i32 %niter1362.next.3, %unroll_iter1361
  br i1 %niter1362.ncmp.3.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa, label %.preheader.i.i.us, !llvm.loop !1

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa: ; preds = %.preheader.i.i.us
  %lcmp.mod1358.not = icmp eq i32 %xtraiter1354, 0
  br i1 %lcmp.mod1358.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, label %.preheader.i.i.us.epil.preheader

.preheader.i.i.us.epil.preheader:                 ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa, %.preheader.i.i.us.preheader
  %.epil.init = phi ptr [ %.lcssa108210901091.us, %.preheader.i.i.us.preheader ], [ %i.bnd, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %.047.i.i.us.epil.init = phi i32 [ 0, %.preheader.i.i.us.preheader ], [ %i.bnh, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %.04446.i.i.us.epil.init = phi i32 [ 24, %.preheader.i.i.us.preheader ], [ %i.bni, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %lcmp.mod1360 = icmp ne i32 %xtraiter1354, 0
  tail call void @llvm.assume(i1 %lcmp.mod1360)
  br label %.preheader.i.i.us.epil

.preheader.i.i.us.epil:                           ; preds = %.preheader.i.i.us.epil, %.preheader.i.i.us.epil.preheader
  %i.bnj = phi ptr [ %i.bnk, %.preheader.i.i.us.epil ], [ %.epil.init, %.preheader.i.i.us.epil.preheader ] ; 2 uses
  %.047.i.i.us.epil = phi i32 [ %i.bno, %.preheader.i.i.us.epil ], [ %.047.i.i.us.epil.init, %.preheader.i.i.us.epil.preheader ]
  %.04446.i.i.us.epil = phi i32 [ %i.bnp, %.preheader.i.i.us.epil ], [ %.04446.i.i.us.epil.init, %.preheader.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter1355 = phi i32 [ %epil.iter1355.next, %.preheader.i.i.us.epil ], [ 0, %.preheader.i.i.us.epil.preheader ]
  %i.bnk = getelementptr inbounds i8, ptr %i.bnj, i64 -1
  %i.bnl = load i8, ptr %i.bnj, align 1, !tbaa !12
  %i.bnm = zext i8 %i.bnl to i32
  %i.bnn = shl i32 %i.bnm, %.04446.i.i.us.epil
  %i.bno = or i32 %i.bnn, %.047.i.i.us.epil       ; 2 uses
  %i.bnp = add nsw i32 %.04446.i.i.us.epil, -8
  %epil.iter1355.next = add i32 %epil.iter1355, 1 ; 2 uses
  %epil.iter1355.cmp.not = icmp eq i32 %epil.iter1355.next, %xtraiter1354
  br i1 %epil.iter1355.cmp.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, label %.preheader.i.i.us.epil, !llvm.loop !58

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us: ; preds = %.preheader.i.i.us.epil, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa
  %.lcssa = phi i32 [ %i.bnh, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ], [ %i.bno, %.preheader.i.i.us.epil ]
  %scevgep1183 = getelementptr i8, ptr %.lcssa108210901091.us, i64 -1
  %i.bnq = add nsw i32 %.lcssa10831105.us, -1
  %i.bnr = zext nneg i32 %i.bnq to i64
  %i.bns = sub nsw i64 0, %i.bnr
  %scevgep1184 = getelementptr i8, ptr %scevgep1183, i64 %i.bns
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

bb.dh:                                            ; preds = %bb.df
  %i.bnt = getelementptr inbounds i8, ptr %.lcssa108210901091.us, i64 -3
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !25
  %i.bnv = getelementptr inbounds i8, ptr %.lcssa108210901091.us, i64 -4
  %i.bnw = add nsw i32 %.lcssa10831105.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, %bb.dh
  %.sink = phi i32 [ %i.bnw, %bb.dh ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ] ; 3 uses
  %.lcssa10821089.us.ph = phi ptr [ %i.bnv, %bb.dh ], [ %scevgep1184, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  %.1.i.i.us.ph = phi i32 [ %i.bnu, %bb.dh ], [ %.lcssa, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  store i32 %.sink, ptr %i.blo, align 4, !tbaa !30
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split, %bb.dg
  %.promoted11011117.us = phi i32 [ %.promoted11011118.us, %bb.dg ], [ %.sink, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 2 uses
  %.lcssa10831104.us = phi i32 [ %.lcssa10831105.us, %bb.dg ], [ %.sink, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 9 uses
  %.lcssa10821089.us = phi ptr [ %.lcssa108210901091.us, %bb.dg ], [ %.lcssa10821089.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 7 uses
  %.1.i.i.us = phi i32 [ 0, %bb.dg ], [ %.1.i.i.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 9 uses
  %i.bnx = lshr i32 %.1.i.i.us, 24
  %i.bny = trunc nuw i8 %i.bme to i1
  %i.bnz = and i32 %.1.i.i.us, 2130706432
  %i.boa = icmp eq i32 %i.bnz, 2130706432
  %i.bob = select i1 %i.bny, i1 %i.boa, i1 false
  %i.boc = select i1 %i.bob, i32 7, i32 8         ; 2 uses
  %i.bod = icmp ugt i32 %.1.i.i.us, -1879048193
  %i.boe = lshr i32 %.1.i.i.us, 16
end_hunk_1
begin_hunk_2_@_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb:bb.a
  %i.boo = lshr i32 %.1.i.i.us, 8
  %i.bop = and i32 %i.boo, 255                    ; 2 uses
  %i.boq = shl nuw nsw i32 %i.bop, %i.bom
  %i.bor = or i32 %i.boh, %i.boq
  %i.bos = and i32 %.1.i.i.us, 32512
  %i.bot = icmp eq i32 %i.bos, 32512
  %i.bou = select i1 %i.bon, i1 %i.bot, i1 false
  %i.bov = select i1 %i.bou, i32 7, i32 8
  %i.bow = add nuw nsw i32 %i.bom, %i.bov         ; 2 uses
  %i.box = icmp samesign ugt i32 %i.bop, 143
  %i.boy = and i32 %.1.i.i.us, 255                ; 2 uses
  %i.boz = shl nuw i32 %i.boy, %i.bow
  %i.bpa = or i32 %i.bor, %i.boz
  %i.bpb = and i32 %.1.i.i.us, 127
  %i.bpc = icmp eq i32 %i.bpb, 127
  %i.bpd = select i1 %i.box, i1 %i.bpc, i1 false
  %i.bpe = select i1 %i.bpd, i32 7, i32 8
  %i.bpf = icmp samesign ugt i32 %i.boy, 143      ; 2 uses
  %i.bpg = zext i1 %i.bpf to i8                   ; 3 uses
  %i.bph = zext i32 %i.bpa to i64
  %i.bpi = zext nneg i32 %i.bmf to i64
  %i.bpj = shl nuw nsw i64 %i.bph, %i.bpi
  %i.bpk = or i64 %i.bpj, %.pre.i1100.us          ; 3 uses
  store i64 %i.bpk, ptr %i.blq, align 8, !tbaa !22
  %i.bpl = add nuw nsw i32 %i.bpe, %i.bmf
  %i.bpm = add nuw nsw i32 %i.bpl, %i.bow         ; 5 uses
  store i32 %i.bpm, ptr %i.bln, align 8, !tbaa !23
  store i8 %i.bpg, ptr %i.blp, align 8, !tbaa !31
  %i.bpn = icmp samesign ult i32 %i.bpm, 32
  br i1 %i.bpn, label %bb.di, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.di:                                            ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %i.bpo = icmp sgt i32 %.lcssa10831104.us, 3
  br i1 %i.bpo, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bpp = icmp sgt i32 %.lcssa10831104.us, 0
  br i1 %i.bpp, label %.preheader.i7.i.us.preheader, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

.preheader.i7.i.us.preheader:                     ; preds = %bb.dj
  %xtraiter1363 = and i32 %.lcssa10831104.us, 3   ; 3 uses
  %i.bpq = icmp ult i32 %.lcssa10831104.us, 4
  br i1 %i.bpq, label %.preheader.i7.i.us.epil.preheader, label %.preheader.i7.i.us.preheader.new

.preheader.i7.i.us.preheader.new:                 ; preds = %.preheader.i7.i.us.preheader
  %unroll_iter1372 = and i32 %.lcssa10831104.us, 2147483644
  br label %.preheader.i7.i.us

.preheader.i7.i.us:                               ; preds = %.preheader.i7.i.us, %.preheader.i7.i.us.preheader.new
  %i.bpr = phi ptr [ %.lcssa10821089.us, %.preheader.i7.i.us.preheader.new ], [ %i.bqk, %.preheader.i7.i.us ] ; 5 uses
  %.047.i9.i.us = phi i32 [ 0, %.preheader.i7.i.us.preheader.new ], [ %i.bqo, %.preheader.i7.i.us ]
  %.04446.i10.i.us = phi i32 [ 24, %.preheader.i7.i.us.preheader.new ], [ %i.bqp, %.preheader.i7.i.us ] ; 5 uses
  %niter1373 = phi i32 [ 0, %.preheader.i7.i.us.preheader.new ], [ %niter1373.next.3, %.preheader.i7.i.us ]
  %i.bps = getelementptr inbounds i8, ptr %i.bpr, i64 -1
  %i.bpt = load i8, ptr %i.bpr, align 1, !tbaa !12
  %i.bpu = zext i8 %i.bpt to i32
  %i.bpv = shl i32 %i.bpu, %.04446.i10.i.us
  %i.bpw = or i32 %i.bpv, %.047.i9.i.us
  %i.bpx = add nsw i32 %.04446.i10.i.us, -8
  %i.bpy = getelementptr inbounds i8, ptr %i.bpr, i64 -2
  %i.bpz = load i8, ptr %i.bps, align 1, !tbaa !12
  %i.bqa = zext i8 %i.bpz to i32
  %i.bqb = shl i32 %i.bqa, %i.bpx
  %i.bqc = or i32 %i.bqb, %i.bpw
  %i.bqd = add nsw i32 %.04446.i10.i.us, -16
  %i.bqe = getelementptr inbounds i8, ptr %i.bpr, i64 -3
  %i.bqf = load i8, ptr %i.bpy, align 1, !tbaa !12
  %i.bqg = zext i8 %i.bqf to i32
  %i.bqh = shl i32 %i.bqg, %i.bqd
  %i.bqi = or i32 %i.bqh, %i.bqc
  %i.bqj = add nsw i32 %.04446.i10.i.us, -24
  %i.bqk = getelementptr inbounds i8, ptr %i.bpr, i64 -4 ; 2 uses
  %i.bql = load i8, ptr %i.bqe, align 1, !tbaa !12
  %i.bqm = zext i8 %i.bql to i32
  %i.bqn = shl i32 %i.bqm, %i.bqj
  %i.bqo = or i32 %i.bqn, %i.bqi                  ; 3 uses
  %i.bqp = add nsw i32 %.04446.i10.i.us, -32      ; 2 uses
  %niter1373.next.3 = add i32 %niter1373, 4       ; 2 uses
  %niter1373.ncmp.3.not = icmp eq i32 %niter1373.next.3, %unroll_iter1372
  br i1 %niter1373.ncmp.3.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa, label %.preheader.i7.i.us, !llvm.loop !1

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa: ; preds = %.preheader.i7.i.us
  %lcmp.mod1369.not = icmp eq i32 %xtraiter1363, 0
  br i1 %lcmp.mod1369.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, label %.preheader.i7.i.us.epil.preheader

.preheader.i7.i.us.epil.preheader:                ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa, %.preheader.i7.i.us.preheader
  %.epil.init1366 = phi ptr [ %.lcssa10821089.us, %.preheader.i7.i.us.preheader ], [ %i.bqk, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %.047.i9.i.us.epil.init = phi i32 [ 0, %.preheader.i7.i.us.preheader ], [ %i.bqo, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %.04446.i10.i.us.epil.init = phi i32 [ 24, %.preheader.i7.i.us.preheader ], [ %i.bqp, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %lcmp.mod1371 = icmp ne i32 %xtraiter1363, 0
  tail call void @llvm.assume(i1 %lcmp.mod1371)
  br label %.preheader.i7.i.us.epil

.preheader.i7.i.us.epil:                          ; preds = %.preheader.i7.i.us.epil, %.preheader.i7.i.us.epil.preheader
  %i.bqq = phi ptr [ %i.bqr, %.preheader.i7.i.us.epil ], [ %.epil.init1366, %.preheader.i7.i.us.epil.preheader ] ; 2 uses
  %.047.i9.i.us.epil = phi i32 [ %i.bqv, %.preheader.i7.i.us.epil ], [ %.047.i9.i.us.epil.init, %.preheader.i7.i.us.epil.preheader ]
  %.04446.i10.i.us.epil = phi i32 [ %i.bqw, %.preheader.i7.i.us.epil ], [ %.04446.i10.i.us.epil.init, %.preheader.i7.i.us.epil.preheader ] ; 2 uses
  %epil.iter1364 = phi i32 [ %epil.iter1364.next, %.preheader.i7.i.us.epil ], [ 0, %.preheader.i7.i.us.epil.preheader ]
  %i.bqr = getelementptr inbounds i8, ptr %i.bqq, i64 -1
  %i.bqs = load i8, ptr %i.bqq, align 1, !tbaa !12
  %i.bqt = zext i8 %i.bqs to i32
  %i.bqu = shl i32 %i.bqt, %.04446.i10.i.us.epil
  %i.bqv = or i32 %i.bqu, %.047.i9.i.us.epil      ; 2 uses
  %i.bqw = add nsw i32 %.04446.i10.i.us.epil, -8
  %epil.iter1364.next = add i32 %epil.iter1364, 1 ; 2 uses
  %epil.iter1364.cmp.not = icmp eq i32 %epil.iter1364.next, %xtraiter1363
  br i1 %epil.iter1364.cmp.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, label %.preheader.i7.i.us.epil, !llvm.loop !59

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us: ; preds = %.preheader.i7.i.us.epil, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa
  %.lcssa1332 = phi i32 [ %i.bqo, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ], [ %i.bqv, %.preheader.i7.i.us.epil ]
  %scevgep1185 = getelementptr i8, ptr %.lcssa10821089.us, i64 -1
  %i.bqx = add nsw i32 %.lcssa10831104.us, -1
  %i.bqy = zext nneg i32 %i.bqx to i64
  %i.bqz = sub nsw i64 0, %i.bqy
  %scevgep1186 = getelementptr i8, ptr %scevgep1185, i64 %i.bqz
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

bb.dk:                                            ; preds = %bb.di
  %i.bra = getelementptr inbounds i8, ptr %.lcssa10821089.us, i64 -3
  %i.brb = load i32, ptr %i.bra, align 4, !tbaa !25
  %i.brc = getelementptr inbounds i8, ptr %.lcssa10821089.us, i64 -4
  %i.brd = add nsw i32 %.lcssa10831104.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, %bb.dk
  %.sink1249 = phi i32 [ %i.brd, %bb.dk ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ] ; 3 uses
  %.lcssa10821088.us.ph = phi ptr [ %i.brc, %bb.dk ], [ %scevgep1186, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  %.1.i6.i.us.ph = phi i32 [ %i.brb, %bb.dk ], [ %.lcssa1332, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  store i32 %.sink1249, ptr %i.blo, align 4, !tbaa !30
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split, %bb.dj
  %.promoted11011116.us = phi i32 [ %.promoted11011117.us, %bb.dj ], [ %.sink1249, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa10831103.us = phi i32 [ %.lcssa10831104.us, %bb.dj ], [ %.sink1249, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa10821088.us = phi ptr [ %.lcssa10821089.us, %bb.dj ], [ %.lcssa10821088.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.1.i6.i.us = phi i32 [ 0, %bb.dj ], [ %.1.i6.i.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ] ; 9 uses
  %i.bre = lshr i32 %.1.i6.i.us, 24
  %i.brf = and i32 %.1.i6.i.us, 2130706432
  %i.brg = icmp eq i32 %i.brf, 2130706432
  %i.brh = select i1 %i.bpf, i1 %i.brg, i1 false
  %i.bri = select i1 %i.brh, i32 7, i32 8         ; 2 uses
  %i.brj = icmp ugt i32 %.1.i6.i.us, -1879048193
  %i.brk = lshr i32 %.1.i6.i.us, 16
  %i.brl = and i32 %i.brk, 255                    ; 2 uses
  %i.brm = shl nuw nsw i32 %i.brl, %i.bri
  %i.brn = or i32 %i.brm, %i.bre
  %i.bro = and i32 %.1.i6.i.us, 8323072
  %i.brp = icmp eq i32 %i.bro, 8323072
  %i.brq = and i1 %i.brj, %i.brp
  %i.brr = select i1 %i.brq, i32 7, i32 8
  %i.brs = add nuw nsw i32 %i.bri, %i.brr         ; 2 uses
  %i.brt = icmp samesign ugt i32 %i.brl, 143
  %i.bru = lshr i32 %.1.i6.i.us, 8
  %i.brv = and i32 %i.bru, 255                    ; 2 uses
  %i.brw = shl nuw nsw i32 %i.brv, %i.brs
  %i.brx = or i32 %i.brn, %i.brw
  %i.bry = and i32 %.1.i6.i.us, 32512
  %i.brz = icmp eq i32 %i.bry, 32512
  %i.bsa = select i1 %i.brt, i1 %i.brz, i1 false
  %i.bsb = select i1 %i.bsa, i32 7, i32 8
  %i.bsc = add nuw nsw i32 %i.brs, %i.bsb         ; 2 uses
  %i.bsd = icmp samesign ugt i32 %i.brv, 143
  %i.bse = and i32 %.1.i6.i.us, 255               ; 2 uses
  %i.bsf = shl nuw i32 %i.bse, %i.bsc
  %i.bsg = or i32 %i.brx, %i.bsf
  %i.bsh = and i32 %.1.i6.i.us, 127
  %i.bsi = icmp eq i32 %i.bsh, 127
  %i.bsj = select i1 %i.bsd, i1 %i.bsi, i1 false
  %i.bsk = select i1 %i.bsj, i32 7, i32 8
  %i.bsl = icmp samesign ugt i32 %i.bse, 143
  %i.bsm = zext i1 %i.bsl to i8                   ; 3 uses
  %i.bsn = zext i32 %i.bsg to i64
  %i.bso = zext nneg i32 %i.bpm to i64
  %i.bsp = shl nuw nsw i64 %i.bsn, %i.bso
  %i.bsq = or i64 %i.bsp, %i.bpk
  %i.bsr = add nuw nsw i32 %i.bsk, %i.bpm
  %i.bss = add nuw nsw i32 %i.bsr, %i.bsc
  store i8 %i.bsm, ptr %i.blp, align 8, !tbaa !31
  br label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us: ; preds = %bb.de, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %.promoted11061126.us = phi i8 [ %i.bsm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bpg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11061127.us, %bb.de ] ; 2 uses
  %.promoted11011115.us = phi i32 [ %.promoted11011116.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.promoted11011117.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11011118.us, %bb.de ] ; 2 uses
  %i.bst = phi i8 [ %i.bsm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bpg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bme, %bb.de ]
  %.lcssa10831102.us = phi i32 [ %.lcssa10831103.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa10831104.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa10831105.us, %bb.de ]
  %i.bsu = phi i32 [ %i.bss, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bpm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bmf, %bb.de ]
  %.lcssa10821087.us = phi ptr [ %.lcssa10821088.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa10821089.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa108210901091.us, %bb.de ] ; 3 uses
  %i.bsv = phi i64 [ %i.bsq, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bpk, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.pre.i1100.us, %bb.de ] ; 2 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %.07671092.us, i64 2
  %i.bsx = load i16, ptr %.07671092.us, align 2, !tbaa !65 ; 2 uses
  %.not892.us = icmp eq i16 %i.bsx, 0
  br i1 %.not892.us, label %.loopexit.us, label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %i.bsy = insertelement <8 x i16> poison, i16 %i.bsx, i64 0
  %i.bsz = bitcast <8 x i16> %i.bsy to <16 x i8>
  %i.bta = shufflevector <16 x i8> %i.bsz, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.btb = and <16 x i8> %i.bta, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.btc = icmp ne <16 x i8> %i.btb, zeroinitializer
  %.neg.us = zext <16 x i1> %i.btc to <16 x i8>   ; 6 uses
  %50 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg.us, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.btd = add nuw nsw <16 x i8> %50, %.neg.us    ; 2 uses
  %51 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.btd, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bte = add nuw nsw <16 x i8> %51, %i.btd      ; 2 uses
  %52 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bte, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.btf = add nuw nsw <16 x i8> %52, %i.bte      ; 2 uses
  %53 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.btf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.btg = add <16 x i8> %53, %i.btf              ; 5 uses
  %54 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.btg, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 poison, i32 27, i32 poison, i32 poison, i32 poison>
  %i.bth = trunc i64 %i.bsv to i16
  %i.bti = insertelement <8 x i16> poison, i16 %i.bth, i64 0
  %i.btj = bitcast <8 x i16> %i.bti to <16 x i8>
  %i.btk = shufflevector <16 x i8> %i.btj, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.btl = and <16 x i8> %i.btk, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not969.us = icmp eq <16 x i8> %i.btl, zeroinitializer
  %i.btm = select <16 x i1> %.not969.us, <16 x i8> splat (i8 3), <16 x i8> splat (i8 1) ; 4 uses
  %i.btn = load <2 x i64>, ptr %.07661093.us, align 16, !tbaa !12
  %i.bto = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %.not970.us = icmp eq <16 x i8> %i.bto, zeroinitializer
  %i.btp = shufflevector <16 x i8> %54, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.btq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.btm, <16 x i8> %i.btp)
  %i.btr = select <16 x i1> %.not970.us, <16 x i8> zeroinitializer, <16 x i8> %i.btq
  %i.bts = bitcast <16 x i8> %i.btr to <4 x i32>
  %i.btt = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bts, i32 range(i32 -17, 32) %i.blr)
  %i.btu = bitcast <4 x i32> %i.btt to <2 x i64>
  %i.btv = xor <2 x i64> %i.btn, %i.btu
  store <2 x i64> %i.btv, ptr %.07661093.us, align 16, !tbaa !12
  %i.btw = getelementptr inbounds nuw [4 x i8], ptr %.07661093.us, i64 %i.bls ; 3 uses
  %i.btx = load <2 x i64>, ptr %i.btw, align 16, !tbaa !12
  %i.bty = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %.not970.us.1 = icmp eq <16 x i8> %i.bty, zeroinitializer
  %i.btz = shufflevector <16 x i8> %i.btg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bua = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.btm, <16 x i8> %i.btz)
  %i.bub = select <16 x i1> %.not970.us.1, <16 x i8> zeroinitializer, <16 x i8> %i.bua
  %i.buc = bitcast <16 x i8> %i.bub to <4 x i32>
  %i.bud = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.buc, i32 range(i32 -17, 32) %i.blr)
  %i.bue = bitcast <4 x i32> %i.bud to <2 x i64>
  %i.buf = xor <2 x i64> %i.btx, %i.bue
  store <2 x i64> %i.buf, ptr %i.btw, align 16, !tbaa !12
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.bls ; 3 uses
  %i.buh = load <2 x i64>, ptr %i.bug, align 16, !tbaa !12
  %i.bui = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %.not970.us.2 = icmp eq <16 x i8> %i.bui, zeroinitializer
  %i.buj = shufflevector <16 x i8> %i.btg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.buk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.btm, <16 x i8> %i.buj)
  %i.bul = select <16 x i1> %.not970.us.2, <16 x i8> zeroinitializer, <16 x i8> %i.buk
  %i.bum = bitcast <16 x i8> %i.bul to <4 x i32>
  %i.bun = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bum, i32 range(i32 -17, 32) %i.blr)
  %i.buo = bitcast <4 x i32> %i.bun to <2 x i64>
  %i.bup = xor <2 x i64> %i.buh, %i.buo
  store <2 x i64> %i.bup, ptr %i.bug, align 16, !tbaa !12
  %i.buq = getelementptr inbounds nuw [4 x i8], ptr %i.bug, i64 %i.bls ; 2 uses
  %i.bur = load <2 x i64>, ptr %i.buq, align 16, !tbaa !12
  %i.bus = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %.not970.us.3 = icmp eq <16 x i8> %i.bus, zeroinitializer
  %i.but = shufflevector <16 x i8> %i.btg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.buu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.btm, <16 x i8> %i.but)
  %i.buv = select <16 x i1> %.not970.us.3, <16 x i8> zeroinitializer, <16 x i8> %i.buu
  %i.buw = bitcast <16 x i8> %i.buv to <4 x i32>
  %i.bux = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.buw, i32 range(i32 -17, 32) %i.blr)
  %i.buy = bitcast <4 x i32> %i.bux to <2 x i64>
  %i.buz = xor <2 x i64> %i.bur, %i.buy
  store <2 x i64> %i.buz, ptr %i.buq, align 16, !tbaa !12
  %i.bva = bitcast <16 x i8> %i.btg to <8 x i16>
  %i.bvb = extractelement <8 x i16> %i.bva, i64 7
  %i.bvc = lshr i16 %i.bvb, 8
  %i.bvd = zext nneg i16 %i.bvc to i32
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %.0764.us = phi i32 [ 0, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us ], [ %i.bvd, %.loopexit.us.loopexit ] ; 2 uses
  %i.bve = zext nneg i32 %.0764.us to i64
  %i.bvf = lshr i64 %i.bsv, %i.bve                ; 3 uses
  store i64 %i.bvf, ptr %i.blq, align 8, !tbaa !22
  %i.bvg = sub i32 %i.bsu, %.0764.us              ; 3 uses
  store i32 %i.bvg, ptr %i.bln, align 8, !tbaa !23
  %i.bvh = add nuw i32 %.07651094.us, 4           ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %.07661093.us, i64 16
  %i.bvj = icmp ult i32 %i.bvh, %6
  br i1 %i.bvj, label %bb.de, label %._crit_edge1097.us, !llvm.loop !60

._crit_edge1097.us:                               ; preds = %.loopexit.us
  store ptr %.lcssa10821087.us, ptr %15, align 8
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 4 ; 2 uses
  %i.bvk = icmp samesign ult i64 %indvars.iv.next1188, %i.blt
  br i1 %i.bvk, label %.lr.ph1096.us, label %._crit_edge1113, !llvm.loop !61

._crit_edge1113:                                  ; preds = %._crit_edge1097.us, %.lr.ph1112, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %bb.dl

bb.dl:                                            ; preds = %.thread961, %.thread955, %bb.bg, %._crit_edge1113, %._crit_edge1079
  %.18 = phi i1 [ false, %.thread961 ], [ false, %.thread955 ], [ true, %._crit_edge1079 ], [ true, %._crit_edge1113 ], [ true, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dm

bb.dm:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.dl, %bb.h, %bb.i, %bb.e, %bb.f, %bb.c
  %.21 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.n ], [ %.18, %bb.dl ], [ false, %bb.p ], [ false, %bb.o ]
  ret i1 %.21
}

declare noundef ptr @_ZN4ojph11get_warningEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25), (28, 36), (40, 48)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = zext nneg i32 %3 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3                          ; 3 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp eq i32 %i.i, 1
  %i.t = or i64 %i.r, 15
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 4 uses
  %i.u = add nsw i32 %3, -2                       ; 2 uses
  store i32 %i.u, ptr %i.j, align 4, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !34
  store i32 8, ptr %i.f, align 8, !tbaa !33
  %i.w = icmp eq i64 %spec.select, 255            ; 2 uses
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.h, align 8, !tbaa !35
  %exitcond.not = icmp eq i32 %i.p, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.a
  %.lcssa40 = phi i64 [ %spec.select, %bb.a ], [ %i.am, %bb.e ], [ %i.bb, %bb.h ], [ %i.bq, %bb.k ]
  %.lcssa = phi i32 [ 8, %bb.a ], [ %i.an, %bb.e ], [ %i.bc, %bb.h ], [ %i.br, %bb.k ]
  %i.y = sub nsw i32 64, %.lcssa
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %.lcssa40, %i.z
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp samesign ugt i32 %3, 2             ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !12
  %i.ad = zext i8 %i.ac to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i64 [ %i.ad, %bb.d ], [ 255, %bb.c ] ; 2 uses
  %i.af = icmp eq i32 %i.u, 1
  %i.ag = or i64 %i.ae, 15
  %spec.select.1 = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 2 uses
  %i.ah = add nsw i32 %3, -3                      ; 2 uses
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !36
  %i.ai = zext i1 %i.ab to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !32
  %narrow.1 = select i1 %i.w, i8 7, i8 8          ; 2 uses
  %i.ak = zext nneg i8 %narrow.1 to i64
  %i.al = shl i64 %spec.select, %i.ak
  %i.am = or i64 %i.al, %spec.select.1            ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !34
  %narrow = add nuw nsw i8 %narrow.1, 8           ; 2 uses
  %i.an = zext nneg i8 %narrow to i32             ; 2 uses
  store i32 %i.an, ptr %i.f, align 8, !tbaa !33
  %i.ao = icmp eq i64 %spec.select.1, 255         ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.h, align 8, !tbaa !35
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  br i1 %exitcond.not.1, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %3, 3             ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.as = zext i8 %i.ar to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = phi i64 [ %i.as, %bb.g ], [ 255, %bb.f ] ; 2 uses
  %i.au = icmp eq i32 %i.ah, 1
  %i.av = or i64 %i.at, 15
  %spec.select.2 = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.cg = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store ptr %i.cj, ptr %0, align 8, !tbaa !37
  %i.ck = add nsw i32 %i.aj, -4
  store i32 %i.ck, ptr %i.d, align 4, !tbaa !30
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11

bb.h:                                             ; preds = %bb.f
  %i.cl = icmp sgt i32 %i.aj, 0
  br i1 %i.cl, label %.preheader.i7, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11

.preheader.i7:                                    ; preds = %bb.h
  %.promoted.i8 = load ptr, ptr %0, align 8, !tbaa !37 ; 2 uses
  %xtraiter26 = and i32 %i.aj, 1
  %i.cm = icmp eq i32 %i.aj, 1
  br i1 %i.cm, label %.epil.preheader25, label %.preheader.i7.new

.preheader.i7.new:                                ; preds = %.preheader.i7
  %unroll_iter34 = and i32 %i.aj, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i7.new
  %i.cn = phi ptr [ %.promoted.i8, %.preheader.i7.new ], [ %i.cw, %bb.i ] ; 3 uses
  %.047.i9 = phi i32 [ 0, %.preheader.i7.new ], [ %i.da, %bb.i ]
  %.04446.i10 = phi i32 [ 24, %.preheader.i7.new ], [ %i.dc, %bb.i ] ; 3 uses
  %i.co = phi i32 [ %i.aj, %.preheader.i7.new ], [ %i.db, %bb.i ] ; 2 uses
  %niter35 = phi i32 [ 0, %.preheader.i7.new ], [ %niter35.next.1, %bb.i ]
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -1 ; 2 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !37
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !12
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl i32 %i.cr, %.04446.i10
  %i.ct = or i32 %i.cs, %.047.i9
  %i.cu = add nsw i32 %i.co, -1
  store i32 %i.cu, ptr %i.d, align 4, !tbaa !30
  %i.cv = add nsw i32 %.04446.i10, -8
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 -2 ; 3 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !37
  %i.cx = load i8, ptr %i.cp, align 1, !tbaa !12
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl i32 %i.cy, %i.cv
  %i.da = or i32 %i.cz, %i.ct                     ; 3 uses
  %i.db = add nsw i32 %i.co, -2                   ; 3 uses
  store i32 %i.db, ptr %i.d, align 4, !tbaa !30
  %i.dc = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter35.next.1 = add nuw nsw i32 %niter35, 2   ; 2 uses
  %niter35.ncmp.1.not = icmp eq i32 %niter35.next.1, %unroll_iter34
  br i1 %niter35.ncmp.1.not, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa, label %bb.i, !llvm.loop !2

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod31.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod31.not, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11, label %.epil.preheader25

.epil.preheader25:                                ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa, %.preheader.i7
  %.epil.init28 = phi ptr [ %.promoted.i8, %.preheader.i7 ], [ %i.cw, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa ] ; 2 uses
  %.047.i9.epil.init = phi i32 [ 0, %.preheader.i7 ], [ %i.da, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa ]
  %.04446.i10.epil.init = phi i32 [ 24, %.preheader.i7 ], [ %i.dc, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa ]
  %.epil.init30 = phi i32 [ %i.aj, %.preheader.i7 ], [ %i.db, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.dd = getelementptr inbounds i8, ptr %.epil.init28, i64 -1
  store ptr %i.dd, ptr %0, align 8, !tbaa !37
  %i.de = load i8, ptr %.epil.init28, align 1, !tbaa !12
  %i.df = zext i8 %i.de to i32
  %i.dg = shl i32 %i.df, %.04446.i10.epil.init
  %i.dh = or i32 %i.dg, %.047.i9.epil.init
  %i.di = add nsw i32 %.epil.init30, -1
  store i32 %i.di, ptr %i.d, align 4, !tbaa !30
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11: ; preds = %.epil.preheader25, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa, %bb.g, %bb.h
  %.1.i6 = phi i32 [ %i.ci, %bb.g ], [ 0, %bb.h ], [ %i.da, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader25 ] ; 9 uses
  %i.dj = lshr i32 %.1.i6, 24
  %i.dk = and i32 %.1.i6, 2130706432
  %i.dl = icmp eq i32 %i.dk, 2130706432
  %i.dm = select i1 %i.bu, i1 %i.dl, i1 false
  %i.dn = select i1 %i.dm, i32 7, i32 8           ; 2 uses
  %i.do = icmp ugt i32 %.1.i6, -1879048193
  %i.dp = lshr i32 %.1.i6, 16
  %i.dq = and i32 %i.dp, 255                      ; 2 uses
  %i.dr = shl nuw nsw i32 %i.dq, %i.dn
  %i.ds = or i32 %i.dr, %i.dj
  %i.dt = and i32 %.1.i6, 8323072
  %i.du = icmp eq i32 %i.dt, 8323072
  %i.dv = and i1 %i.do, %i.du
  %i.dw = select i1 %i.dv, i32 7, i32 8
  %i.dx = add nuw nsw i32 %i.dn, %i.dw            ; 2 uses
  %i.dy = icmp samesign ugt i32 %i.dq, 143
  %i.dz = lshr i32 %.1.i6, 8
  %i.ea = and i32 %i.dz, 255                      ; 2 uses
  %i.eb = shl nuw nsw i32 %i.ea, %i.dx
  %i.ec = or i32 %i.ds, %i.eb
  %i.ed = and i32 %.1.i6, 32512
  %i.ee = icmp eq i32 %i.ed, 32512
  %i.ef = select i1 %i.dy, i1 %i.ee, i1 false
  %i.eg = select i1 %i.ef, i32 7, i32 8
  %i.eh = add nuw nsw i32 %i.dx, %i.eg            ; 2 uses
  %i.ei = icmp samesign ugt i32 %i.ea, 143
  %i.ej = and i32 %.1.i6, 255                     ; 2 uses
  %i.ek = shl nuw i32 %i.ej, %i.eh
  %i.el = or i32 %i.ec, %i.ek
  %i.em = and i32 %.1.i6, 127
  %i.en = icmp eq i32 %i.em, 127
  %i.eo = select i1 %i.ei, i1 %i.en, i1 false
  %i.ep = select i1 %i.eo, i32 7, i32 8
  %i.eq = icmp samesign ugt i32 %i.ej, 143
  %i.er = zext i1 %i.eq to i8
  %i.es = zext i32 %i.el to i64
  %i.et = zext nneg i32 %i.cd to i64
  %i.eu = shl nuw nsw i64 %i.es, %i.et
  %i.ev = or i64 %i.eu, %i.cb                     ; 2 uses
  store i64 %i.ev, ptr %i.bz, align 8, !tbaa !22
  %i.ew = add nuw nsw i32 %i.ep, %i.cd
  %i.ex = add nuw nsw i32 %i.ew, %i.eh
  store i32 %i.ex, ptr %i.a, align 8, !tbaa !23
  store i8 %i.er, ptr %i.al, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11
  %i.ey = phi i64 [ %.pre, %._crit_edge ], [ %i.cb, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit ], [ %i.ev, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit11 ]
  %i.ez = trunc i64 %i.ey to i32
  ret i32 %i.ez
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef range(i32 -4077, 2147483646) %2) unnamed_addr #6 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !28
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !12
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !40
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !28
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = xor <16 x i1> %i.j, splat (i1 true)
  %i.l = sext <16 x i1> %i.k to <16 x i8>
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>
  %i.n = or <2 x i64> %i.c, %i.m                  ; 3 uses
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>      ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -1)
  %i.q = and <16 x i1> %i.j, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = and i32 %i.t, 65534                      ; 2 uses
  %.not76.i = icmp eq i32 %i.u, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.am, %.lr.ph.i ], [ %i.n, %bb.a ] ; 2 uses
  %.07378.i = phi i32 [ %i.v, %.lr.ph.i ], [ 128, %bb.a ]
  %.07477.i = phi i32 [ %i.y, %.lr.ph.i ], [ %i.u, %bb.a ] ; 3 uses
  %i.v = add nsw i32 %.07378.i, -1                ; 2 uses
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.x = lshr exact i32 -2147483648, %i.w         ; 2 uses
  %i.y = xor i32 %i.x, %.07477.i
  %i.z = trunc nuw nsw i32 %i.w to i8
  %i.aa = xor i8 %i.z, 31
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = icmp samesign ult <16 x i8> %i.ac, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ae = sext <16 x i1> %i.ad to <16 x i8>       ; 2 uses
  %i.af = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %.079.i, %i.af            ; 2 uses
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ah, <2 x i64> %i.ag, <2 x i64> splat (i64 63))
  %i.aj = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ak = xor <2 x i64> %i.aj, splat (i64 -1)
  %i.al = and <2 x i64> %.079.i, %i.ak
  %i.am = or <2 x i64> %i.ai, %i.al               ; 3 uses
  %.not.i = icmp eq i32 %i.x, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.am to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %bb.a ]
  %.073.lcssa.i = phi i32 [ %i.v, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.am, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = lshr i32 %i.s, 15
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aq = bitcast <16 x i8> %3 to <2 x i64>
  %i.ar = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.aq, <2 x i64> <i64 64, i64 poison>)
  %i.as = or <2 x i64> %i.ar, %.0.lcssa.i
  store <2 x i64> %i.as, ptr %i.a, align 8, !tbaa !12
  %i.at = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 128) ; 2 uses
  %i.au = add nsw i32 %i.at, 7
  %i.av = lshr i32 %i.au, 3
  %i.aw = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.ax = extractelement <8 x i16> %i.aw, i64 7
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.at, -112
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = zext nneg i32 %i.av to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !12
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !27
  %i.bf = add i32 %i.be, %.073.lcssa.i
  store i32 %i.bf, ptr %i.ao, align 8, !tbaa !27
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_17frwd_struct_ssse3EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !28
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !12
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !40
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !28
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = sext <16 x i1> %i.j to <16 x i8>
  %i.l = bitcast <16 x i8> %i.k to <2 x i64>
  %i.m = and <2 x i64> %i.c, %i.l                 ; 3 uses
  %i.n = bitcast <2 x i64> %i.m to <16 x i8>      ; 2 uses
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -1)
  %i.p = and <16 x i1> %i.j, %i.o
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = and i32 %i.s, 65534                      ; 2 uses
  %.not74.i = icmp eq i32 %i.t, 0
  br i1 %.not74.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.077.i = phi <2 x i64> [ %i.al, %.lr.ph.i ], [ %i.m, %bb.a ] ; 2 uses
  %.07176.i = phi i32 [ %i.u, %.lr.ph.i ], [ 128, %bb.a ]
  %.07275.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.u = add nsw i32 %.07176.i, -1                ; 2 uses
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i, i1 true) ; 2 uses
  %i.w = lshr exact i32 -2147483648, %i.v         ; 2 uses
  %i.x = xor i32 %i.w, %.07275.i
  %i.y = trunc nuw nsw i32 %i.v to i8
  %i.z = xor i8 %i.y, 31
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = icmp samesign ult <16 x i8> %i.ab, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ad = sext <16 x i1> %i.ac to <16 x i8>       ; 2 uses
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = and <2 x i64> %.077.i, %i.ae            ; 2 uses
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ah = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ag, <2 x i64> %i.af, <2 x i64> splat (i64 63))
  %i.ai = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.aj = xor <2 x i64> %i.ai, splat (i64 -1)
  %i.ak = and <2 x i64> %.077.i, %i.aj
  %i.al = or <2 x i64> %i.ah, %i.ak               ; 3 uses
  %.not.i = icmp eq i32 %i.w, %.07275.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.al to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_17frwd_struct_ssse3E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ]
  %.071.lcssa.i = phi i32 [ %i.u, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.al, %._crit_edge.loopexit.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = lshr i32 %i.r, 15
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ap = bitcast <16 x i8> %3 to <2 x i64>
  %i.aq = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.ap, <2 x i64> <i64 64, i64 poison>)
  %i.ar = or <2 x i64> %i.aq, %.0.lcssa.i
  store <2 x i64> %i.ar, ptr %i.a, align 8, !tbaa !12
  %i.as = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i, i32 128) ; 2 uses
  %i.at = add nsw i32 %i.as, 7
  %i.au = lshr i32 %i.at, 3
  %i.av = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.aw = extractelement <8 x i16> %i.av, i64 7
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.as, -112
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = zext nneg i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !12
  %i.bd = load i32, ptr %i.an, align 8, !tbaa !27
  %i.be = add i32 %i.bd, %.071.lcssa.i
  store i32 %i.be, ptr %i.an, align 8, !tbaa !27
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 1, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !22
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 3 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !30
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.b:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %.lcssa47 = phi ptr [ %i.bx, %bb.g ], [ %i.cj, %bb.j ], [ %i.da, %bb.m ], [ %i.dr, %bb.p ] ; 3 uses
  %.lcssa46 = phi i64 [ %i.by, %bb.g ], [ %i.cr, %bb.j ], [ %i.di, %bb.m ], [ %i.dz, %bb.p ]
  %.lcssa45 = phi i32 [ %i.cb, %bb.g ], [ %i.cs, %bb.j ], [ %i.dj, %bb.m ], [ %i.ea, %bb.p ] ; 3 uses
  %.lcssa44 = phi i1 [ %i.cc, %bb.g ], [ %i.ct, %bb.j ], [ %i.dk, %bb.m ], [ %i.eb, %bb.p ]
  %.lcssa43 = phi i32 [ %3, %bb.g ], [ %i.m, %bb.j ], [ %i.ce, %bb.m ], [ %i.cv, %bb.p ] ; 3 uses
  %.lcssa42 = phi i32 [ %i.m, %bb.g ], [ %i.ce, %bb.j ], [ %i.cv, %bb.m ], [ %i.dm, %bb.p ]
  %i.o = icmp ugt i32 %.lcssa45, 32
  br i1 %i.o, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %.lcssa43, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %.lcssa47, i64 -3
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = getelementptr inbounds i8, ptr %.lcssa47, i64 -4
  store ptr %i.s, ptr %0, align 8, !tbaa !37
  %i.t = add nsw i32 %.lcssa43, -5
  store i32 %i.t, ptr %i.f, align 4, !tbaa !30
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %.lcssa43, 1
  br i1 %i.u, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.v = phi ptr [ %i.x, %.preheader.i ], [ %.lcssa47, %bb.e ] ; 2 uses
  %.047.i = phi i32 [ %i.ab, %.preheader.i ], [ 0, %bb.e ]
  %.04446.i = phi i32 [ %i.ad, %.preheader.i ], [ 24, %bb.e ] ; 2 uses
  %i.w = phi i32 [ %i.ac, %.preheader.i ], [ %.lcssa42, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !37
  %i.y = load i8, ptr %i.v, align 1, !tbaa !12
  %i.z = zext i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.04446.i
  %i.ab = or i32 %i.aa, %.047.i                   ; 2 uses
  %i.ac = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !30
  %i.ad = add nsw i32 %.04446.i, -8
  %i.ae = icmp samesign ugt i32 %i.w, 1
  br i1 %i.ae, label %.preheader.i, label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.preheader.i, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ %i.ab, %.preheader.i ] ; 9 uses
  %i.af = lshr i32 %.1.i, 24
  %i.ag = and i32 %.1.i, 2130706432
  %i.ah = icmp eq i32 %i.ag, 2130706432
  %i.ai = select i1 %.lcssa44, i1 %i.ah, i1 false
  %i.aj = select i1 %i.ai, i32 7, i32 8           ; 2 uses
  %i.ak = icmp ugt i32 %.1.i, -1879048193
  %i.al = lshr i32 %.1.i, 16
  %i.am = and i32 %i.al, 255                      ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, %i.aj
  %i.ao = or i32 %i.an, %i.af
  %i.ap = and i32 %.1.i, 8323072
  %i.aq = icmp eq i32 %i.ap, 8323072
  %i.ar = and i1 %i.ak, %i.aq
  %i.as = select i1 %i.ar, i32 7, i32 8
  %i.at = add nuw nsw i32 %i.aj, %i.as            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.am, 143
  %i.av = lshr i32 %.1.i, 8
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, %i.at
  %i.ay = or i32 %i.ao, %i.ax
  %i.az = and i32 %.1.i, 32512
  %i.ba = icmp eq i32 %i.az, 32512
  %i.bb = select i1 %i.au, i1 %i.ba, i1 false
  %i.bc = select i1 %i.bb, i32 7, i32 8
  %i.bd = add nuw nsw i32 %i.at, %i.bc            ; 2 uses
  %i.be = icmp samesign ugt i32 %i.aw, 143
  %i.bf = and i32 %.1.i, 255                      ; 2 uses
  %i.bg = shl nuw i32 %i.bf, %i.bd
  %i.bh = or i32 %i.ay, %i.bg
  %i.bi = and i32 %.1.i, 127
  %i.bj = icmp eq i32 %i.bi, 127
  %i.bk = select i1 %i.be, i1 %i.bj, i1 false
  %i.bl = select i1 %i.bk, i32 7, i32 8
  %i.bm = icmp samesign ugt i32 %i.bf, 143
  %i.bn = zext i1 %i.bm to i8
  %i.bo = zext i32 %i.bh to i64
  %i.bp = zext nneg i32 %.lcssa45 to i64
  %i.bq = shl nuw i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %.lcssa46
  store i64 %i.br, ptr %i.i, align 8, !tbaa !22
  %i.bs = add nuw nsw i32 %i.bl, %.lcssa45
  %i.bt = add nuw nsw i32 %i.bs, %i.bd
  store i32 %i.bt, ptr %i.h, align 8, !tbaa !23
  store i8 %i.bn, ptr %i.g, align 8, !tbaa !31
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit: ; preds = %bb.b, %.loopexit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !37
  %i.bv = load i8, ptr %i.e, align 1, !tbaa !12
  %i.bw = zext i8 %i.bv to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.bx = phi ptr [ %i.bu, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %i.by = phi i64 [ %i.bw, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.bz = and i64 %i.by, 127
  %i.ca = icmp eq i64 %i.bz, 127
  %i.cb = select i1 %i.ca, i32 7, i32 8           ; 4 uses
  store i64 %i.by, ptr %i.i, align 8, !tbaa !22
  store i32 %i.cb, ptr %i.h, align 8, !tbaa !23
  %i.cc = icmp samesign ugt i64 %i.by, 143        ; 3 uses
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.g, align 8, !tbaa !31
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = add nsw i32 %3, -2                      ; 3 uses
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !30
  %i.cf = icmp sgt i32 %3, 1
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 -1 ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !37
  %i.ch = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.ci = zext i8 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = phi ptr [ %i.cg, %bb.i ], [ %i.bx, %bb.h ] ; 4 uses
  %i.ck = phi i64 [ %i.ci, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.cl = and i64 %i.ck, 127
  %i.cm = icmp eq i64 %i.cl, 127
  %i.cn = select i1 %i.cc, i1 %i.cm, i1 false
  %i.co = select i1 %i.cn, i32 7, i32 8
  %i.cp = zext nneg i32 %i.cb to i64
  %i.cq = shl nuw nsw i64 %i.ck, %i.cp
  %i.cr = or i64 %i.cq, %i.by                     ; 3 uses
  store i64 %i.cr, ptr %i.i, align 8, !tbaa !22
  %i.cs = add nuw nsw i32 %i.co, %i.cb            ; 4 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !23
  %i.ct = icmp samesign ugt i64 %i.ck, 143        ; 3 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.g, align 8, !tbaa !31
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.cv, ptr %i.f, align 4, !tbaa !30
  %i.cw = icmp sgt i32 %3, 2
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds i8, ptr %i.cj, i64 -1 ; 2 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !37
  %i.cy = load i8, ptr %i.cj, align 1, !tbaa !12
  %i.cz = zext i8 %i.cy to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = phi ptr [ %i.cx, %bb.l ], [ %i.cj, %bb.k ] ; 4 uses
  %i.db = phi i64 [ %i.cz, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.dc = and i64 %i.db, 127
  %i.dd = icmp eq i64 %i.dc, 127
  %i.de = select i1 %i.ct, i1 %i.dd, i1 false
  %i.df = select i1 %i.de, i32 7, i32 8
  %i.dg = zext nneg i32 %i.cs to i64
  %i.dh = shl nuw nsw i64 %i.db, %i.dg
  %i.di = or i64 %i.dh, %i.cr                     ; 3 uses
  store i64 %i.di, ptr %i.i, align 8, !tbaa !22
  %i.dj = add nuw nsw i32 %i.df, %i.cs            ; 4 uses
  store i32 %i.dj, ptr %i.h, align 8, !tbaa !23
  %i.dk = icmp samesign ugt i64 %i.db, 143        ; 3 uses
  %i.dl = zext i1 %i.dk to i8
  store i8 %i.dl, ptr %i.g, align 8, !tbaa !31
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.dm, ptr %i.f, align 4, !tbaa !30
  %i.dn = icmp sgt i32 %3, 3
  br i1 %i.dn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds i8, ptr %i.da, i64 -1 ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !37
  %i.dp = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dq = zext i8 %i.dp to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dr = phi ptr [ %i.do, %bb.o ], [ %i.da, %bb.n ]
  %i.ds = phi i64 [ %i.dq, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.dt = and i64 %i.ds, 127
  %i.du = icmp eq i64 %i.dt, 127
  %i.dv = select i1 %i.dk, i1 %i.du, i1 false
  %i.dw = select i1 %i.dv, i32 7, i32 8
  %i.dx = zext nneg i32 %i.dj to i64
  %i.dy = shl i64 %i.ds, %i.dx
  %i.dz = or i64 %i.dy, %i.di                     ; 2 uses
  store i64 %i.dz, ptr %i.i, align 8, !tbaa !22
  %i.ea = add nuw nsw i32 %i.dw, %i.dj            ; 2 uses
  store i32 %i.ea, ptr %i.h, align 8, !tbaa !23
  %i.eb = icmp samesign ugt i64 %i.ds, 143        ; 2 uses
  %i.ec = zext i1 %i.eb to i8
  store i8 %i.ec, ptr %i.g, align 8, !tbaa !31
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp ult i32 %i.b, 129
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 16) ; 3 uses
  %i.h = trunc i32 %spec.select.i to i8
  %i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !40
  %i.m = sub nsw i32 %i.g, %spec.select.i
  store i32 %i.m, ptr %i.f, align 8, !tbaa !28
  %i.n = icmp sgt <16 x i8> %i.j, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.o = xor <16 x i1> %i.n, splat (i1 true)
  %i.p = sext <16 x i1> %i.o to <16 x i8>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = or <2 x i64> %i.e, %i.q                  ; 3 uses
  %i.s = bitcast <2 x i64> %i.r to <16 x i8>      ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, splat (i8 -1)
  %i.u = and <16 x i1> %i.n, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = or i32 %i.x, %i.z
  %i.ab = and i32 %i.aa, 65535                    ; 2 uses
  %.not76.i = icmp eq i32 %i.ab, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.at, %.lr.ph.i ], [ %i.r, %bb.b ] ; 2 uses
  %.07378.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 128, %bb.b ]
  %.07477.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = add nsw i32 %.07378.i, -1               ; 2 uses
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.ae = lshr exact i32 -2147483648, %i.ad       ; 2 uses
  %i.af = xor i32 %i.ae, %.07477.i
  %i.ag = trunc nuw nsw i32 %i.ad to i8
  %i.ah = xor i8 %i.ag, 31
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ak = icmp samesign ult <16 x i8> %i.aj, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.al = sext <16 x i1> %i.ak to <16 x i8>       ; 2 uses
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = and <2 x i64> %.079.i, %i.am            ; 2 uses
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ap = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ao, <2 x i64> %i.an, <2 x i64> splat (i64 63))
  %i.aq = bitcast <16 x i8> %i.al to <2 x i64>
  %i.ar = xor <2 x i64> %i.aq, splat (i64 -1)
  %i.as = and <2 x i64> %.079.i, %i.ar
  %i.at = or <2 x i64> %i.ap, %i.as               ; 3 uses
  %.not.i = icmp eq i32 %i.ae, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.at to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.s, %bb.b ]
  %.073.lcssa.i = phi i32 [ %i.ac, %._crit_edge.loopexit.i ], [ 128, %bb.b ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.at, %._crit_edge.loopexit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.au = lshr i32 %i.w, 15                       ; 2 uses
  %i.av = lshr i32 %i.b, 3
  %i.aw = and i32 %i.b, 7                         ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %i.az = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ba = shl <2 x i64> %.0.lcssa.i, %i.az
  %1 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bb = bitcast <16 x i8> %1 to <2 x i64>
  %i.bc = sub nuw nsw i32 64, %i.aw
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bf = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bb, <2 x i64> %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bh = zext nneg i32 %i.av to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !12
  %i.bk = or <2 x i64> %i.ba, %i.bf
  %i.bl = or <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bl, ptr %i.bi, align 1, !tbaa !12
  %i.bm = sub nuw nsw i32 128, %i.aw
  %i.bn = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 %i.bm) ; 2 uses
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bp = add nsw i32 %i.bn, 7
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = lshr i32 %i.bq, 3
  %i.bs = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.bt = extractelement <8 x i16> %i.bs, i64 7
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.bn, -112
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i8
  %i.by = zext nneg i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.by
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !12
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !27
  %i.cb = add i32 %i.ca, %.073.lcssa.i            ; 4 uses
  store i32 %i.cb, ptr %i.a, align 8, !tbaa !27
  store i32 %i.au, ptr %i.y, align 4, !tbaa !29
  %i.cc = icmp ult i32 %i.cb, 129
  br i1 %i.cc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit
  %i.cd = load <2 x i64>, ptr %i.l, align 1, !tbaa !12
  %i.ce = load i32, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %spec.select.i5 = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 16) ; 3 uses
  %i.cf = trunc i32 %spec.select.i5 to i8
  %i.cg = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ci = sext i32 %spec.select.i5 to i64
  %i.cj = getelementptr inbounds i8, ptr %i.l, i64 %i.ci
  store ptr %i.cj, ptr %0, align 8, !tbaa !40
  %i.ck = sub nsw i32 %i.ce, %spec.select.i5
  store i32 %i.ck, ptr %i.f, align 8, !tbaa !28
  %i.cl = icmp sgt <16 x i8> %i.ch, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.cm = xor <16 x i1> %i.cl, splat (i1 true)
  %i.cn = sext <16 x i1> %i.cm to <16 x i8>
  %i.co = bitcast <16 x i8> %i.cn to <2 x i64>
  %i.cp = or <2 x i64> %i.cd, %i.co               ; 3 uses
  %i.cq = bitcast <2 x i64> %i.cp to <16 x i8>    ; 2 uses
  %i.cr = icmp eq <16 x i8> %i.cq, splat (i8 -1)
  %i.cs = and <16 x i1> %i.cl, %i.cr
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %.masked = and i32 %i.cv, 65534
  %i.cw = or disjoint i32 %.masked, %i.au         ; 2 uses
  %.not76.i6 = icmp eq i32 %i.cw, 0
  br i1 %.not76.i6, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit17, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.c, %.lr.ph.i7
  %.079.i8 = phi <2 x i64> [ %i.do, %.lr.ph.i7 ], [ %i.cp, %bb.c ] ; 2 uses
  %.07378.i9 = phi i32 [ %i.cx, %.lr.ph.i7 ], [ 128, %bb.c ]
  %.07477.i10 = phi i32 [ %i.da, %.lr.ph.i7 ], [ %i.cw, %bb.c ] ; 3 uses
  %i.cx = add nsw i32 %.07378.i9, -1              ; 2 uses
  %i.cy = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i10, i1 true) ; 2 uses
  %i.cz = lshr exact i32 -2147483648, %i.cy       ; 2 uses
  %i.da = xor i32 %i.cz, %.07477.i10
  %i.db = trunc nuw nsw i32 %i.cy to i8
  %i.dc = xor i8 %i.db, 31
  %i.dd = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.df = icmp samesign ult <16 x i8> %i.de, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.dg = sext <16 x i1> %i.df to <16 x i8>       ; 2 uses
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = and <2 x i64> %.079.i8, %i.dh           ; 2 uses
  %i.dj = shufflevector <2 x i64> %i.di, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.dk = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.dj, <2 x i64> %i.di, <2 x i64> splat (i64 63))
  %i.dl = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.dm = xor <2 x i64> %i.dl, splat (i64 -1)
  %i.dn = and <2 x i64> %.079.i8, %i.dm
  %i.do = or <2 x i64> %i.dk, %i.dn               ; 3 uses
  %.not.i11 = icmp eq i32 %i.cz, %.07477.i10
  br i1 %.not.i11, label %._crit_edge.loopexit.i12, label %.lr.ph.i7, !llvm.loop !3

._crit_edge.loopexit.i12:                         ; preds = %.lr.ph.i7
  %.pre.i13 = bitcast <2 x i64> %i.do to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit17

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit17: ; preds = %bb.c, %._crit_edge.loopexit.i12
  %.pre-phi.i14 = phi <16 x i8> [ %.pre.i13, %._crit_edge.loopexit.i12 ], [ %i.cq, %bb.c ]
  %.073.lcssa.i15 = phi i32 [ %i.cx, %._crit_edge.loopexit.i12 ], [ 128, %bb.c ] ; 2 uses
  %.0.lcssa.i16 = phi <2 x i64> [ %i.do, %._crit_edge.loopexit.i12 ], [ %i.cp, %bb.c ] ; 2 uses
  %i.dp = lshr i32 %i.cu, 15
  %i.dq = lshr i32 %i.cb, 3
  %i.dr = and i32 %i.cb, 7                        ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %i.du = shufflevector <2 x i64> %i.dt, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dv = shl <2 x i64> %.0.lcssa.i16, %i.du
  %2 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i14, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dw = bitcast <16 x i8> %2 to <2 x i64>
  %i.dx = sub nuw nsw i32 64, %i.dr
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ea = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.dw, <2 x i64> %i.dz)
  %i.eb = zext nneg i32 %i.dq to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.eb ; 2 uses
  %i.ed = load <2 x i64>, ptr %i.ec, align 1, !tbaa !12
  %i.ee = or <2 x i64> %i.dv, %i.ea
  %i.ef = or <2 x i64> %i.ee, %i.ed
  store <2 x i64> %i.ef, ptr %i.ec, align 1, !tbaa !12
  %i.eg = sub nuw nsw i32 128, %i.dr
  %i.eh = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i15, i32 %i.eg) ; 2 uses
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !27
  %i.ej = add nsw i32 %i.eh, 7
  %i.ek = add i32 %i.ej, %i.ei
  %i.el = lshr i32 %i.ek, 3
  %i.em = bitcast <2 x i64> %.0.lcssa.i16 to <8 x i16>
  %i.en = extractelement <8 x i16> %i.em, i64 7
  %i.eo = zext i16 %i.en to i32
  %i.ep = add nsw i32 %i.eh, -112
  %i.eq = lshr i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = zext nneg i32 %i.el to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !12
  %i.eu = load i32, ptr %i.a, align 8, !tbaa !27
  %i.ev = add i32 %i.eu, %.073.lcssa.i15
  store i32 %i.ev, ptr %i.a, align 8, !tbaa !27
  store i32 %i.dp, ptr %i.y, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit, %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_17frwd_struct_ssse3E.exit17, %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load <2 x i64>, ptr %i.ew, align 8, !tbaa !12
  ret <2 x i64> %i.ex
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"bool", !8, i64 0}
!17 = !{!"_ZTSN4ojph5local10dec_mel_stE", !14, i64 0, !15, i64 8, !9, i64 16, !9, i64 20, !16, i64 24, !9, i64 28, !9, i64 32, !15, i64 40}
!18 = !{!17, !9, i64 28}
!19 = !{!17, !9, i64 32}
!20 = !{!17, !15, i64 40}
!21 = !{!"_ZTSN4ojph5local10rev_structE", !14, i64 0, !15, i64 8, !9, i64 16, !9, i64 20, !16, i64 24}
!22 = !{!21, !15, i64 8}
!23 = !{!21, !9, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!9, !9, i64 0}
!26 = !{!"_ZTSN4ojph5local17frwd_struct_ssse3E", !14, i64 0, !8, i64 8, !9, i64 56, !9, i64 60, !9, i64 64}
!27 = !{!26, !9, i64 56}
!28 = !{!26, !9, i64 64}
!29 = !{!26, !9, i64 60}
!30 = !{!21, !9, i64 20}
!31 = !{!21, !16, i64 24}
!32 = !{!17, !14, i64 0}
!33 = !{!17, !9, i64 16}
!34 = !{!17, !15, i64 8}
!35 = !{!17, !16, i64 24}
!36 = !{!17, !9, i64 20}
!37 = !{!21, !14, i64 0}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!26, !14, i64 0}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !66}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !66}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !66}
!59 = distinct !{!59, !66}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = !{!"vtable pointer", !7, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"short", !8, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !24}
end_hunk_3
