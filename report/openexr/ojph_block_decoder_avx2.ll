Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_avx2?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a
  br i1 %i.bq, label %bb.s, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.s:                                             ; preds = %bb.r
  %i.br = icmp sgt i32 %.lcssa963981, 3
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -3
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.bu = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -4
  %i.bv = add nsw i32 %.lcssa963981, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp sgt i32 %.lcssa963981, 0
  br i1 %i.bw, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %i.bx = phi ptr [ %i.bz, %.preheader.i.i ], [ %.lcssa962967968, %bb.u ] ; 2 uses
  %.050.i.i = phi i32 [ %i.cd, %.preheader.i.i ], [ 0, %bb.u ]
  %.04649.i.i = phi i32 [ %i.cf, %.preheader.i.i ], [ 24, %bb.u ] ; 2 uses
  %i.by = phi i32 [ %i.ce, %.preheader.i.i ], [ %.lcssa963981, %bb.u ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -1
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl i32 %i.cb, %.04649.i.i
  %i.cd = or i32 %i.cc, %.050.i.i                 ; 2 uses
  %i.ce = add nsw i32 %i.by, -1
  %i.cf = add nsw i32 %.04649.i.i, -8
  %i.cg = icmp samesign ugt i32 %i.by, 1
  br i1 %i.cg, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit, !llvm.loop !39

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit: ; preds = %.preheader.i.i
  %scevgep = getelementptr i8, ptr %.lcssa962967968, i64 -1
  %i.ch = add nsw i32 %.lcssa963981, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %scevgep1202 = getelementptr i8, ptr %scevgep, i64 %i.cj
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split: ; preds = %bb.t, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit
  %.sink = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bv, %bb.t ] ; 2 uses
  %.lcssa962966.ph = phi ptr [ %scevgep1202, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bu, %bb.t ]
  %.1.i.i.ph = phi i32 [ %i.cd, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bt, %bb.t ]
  store i32 %.sink, ptr %i.bb, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split, %bb.u
  %.lcssa963980 = phi i32 [ %.lcssa963981, %bb.u ], [ %.sink, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 7 uses
  %.lcssa962966 = phi ptr [ %.lcssa962967968, %bb.u ], [ %.lcssa962966.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 6 uses
  %.1.i.i = phi i32 [ 0, %bb.u ], [ %.1.i.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ]
  %i.ck = insertelement <4 x i32> poison, i32 %.1.i.i, i64 0
  %i.cl = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cm = lshr <4 x i32> %i.cl, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.cn = and <4 x i32> %i.cm, splat (i32 255)    ; 2 uses
  %i.co = icmp samesign ugt <4 x i32> %i.cn, splat (i32 143)
  %i.cp = sext <4 x i1> %i.co to <4 x i32>        ; 2 uses
  %i.cq = extractelement <4 x i32> %i.cp, i64 3
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i8                     ; 2 uses
  %i.ct = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.cu = zext nneg i8 %i.bo to i32
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = insertelement <4 x i32> %i.ct, i32 %i.cv, i64 0
  %i.cx = and <4 x i32> %i.cm, splat (i32 127)
  %i.cy = icmp eq <4 x i32> %i.cx, splat (i32 127)
  %.neg.i.i = ashr <4 x i32> %i.cw, splat (i32 31)
  %i.cz = add nsw <4 x i32> %.neg.i.i, splat (i32 8)
  %i.da = select <4 x i1> %i.cy, <4 x i32> %i.cz, <4 x i32> splat (i32 8) ; 2 uses
  %i.db = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.da, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dc = add nsw <4 x i32> %i.da, %i.db          ; 2 uses
  %i.dd = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.dc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.de = add nsw <4 x i32> %i.dc, %i.dd          ; 2 uses
  %i.df = extractelement <4 x i32> %i.de, i64 3
  %i.dg = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.de, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dh = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.cn, <4 x i32> %i.dg)
  %i.di = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dh)
  %i.dj = zext i32 %i.di to i64
  store i8 %i.cs, ptr %i.bc, align 8, !tbaa !26
  %i.dk = zext nneg i32 %i.bp to i64
  %i.dl = shl nuw nsw i64 %i.dj, %i.dk
  %i.dm = or i64 %i.dl, %.pre.i976                ; 3 uses
  store i64 %i.dm, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.dn = add i32 %i.df, %i.bp                    ; 5 uses
  store i32 %i.dn, ptr %i.ba, align 8, !tbaa !20
  %i.do = icmp ult i32 %i.dn, 32
  br i1 %i.do, label %bb.v, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.v:                                             ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i
  %i.dp = icmp sgt i32 %.lcssa963980, 3
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds i8, ptr %.lcssa962966, i64 -3
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21
  %i.ds = getelementptr inbounds i8, ptr %.lcssa962966, i64 -4
  %i.dt = add nsw i32 %.lcssa963980, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

bb.x:                                             ; preds = %bb.v
  %i.du = icmp sgt i32 %.lcssa963980, 0
  br i1 %i.du, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

.preheader.i8.i:                                  ; preds = %bb.x, %.preheader.i8.i
  %i.dv = phi ptr [ %i.dx, %.preheader.i8.i ], [ %.lcssa962966, %bb.x ] ; 2 uses
  %.050.i10.i = phi i32 [ %i.eb, %.preheader.i8.i ], [ 0, %bb.x ]
  %.04649.i11.i = phi i32 [ %i.ed, %.preheader.i8.i ], [ 24, %bb.x ] ; 2 uses
  %i.dw = phi i32 [ %i.ec, %.preheader.i8.i ], [ %.lcssa963980, %bb.x ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -1
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %.04649.i11.i
  %i.eb = or i32 %i.ea, %.050.i10.i               ; 2 uses
  %i.ec = add nsw i32 %i.dw, -1
  %i.ed = add nsw i32 %.04649.i11.i, -8
  %i.ee = icmp samesign ugt i32 %i.dw, 1
  br i1 %i.ee, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit, !llvm.loop !40

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit: ; preds = %.preheader.i8.i
  %scevgep1203 = getelementptr i8, ptr %.lcssa962966, i64 -1
  %i.ef = add nsw i32 %.lcssa963980, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %scevgep1204 = getelementptr i8, ptr %scevgep1203, i64 %i.eh
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split: ; preds = %bb.w, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit
  %.sink1296 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dt, %bb.w ] ; 2 uses
  %.lcssa962965.ph = phi ptr [ %scevgep1204, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.ds, %bb.w ]
  %.1.i6.i.ph = phi i32 [ %i.eb, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dr, %bb.w ]
  store i32 %.sink1296, ptr %i.bb, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split, %bb.x
  %.lcssa963979 = phi i32 [ %.lcssa963980, %bb.x ], [ %.sink1296, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.lcssa962965 = phi ptr [ %.lcssa962966, %bb.x ], [ %.lcssa962965.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.1.i6.i = phi i32 [ 0, %bb.x ], [ %.1.i6.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %i.ei = insertelement <4 x i32> poison, i32 %.1.i6.i, i64 0
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = lshr <4 x i32> %i.ej, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.el = and <4 x i32> %i.ek, splat (i32 255)    ; 2 uses
  %i.em = icmp samesign ugt <4 x i32> %i.el, splat (i32 143)
  %i.en = sext <4 x i1> %i.em to <4 x i32>        ; 2 uses
  %i.eo = extractelement <4 x i32> %i.en, i64 3
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i8                     ; 2 uses
  %i.er = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i = sext i1 %i.cr to i32
  %i.es = insertelement <4 x i32> %i.er, i32 %.neg.i, i64 0
  %i.et = and <4 x i32> %i.ek, splat (i32 127)
  %i.eu = icmp eq <4 x i32> %i.et, splat (i32 127)
  %.neg.i7.i = ashr <4 x i32> %i.es, splat (i32 31)
  %i.ev = add nsw <4 x i32> %.neg.i7.i, splat (i32 8)
  %i.ew = select <4 x i1> %i.eu, <4 x i32> %i.ev, <4 x i32> splat (i32 8) ; 2 uses
  %i.ex = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ew, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ey = add nsw <4 x i32> %i.ew, %i.ex          ; 2 uses
  %i.ez = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ey, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.fa = add nsw <4 x i32> %i.ey, %i.ez          ; 2 uses
  %i.fb = extractelement <4 x i32> %i.fa, i64 3
  %i.fc = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.fa, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fd = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.el, <4 x i32> %i.fc)
  %i.fe = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fd)
  %i.ff = zext i32 %i.fe to i64
  store i8 %i.eq, ptr %i.bc, align 8, !tbaa !26
  %i.fg = zext nneg i32 %i.dn to i64
  %i.fh = shl nuw nsw i64 %i.ff, %i.fg
  %i.fi = or i64 %i.fh, %i.dm                     ; 2 uses
  store i64 %i.fi, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.fj = add i32 %i.fb, %i.dn
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit: ; preds = %bb.r, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i
  %i.fk = phi i8 [ %i.eq, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.cs, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bo, %bb.r ]
  %.lcssa963978 = phi i32 [ %.lcssa963979, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa963980, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa963981, %bb.r ]
  %i.fl = phi i32 [ %i.fj, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dn, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bp, %bb.r ]
  %.lcssa962964 = phi ptr [ %.lcssa962965, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa962966, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa962967968, %bb.r ] ; 2 uses
  %i.fm = phi i64 [ %i.fi, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dm, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.pre.i976, %bb.r ] ; 2 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i32 %i.fn, 127
  %i.fp = add nuw nsw i32 %i.fo, %.0731971
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !66 ; 2 uses
  %i.ft = icmp eq i32 %.0731971, 0
  br i1 %i.ft, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %i.fu = add nsw i32 %.0723972, -2               ; 2 uses
  %i.fv = icmp eq i32 %i.fu, -1
  %i.fw = select i1 %i.fv, i16 %i.fs, i16 0       ; 2 uses
  %i.fx = icmp slt i32 %.0723972, 2
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fy = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %.0772 = phi i16 [ %i.fw, %bb.z ], [ %i.fw, %bb.y ], [ %i.fs, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 2 uses
  %.1724 = phi i32 [ %i.fy, %bb.z ], [ %i.fu, %bb.y ], [ %.0723972, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 3 uses
  store i16 %.0772, ptr %.0770970, align 2, !tbaa !66
  %i.fz = or disjoint i32 %.0771969, 2
  %i.ga = zext i16 %.0772 to i32                  ; 3 uses
  %i.gb = shl nuw nsw i32 %i.ga, 3                ; 2 uses
  %i.gc = and i32 %i.gb, 128
  %i.gd = shl nuw nsw i32 %i.ga, 2
  %i.ge = and i32 %i.gd, 896
  %i.gf = or i32 %i.gc, %i.ge                     ; 2 uses
  %i.gg = and i32 %i.ga, 7                        ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = lshr i64 %i.fm, %i.gh                   ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = and i32 %i.gj, 127
  %i.gl = or disjoint i32 %i.gk, %i.gf
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !66 ; 2 uses
  %i.gp = icmp eq i32 %i.gf, 0
  %i.gq = icmp ult i32 %i.fz, %6                  ; 2 uses
  %or.cond857 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond857, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gr = add nsw i32 %.1724, -2                  ; 2 uses
  %i.gs = icmp eq i32 %i.gr, -1
  %i.gt = select i1 %i.gs, i16 %i.go, i16 0       ; 2 uses
  %i.gu = icmp slt i32 %.1724, 2
  br i1 %i.gu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gv = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.0773 = phi i16 [ %i.gt, %bb.ac ], [ %i.gt, %bb.ab ], [ %i.go, %bb.aa ]
  %.2725 = phi i32 [ %i.gv, %bb.ac ], [ %i.gr, %bb.ab ], [ %.1724, %bb.aa ] ; 3 uses
  %i.gw = select i1 %i.gq, i16 %.0773, i16 0      ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0770970, i64 4
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !66
  %i.gy = add i32 %.0771969, 4                    ; 2 uses
  %i.gz = zext i16 %i.gw to i32                   ; 4 uses
  %i.ha = shl nuw nsw i32 %i.gz, 3
  %i.hb = and i32 %i.ha, 128
  %i.hc = shl nuw nsw i32 %i.gz, 2
  %i.hd = and i32 %i.hc, 896
  %i.he = or i32 %i.hb, %i.hd
  %i.hf = and i32 %i.gz, 7                        ; 2 uses
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.gi, %i.hg                   ; 2 uses
  %i.hi = add nuw nsw i32 %i.gg, %i.hf
  %i.hj = trunc i64 %i.hh to i32
  %i.hk = and i32 %i.gb, 64
  %i.hl = shl nuw nsw i32 %i.gz, 4
  %i.hm = and i32 %i.hl, 128
  %i.hn = or disjoint i32 %i.hm, %i.hk            ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 192
  br i1 %i.ho, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.hp = add nsw i32 %.2725, -2                  ; 2 uses
  %i.hq = icmp eq i32 %i.hp, -1
  %i.hr = select i1 %i.hq, i32 256, i32 192       ; 2 uses
  %i.hs = icmp slt i32 %.2725, 2
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ht = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0774 = phi i32 [ %i.hr, %bb.af ], [ %i.hr, %bb.ae ], [ %i.hn, %bb.ad ]
  %.3726 = phi i32 [ %i.ht, %bb.af ], [ %i.hp, %bb.ae ], [ %.2725, %bb.ad ] ; 2 uses
  %i.hu = and i32 %i.hj, 63
  %i.hv = add nuw nsw i32 %.0774, %i.hu
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !66
  %i.hz = zext i16 %i.hy to i32                   ; 5 uses
  %i.ia = and i32 %i.hz, 7                        ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = lshr i64 %i.hh, %i.ib                   ; 2 uses
  %i.id = add nuw nsw i32 %i.hi, %i.ia
  %i.ie = trunc i64 %i.ic to i32
  %i.if = lshr i32 %i.hz, 3
  %i.ig = and i32 %i.if, 15                       ; 3 uses
  %notmask856 = shl nsw i32 -1, %i.ig
  %i.ih = xor i32 %notmask856, -1
  %i.ii = and i32 %i.ie, %i.ih                    ; 2 uses
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = lshr i64 %i.ic, %i.ij                   ; 2 uses
  store i64 %i.ik, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.il = add nuw nsw i32 %i.id, %i.ig
  %i.im = sub i32 %i.fl, %i.il                    ; 2 uses
  store i32 %i.im, ptr %i.ba, align 8, !tbaa !20
  %i.in = lshr i32 %i.hz, 7
  %i.io = and i32 %i.in, 7                        ; 2 uses
  %i.ip = lshr i32 %i.hz, 10
  %i.iq = and i32 %i.ip, 7
  %i.ir = add nuw nsw i32 %i.iq, 1
  %i.is = shl nuw nsw i32 255, %i.io
  %i.it = xor i32 %i.is, -1
  %i.iu = and i32 %i.ii, %i.it
  %i.iv = add nuw nsw i32 %i.ir, %i.iu
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %.0770970, i64 2
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !66
  %i.iy = lshr i32 %i.hz, 13
  %i.iz = add nuw nsw i32 %i.iy, 1
  %i.ja = lshr i32 %i.ii, %i.io
  %i.jb = add nuw nsw i32 %i.iz, %i.ja
  %i.jc = trunc nuw i32 %i.jb to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %.0770970, i64 6
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %.0770970, i64 8 ; 2 uses
  %i.jf = icmp ult i32 %i.gy, %6
  br i1 %i.jf, label %bb.r, label %._crit_edge, !llvm.loop !41

._crit_edge1015:                                  ; preds = %._crit_edge999, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.jg = icmp ugt i32 %2, 13
  br i1 %i.jg, label %bb.av, label %bb.bm

bb.ah:                                            ; preds = %.lr.ph1014, %._crit_edge999
  %.47271012 = phi i32 [ %.0723.lcssa, %.lr.ph1014 ], [ %.5728.lcssa, %._crit_edge999 ] ; 2 uses
  %.07751011 = phi i32 [ 2, %.lr.ph1014 ], [ %i.jm, %._crit_edge999 ] ; 2 uses
  %i.jh = lshr exact i32 %.07751011, 1
  %i.ji = mul i32 %i.jh, %i.au
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jj ; 2 uses
  %.promoted987 = load ptr, ptr %11, align 8      ; 2 uses
  br i1 %.not1155, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.ah
  %.promoted1003 = load i32, ptr %i.bj, align 8, !tbaa !20
  %.phi.trans.insert.i867.promoted = load i64, ptr %.phi.trans.insert.i867, align 8
  %.promoted1005 = load i32, ptr %i.bk, align 4
  %.promoted1010 = load i8, ptr %i.bl, align 8
  br label %bb.ai

._crit_edge999:                                   ; preds = %bb.au, %bb.ah
  %.lcssa985991.lcssa = phi ptr [ %.promoted987, %bb.ah ], [ %.lcssa985988, %bb.au ]
  %.0776.lcssa = phi ptr [ %i.jk, %bb.ah ], [ %i.rz, %bb.au ] ; 2 uses
  %.5728.lcssa = phi i32 [ %.47271012, %bb.ah ], [ %.7730, %bb.au ]
  store ptr %.lcssa985991.lcssa, ptr %11, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.0776.lcssa, i64 2
  store i16 0, ptr %i.jl, align 2, !tbaa !66
  store i16 0, ptr %.0776.lcssa, align 2, !tbaa !66
  %i.jm = add i32 %.07751011, 2                   ; 2 uses
  %i.jn = icmp ult i32 %i.jm, %7
  br i1 %i.jn, label %bb.ah, label %._crit_edge1015, !llvm.loop !42

bb.ai:                                            ; preds = %.lr.ph998, %bb.au
  %i.jo = phi i8 [ %.promoted1010, %.lr.ph998 ], [ %i.nw, %bb.au ] ; 2 uses
  %.lcssa9861009 = phi i32 [ %.promoted1005, %.lr.ph998 ], [ %.lcssa9861006, %bb.au ] ; 7 uses
  %.pre.i8681004 = phi i64 [ %.phi.trans.insert.i867.promoted, %.lr.ph998 ], [ %i.rh, %bb.au ] ; 2 uses
  %i.jp = phi i32 [ %.promoted1003, %.lr.ph998 ], [ %i.rj, %bb.au ] ; 4 uses
  %.5728996 = phi i32 [ %.47271012, %.lr.ph998 ], [ %.7730, %bb.au ] ; 3 uses
  %.1732995 = phi i32 [ 0, %.lr.ph998 ], [ %i.qg, %bb.au ]
  %.0776994 = phi ptr [ %i.jk, %.lr.ph998 ], [ %i.rz, %bb.au ] ; 8 uses
  %.0781993 = phi i32 [ 0, %.lr.ph998 ], [ %i.px, %bb.au ] ; 2 uses
  %.lcssa985991992 = phi ptr [ %.promoted987, %.lr.ph998 ], [ %.lcssa985988, %bb.au ] ; 6 uses
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bg ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !66
  %i.js = shl i16 %i.jr, 2
  %i.jt = and i16 %i.js, 640
  %i.ju = zext nneg i16 %i.jt to i32
  %i.jv = or i32 %.1732995, %i.ju
  %i.jw = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bi ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !66 ; 2 uses
  %i.jy = shl i16 %i.jx, 4
  %i.jz = and i16 %i.jy, 512
  %i.ka = zext nneg i16 %i.jz to i32
  %i.kb = or i32 %i.jv, %i.ka                     ; 2 uses
  %i.kc = icmp ult i32 %i.jp, 32
  br i1 %i.kc, label %bb.aj, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.aj:                                            ; preds = %bb.ai
  %i.kd = icmp sgt i32 %.lcssa9861009, 3
  br i1 %i.kd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ke = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -3
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !21
  %i.kg = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -4
  %i.kh = add nsw i32 %.lcssa9861009, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.ki = icmp sgt i32 %.lcssa9861009, 0
  br i1 %i.ki, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

.preheader.i.i880:                                ; preds = %bb.al, %.preheader.i.i880
  %i.kj = phi ptr [ %i.kl, %.preheader.i.i880 ], [ %.lcssa985991992, %bb.al ] ; 2 uses
  %.050.i.i882 = phi i32 [ %i.kp, %.preheader.i.i880 ], [ 0, %bb.al ]
  %.04649.i.i883 = phi i32 [ %i.kr, %.preheader.i.i880 ], [ 24, %bb.al ] ; 2 uses
  %i.kk = phi i32 [ %i.kq, %.preheader.i.i880 ], [ %.lcssa9861009, %bb.al ] ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -1
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !10
  %i.kn = zext i8 %i.km to i32
  %i.ko = shl i32 %i.kn, %.04649.i.i883
  %i.kp = or i32 %i.ko, %.050.i.i882              ; 2 uses
  %i.kq = add nsw i32 %i.kk, -1
  %i.kr = add nsw i32 %.04649.i.i883, -8
  %i.ks = icmp samesign ugt i32 %i.kk, 1
  br i1 %i.ks, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit, !llvm.loop !43

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit: ; preds = %.preheader.i.i880
  %scevgep1205 = getelementptr i8, ptr %.lcssa985991992, i64 -1
  %i.kt = add nsw i32 %.lcssa9861009, -1
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = sub nsw i64 0, %i.ku
  %scevgep1206 = getelementptr i8, ptr %scevgep1205, i64 %i.kv
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split: ; preds = %bb.ak, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit
  %.sink1297 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kh, %bb.ak ] ; 2 uses
  %.lcssa985990.ph = phi ptr [ %scevgep1206, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kg, %bb.ak ]
  %.1.i.i870.ph = phi i32 [ %i.kp, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kf, %bb.ak ]
  store i32 %.sink1297, ptr %i.bk, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split, %bb.al
  %.lcssa9861008 = phi i32 [ %.lcssa9861009, %bb.al ], [ %.sink1297, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 7 uses
  %.lcssa985990 = phi ptr [ %.lcssa985991992, %bb.al ], [ %.lcssa985990.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 6 uses
  %.1.i.i870 = phi i32 [ 0, %bb.al ], [ %.1.i.i870.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ]
  %i.kw = insertelement <4 x i32> poison, i32 %.1.i.i870, i64 0
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ky = lshr <4 x i32> %i.kx, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.kz = and <4 x i32> %i.ky, splat (i32 255)    ; 2 uses
  %i.la = icmp samesign ugt <4 x i32> %i.kz, splat (i32 143)
  %i.lb = sext <4 x i1> %i.la to <4 x i32>        ; 2 uses
  %i.lc = extractelement <4 x i32> %i.lb, i64 3
  %i.ld = icmp ne i32 %i.lc, 0                    ; 2 uses
  %i.le = zext i1 %i.ld to i8                     ; 2 uses
  %i.lf = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.lg = zext nneg i8 %i.jo to i32
  %i.lh = sub nsw i32 0, %i.lg
  %i.li = insertelement <4 x i32> %i.lf, i32 %i.lh, i64 0
  %i.lj = and <4 x i32> %i.ky, splat (i32 127)
  %i.lk = icmp eq <4 x i32> %i.lj, splat (i32 127)
  %.neg.i.i871 = ashr <4 x i32> %i.li, splat (i32 31)
  %i.ll = add nsw <4 x i32> %.neg.i.i871, splat (i32 8)
  %i.lm = select <4 x i1> %i.lk, <4 x i32> %i.ll, <4 x i32> splat (i32 8) ; 2 uses
  %i.ln = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lo = add nsw <4 x i32> %i.lm, %i.ln          ; 2 uses
  %i.lp = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.lo, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.lq = add nsw <4 x i32> %i.lo, %i.lp          ; 2 uses
  %i.lr = extractelement <4 x i32> %i.lq, i64 3
  %i.ls = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lt = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.kz, <4 x i32> %i.ls)
  %i.lu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.lt)
  %i.lv = zext i32 %i.lu to i64
  store i8 %i.le, ptr %i.bl, align 8, !tbaa !26
  %i.lw = zext nneg i32 %i.jp to i64
  %i.lx = shl nuw nsw i64 %i.lv, %i.lw
  %i.ly = or i64 %i.lx, %.pre.i8681004            ; 3 uses
  store i64 %i.ly, ptr %.phi.trans.insert.i867, align 8, !tbaa !27
  %i.lz = add i32 %i.lr, %i.jp                    ; 5 uses
  store i32 %i.lz, ptr %i.bj, align 8, !tbaa !20
  %i.ma = icmp ult i32 %i.lz, 32
  br i1 %i.ma, label %bb.am, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.am:                                            ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869
  %i.mb = icmp sgt i32 %.lcssa9861008, 3
  br i1 %i.mb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mc = getelementptr inbounds i8, ptr %.lcssa985990, i64 -3
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !21
  %i.me = getelementptr inbounds i8, ptr %.lcssa985990, i64 -4
  %i.mf = add nsw i32 %.lcssa9861008, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.mg = icmp sgt i32 %.lcssa9861008, 0
  br i1 %i.mg, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

.preheader.i8.i876:                               ; preds = %bb.ao, %.preheader.i8.i876
  %i.mh = phi ptr [ %i.mj, %.preheader.i8.i876 ], [ %.lcssa985990, %bb.ao ] ; 2 uses
  %.050.i10.i878 = phi i32 [ %i.mn, %.preheader.i8.i876 ], [ 0, %bb.ao ]
  %.04649.i11.i879 = phi i32 [ %i.mp, %.preheader.i8.i876 ], [ 24, %bb.ao ] ; 2 uses
  %i.mi = phi i32 [ %i.mo, %.preheader.i8.i876 ], [ %.lcssa9861008, %bb.ao ] ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 -1
  %i.mk = load i8, ptr %i.mh, align 1, !tbaa !10
  %i.ml = zext i8 %i.mk to i32
  %i.mm = shl i32 %i.ml, %.04649.i11.i879
  %i.mn = or i32 %i.mm, %.050.i10.i878            ; 2 uses
  %i.mo = add nsw i32 %i.mi, -1
  %i.mp = add nsw i32 %.04649.i11.i879, -8
  %i.mq = icmp samesign ugt i32 %i.mi, 1
  br i1 %i.mq, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit, !llvm.loop !44

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit: ; preds = %.preheader.i8.i876
  %scevgep1207 = getelementptr i8, ptr %.lcssa985990, i64 -1
  %i.mr = add nsw i32 %.lcssa9861008, -1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = sub nsw i64 0, %i.ms
  %scevgep1208 = getelementptr i8, ptr %scevgep1207, i64 %i.mt
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split: ; preds = %bb.an, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit
  %.sink1298 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.mf, %bb.an ] ; 2 uses
  %.lcssa985989.ph = phi ptr [ %scevgep1208, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.me, %bb.an ]
  %.1.i6.i873.ph = phi i32 [ %i.mn, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.md, %bb.an ]
  store i32 %.sink1298, ptr %i.bk, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split, %bb.ao
  %.lcssa9861007 = phi i32 [ %.lcssa9861008, %bb.ao ], [ %.sink1298, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.lcssa985989 = phi ptr [ %.lcssa985990, %bb.ao ], [ %.lcssa985989.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.1.i6.i873 = phi i32 [ 0, %bb.ao ], [ %.1.i6.i873.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %i.mu = insertelement <4 x i32> poison, i32 %.1.i6.i873, i64 0
  %i.mv = shufflevector <4 x i32> %i.mu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mw = lshr <4 x i32> %i.mv, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.mx = and <4 x i32> %i.mw, splat (i32 255)    ; 2 uses
  %i.my = icmp samesign ugt <4 x i32> %i.mx, splat (i32 143)
  %i.mz = sext <4 x i1> %i.my to <4 x i32>        ; 2 uses
  %i.na = extractelement <4 x i32> %i.mz, i64 3
  %i.nb = icmp ne i32 %i.na, 0
  %i.nc = zext i1 %i.nb to i8                     ; 2 uses
  %i.nd = shufflevector <4 x i32> %i.mz, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i874 = sext i1 %i.ld to i32
  %i.ne = insertelement <4 x i32> %i.nd, i32 %.neg.i874, i64 0
  %i.nf = and <4 x i32> %i.mw, splat (i32 127)
  %i.ng = icmp eq <4 x i32> %i.nf, splat (i32 127)
  %.neg.i7.i875 = ashr <4 x i32> %i.ne, splat (i32 31)
  %i.nh = add nsw <4 x i32> %.neg.i7.i875, splat (i32 8)
  %i.ni = select <4 x i1> %i.ng, <4 x i32> %i.nh, <4 x i32> splat (i32 8) ; 2 uses
  %i.nj = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ni, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nk = add nsw <4 x i32> %i.ni, %i.nj          ; 2 uses
  %i.nl = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.nk, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nm = add nsw <4 x i32> %i.nk, %i.nl          ; 2 uses
  %i.nn = extractelement <4 x i32> %i.nm, i64 3
  %i.no = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.nm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.np = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.mx, <4 x i32> %i.no)
  %i.nq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.np)
  %i.nr = zext i32 %i.nq to i64
  store i8 %i.nc, ptr %i.bl, align 8, !tbaa !26
  %i.ns = zext nneg i32 %i.lz to i64
  %i.nt = shl nuw nsw i64 %i.nr, %i.ns
  %i.nu = or i64 %i.nt, %i.ly
  %i.nv = add i32 %i.nn, %i.lz
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884: ; preds = %bb.ai, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872
  %i.nw = phi i8 [ %i.nc, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.le, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jo, %bb.ai ]
  %.lcssa9861006 = phi i32 [ %.lcssa9861007, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa9861008, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa9861009, %bb.ai ]
  %i.nx = phi i32 [ %i.nv, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lz, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jp, %bb.ai ]
  %.lcssa985988 = phi ptr [ %.lcssa985989, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa985990, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa985991992, %bb.ai ] ; 2 uses
  %i.ny = phi i64 [ %i.nu, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.ly, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.pre.i8681004, %bb.ai ] ; 2 uses
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = and i32 %i.nz, 127
  %i.ob = add nuw nsw i32 %i.oa, %i.kb
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !66 ; 2 uses
  %i.of = icmp eq i32 %i.kb, 0
  br i1 %i.of, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %i.og = add nsw i32 %.5728996, -2               ; 2 uses
  %i.oh = icmp eq i32 %i.og, -1
  %i.oi = select i1 %i.oh, i16 %i.oe, i16 0       ; 2 uses
  %i.oj = icmp slt i32 %.5728996, 2
  br i1 %i.oj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ok = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %.0782 = phi i16 [ %i.oi, %bb.aq ], [ %i.oi, %bb.ap ], [ %i.oe, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 2 uses
  %.6729 = phi i32 [ %i.ok, %bb.aq ], [ %i.og, %bb.ap ], [ %.5728996, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 3 uses
  store i16 %.0782, ptr %.0776994, align 2, !tbaa !66
  %i.ol = or disjoint i32 %.0781993, 2
  %i.om = zext i16 %.0782 to i32                  ; 4 uses
  %i.on = shl nuw nsw i32 %i.om, 2
  %i.oo = shl nuw nsw i32 %i.om, 1
  %i.op = or i32 %i.on, %i.oo
  %i.oq = and i32 %i.op, 256
  %i.or = load i16, ptr %i.jq, align 2, !tbaa !66
  %i.os = and i16 %i.or, 128
  %i.ot = zext nneg i16 %i.os to i32
  %i.ou = shl i16 %i.jx, 2
  %i.ov = and i16 %i.ou, 640
  %i.ow = zext nneg i16 %i.ov to i32
  %i.ox = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bn
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !66
  %i.oz = shl i16 %i.oy, 4
  %i.pa = and i16 %i.oz, 512
  %i.pb = zext nneg i16 %i.pa to i32
  %i.pc = or disjoint i32 %i.oq, %i.ow
  %i.pd = or i32 %i.pc, %i.ot
  %i.pe = or i32 %i.pd, %i.pb                     ; 2 uses
  %i.pf = and i32 %i.om, 7                        ; 2 uses
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = lshr i64 %i.ny, %i.pg                   ; 2 uses
  %i.pi = trunc i64 %i.ph to i32
  %i.pj = and i32 %i.pi, 127
  %i.pk = or disjoint i32 %i.pe, %i.pj
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !66 ; 2 uses
  %i.po = icmp eq i32 %i.pe, 0
  %i.pp = icmp ult i32 %i.ol, %6                  ; 2 uses
  %or.cond858 = select i1 %i.po, i1 %i.pp, i1 false
  br i1 %or.cond858, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.pq = add nsw i32 %.6729, -2                  ; 2 uses
  %i.pr = icmp eq i32 %i.pq, -1
  %i.ps = select i1 %i.pr, i16 %i.pn, i16 0       ; 2 uses
  %i.pt = icmp slt i32 %.6729, 2
  br i1 %i.pt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pu = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.0783 = phi i16 [ %i.ps, %bb.at ], [ %i.ps, %bb.as ], [ %i.pn, %bb.ar ]
  %.7730 = phi i32 [ %i.pu, %bb.at ], [ %i.pq, %bb.as ], [ %.6729, %bb.ar ] ; 2 uses
  %i.pv = select i1 %i.pp, i16 %.0783, i16 0      ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0776994, i64 4
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !66
  %i.px = add i32 %.0781993, 4                    ; 2 uses
  %i.py = zext i16 %i.pv to i32                   ; 4 uses
  %i.pz = shl nuw nsw i32 %i.py, 2
  %i.qa = shl nuw nsw i32 %i.py, 1
  %i.qb = or i32 %i.pz, %i.qa
  %i.qc = and i32 %i.qb, 256
  %i.qd = load i16, ptr %i.jw, align 2, !tbaa !66
  %i.qe = and i16 %i.qd, 128
  %i.qf = zext nneg i16 %i.qe to i32
  %i.qg = or disjoint i32 %i.qc, %i.qf
  %i.qh = and i32 %i.py, 7                        ; 2 uses
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = lshr i64 %i.ph, %i.qi                   ; 2 uses
  %i.qk = add nuw nsw i32 %i.pf, %i.qh
  %i.ql = trunc i64 %i.qj to i32
  %i.qm = shl nuw nsw i32 %i.om, 3
  %i.qn = and i32 %i.qm, 64
  %i.qo = shl nuw nsw i32 %i.py, 4
  %i.qp = and i32 %i.qo, 128
  %i.qq = or disjoint i32 %i.qp, %i.qn
  %i.qr = and i32 %i.ql, 63
  %i.qs = or disjoint i32 %i.qq, %i.qr
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.qt
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !66
  %i.qw = zext i16 %i.qv to i32                   ; 5 uses
  %i.qx = and i32 %i.qw, 7                        ; 2 uses
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = lshr i64 %i.qj, %i.qy                   ; 2 uses
  %i.ra = add nuw nsw i32 %i.qk, %i.qx
  %i.rb = trunc i64 %i.qz to i32
  %i.rc = lshr i32 %i.qw, 3
  %i.rd = and i32 %i.rc, 15                       ; 3 uses
  %notmask = shl nsw i32 -1, %i.rd
  %i.re = xor i32 %notmask, -1
  %i.rf = and i32 %i.rb, %i.re                    ; 2 uses
  %i.rg = zext nneg i32 %i.rd to i64
  %i.rh = lshr i64 %i.qz, %i.rg                   ; 2 uses
  store i64 %i.rh, ptr %.phi.trans.insert.i867, align 8, !tbaa !27
  %i.ri = add nuw nsw i32 %i.ra, %i.rd
  %i.rj = sub i32 %i.nx, %i.ri                    ; 2 uses
  store i32 %i.rj, ptr %i.bj, align 8, !tbaa !20
  %i.rk = lshr i32 %i.qw, 7
  %i.rl = and i32 %i.rk, 7                        ; 2 uses
  %i.rm = lshr i32 %i.qw, 10
  %i.rn = and i32 %i.rm, 7
  %i.ro = shl nuw nsw i32 255, %i.rl
  %i.rp = xor i32 %i.ro, -1
  %i.rq = and i32 %i.rf, %i.rp
  %i.rr = add nuw nsw i32 %i.rq, %i.rn
  %i.rs = trunc nuw i32 %i.rr to i16
  %i.rt = getelementptr inbounds nuw i8, ptr %.0776994, i64 2
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !66
  %i.ru = lshr i32 %i.qw, 13
  %i.rv = lshr i32 %i.rf, %i.rl
  %i.rw = add nuw nsw i32 %i.rv, %i.ru
  %i.rx = trunc nuw i32 %i.rw to i16
  %i.ry = getelementptr inbounds nuw i8, ptr %.0776994, i64 6
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !66
  %i.rz = getelementptr inbounds nuw i8, ptr %.0776994, i64 8 ; 2 uses
  %i.sa = icmp ult i32 %i.px, %6
  br i1 %i.sa, label %bb.ai, label %._crit_edge999, !llvm.loop !45

bb.av:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i8 0, i64 4224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.sb = sub nuw nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.sb)
  %i.sc = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.sd = shufflevector <8 x i32> %i.sc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  store i32 2, ptr %i.b, align 16, !tbaa !21
  br i1 %.not1155, label %.critedge.preheader, label %.lr.ph1043

.lr.ph1043:                                       ; preds = %bb.av
  %i.se = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sh = sub nuw nsw i32 29, %2
  %.splatinsert.i.i = insertelement <8 x i32> poison, i32 %i.sh, i64 0
  %.splat.i.i = shufflevector <8 x i32> %.splatinsert.i.i, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.si = zext i32 %8 to i64
  br label %bb.aw

.critedge.preheader:                              ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, %bb.av
  br i1 %i.be, label %.lr.ph1055, label %.critedge860

.lr.ph1055:                                       ; preds = %.critedge.preheader
  %i.sj = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sm = sub nuw nsw i32 29, %2
  %.splatinsert.i.i891 = insertelement <8 x i32> poison, i32 %i.sm, i64 0
  %.splat.i.i892 = shufflevector <8 x i32> %.splatinsert.i.i891, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sn = zext i32 %8 to i64
  br label %bb.bd

bb.aw:                                            ; preds = %.lr.ph1043, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit
  %i.so = phi i32 [ 2, %.lr.ph1043 ], [ %i.yz, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %.07841041 = phi ptr [ %i.a, %.lr.ph1043 ], [ %i.yw, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07951040 = phi ptr [ %i.b, %.lr.ph1043 ], [ %i.yx, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07961039 = phi ptr [ %1, %.lr.ph1043 ], [ %i.yy, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 3 uses
  %.07971038 = phi i32 [ 0, %.lr.ph1043 ], [ %i.yv, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %i.sp = load i64, ptr %.07841041, align 1, !tbaa !10
  %i.sq = insertelement <4 x i64> poison, i64 %i.sp, i64 0
  %i.sr = bitcast <4 x i64> %i.sq to <8 x i32>
  %i.ss = shufflevector <8 x i32> %i.sr, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.st = lshr <8 x i32> %i.ss, splat (i32 16)    ; 3 uses
  %i.su = icmp sgt <8 x i32> %i.st, %i.sd
  %i.sv = sext <8 x i1> %i.su to <8 x i32>
  %i.sw = bitcast <8 x i32> %i.sv to <4 x i64>    ; 2 uses
  %i.sx = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.sw, <4 x i64> %i.sw)
  %.not839.not = icmp eq i32 %i.sx, 0
  br i1 %.not839.not, label %.critedge860.thread928, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sy = bitcast <8 x i32> %i.ss to <4 x i64>
  %i.sz = and <4 x i64> %i.sy, <i64 37520834302224, i64 150083337208896, i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.ta = bitcast <4 x i64> %i.sz to <8 x i32>
  %i.tb = icmp eq <8 x i32> %i.ta, zeroinitializer ; 2 uses
  %i.tc = sext <8 x i1> %i.tb to <8 x i32>        ; 2 uses
  %i.td = bitcast <8 x i32> %i.tc to <32 x i8>
  %i.te = icmp sgt <32 x i8> %i.td, splat (i8 -1)
  %i.tf = bitcast <32 x i1> %i.te to i32
  %.not.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i, label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.tg = bitcast <4 x i64> %i.sz to <16 x i16>
  %i.th = shl <16 x i16> %i.tg, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.ti = bitcast <16 x i16> %i.th to <8 x i32>
  %i.tj = lshr <8 x i32> %i.ti, splat (i32 15)    ; 2 uses
  %i.tk = sub nsw <8 x i32> %i.st, %i.tj
  %i.tl = bitcast <8 x i32> %i.tc to <4 x i64>
  %i.tm = xor <4 x i64> %i.tl, splat (i64 -1)     ; 2 uses
  %.inner1634 = select <8 x i1> %i.tb, <8 x i32> zeroinitializer, <8 x i32> %i.tk ; 2 uses
  %i.tn = shufflevector <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 0>, <8 x i32> %.inner1634, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  %i.to = add nsw <8 x i32> %i.tn, %.inner1634    ; 2 uses
  %i.tp = shufflevector <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> %i.to, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %i.tq = add nsw <8 x i32> %i.to, %i.tp          ; 2 uses
  %i.tr = bitcast <8 x i32> %i.tq to <16 x i16>   ; 2 uses
  %i.ts = extractelement <16 x i16> %i.tr, i64 6  ; 2 uses
  %i.tt = extractelement <16 x i16> %i.tr, i64 14 ; 2 uses
  %i.tu = zext i16 %i.tt to i32                   ; 3 uses
  %.not93.i = icmp eq i16 %i.ts, 0
  br i1 %.not93.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tv = zext i16 %i.ts to i32                   ; 3 uses
  %i.tw = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.tx = load i32, ptr %i.se, align 8, !tbaa !29
  %i.ty = sub i32 %i.tx, %i.tv
  store i32 %i.ty, ptr %i.se, align 8, !tbaa !29
  %i.tz = lshr i32 %i.tv, 3
  %i.ua = and i32 %i.tz, 24
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.ub ; 2 uses
  %i.ud = and i32 %i.tv, 63                       ; 2 uses
  %i.ue = load <2 x i64>, ptr %i.uc, align 8, !tbaa !10 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = load <2 x i64>, ptr %i.uf, align 8, !tbaa !10 ; 3 uses
  %i.uh = zext nneg i32 %i.ud to i64
  %i.ui = insertelement <2 x i64> poison, i64 %i.uh, i64 0
  %i.uj = shufflevector <2 x i64> %i.ui, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uk = lshr <2 x i64> %i.ue, %i.uj
  %i.ul = shufflevector <2 x i64> %i.ue, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.um = sub nuw nsw i32 64, %i.ud
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = insertelement <2 x i64> poison, i64 %i.un, i64 0
  %i.up = shufflevector <2 x i64> %i.uo, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.uq = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ul, <2 x i64> %i.up)
  %i.ur = or <2 x i64> %i.uq, %i.uk
  %i.us = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ug, <2 x i32> <i32 1, i32 2>
  %i.ut = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.us, <2 x i64> %i.up)
  %i.uu = or <2 x i64> %i.ur, %i.ut
  store <2 x i64> %i.uu, ptr %i.sf, align 8, !tbaa !10
  %i.uv = lshr <2 x i64> %i.ug, %i.uj
  %i.uw = shufflevector <2 x i64> %i.ug, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ux = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.uw, <2 x i64> %i.up)
  %i.uy = or <2 x i64> %i.ux, %i.uv
  store <2 x i64> %i.uy, ptr %i.sg, align 8, !tbaa !10
  %i.uz = shufflevector <2 x i64> %i.tw, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.089.i = phi <4 x i64> [ %i.uz, %bb.az ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ay ]
  %.not94.i = icmp eq i16 %i.tt, 0
  br i1 %.not94.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.va = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.vb = load i32, ptr %i.se, align 8, !tbaa !29
  %i.vc = sub i32 %i.vb, %i.tu
  store i32 %i.vc, ptr %i.se, align 8, !tbaa !29
  %i.vd = lshr i32 %i.tu, 3
  %i.ve = and i32 %i.vd, 24
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.vf ; 2 uses
  %i.vh = and i32 %i.tu, 63                       ; 2 uses
  %i.vi = load <2 x i64>, ptr %i.vg, align 8, !tbaa !10 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vk = load <2 x i64>, ptr %i.vj, align 8, !tbaa !10 ; 3 uses
  %i.vl = zext nneg i32 %i.vh to i64
  %i.vm = insertelement <2 x i64> poison, i64 %i.vl, i64 0
  %i.vn = shufflevector <2 x i64> %i.vm, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = lshr <2 x i64> %i.vi, %i.vn
  %i.vp = shufflevector <2 x i64> %i.vi, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.vq = sub nuw nsw i32 64, %i.vh
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = insertelement <2 x i64> poison, i64 %i.vr, i64 0
  %i.vt = shufflevector <2 x i64> %i.vs, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.vu = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.vp, <2 x i64> %i.vt)
  %i.vv = or <2 x i64> %i.vu, %i.vo
  %i.vw = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.vk, <2 x i32> <i32 1, i32 2>
  %i.vx = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.vw, <2 x i64> %i.vt)
  %i.vy = or <2 x i64> %i.vv, %i.vx
  store <2 x i64> %i.vy, ptr %i.sf, align 8, !tbaa !10
  %i.vz = lshr <2 x i64> %i.vk, %i.vn
  %i.wa = shufflevector <2 x i64> %i.vk, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.wb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.wa, <2 x i64> %i.vt)
  %i.wc = or <2 x i64> %i.wb, %i.vz
  store <2 x i64> %i.wc, ptr %i.sg, align 8, !tbaa !10
  %i.wd = shufflevector <2 x i64> %i.va, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.090.i = phi <4 x i64> [ %i.wd, %bb.bb ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ba ]
  %i.we = shufflevector <4 x i64> %.089.i, <4 x i64> %.090.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wf = bitcast <8 x i32> %i.tq to <32 x i8>
  %i.wg = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.wf, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.wh = bitcast <32 x i8> %i.wg to <8 x i32>
  %i.wi = lshr <8 x i32> %i.wh, splat (i32 3)
  %i.wj = bitcast <32 x i8> %i.wg to <4 x i64>
  %i.wk = and <4 x i64> %i.wj, splat (i64 30064771079) ; 2 uses
  %i.wl = bitcast <8 x i32> %i.wi to <32 x i8>
  %i.wm = shufflevector <32 x i8> %i.wl, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.wn = bitcast <32 x i8> %i.wm to <8 x i32>    ; 2 uses
  %i.wo = add <8 x i32> %i.wn, splat (i32 50462976)
  %i.wp = bitcast <4 x i64> %i.we to <32 x i8>    ; 2 uses
  %i.wq = bitcast <8 x i32> %i.wo to <32 x i8>
  %i.wr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.wp, <32 x i8> %i.wq)
  %i.ws = add <8 x i32> %i.wn, splat (i32 67305985)
  %i.wt = bitcast <8 x i32> %i.ws to <32 x i8>
  %i.wu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.wp, <32 x i8> %i.wt)
  %i.wv = bitcast <4 x i64> %i.wk to <8 x i32>
  %i.ww = shl nuw nsw <8 x i32> %i.wv, splat (i32 16)
  %i.wx = bitcast <8 x i32> %i.ww to <4 x i64>
  %i.wy = or disjoint <4 x i64> %i.wk, %i.wx
  %i.wz = bitcast <4 x i64> %i.wy to <32 x i8>
  %i.xa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.wz)
  %i.xb = bitcast <32 x i8> %i.xa to <16 x i16>
  %i.xc = add <16 x i16> %i.xb, splat (i16 257)   ; 2 uses
  %i.xd = bitcast <32 x i8> %i.wr to <16 x i16>
  %i.xe = mul <16 x i16> %i.xc, %i.xd
  %i.xf = lshr <16 x i16> %i.xe, splat (i16 8)
  %i.xg = bitcast <32 x i8> %i.wu to <16 x i16>
  %i.xh = mul <16 x i16> %i.xc, %i.xg
  %.inner1636 = and <16 x i16> %i.xh, splat (i16 -256)
  %.inner1637 = or disjoint <16 x i16> %.inner1636, %i.xf
  %i.xi = bitcast <16 x i16> %.inner1637 to <4 x i64>
  %i.xj = add nuw nsw <8 x i32> %i.st, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.xk = and <8 x i32> %i.xj, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.xl = shufflevector <8 x i32> %i.xk, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.xm = sub nuw nsw <8 x i32> splat (i32 2), %i.tj
  %i.xn = shl <8 x i32> %i.xm, %i.xl              ; 2 uses
  %i.xo = add <8 x i32> %i.xn, splat (i32 -1)
  %i.xp = bitcast <8 x i32> %i.xo to <4 x i64>
  %i.xq = and <4 x i64> %i.xi, %i.xp
  %i.xr = bitcast <16 x i16> %i.th to <8 x i32>
  %i.xs = and <8 x i32> %i.xr, splat (i32 2048)
  %.not95.i = icmp eq <8 x i32> %i.xs, zeroinitializer
  %i.xt = select <8 x i1> %.not95.i, <8 x i32> zeroinitializer, <8 x i32> %i.xn
  %i.xu = bitcast <8 x i32> %i.xt to <4 x i64>
  %i.xv = or <4 x i64> %i.xq, %i.xu               ; 2 uses
  %i.xw = bitcast <4 x i64> %i.xv to <8 x i32>
  %i.xx = shl <8 x i32> %i.xw, splat (i32 31)
  %i.xy = or <4 x i64> %i.xv, splat (i64 4294967297) ; 2 uses
  %i.xz = bitcast <4 x i64> %i.xy to <8 x i32>
  %i.ya = add <8 x i32> %i.xz, splat (i32 2)
  %i.yb = shl <8 x i32> %i.ya, %.splat.i.i
  %i.yc = or <8 x i32> %i.yb, %i.xx
  %i.yd = and <4 x i64> %i.xy, %i.tm
  %i.ye = bitcast <4 x i64> %i.yd to <32 x i8>
  %i.yf = shufflevector <32 x i8> %i.ye, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48>
  %i.yg = bitcast <32 x i8> %i.yf to <4 x i64>    ; 2 uses
  %i.yh = shufflevector <4 x i64> %i.yg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.yi = or <2 x i64> %i.yh, splat (i64 8589934594)
  %i.yj = shufflevector <4 x i64> %i.yg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.yk = or <2 x i64> %i.yi, %i.yj
  %i.yl = bitcast <4 x i64> %i.tm to <8 x i32>
  %i.ym = and <8 x i32> %i.yc, %i.yl
  %i.yn = shufflevector <8 x i32> %i.ym, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.yo = bitcast <8 x i32> %i.yn to <4 x i64>
  br label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit

_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit: ; preds = %bb.ax, %bb.bc
  %.0920 = phi <2 x i64> [ splat (i64 8589934594), %bb.ax ], [ %i.yk, %bb.bc ]
  %.0.i = phi <4 x i64> [ zeroinitializer, %bb.ax ], [ %i.yo, %bb.bc ] ; 2 uses
  %i.yp = shufflevector <4 x i64> %.0.i, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.yp, ptr %.07961039, align 16, !tbaa !10
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.07961039, i64 %i.si
  %i.yr = shufflevector <4 x i64> %.0.i, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.yr, ptr %i.yq, align 16, !tbaa !10
  %i.ys = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.so, i64 0
  %i.yt = bitcast <4 x i32> %i.ys to <2 x i64>
  %i.yu = or <2 x i64> %.0920, %i.yt              ; 2 uses
  store <2 x i64> %i.yu, ptr %.07951040, align 1, !tbaa !10
  %i.yv = add i32 %.07971038, 4                   ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.07841041, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %.07951040, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %.07961039, i64 16
  %.not840 = icmp ult i32 %i.yv, %6
  %bc1276 = bitcast <2 x i64> %i.yu to <4 x i32>
  %i.yz = extractelement <4 x i32> %bc1276, i64 2
  br i1 %.not840, label %bb.aw, label %.critedge.preheader, !llvm.loop !46

bb.bd:                                            ; preds = %.lr.ph1055, %.critedge
  %.08021054 = phi i32 [ 2, %.lr.ph1055 ], [ %i.aas, %.critedge ] ; 3 uses
  %i.za = lshr exact i32 %.08021054, 1
  %i.zb = mul i32 %i.za, %i.au
  %i.zc = zext i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.zc ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bf
  %.08071046 = phi i32 [ 0, %bb.bd ], [ %i.aam, %bb.bf ]
  %.08081045 = phi ptr [ %i.zd, %bb.bd ], [ %i.aao, %bb.bf ] ; 2 uses
  %.08091044 = phi ptr [ %i.b, %bb.bd ], [ %i.aan, %bb.bf ] ; 4 uses
  %i.ze = load <4 x i64>, ptr %.08091044, align 1, !tbaa !10
  %i.zf = getelementptr inbounds nuw i8, ptr %.08091044, i64 4
  %i.zg = load <4 x i64>, ptr %i.zf, align 1, !tbaa !10
  %i.zh = or <4 x i64> %i.zg, %i.ze               ; 2 uses
  %i.zi = bitcast <4 x i64> %i.zh to <8 x i32>
  %i.zj = lshr <8 x i32> %i.zi, splat (i32 8)
  %i.zk = bitcast <8 x i32> %i.zj to <4 x i64>
  %i.zl = xor <4 x i64> %i.zk, splat (i64 -1)
  %i.zm = and <4 x i64> %i.zh, %i.zl
  %i.zn = bitcast <4 x i64> %i.zm to <8 x i32>
  %i.zo = sitofp <8 x i32> %i.zn to <8 x float>
  %i.zp = bitcast <8 x float> %i.zo to <8 x i32>
  %i.zq = lshr <8 x i32> %i.zp, splat (i32 23)
  %i.zr = bitcast <8 x i32> %i.zq to <16 x i16>
  %i.zs = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.zr)
  %i.zt = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.zs, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.zu = bitcast <16 x i16> %i.zt to <8 x i32>
  %i.zv = sub nsw <8 x i32> splat (i32 31), %i.zu
  %i.zw = load <4 x i64>, ptr %.08081045, align 1, !tbaa !10 ; 3 uses
  %i.zx = bitcast <4 x i64> %i.zw to <8 x i32>
  %i.zy = bitcast <4 x i64> %i.zw to <8 x i32>
  %i.zz = and <8 x i32> %i.zy, splat (i32 240)
  %i.aaa = add <8 x i32> %i.zx, splat (i32 240)
  %i.aab = and <8 x i32> %i.aaa, %i.zz
  %.not947 = icmp eq <8 x i32> %i.aab, zeroinitializer
  %i.aac = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.zv, <8 x i32> splat (i32 1))
  %i.aad = select <8 x i1> %.not947, <8 x i32> splat (i32 1), <8 x i32> %i.aac
  %i.aae = bitcast <4 x i64> %i.zw to <8 x i32>
  %i.aaf = lshr <8 x i32> %i.aae, splat (i32 16)
  %i.aag = add nuw <8 x i32> %i.aad, %i.aaf       ; 2 uses
  %i.aah = icmp sgt <8 x i32> %i.aag, %i.sd
  %i.aai = sext <8 x i1> %i.aah to <8 x i32>
  %i.aaj = bitcast <8 x i32> %i.aai to <4 x i64>  ; 2 uses
  %i.aak = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aaj, <4 x i64> %i.aaj)
  %.not842.not = icmp eq i32 %i.aak, 0
  br i1 %.not842.not, label %.critedge860.thread928, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aal = getelementptr inbounds nuw i8, ptr %.08091044, i64 2112
  store <8 x i32> %i.aag, ptr %i.aal, align 1, !tbaa !10
  %i.aam = add i32 %.08071046, 16                 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.08091044, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %.08081045, i64 32
  %.not841 = icmp ugt i32 %i.aam, %6
  br i1 %.not841, label %bb.bg, label %bb.be, !llvm.loop !47

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %i.b, align 16, !tbaa !21
  br i1 %.not1155, label %.critedge, label %.lr.ph1052.preheader

.lr.ph1052.preheader:                             ; preds = %bb.bg
  %i.aap = mul i32 %.08021054, %8
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaq
  br label %.lr.ph1052

.critedge:                                        ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894, %bb.bg
  %i.aas = add i32 %.08021054, 2                  ; 2 uses
  %i.aat = icmp ult i32 %i.aas, %7
  br i1 %i.aat, label %bb.bd, label %.critedge860, !llvm.loop !48

.lr.ph1052:                                       ; preds = %.lr.ph1052.preheader, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894
  %i.aau = phi i32 [ %i.ahg, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ 2, %.lr.ph1052.preheader ]
  %.08031050 = phi i32 [ %i.ahb, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ 0, %.lr.ph1052.preheader ]
  %.08041049 = phi ptr [ %i.ahe, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.aar, %.lr.ph1052.preheader ] ; 3 uses
  %.08051048 = phi ptr [ %i.ahc, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.zd, %.lr.ph1052.preheader ] ; 2 uses
  %.08061047 = phi ptr [ %i.ahd, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.b, %.lr.ph1052.preheader ] ; 3 uses
  %i.aav = load i64, ptr %.08051048, align 1, !tbaa !10
  %i.aaw = insertelement <4 x i64> poison, i64 %i.aav, i64 0
  %i.aax = bitcast <4 x i64> %i.aaw to <8 x i32>
  %i.aay = shufflevector <8 x i32> %i.aax, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.aaz = getelementptr inbounds nuw i8, ptr %.08061047, i64 2112
  %i.aba = load i64, ptr %i.aaz, align 1, !tbaa !10
  %i.abb = insertelement <4 x i64> poison, i64 %i.aba, i64 0
  %i.abc = bitcast <4 x i64> %i.abb to <8 x i32>
  %i.abd = shufflevector <8 x i32> %i.abc, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.abe = bitcast <8 x i32> %i.aay to <4 x i64>
  %i.abf = and <4 x i64> %i.abe, <i64 37520834302224, i64 150083337208896, i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.abg = bitcast <4 x i64> %i.abf to <8 x i32>
  %i.abh = icmp eq <8 x i32> %i.abg, zeroinitializer ; 2 uses
  %i.abi = sext <8 x i1> %i.abh to <8 x i32>      ; 2 uses
  %i.abj = bitcast <8 x i32> %i.abi to <32 x i8>
  %i.abk = icmp sgt <32 x i8> %i.abj, splat (i8 -1)
  %i.abl = bitcast <32 x i1> %i.abk to i32
  %.not.i885 = icmp eq i32 %i.abl, 0
  br i1 %.not.i885, label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1052
  %i.abm = bitcast <4 x i64> %i.abf to <16 x i16>
  %i.abn = shl <16 x i16> %i.abm, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.abo = bitcast <16 x i16> %i.abn to <8 x i32>
  %i.abp = lshr <8 x i32> %i.abo, splat (i32 15)  ; 2 uses
  %i.abq = sub <8 x i32> %i.abd, %i.abp
  %i.abr = bitcast <8 x i32> %i.abi to <4 x i64>
  %i.abs = xor <4 x i64> %i.abr, splat (i64 -1)   ; 2 uses
  %.inner1643 = select <8 x i1> %i.abh, <8 x i32> zeroinitializer, <8 x i32> %i.abq ; 2 uses
  %i.abt = shufflevector <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 0>, <8 x i32> %.inner1643, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  %i.abu = add <8 x i32> %i.abt, %.inner1643      ; 2 uses
  %i.abv = shufflevector <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> %i.abu, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %i.abw = add <8 x i32> %i.abu, %i.abv           ; 2 uses
  %i.abx = bitcast <8 x i32> %i.abw to <16 x i16> ; 2 uses
  %i.aby = extractelement <16 x i16> %i.abx, i64 6 ; 2 uses
  %i.abz = extractelement <16 x i16> %i.abx, i64 14 ; 2 uses
  %i.aca = zext i16 %i.abz to i32                 ; 3 uses
  %.not93.i886 = icmp eq i16 %i.aby, 0
  br i1 %.not93.i886, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.acb = zext i16 %i.aby to i32                 ; 3 uses
  %i.acc = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.acd = load i32, ptr %i.sj, align 8, !tbaa !29
  %i.ace = sub i32 %i.acd, %i.acb
  store i32 %i.ace, ptr %i.sj, align 8, !tbaa !29
  %i.acf = lshr i32 %i.acb, 3
  %i.acg = and i32 %i.acf, 24
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.ach ; 2 uses
  %i.acj = and i32 %i.acb, 63                     ; 2 uses
  %i.ack = load <2 x i64>, ptr %i.aci, align 8, !tbaa !10 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.acm = load <2 x i64>, ptr %i.acl, align 8, !tbaa !10 ; 3 uses
  %i.acn = zext nneg i32 %i.acj to i64
  %i.aco = insertelement <2 x i64> poison, i64 %i.acn, i64 0
  %i.acp = shufflevector <2 x i64> %i.aco, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acq = lshr <2 x i64> %i.ack, %i.acp
  %i.acr = shufflevector <2 x i64> %i.ack, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.acs = sub nuw nsw i32 64, %i.acj
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = insertelement <2 x i64> poison, i64 %i.act, i64 0
  %i.acv = shufflevector <2 x i64> %i.acu, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acw = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.acr, <2 x i64> %i.acv)
  %i.acx = or <2 x i64> %i.acw, %i.acq
  %i.acy = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.acm, <2 x i32> <i32 1, i32 2>
  %i.acz = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.acy, <2 x i64> %i.acv)
  %i.ada = or <2 x i64> %i.acx, %i.acz
  store <2 x i64> %i.ada, ptr %i.sk, align 8, !tbaa !10
  %i.adb = lshr <2 x i64> %i.acm, %i.acp
  %i.adc = shufflevector <2 x i64> %i.acm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.add = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.adc, <2 x i64> %i.acv)
  %i.ade = or <2 x i64> %i.add, %i.adb
  store <2 x i64> %i.ade, ptr %i.sl, align 8, !tbaa !10
  %i.adf = shufflevector <2 x i64> %i.acc, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.089.i887 = phi <4 x i64> [ %i.adf, %bb.bi ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bh ]
  %.not94.i888 = icmp eq i16 %i.abz, 0
  br i1 %.not94.i888, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adg = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.adh = load i32, ptr %i.sj, align 8, !tbaa !29
  %i.adi = sub i32 %i.adh, %i.aca
  store i32 %i.adi, ptr %i.sj, align 8, !tbaa !29
  %i.adj = lshr i32 %i.aca, 3
  %i.adk = and i32 %i.adj, 24
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.adl ; 2 uses
  %i.adn = and i32 %i.aca, 63                     ; 2 uses
  %i.ado = load <2 x i64>, ptr %i.adm, align 8, !tbaa !10 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.adq = load <2 x i64>, ptr %i.adp, align 8, !tbaa !10 ; 3 uses
  %i.adr = zext nneg i32 %i.adn to i64
  %i.ads = insertelement <2 x i64> poison, i64 %i.adr, i64 0
  %i.adt = shufflevector <2 x i64> %i.ads, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adu = lshr <2 x i64> %i.ado, %i.adt
  %i.adv = shufflevector <2 x i64> %i.ado, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.adw = sub nuw nsw i32 64, %i.adn
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = insertelement <2 x i64> poison, i64 %i.adx, i64 0
  %i.adz = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aea = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.adv, <2 x i64> %i.adz)
  %i.aeb = or <2 x i64> %i.aea, %i.adu
  %i.aec = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.adq, <2 x i32> <i32 1, i32 2>
  %i.aed = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aec, <2 x i64> %i.adz)
  %i.aee = or <2 x i64> %i.aeb, %i.aed
  store <2 x i64> %i.aee, ptr %i.sk, align 8, !tbaa !10
  %i.aef = lshr <2 x i64> %i.adq, %i.adt
  %i.aeg = shufflevector <2 x i64> %i.adq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aeh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aeg, <2 x i64> %i.adz)
  %i.aei = or <2 x i64> %i.aeh, %i.aef
  store <2 x i64> %i.aei, ptr %i.sl, align 8, !tbaa !10
  %i.aej = shufflevector <2 x i64> %i.adg, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.090.i889 = phi <4 x i64> [ %i.aej, %bb.bk ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bj ]
  %i.aek = shufflevector <4 x i64> %.089.i887, <4 x i64> %.090.i889, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ael = bitcast <8 x i32> %i.abw to <32 x i8>
  %i.aem = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ael, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.aen = bitcast <32 x i8> %i.aem to <8 x i32>
  %i.aeo = lshr <8 x i32> %i.aen, splat (i32 3)
  %i.aep = bitcast <32 x i8> %i.aem to <4 x i64>
  %i.aeq = and <4 x i64> %i.aep, splat (i64 30064771079) ; 2 uses
  %i.aer = bitcast <8 x i32> %i.aeo to <32 x i8>
  %i.aes = shufflevector <32 x i8> %i.aer, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.aet = bitcast <32 x i8> %i.aes to <8 x i32>  ; 2 uses
  %i.aeu = add <8 x i32> %i.aet, splat (i32 50462976)
  %i.aev = bitcast <4 x i64> %i.aek to <32 x i8>  ; 2 uses
  %i.aew = bitcast <8 x i32> %i.aeu to <32 x i8>
  %i.aex = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aev, <32 x i8> %i.aew)
  %i.aey = add <8 x i32> %i.aet, splat (i32 67305985)
  %i.aez = bitcast <8 x i32> %i.aey to <32 x i8>
  %i.afa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aev, <32 x i8> %i.aez)
  %i.afb = bitcast <4 x i64> %i.aeq to <8 x i32>
  %i.afc = shl nuw nsw <8 x i32> %i.afb, splat (i32 16)
  %i.afd = bitcast <8 x i32> %i.afc to <4 x i64>
  %i.afe = or disjoint <4 x i64> %i.aeq, %i.afd
  %i.aff = bitcast <4 x i64> %i.afe to <32 x i8>
  %i.afg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.aff)
  %i.afh = bitcast <32 x i8> %i.afg to <16 x i16>
  %i.afi = add <16 x i16> %i.afh, splat (i16 257) ; 2 uses
  %i.afj = bitcast <32 x i8> %i.aex to <16 x i16>
  %i.afk = mul <16 x i16> %i.afi, %i.afj
  %i.afl = lshr <16 x i16> %i.afk, splat (i16 8)
  %i.afm = bitcast <32 x i8> %i.afa to <16 x i16>
  %i.afn = mul <16 x i16> %i.afi, %i.afm
  %.inner1645 = and <16 x i16> %i.afn, splat (i16 -256)
  %.inner1646 = or disjoint <16 x i16> %.inner1645, %i.afl
  %i.afo = bitcast <16 x i16> %.inner1646 to <4 x i64>
  %i.afp = add <8 x i32> %i.abd, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.afq = and <8 x i32> %i.afp, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.afr = shufflevector <8 x i32> %i.afq, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.afs = sub nuw nsw <8 x i32> splat (i32 2), %i.abp
  %i.aft = shl <8 x i32> %i.afs, %i.afr           ; 2 uses
  %i.afu = add <8 x i32> %i.aft, splat (i32 -1)
  %i.afv = bitcast <8 x i32> %i.afu to <4 x i64>
  %i.afw = and <4 x i64> %i.afo, %i.afv
  %i.afx = bitcast <16 x i16> %i.abn to <8 x i32>
  %i.afy = and <8 x i32> %i.afx, splat (i32 2048)
  %.not95.i890 = icmp eq <8 x i32> %i.afy, zeroinitializer
  %i.afz = select <8 x i1> %.not95.i890, <8 x i32> zeroinitializer, <8 x i32> %i.aft
  %i.aga = bitcast <8 x i32> %i.afz to <4 x i64>
  %i.agb = or <4 x i64> %i.afw, %i.aga            ; 2 uses
  %i.agc = bitcast <4 x i64> %i.agb to <8 x i32>
  %i.agd = shl <8 x i32> %i.agc, splat (i32 31)
  %i.age = or <4 x i64> %i.agb, splat (i64 4294967297) ; 2 uses
  %i.agf = bitcast <4 x i64> %i.age to <8 x i32>
  %i.agg = add <8 x i32> %i.agf, splat (i32 2)
  %i.agh = shl <8 x i32> %i.agg, %.splat.i.i892
  %i.agi = or <8 x i32> %i.agh, %i.agd
  %i.agj = and <4 x i64> %i.age, %i.abs
  %i.agk = bitcast <4 x i64> %i.agj to <32 x i8>
  %i.agl = shufflevector <32 x i8> %i.agk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48>
  %i.agm = bitcast <32 x i8> %i.agl to <4 x i64>  ; 2 uses
  %i.agn = shufflevector <4 x i64> %i.agm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ago = or <2 x i64> %i.agn, splat (i64 8589934594)
  %i.agp = shufflevector <4 x i64> %i.agm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.agq = or <2 x i64> %i.ago, %i.agp
  %i.agr = bitcast <4 x i64> %i.abs to <8 x i32>
  %i.ags = and <8 x i32> %i.agi, %i.agr
  %i.agt = shufflevector <8 x i32> %i.ags, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.agu = bitcast <8 x i32> %i.agt to <4 x i64>
  br label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894

_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894: ; preds = %.lr.ph1052, %bb.bl
  %.0919 = phi <2 x i64> [ splat (i64 8589934594), %.lr.ph1052 ], [ %i.agq, %bb.bl ]
  %.0.i893 = phi <4 x i64> [ zeroinitializer, %.lr.ph1052 ], [ %i.agu, %bb.bl ] ; 2 uses
  %i.agv = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agv, ptr %.08041049, align 16, !tbaa !10
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.08041049, i64 %i.sn
  %i.agx = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agx, ptr %i.agw, align 16, !tbaa !10
  %i.agy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aau, i64 0
  %i.agz = bitcast <4 x i32> %i.agy to <2 x i64>
  %i.aha = or <2 x i64> %.0919, %i.agz            ; 2 uses
  store <2 x i64> %i.aha, ptr %.08061047, align 1, !tbaa !10
  %i.ahb = add nuw i32 %.08031050, 4              ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.08051048, i64 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %.08061047, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %.08041049, i64 16
  %i.ahf = icmp ult i32 %i.ahb, %6
  %bc1277 = bitcast <2 x i64> %i.aha to <4 x i32>
  %i.ahg = extractelement <4 x i32> %bc1277, i64 2
  br i1 %i.ahf, label %.lr.ph1052, label %.critedge, !llvm.loop !49

.critedge860.thread928:                           ; preds = %bb.aw, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ei

.critedge860:                                     ; preds = %.critedge, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cd

bb.bm:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %i.c, i8 0, i64 1056, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2112) %i.d, i8 0, i64 2112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.ahh = sub nuw nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %i.ahh)
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862.preheader, label %.lr.ph1022

.lr.ph1022:                                       ; preds = %bb.bm
  %i.ahi = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ahj = shufflevector <4 x i32> %i.ahi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ahn = zext i32 %8 to i64
  %i.aho = trunc nuw nsw i32 %2 to i16
  %i.ahp = sub nuw nsw i16 13, %i.aho
  %.splatinsert = insertelement <16 x i16> poison, i16 %i.ahp, i64 0
  %.splat = shufflevector <16 x i16> %.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bn

.critedge862.preheader:                           ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, %bb.bm
  br i1 %i.be, label %.lr.ph1036, label %.critedge862._crit_edge

.lr.ph1036:                                       ; preds = %.critedge862.preheader
  %i.ahq = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.ahr = shufflevector <8 x i32> %i.ahq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ahs = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ahv = zext i32 %8 to i64
  %i.ahw = trunc nuw nsw i32 %2 to i16
  %i.ahx = sub nuw nsw i16 13, %i.ahw
  %.splatinsert1158 = insertelement <16 x i16> poison, i16 %i.ahx, i64 0
  %.splat1159 = shufflevector <16 x i16> %.splatinsert1158, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bu

bb.bn:                                            ; preds = %.lr.ph1022, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit
  %i.ahy = phi i32 [ 2, %.lr.ph1022 ], [ %i.aok, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07981020 = phi i32 [ 0, %.lr.ph1022 ], [ %i.aog, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07991019 = phi ptr [ %1, %.lr.ph1022 ], [ %i.aoj, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 3 uses
  %.08001018 = phi ptr [ %i.c, %.lr.ph1022 ], [ %i.aoi, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %.08011017 = phi ptr [ %i.a, %.lr.ph1022 ], [ %i.aoh, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %i.ahz = load <2 x i64>, ptr %.08011017, align 1, !tbaa !10 ; 2 uses
  %i.aia = bitcast <2 x i64> %i.ahz to <4 x i32>
  %i.aib = lshr <4 x i32> %i.aia, splat (i32 16)  ; 3 uses
  %i.aic = icmp sgt <4 x i32> %i.aib, %i.ahj
  %i.aid = sext <4 x i1> %i.aic to <4 x i32>
  %i.aie = bitcast <4 x i32> %i.aid to <2 x i64>  ; 2 uses
  %i.aif = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.aie, <2 x i64> %i.aie)
  %.not.not = icmp eq i32 %i.aif, 0
  br i1 %.not.not, label %.thread933, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aig = bitcast <2 x i64> %i.ahz to <8 x i16>
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6, i32 6, i32 6>
  %i.aii = and <16 x i16> %i.aih, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.aij = icmp eq <16 x i16> %i.aii, zeroinitializer ; 4 uses
  %i.aik = sext <16 x i1> %i.aij to <16 x i16>
  %i.ail = bitcast <16 x i16> %i.aik to <32 x i8>
  %i.aim = icmp sgt <32 x i8> %i.ail, splat (i8 -1)
  %i.ain = bitcast <32 x i1> %i.aim to i32
  %.not.i895 = icmp eq i32 %i.ain, 0
  br i1 %.not.i895, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aio = bitcast <4 x i32> %i.aib to <16 x i8>
  %i.aip = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aio, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aiq = bitcast <16 x i8> %i.aip to <4 x i32>
  %i.air = or disjoint <4 x i32> %i.aib, %i.aiq
  %i.ais = shufflevector <4 x i32> %i.air, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ait = shl <16 x i16> %i.aii, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aiu = lshr <16 x i16> %i.ait, splat (i16 15) ; 2 uses
  %i.aiv = bitcast <8 x i32> %i.ais to <16 x i16>
  %i.aiw = sub <16 x i16> %i.aiv, %i.aiu
  %.inner1649 = select <16 x i1> %i.aij, <16 x i16> zeroinitializer, <16 x i16> %i.aiw ; 2 uses
  %i.aix = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1649, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aiy = add <16 x i16> %i.aix, %.inner1649     ; 2 uses
  %i.aiz = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aiy, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aja = add <16 x i16> %i.aiy, %i.aiz          ; 2 uses
  %i.ajb = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aja, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.ajc = add <16 x i16> %i.aja, %i.ajb          ; 3 uses
  %i.ajd = extractelement <16 x i16> %i.ajc, i64 7 ; 2 uses
  %i.aje = extractelement <16 x i16> %i.ajc, i64 15 ; 2 uses
  %i.ajf = zext i16 %i.aje to i32                 ; 3 uses
  %i.ajg = bitcast <16 x i16> %i.ajc to <32 x i8>
  %i.ajh = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.ajg, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i = icmp eq i16 %i.ajd, 0
  br i1 %.not116.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.aji = zext i16 %i.ajd to i32                 ; 3 uses
  %i.ajj = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ajk = load i32, ptr %i.ahk, align 8, !tbaa !29
  %i.ajl = sub i32 %i.ajk, %i.aji
  store i32 %i.ajl, ptr %i.ahk, align 8, !tbaa !29
  %i.ajm = lshr i32 %i.aji, 3
  %i.ajn = and i32 %i.ajm, 24
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ajo ; 2 uses
  %i.ajq = and i32 %i.aji, 63                     ; 2 uses
  %i.ajr = load <2 x i64>, ptr %i.ajp, align 8, !tbaa !10 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %i.ajt = load <2 x i64>, ptr %i.ajs, align 8, !tbaa !10 ; 3 uses
  %i.aju = zext nneg i32 %i.ajq to i64
  %i.ajv = insertelement <2 x i64> poison, i64 %i.aju, i64 0
  %i.ajw = shufflevector <2 x i64> %i.ajv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajx = lshr <2 x i64> %i.ajr, %i.ajw
  %i.ajy = shufflevector <2 x i64> %i.ajr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ajz = sub nuw nsw i32 64, %i.ajq
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = insertelement <2 x i64> poison, i64 %i.aka, i64 0
  %i.akc = shufflevector <2 x i64> %i.akb, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akd = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ajy, <2 x i64> %i.akc)
  %i.ake = or <2 x i64> %i.akd, %i.ajx
  %i.akf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ajt, <2 x i32> <i32 1, i32 2>
  %i.akg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akf, <2 x i64> %i.akc)
  %i.akh = or <2 x i64> %i.ake, %i.akg
  store <2 x i64> %i.akh, ptr %i.ahl, align 8, !tbaa !10
  %i.aki = lshr <2 x i64> %i.ajt, %i.ajw
  %i.akj = shufflevector <2 x i64> %i.ajt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akk = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akj, <2 x i64> %i.akc)
  %i.akl = or <2 x i64> %i.akk, %i.aki
  store <2 x i64> %i.akl, ptr %i.ahm, align 8, !tbaa !10
  %i.akm = shufflevector <2 x i64> %i.ajj, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0112.i = phi <4 x i64> [ %i.akm, %bb.bq ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bp ]
  %.not117.i = icmp eq i16 %i.aje, 0
  br i1 %.not117.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.akn = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ako = load i32, ptr %i.ahk, align 8, !tbaa !29
  %i.akp = sub i32 %i.ako, %i.ajf
  store i32 %i.akp, ptr %i.ahk, align 8, !tbaa !29
  %i.akq = lshr i32 %i.ajf, 3
  %i.akr = and i32 %i.akq, 24
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.aks ; 2 uses
  %i.aku = and i32 %i.ajf, 63                     ; 2 uses
  %i.akv = load <2 x i64>, ptr %i.akt, align 8, !tbaa !10 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 16
  %i.akx = load <2 x i64>, ptr %i.akw, align 8, !tbaa !10 ; 3 uses
  %i.aky = zext nneg i32 %i.aku to i64
  %i.akz = insertelement <2 x i64> poison, i64 %i.aky, i64 0
  %i.ala = shufflevector <2 x i64> %i.akz, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.alb = lshr <2 x i64> %i.akv, %i.ala
  %i.alc = shufflevector <2 x i64> %i.akv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ald = sub nuw nsw i32 64, %i.aku
  %i.ale = zext nneg i32 %i.ald to i64
  %i.alf = insertelement <2 x i64> poison, i64 %i.ale, i64 0
  %i.alg = shufflevector <2 x i64> %i.alf, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.alh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alc, <2 x i64> %i.alg)
  %i.ali = or <2 x i64> %i.alh, %i.alb
  %i.alj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.akx, <2 x i32> <i32 1, i32 2>
  %i.alk = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alj, <2 x i64> %i.alg)
  %i.all = or <2 x i64> %i.ali, %i.alk
  store <2 x i64> %i.all, ptr %i.ahl, align 8, !tbaa !10
  %i.alm = lshr <2 x i64> %i.akx, %i.ala
  %i.aln = shufflevector <2 x i64> %i.akx, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.alo = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aln, <2 x i64> %i.alg)
  %i.alp = or <2 x i64> %i.alo, %i.alm
  store <2 x i64> %i.alp, ptr %i.ahm, align 8, !tbaa !10
  %i.alq = shufflevector <2 x i64> %i.akn, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0113.i = phi <4 x i64> [ %i.alq, %bb.bs ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.br ]
  %i.alr = shufflevector <4 x i64> %.0112.i, <4 x i64> %.0113.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.als = bitcast <32 x i8> %i.ajh to <16 x i16>
  %i.alt = lshr <16 x i16> %i.als, splat (i16 3)
  %i.alu = bitcast <16 x i16> %i.alt to <32 x i8>
  %i.alv = shufflevector <32 x i8> %i.alu, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.alw = bitcast <32 x i8> %i.alv to <16 x i16> ; 2 uses
  %i.alx = add <16 x i16> %i.alw, splat (i16 256)
  %i.aly = bitcast <4 x i64> %i.alr to <32 x i8>  ; 2 uses
  %i.alz = bitcast <16 x i16> %i.alx to <32 x i8>
  %i.ama = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aly, <32 x i8> %i.alz)
  %i.amb = add <16 x i16> %i.alw, splat (i16 513)
  %i.amc = bitcast <16 x i16> %i.amb to <32 x i8>
  %i.amd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aly, <32 x i8> %i.amc)
  %i.ame = and <32 x i8> %i.ajh, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.amf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.ame)
  %i.amg = bitcast <32 x i8> %i.amf to <16 x i16>
  %i.amh = add <16 x i16> %i.amg, splat (i16 257) ; 2 uses
  %i.ami = bitcast <32 x i8> %i.ama to <16 x i16>
  %i.amj = mul <16 x i16> %i.amh, %i.ami
  %i.amk = lshr <16 x i16> %i.amj, splat (i16 8)
  %i.aml = bitcast <32 x i8> %i.amd to <16 x i16>
  %i.amm = mul <16 x i16> %i.amh, %i.aml
  %.inner1650 = and <16 x i16> %i.amm, splat (i16 -256)
  %.inner1651 = or disjoint <16 x i16> %.inner1650, %i.amk
  %i.amn = add <8 x i32> %i.ais, splat (i32 -65537) ; 2 uses
  %.inner1652 = and <8 x i32> %i.amn, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.amo = bitcast <8 x i32> %i.amn to <32 x i8>
  %i.amp = shufflevector <32 x i8> %i.amo, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.amq = sub nuw nsw <16 x i16> splat (i16 2), %i.aiu ; 2 uses
  %.inner1653 = and <16 x i16> %i.amq, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1654 = and <16 x i16> %i.amq, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.amr = shufflevector <16 x i16> %.inner1653, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ams = bitcast <8 x i32> %.inner1652 to <16 x i16>
  %i.amt = shufflevector <16 x i16> %i.ams, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amu = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amr, <8 x i16> %i.amt)
  %i.amv = shufflevector <16 x i16> %.inner1653, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amw = bitcast <8 x i32> %.inner1652 to <16 x i16>
  %i.amx = shufflevector <16 x i16> %i.amw, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amy = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amv, <8 x i16> %i.amx)
  %i.amz = shufflevector <8 x i16> %i.amu, <8 x i16> %i.amy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ana = shufflevector <16 x i16> %.inner1654, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anb = bitcast <32 x i8> %i.amp to <16 x i16>
  %i.anc = shufflevector <16 x i16> %i.anb, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.and = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ana, <8 x i16> %i.anc)
  %i.ane = shufflevector <16 x i16> %.inner1654, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anf = bitcast <32 x i8> %i.amp to <16 x i16>
  %i.ang = shufflevector <16 x i16> %i.anf, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anh = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ane, <8 x i16> %i.ang)
  %i.ani = shufflevector <8 x i16> %i.and, <8 x i16> %i.anh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1655 = or <16 x i16> %i.ani, %i.amz      ; 2 uses
  %i.anj = add <16 x i16> %.inner1655, splat (i16 -1)
  %.inner1656 = and <16 x i16> %.inner1651, %i.anj
  %i.ank = and <16 x i16> %i.ait, splat (i16 2048)
  %.not1682 = icmp eq <16 x i16> %i.ank, zeroinitializer
  %.inner1657 = select <16 x i1> %.not1682, <16 x i16> zeroinitializer, <16 x i16> %.inner1655
  %.inner1658 = or <16 x i16> %.inner1656, %.inner1657 ; 2 uses
  %i.anl = shl <16 x i16> %.inner1658, splat (i16 15)
  %.inner1659 = or <16 x i16> %.inner1658, splat (i16 1) ; 2 uses
  %i.anm = add <16 x i16> %.inner1659, splat (i16 2)
  %i.ann = shl <16 x i16> %i.anm, %.splat
  %i.ano = or <16 x i16> %i.anl, %i.ann
  %.inner1660 = select <16 x i1> %i.aij, <16 x i16> zeroinitializer, <16 x i16> %i.ano
  %.inner1661 = select <16 x i1> %i.aij, <16 x i16> zeroinitializer, <16 x i16> %.inner1659
  %i.anp = bitcast <16 x i16> %.inner1661 to <32 x i8> ; 2 uses
  %i.anq = shufflevector <32 x i8> %i.anp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.anr = shufflevector <32 x i8> %i.anp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.ans = or <32 x i8> %i.anq, %i.anr
  %i.ant = bitcast <32 x i8> %i.ans to <4 x i64>  ; 2 uses
  %i.anu = shufflevector <4 x i64> %i.ant, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.anv = or <2 x i64> %i.anu, splat (i64 562958543486978)
  %i.anw = shufflevector <4 x i64> %i.ant, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.anx = or <2 x i64> %i.anv, %i.anw
  %i.any = bitcast <16 x i16> %.inner1660 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit: ; preds = %bb.bo, %bb.bt
  %.0918 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bo ], [ %i.anx, %bb.bt ]
  %.0.i896 = phi <32 x i8> [ zeroinitializer, %bb.bo ], [ %i.any, %bb.bt ] ; 2 uses
  %i.anz = and i32 %i.ahy, 65535
  %i.aoa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.anz, i64 0
  %i.aob = bitcast <4 x i32> %i.aoa to <2 x i64>
  %i.aoc = or <2 x i64> %.0918, %i.aob            ; 2 uses
  store <2 x i64> %i.aoc, ptr %.08001018, align 1, !tbaa !10
  %i.aod = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.aoe = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.aod, ptr %.07991019, align 1, !tbaa !10
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.07991019, i64 %i.ahn
  store <32 x i8> %i.aoe, ptr %i.aof, align 1, !tbaa !10
  %i.aog = add i32 %.07981020, 8                  ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %.08011017, i64 16
  %i.aoi = getelementptr inbounds nuw i8, ptr %.08001018, i64 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %.07991019, i64 32
  %.not = icmp ult i32 %i.aog, %6
  %bc = bitcast <2 x i64> %i.aoc to <4 x i32>
  %i.aok = extractelement <4 x i32> %bc, i64 2
  br i1 %.not, label %bb.bn, label %.critedge862.preheader, !llvm.loop !50

bb.bu:                                            ; preds = %.lr.ph1036, %.critedge862
  %.07941035 = phi i32 [ 2, %.lr.ph1036 ], [ %i.aqc, %.critedge862 ] ; 3 uses
  %i.aol = lshr exact i32 %.07941035, 1
  %i.aom = mul i32 %i.aol, %i.au
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aon ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bw
  %.07901026 = phi i32 [ 0, %bb.bu ], [ %i.apv, %bb.bw ]
  %.07911025 = phi ptr [ %i.aoo, %bb.bu ], [ %i.apx, %bb.bw ] ; 2 uses
  %.07921024 = phi ptr [ %i.d, %bb.bu ], [ %i.apy, %bb.bw ] ; 2 uses
  %.07931023 = phi ptr [ %i.c, %bb.bu ], [ %i.apw, %bb.bw ] ; 3 uses
  %i.aop = load <2 x i64>, ptr %.07931023, align 1, !tbaa !10
  %i.aoq = getelementptr inbounds nuw i8, ptr %.07931023, i64 2
  %i.aor = load <2 x i64>, ptr %i.aoq, align 1, !tbaa !10
  %i.aos = or <2 x i64> %i.aor, %i.aop
  %i.aot = bitcast <2 x i64> %i.aos to <8 x i16>
  %i.aou = zext <8 x i16> %i.aot to <8 x i32>     ; 2 uses
  %i.aov = lshr <8 x i32> %i.aou, splat (i32 8)
  %i.aow = xor <8 x i32> %i.aov, splat (i32 -1)
  %i.aox = and <8 x i32> %i.aow, %i.aou
  %i.aoy = uitofp nneg <8 x i32> %i.aox to <8 x float>
  %i.aoz = bitcast <8 x float> %i.aoy to <8 x i32>
  %i.apa = lshr <8 x i32> %i.aoz, splat (i32 23)
  %i.apb = bitcast <8 x i32> %i.apa to <16 x i16>
  %i.apc = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.apb)
  %i.apd = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.apc, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ape = bitcast <16 x i16> %i.apd to <8 x i32>
  %i.apf = sub nsw <8 x i32> splat (i32 31), %i.ape
  %i.apg = load <4 x i64>, ptr %.07911025, align 1, !tbaa !10 ; 3 uses
  %i.aph = bitcast <4 x i64> %i.apg to <8 x i32>
  %i.api = bitcast <4 x i64> %i.apg to <8 x i32>
  %i.apj = and <8 x i32> %i.api, splat (i32 240)
  %i.apk = add <8 x i32> %i.aph, splat (i32 240)
  %i.apl = and <8 x i32> %i.apk, %i.apj
  %.not942 = icmp eq <8 x i32> %i.apl, zeroinitializer
  %i.apm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.apf, <8 x i32> splat (i32 1))
  %i.apn = select <8 x i1> %.not942, <8 x i32> splat (i32 1), <8 x i32> %i.apm
  %i.apo = bitcast <4 x i64> %i.apg to <8 x i32>
  %i.app = lshr <8 x i32> %i.apo, splat (i32 16)
  %i.apq = add nuw <8 x i32> %i.apn, %i.app       ; 2 uses
  %i.apr = icmp sgt <8 x i32> %i.apq, %i.ahr
  %i.aps = sext <8 x i1> %i.apr to <8 x i32>
  %i.apt = bitcast <8 x i32> %i.aps to <4 x i64>  ; 2 uses
  %i.apu = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.apt, <4 x i64> %i.apt)
  %.not838.not = icmp eq i32 %i.apu, 0
  br i1 %.not838.not, label %.thread933, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <8 x i32> %i.apq, ptr %.07921024, align 1, !tbaa !10
  %i.apv = add i32 %.07901026, 16                 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.07931023, i64 16
  %i.apx = getelementptr inbounds nuw i8, ptr %.07911025, i64 32
  %i.apy = getelementptr inbounds nuw i8, ptr %.07921024, i64 32
  %.not837 = icmp ugt i32 %i.apv, %6
  br i1 %.not837, label %bb.bx, label %bb.bv, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.bx
  %i.apz = mul i32 %.07941035, %8
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aqa
  br label %.lr.ph1033

.critedge862:                                     ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, %bb.bx
  %i.aqc = add i32 %.07941035, 2                  ; 2 uses
  %i.aqd = icmp ult i32 %i.aqc, %7
  br i1 %i.aqd, label %bb.bu, label %.critedge862._crit_edge, !llvm.loop !52

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903
  %i.aqe = phi i32 [ %i.awm, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 2, %.lr.ph1033.preheader ]
  %.07851031 = phi i32 [ %i.awg, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 0, %.lr.ph1033.preheader ]
  %.07861030 = phi ptr [ %i.awj, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aqb, %.lr.ph1033.preheader ] ; 3 uses
  %.07871029 = phi ptr [ %i.awh, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aoo, %.lr.ph1033.preheader ] ; 2 uses
  %.07881028 = phi ptr [ %i.awk, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.d, %.lr.ph1033.preheader ] ; 2 uses
  %.07891027 = phi ptr [ %i.awi, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.c, %.lr.ph1033.preheader ] ; 2 uses
  %16 = load <8 x i16>, ptr %.07871029, align 1, !tbaa !10
  %i.aqf = shufflevector <8 x i16> %16, <8 x i16> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6, i32 6, i32 6>
  %i.aqg = and <16 x i16> %i.aqf, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.aqh = icmp eq <16 x i16> %i.aqg, zeroinitializer ; 4 uses
  %i.aqi = sext <16 x i1> %i.aqh to <16 x i16>
  %i.aqj = bitcast <16 x i16> %i.aqi to <32 x i8>
  %i.aqk = icmp sgt <32 x i8> %i.aqj, splat (i8 -1)
  %i.aql = bitcast <32 x i1> %i.aqk to i32
  %.not.i897 = icmp eq i32 %i.aql, 0
  br i1 %.not.i897, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, label %bb.by

bb.by:                                            ; preds = %.lr.ph1033
  %i.aqm = load <2 x i64>, ptr %.07881028, align 1, !tbaa !10 ; 2 uses
  %i.aqn = bitcast <2 x i64> %i.aqm to <16 x i8>
  %i.aqo = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aqn, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aqp = bitcast <16 x i8> %i.aqo to <2 x i64>
  %i.aqq = or <2 x i64> %i.aqm, %i.aqp
  %i.aqr = bitcast <2 x i64> %i.aqq to <4 x i32>
  %i.aqs = shufflevector <4 x i32> %i.aqr, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.aqt = shl <16 x i16> %i.aqg, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aqu = lshr <16 x i16> %i.aqt, splat (i16 15) ; 2 uses
  %i.aqv = bitcast <8 x i32> %i.aqs to <16 x i16>
  %i.aqw = sub <16 x i16> %i.aqv, %i.aqu
  %.inner1664 = select <16 x i1> %i.aqh, <16 x i16> zeroinitializer, <16 x i16> %i.aqw ; 2 uses
  %i.aqx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1664, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aqy = add <16 x i16> %i.aqx, %.inner1664     ; 2 uses
  %i.aqz = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aqy, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ara = add <16 x i16> %i.aqy, %i.aqz          ; 2 uses
  %i.arb = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ara, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.arc = add <16 x i16> %i.ara, %i.arb          ; 3 uses
  %i.ard = extractelement <16 x i16> %i.arc, i64 7 ; 2 uses
  %i.are = extractelement <16 x i16> %i.arc, i64 15 ; 2 uses
  %i.arf = zext i16 %i.are to i32                 ; 3 uses
  %i.arg = bitcast <16 x i16> %i.arc to <32 x i8>
  %i.arh = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.arg, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i898 = icmp eq i16 %i.ard, 0
  br i1 %.not116.i898, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ari = zext i16 %i.ard to i32                 ; 3 uses
  %i.arj = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ark = load i32, ptr %i.ahs, align 8, !tbaa !29
  %i.arl = sub i32 %i.ark, %i.ari
  store i32 %i.arl, ptr %i.ahs, align 8, !tbaa !29
  %i.arm = lshr i32 %i.ari, 3
  %i.arn = and i32 %i.arm, 24
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.aro ; 2 uses
  %i.arq = and i32 %i.ari, 63                     ; 2 uses
  %i.arr = load <2 x i64>, ptr %i.arp, align 8, !tbaa !10 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  %i.art = load <2 x i64>, ptr %i.ars, align 8, !tbaa !10 ; 3 uses
  %i.aru = zext nneg i32 %i.arq to i64
  %i.arv = insertelement <2 x i64> poison, i64 %i.aru, i64 0
  %i.arw = shufflevector <2 x i64> %i.arv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.arx = lshr <2 x i64> %i.arr, %i.arw
  %i.ary = shufflevector <2 x i64> %i.arr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arz = sub nuw nsw i32 64, %i.arq
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = insertelement <2 x i64> poison, i64 %i.asa, i64 0
  %i.asc = shufflevector <2 x i64> %i.asb, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.asd = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ary, <2 x i64> %i.asc)
  %i.ase = or <2 x i64> %i.asd, %i.arx
  %i.asf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.art, <2 x i32> <i32 1, i32 2>
  %i.asg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asf, <2 x i64> %i.asc)
  %i.ash = or <2 x i64> %i.ase, %i.asg
  store <2 x i64> %i.ash, ptr %i.aht, align 8, !tbaa !10
  %i.asi = lshr <2 x i64> %i.art, %i.arw
  %i.asj = shufflevector <2 x i64> %i.art, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ask = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asj, <2 x i64> %i.asc)
  %i.asl = or <2 x i64> %i.ask, %i.asi
  store <2 x i64> %i.asl, ptr %i.ahu, align 8, !tbaa !10
  %i.asm = shufflevector <2 x i64> %i.arj, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0112.i899 = phi <4 x i64> [ %i.asm, %bb.bz ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.by ]
  %.not117.i900 = icmp eq i16 %i.are, 0
  br i1 %.not117.i900, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.asn = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.aso = load i32, ptr %i.ahs, align 8, !tbaa !29
  %i.asp = sub i32 %i.aso, %i.arf
  store i32 %i.asp, ptr %i.ahs, align 8, !tbaa !29
  %i.asq = lshr i32 %i.arf, 3
  %i.asr = and i32 %i.asq, 24
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ass ; 2 uses
  %i.asu = and i32 %i.arf, 63                     ; 2 uses
  %i.asv = load <2 x i64>, ptr %i.ast, align 8, !tbaa !10 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %i.asx = load <2 x i64>, ptr %i.asw, align 8, !tbaa !10 ; 3 uses
  %i.asy = zext nneg i32 %i.asu to i64
  %i.asz = insertelement <2 x i64> poison, i64 %i.asy, i64 0
  %i.ata = shufflevector <2 x i64> %i.asz, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atb = lshr <2 x i64> %i.asv, %i.ata
  %i.atc = shufflevector <2 x i64> %i.asv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.atd = sub nuw nsw i32 64, %i.asu
  %i.ate = zext nneg i32 %i.atd to i64
  %i.atf = insertelement <2 x i64> poison, i64 %i.ate, i64 0
  %i.atg = shufflevector <2 x i64> %i.atf, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ath = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atc, <2 x i64> %i.atg)
  %i.ati = or <2 x i64> %i.ath, %i.atb
  %i.atj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.asx, <2 x i32> <i32 1, i32 2>
  %i.atk = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atj, <2 x i64> %i.atg)
  %i.atl = or <2 x i64> %i.ati, %i.atk
  store <2 x i64> %i.atl, ptr %i.aht, align 8, !tbaa !10
  %i.atm = lshr <2 x i64> %i.asx, %i.ata
  %i.atn = shufflevector <2 x i64> %i.asx, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ato = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atn, <2 x i64> %i.atg)
  %i.atp = or <2 x i64> %i.ato, %i.atm
  store <2 x i64> %i.atp, ptr %i.ahu, align 8, !tbaa !10
  %i.atq = shufflevector <2 x i64> %i.asn, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0113.i901 = phi <4 x i64> [ %i.atq, %bb.cb ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ca ]
  %i.atr = shufflevector <4 x i64> %.0112.i899, <4 x i64> %.0113.i901, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ats = bitcast <32 x i8> %i.arh to <16 x i16>
  %i.att = lshr <16 x i16> %i.ats, splat (i16 3)
  %i.atu = bitcast <16 x i16> %i.att to <32 x i8>
  %i.atv = shufflevector <32 x i8> %i.atu, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.atw = bitcast <32 x i8> %i.atv to <16 x i16> ; 2 uses
  %i.atx = add <16 x i16> %i.atw, splat (i16 256)
  %i.aty = bitcast <4 x i64> %i.atr to <32 x i8>  ; 2 uses
  %i.atz = bitcast <16 x i16> %i.atx to <32 x i8>
  %i.aua = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aty, <32 x i8> %i.atz)
  %i.aub = add <16 x i16> %i.atw, splat (i16 513)
  %i.auc = bitcast <16 x i16> %i.aub to <32 x i8>
  %i.aud = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aty, <32 x i8> %i.auc)
  %i.aue = and <32 x i8> %i.arh, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.auf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.aue)
  %i.aug = bitcast <32 x i8> %i.auf to <16 x i16>
  %i.auh = add <16 x i16> %i.aug, splat (i16 257) ; 2 uses
  %i.aui = bitcast <32 x i8> %i.aua to <16 x i16>
  %i.auj = mul <16 x i16> %i.auh, %i.aui
  %i.auk = lshr <16 x i16> %i.auj, splat (i16 8)
  %i.aul = bitcast <32 x i8> %i.aud to <16 x i16>
  %i.aum = mul <16 x i16> %i.auh, %i.aul
  %.inner1665 = and <16 x i16> %i.aum, splat (i16 -256)
  %.inner1666 = or disjoint <16 x i16> %.inner1665, %i.auk
  %i.aun = add <8 x i32> %i.aqs, splat (i32 -65537) ; 2 uses
  %.inner1667 = and <8 x i32> %i.aun, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.auo = bitcast <8 x i32> %i.aun to <32 x i8>
  %i.aup = shufflevector <32 x i8> %i.auo, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.auq = sub nuw nsw <16 x i16> splat (i16 2), %i.aqu ; 2 uses
  %.inner1668 = and <16 x i16> %i.auq, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1669 = and <16 x i16> %i.auq, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.aur = shufflevector <16 x i16> %.inner1668, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aus = bitcast <8 x i32> %.inner1667 to <16 x i16>
  %i.aut = shufflevector <16 x i16> %i.aus, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auu = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aur, <8 x i16> %i.aut)
  %i.auv = shufflevector <16 x i16> %.inner1668, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auw = bitcast <8 x i32> %.inner1667 to <16 x i16>
  %i.aux = shufflevector <16 x i16> %i.auw, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auy = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.auv, <8 x i16> %i.aux)
  %i.auz = shufflevector <8 x i16> %i.auu, <8 x i16> %i.auy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ava = shufflevector <16 x i16> %.inner1669, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avb = bitcast <32 x i8> %i.aup to <16 x i16>
  %i.avc = shufflevector <16 x i16> %i.avb, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avd = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ava, <8 x i16> %i.avc)
  %i.ave = shufflevector <16 x i16> %.inner1669, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avf = bitcast <32 x i8> %i.aup to <16 x i16>
  %i.avg = shufflevector <16 x i16> %i.avf, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avh = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ave, <8 x i16> %i.avg)
  %i.avi = shufflevector <8 x i16> %i.avd, <8 x i16> %i.avh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1670 = or <16 x i16> %i.avi, %i.auz      ; 2 uses
  %i.avj = add <16 x i16> %.inner1670, splat (i16 -1)
  %.inner1671 = and <16 x i16> %.inner1666, %i.avj
  %i.avk = and <16 x i16> %i.aqt, splat (i16 2048)
  %.not1683 = icmp eq <16 x i16> %i.avk, zeroinitializer
  %.inner1672 = select <16 x i1> %.not1683, <16 x i16> zeroinitializer, <16 x i16> %.inner1670
  %.inner1673 = or <16 x i16> %.inner1671, %.inner1672 ; 2 uses
  %i.avl = shl <16 x i16> %.inner1673, splat (i16 15)
  %.inner1674 = or <16 x i16> %.inner1673, splat (i16 1) ; 2 uses
  %i.avm = add <16 x i16> %.inner1674, splat (i16 2)
  %i.avn = shl <16 x i16> %i.avm, %.splat1159
  %i.avo = or <16 x i16> %i.avl, %i.avn
  %.inner1675 = select <16 x i1> %i.aqh, <16 x i16> zeroinitializer, <16 x i16> %i.avo
  %.inner1676 = select <16 x i1> %i.aqh, <16 x i16> zeroinitializer, <16 x i16> %.inner1674
  %i.avp = bitcast <16 x i16> %.inner1676 to <32 x i8> ; 2 uses
  %i.avq = shufflevector <32 x i8> %i.avp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.avr = shufflevector <32 x i8> %i.avp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.avs = or <32 x i8> %i.avq, %i.avr
  %i.avt = bitcast <32 x i8> %i.avs to <4 x i64>  ; 2 uses
  %i.avu = shufflevector <4 x i64> %i.avt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.avv = or <2 x i64> %i.avu, splat (i64 562958543486978)
  %i.avw = shufflevector <4 x i64> %i.avt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.avx = or <2 x i64> %i.avv, %i.avw
  %i.avy = bitcast <16 x i16> %.inner1675 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903: ; preds = %.lr.ph1033, %bb.cc
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %.lr.ph1033 ], [ %i.avx, %bb.cc ]
  %.0.i902 = phi <32 x i8> [ zeroinitializer, %.lr.ph1033 ], [ %i.avy, %bb.cc ] ; 2 uses
  %i.avz = and i32 %i.aqe, 65535
  %i.awa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.avz, i64 0
  %i.awb = bitcast <4 x i32> %i.awa to <2 x i64>
  %i.awc = or <2 x i64> %.0, %i.awb               ; 2 uses
  store <2 x i64> %i.awc, ptr %.07891027, align 1, !tbaa !10
  %i.awd = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.awe = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.awd, ptr %.07861030, align 1, !tbaa !10
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %.07861030, i64 %i.ahv
  store <32 x i8> %i.awe, ptr %i.awf, align 1, !tbaa !10
  %i.awg = add nuw i32 %.07851031, 8              ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.07871029, i64 16
  %i.awi = getelementptr inbounds nuw i8, ptr %.07891027, i64 8
  %i.awj = getelementptr inbounds nuw i8, ptr %.07861030, i64 32
  %i.awk = getelementptr inbounds nuw i8, ptr %.07881028, i64 16
  %i.awl = icmp ult i32 %i.awg, %6
  %bc1275 = bitcast <2 x i64> %i.awc to <4 x i32>
  %i.awm = extractelement <4 x i32> %bc1275, i64 2
  br i1 %i.awl, label %.lr.ph1033, label %.critedge862, !llvm.loop !53

.thread933:                                       ; preds = %bb.bn, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ei

.critedge862._crit_edge:                          ; preds = %.critedge862, %.critedge862.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge862._crit_edge, %.critedge860
  %i.awn = icmp ugt i32 %.1697, 1
  br i1 %i.awn, label %bb.ce, label %bb.ei

bb.ce:                                            ; preds = %bb.cd
  %i.awo = add i32 %6, 3
  %i.awp = lshr i32 %i.awo, 2
  %i.awq = add nuw nsw i32 %i.awp, 9
  %i.awr = and i32 %i.awq, 2147483640             ; 11 uses
  %.not1161 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1161, label %._crit_edge1066, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %bb.ce
  %i.aws = zext i32 %i.au to i64
  %i.awt = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1155, label %.lr.ph1065.split.preheader, label %.lr.ph1060.us

.lr.ph1065.split.preheader:                       ; preds = %.lr.ph1065
  %i.awu = add nsw i64 %i.awt, -1
  %i.awv = lshr i64 %i.awu, 2
  %i.aww = add nuw nsw i64 %i.awv, 1              ; 2 uses
  %xtraiter = and i64 %i.aww, 3                   ; 3 uses
  %i.awx = icmp ult i32 %7, 13
  br i1 %i.awx, label %.lr.ph1065.split.epil.preheader, label %.lr.ph1065.split.preheader.new

.lr.ph1065.split.preheader.new:                   ; preds = %.lr.ph1065.split.preheader
  %unroll_iter = and i64 %i.aww, 9223372036854775804
  br label %.lr.ph1065.split

.lr.ph1060.us:                                    ; preds = %.lr.ph1065, %._crit_edge1061.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge1061.us ], [ 0, %.lr.ph1065 ] ; 3 uses
  %i.awy = lshr exact i64 %indvars.iv, 1
  %i.awz = trunc nuw nsw i64 %i.awy to i32
  %i.axa = mul i32 %i.au, %i.awz
  %i.axb = zext i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axb
  %i.axd = lshr exact i64 %indvars.iv, 2
  %i.axe = trunc nuw nsw i64 %i.axd to i32
  %i.axf = mul i32 %i.awr, %i.axe
  %i.axg = zext i32 %i.axf to i64
  %i.axh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axg
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph1060.us, %bb.cf
  %.07771058.us = phi i32 [ 0, %.lr.ph1060.us ], [ %i.ayd, %bb.cf ]
  %.07781057.us = phi ptr [ %i.axh, %.lr.ph1060.us ], [ %i.ayf, %bb.cf ] ; 2 uses
  %.07791056.us = phi ptr [ %i.axc, %.lr.ph1060.us ], [ %i.aye, %bb.cf ] ; 3 uses
  %i.axi = load <4 x i32>, ptr %.07791056.us, align 1, !tbaa !10 ; 2 uses
  %i.axj = lshr <4 x i32> %i.axi, splat (i32 4)
  %i.axk = bitcast <4 x i32> %i.axj to <2 x i64>
  %i.axl = and <2 x i64> %i.axk, splat (i64 12884901891)
  %i.axm = lshr <4 x i32> %i.axi, splat (i32 2)
  %i.axn = bitcast <4 x i32> %i.axm to <2 x i64>
  %i.axo = and <2 x i64> %i.axn, splat (i64 206158430256)
  %i.axp = getelementptr inbounds nuw [2 x i8], ptr %.07791056.us, i64 %i.aws
  %i.axq = load <2 x i64>, ptr %i.axp, align 1, !tbaa !10 ; 2 uses
  %i.axr = bitcast <2 x i64> %i.axq to <4 x i32>
  %i.axs = lshr <4 x i32> %i.axr, splat (i32 2)
  %i.axt = bitcast <4 x i32> %i.axs to <2 x i64>
  %i.axu = and <2 x i64> %i.axt, splat (i64 51539607564)
  %i.axv = and <2 x i64> %i.axq, splat (i64 824633721024)
  %i.axw = or disjoint <2 x i64> %i.axo, %i.axv
  %i.axx = or disjoint <2 x i64> %i.axw, %i.axl
  %i.axy = or disjoint <2 x i64> %i.axx, %i.axu
  %i.axz = bitcast <2 x i64> %i.axy to <16 x i8>
  %i.aya = shufflevector <16 x i8> %i.axz, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayb = bitcast <16 x i8> %i.aya to <4 x i32>
  %i.ayc = extractelement <4 x i32> %i.ayb, i64 0
  store i32 %i.ayc, ptr %.07781057.us, align 4, !tbaa !21
  %i.ayd = add nuw i32 %.07771058.us, 8           ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.07791056.us, i64 16
  %i.ayf = getelementptr inbounds nuw i8, ptr %.07781057.us, i64 4 ; 2 uses
  %i.ayg = icmp ult i32 %i.ayd, %6
  br i1 %i.ayg, label %bb.cf, label %._crit_edge1061.us, !llvm.loop !54

._crit_edge1061.us:                               ; preds = %bb.cf
  store i16 0, ptr %i.ayf, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ayh = icmp samesign ult i64 %indvars.iv.next, %i.awt
  br i1 %i.ayh, label %.lr.ph1060.us, label %._crit_edge1066.loopexit1169, !llvm.loop !55

.lr.ph1065.split:                                 ; preds = %.lr.ph1065.split, %.lr.ph1065.split.preheader.new
  %indvars.iv1210 = phi i64 [ 0, %.lr.ph1065.split.preheader.new ], [ %indvars.iv.next1211.3, %.lr.ph1065.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1065.split.preheader.new ], [ %niter.next.3, %.lr.ph1065.split ]
  %i.ayi = lshr exact i64 %indvars.iv1210, 2
  %i.ayj = trunc nuw nsw i64 %i.ayi to i32
  %i.ayk = mul i32 %i.awr, %i.ayj
  %i.ayl = zext i32 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ayl
  store i16 0, ptr %i.aym, align 16, !tbaa !66
  %indvars.iv.next1211 = lshr exact i64 %indvars.iv1210, 2
  %i.ayn = trunc i64 %indvars.iv.next1211 to i32
  %i.ayo = or disjoint i32 %i.ayn, 1
  %i.ayp = mul i32 %i.awr, %i.ayo
  %i.ayq = zext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ayq
  store i16 0, ptr %i.ayr, align 16, !tbaa !66
  %indvars.iv.next1211.1 = lshr exact i64 %indvars.iv1210, 2
  %i.ays = trunc i64 %indvars.iv.next1211.1 to i32
  %i.ayt = or disjoint i32 %i.ays, 2
  %i.ayu = mul i32 %i.awr, %i.ayt
  %i.ayv = zext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ayv
  store i16 0, ptr %i.ayw, align 16, !tbaa !66
  %indvars.iv.next1211.2 = lshr exact i64 %indvars.iv1210, 2
  %i.ayx = trunc i64 %indvars.iv.next1211.2 to i32
  %i.ayy = or disjoint i32 %i.ayx, 3
  %i.ayz = mul i32 %i.awr, %i.ayy
  %i.aza = zext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aza
  store i16 0, ptr %i.azb, align 16, !tbaa !66
  %indvars.iv.next1211.3 = add nuw nsw i64 %indvars.iv1210, 16 ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge1066.thread.unr-lcssa, label %.lr.ph1065.split, !llvm.loop !55

._crit_edge1066.thread.unr-lcssa:                 ; preds = %.lr.ph1065.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1066.thread, label %.lr.ph1065.split.epil.preheader

.lr.ph1065.split.epil.preheader:                  ; preds = %._crit_edge1066.thread.unr-lcssa, %.lr.ph1065.split.preheader
  %indvars.iv1210.epil.init = phi i64 [ 0, %.lr.ph1065.split.preheader ], [ %indvars.iv.next1211.3, %._crit_edge1066.thread.unr-lcssa ]
  %lcmp.mod1702 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1702)
  br label %.lr.ph1065.split.epil

.lr.ph1065.split.epil:                            ; preds = %.lr.ph1065.split.epil, %.lr.ph1065.split.epil.preheader
  %indvars.iv1210.epil = phi i64 [ %indvars.iv.next1211.epil, %.lr.ph1065.split.epil ], [ %indvars.iv1210.epil.init, %.lr.ph1065.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1065.split.epil ], [ 0, %.lr.ph1065.split.epil.preheader ]
  %i.azc = lshr exact i64 %indvars.iv1210.epil, 2
  %i.azd = trunc nuw nsw i64 %i.azc to i32
  %i.aze = mul i32 %i.awr, %i.azd
  %i.azf = zext i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azf
  store i16 0, ptr %i.azg, align 16, !tbaa !66
  %indvars.iv.next1211.epil = add nuw nsw i64 %indvars.iv1210.epil, 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1066.thread, label %.lr.ph1065.split.epil, !llvm.loop !56

._crit_edge1066.thread:                           ; preds = %.lr.ph1065.split.epil, %._crit_edge1066.thread.unr-lcssa
  %indvars.iv.next1211.lcssa = phi i64 [ %indvars.iv.next1211.3, %._crit_edge1066.thread.unr-lcssa ], [ %indvars.iv.next1211.epil, %.lr.ph1065.split.epil ]
  %i.azh = trunc nuw i64 %indvars.iv.next1211.lcssa to i32
  %i.azi = lshr exact i32 %i.azh, 2
  %i.azj = mul i32 %i.azi, %i.awr
  %i.azk = zext i32 %i.azj to i64
  %i.azl = getelementptr [2 x i8], ptr %i.a, i64 %i.azk
  br label %._crit_edge1072

._crit_edge1066.loopexit1169:                     ; preds = %._crit_edge1061.us
  %i.azm = trunc nuw i64 %indvars.iv.next to i32
  %i.azn = lshr exact i32 %i.azm, 2
  %i.azo = mul i32 %i.azn, %i.awr
  %i.azp = zext i32 %i.azo to i64
  br label %._crit_edge1066

._crit_edge1066:                                  ; preds = %._crit_edge1066.loopexit1169, %bb.ce
  %.0780.lcssa = phi i64 [ 0, %bb.ce ], [ %i.azp, %._crit_edge1066.loopexit1169 ] ; 2 uses
  %i.azq = getelementptr [2 x i8], ptr %i.a, i64 %.0780.lcssa ; 2 uses
  br i1 %.not1155, label %._crit_edge1072, label %.lr.ph1071.preheader

.lr.ph1071.preheader:                             ; preds = %._crit_edge1066
  %i.azr = add i32 %6, -1
  %i.azs = lshr i32 %i.azr, 1
  %i.azt = and i32 %i.azs, 2147483632
  %i.azu = zext nneg i32 %i.azt to i64            ; 2 uses
  %i.azv = add nuw nsw i64 %i.azu, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.azq, i8 0, i64 %i.azv, i1 false), !tbaa !10
  %i.azw = shl nuw nsw i64 %.0780.lcssa, 1
  %i.azx = getelementptr i8, ptr %i.a, i64 %i.azw
  %i.azy = getelementptr i8, ptr %i.azx, i64 %i.azu
  %scevgep1213 = getelementptr i8, ptr %i.azy, i64 16
  br label %._crit_edge1072

._crit_edge1072:                                  ; preds = %._crit_edge1066.thread, %.lr.ph1071.preheader, %._crit_edge1066
  %.0769.lcssa = phi ptr [ %i.azq, %._crit_edge1066 ], [ %scevgep1213, %.lr.ph1071.preheader ], [ %i.azl, %._crit_edge1066.thread ]
  store i16 0, ptr %.0769.lcssa, align 2, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.e, i8 0, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.azz = zext nneg i32 %4 to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 %i.azz
  call fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %14, ptr noundef nonnull %i.baa, i32 noundef %5)
  br i1 %.not1161, label %._crit_edge1101, label %.lr.ph1100

.lr.ph1100:                                       ; preds = %._crit_edge1072
  %.promoted1095 = load ptr, ptr %14, align 8
  %i.bab = zext nneg i32 %i.awr to i64
  %i.bac = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 7 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.bag = sub nsw i32 28, %2
  %i.bah = shl nuw nsw i32 3, %i.bag
  %i.bai = insertelement <4 x i32> poison, i32 %i.bah, i64 0
  %i.baj = shufflevector <4 x i32> %i.bai, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bak = zext i32 %8 to i64                     ; 3 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bam = zext i32 %7 to i64                     ; 2 uses
  br label %bb.cg

._crit_edge1101:                                  ; preds = %._crit_edge1093, %._crit_edge1072
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %.not843 = icmp eq i32 %.1697, 2
  br i1 %.not843, label %bb.ei, label %bb.ea

bb.cg:                                            ; preds = %.lr.ph1100, %._crit_edge1093
  %indvars.iv1214 = phi i64 [ 0, %.lr.ph1100 ], [ %indvars.iv.next1215, %._crit_edge1093 ] ; 4 uses
  %.lcssa108310961097 = phi ptr [ %.promoted1095, %.lr.ph1100 ], [ %.lcssa1083, %._crit_edge1093 ] ; 2 uses
  %i.ban = sub nuw nsw i64 %i.bam, %indvars.iv1214 ; 3 uses
  %i.bao = icmp samesign ult i64 %i.ban, 4
  br i1 %i.bao, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.not845 = icmp eq i64 %i.ban, 3
  br i1 %.not845, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.bap = icmp samesign ult i64 %i.ban, 2
  %spec.store.select23 = select i1 %i.bap, i32 4369, i32 13107
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.cg
  %.0765 = phi i32 [ %spec.store.select23, %bb.ci ], [ 30583, %bb.ch ], [ 65535, %bb.cg ]
  br i1 %.not1155, label %._crit_edge1093, label %.lr.ph1092.preheader

.lr.ph1092.preheader:                             ; preds = %bb.cj
  %i.baq = trunc nuw i64 %indvars.iv1214 to i32
  %i.bar = mul i32 %8, %i.baq
  %i.bas = zext i32 %i.bar to i64
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bas
  %i.bau = lshr exact i64 %indvars.iv1214, 2
  %i.bav = trunc nuw nsw i64 %i.bau to i32
  %i.baw = mul i32 %i.awr, %i.bav
  %i.bax = zext i32 %i.baw to i64
  %i.bay = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bax
  br label %.lr.ph1092

._crit_edge1093:                                  ; preds = %bb.dz, %bb.cj
  %.lcssa1083 = phi ptr [ %.lcssa108310961097, %bb.cj ], [ %i.bqv, %bb.dz ] ; 2 uses
  store ptr %.lcssa1083, ptr %14, align 8
  %indvars.iv.next1215 = add nuw nsw i64 %indvars.iv1214, 4 ; 2 uses
  %i.baz = icmp samesign ult i64 %indvars.iv.next1215, %i.bam
  br i1 %i.baz, label %bb.cg, label %._crit_edge1101, !llvm.loop !57

.lr.ph1092:                                       ; preds = %.lr.ph1092.preheader, %bb.dz
  %.07601090 = phi i32 [ %i.bbb, %bb.dz ], [ 0, %.lr.ph1092.preheader ]
  %.07611088 = phi ptr [ %i.brd, %bb.dz ], [ %i.bat, %.lr.ph1092.preheader ] ; 4 uses
  %.07621087 = phi ptr [ %i.bre, %bb.dz ], [ %i.bay, %.lr.ph1092.preheader ] ; 3 uses
  %.07631086 = phi ptr [ %i.brf, %bb.dz ], [ %i.e, %.lr.ph1092.preheader ] ; 3 uses
  %.07641085 = phi i32 [ %i.brc, %bb.dz ], [ 0, %.lr.ph1092.preheader ]
  %.17661084 = phi i32 [ %i.bbf, %bb.dz ], [ %.0765, %.lr.ph1092.preheader ]
  %i.bba = phi ptr [ %i.bqv, %bb.dz ], [ %.lcssa108310961097, %.lr.ph1092.preheader ] ; 4 uses
  %i.bbb = add nuw i32 %.07601090, 4              ; 3 uses
  %i.bbc = sub nsw i32 %i.bbb, %6
end_hunk_0
