Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BasicBlockMatchingAndInference?download=true
inline.NumInlined: 1959
inline.NumDeleted: 1039
begin_hunk_0_@_ZN4llvm30BasicBlockMatchingAndInference24initWeightInfoByMatchingERNS_15MachineFunctionE:bb.a
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !270, !noalias !271
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !272, !noalias !271 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !273, !noalias !271 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !274, !noalias !271
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = zext i32 %i.ce to i64                   ; 4 uses
  %.idx452.a = shl nuw nsw i64 %i.ci, 4           ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ce, 0
  %or.cond = select i1 %i.ch, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge297, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = add nuw nsw i64 %i.ci, 31
  %i.ck = lshr i64 %i.cj, 5                       ; 2 uses
  %i.cl = load i32, ptr %i.cc, align 4, !tbaa !65, !noalias !275 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i52.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit

.lr.ph.i.i.i52.preheader:                         ; preds = %bb.m
  %i.cn = icmp eq i64 %i.ck, 1
  br i1 %i.cn, label %._crit_edge297, label %.lr.ph503

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph503
  %i.co = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %i.cp = icmp eq i64 %i.co, %i.ck
  br i1 %i.cp, label %._crit_edge297, label %.lr.ph503, !llvm.loop !204

.lr.ph503:                                        ; preds = %.lr.ph.i.i.i52.preheader, %.lr.ph.i.i.i52
  %i.cq = phi i64 [ %i.co, %.lr.ph.i.i.i52 ], [ 1, %.lr.ph.i.i.i52.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !65, !noalias !275 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i52, label %._crit_edge.i.loopexit.i.i, !llvm.loop !204

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph503
  %i.cu = shl i64 %i.cq, 9
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit: ; preds = %bb.m, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cu, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.cl, %bb.m ], [ %i.cs, %._crit_edge.i.loopexit.i.i ]
  %i.cv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.cw = shl nuw nsw i32 %i.cv, 4
  %.idx = zext nneg i32 %i.cw to i64
  %i.cx = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not252294 = icmp eq i64 %i.cx, %.idx452.a
  br i1 %.not252294, label %._crit_edge297, label %.lr.ph296

.lr.ph296:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dd = add nuw nsw i64 %i.ci, 31
  %i.de = lshr i64 %i.dd, 5                       ; 2 uses
  br label %bb.o

._crit_edge297:                                   ; preds = %.lr.ph.i.i.i52, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit, %.lr.ph.i.i64.preheader, %.lr.ph.i.i64, %.lr.ph.i.i.i52.preheader, %bb.l, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !278, !noalias !279
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !280, !noalias !279 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !281, !noalias !279 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !282, !noalias !279
  %i.dn = icmp eq i32 %i.dm, 0
  %i.do = zext i32 %i.dk to i64                   ; 4 uses
  %.idx455 = shl nuw nsw i64 %i.do, 5             ; 2 uses
  %.not.i.not.i.i53 = icmp eq i32 %i.dk, 0
  %or.cond250 = select i1 %i.dn, i1 true, i1 %.not.i.not.i.i53
  br i1 %or.cond250, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %._crit_edge297
  %i.dp = add nuw nsw i64 %i.do, 31
  %i.dq = lshr i64 %i.dp, 5                       ; 2 uses
  %i.dr = load i32, ptr %i.di, align 4, !tbaa !65, !noalias !283 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.i.i.i58.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDENS1_IS2_mNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES4_NS6_IS2_S8_EEEES2_S8_S4_S9_E5beginEv.exit

.lr.ph.i.i.i58.preheader:                         ; preds = %bb.n
  %i.dt = icmp eq i64 %i.dq, 1
  br i1 %i.dt, label %.loopexit, label %.lr.ph505

.lr.ph.i.i.i58:                                   ; preds = %.lr.ph505
  %i.du = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.dv = icmp eq i64 %i.du, %i.dq
  br i1 %i.dv, label %.loopexit, label %.lr.ph505, !llvm.loop !209

.lr.ph505:                                        ; preds = %.lr.ph.i.i.i58.preheader, %.lr.ph.i.i.i58
  %i.dw = phi i64 [ %i.du, %.lr.ph.i.i.i58 ], [ 1, %.lr.ph.i.i.i58.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !65, !noalias !283 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i.i58, label %._crit_edge.i.loopexit.i.i60, !llvm.loop !209

._crit_edge.i.loopexit.i.i60:                     ; preds = %.lr.ph505
  %i.ea = shl i64 %i.dw, 10
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDENS1_IS2_mNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES4_NS6_IS2_S8_EEEES2_S8_S4_S9_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDENS1_IS2_mNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES4_NS6_IS2_S8_EEEES2_S8_S4_S9_E5beginEv.exit: ; preds = %bb.n, %._crit_edge.i.loopexit.i.i60
  %.012.lcssa.i.i.i55 = phi i64 [ 0, %bb.n ], [ %i.ea, %._crit_edge.i.loopexit.i.i60 ]
  %.0.lcssa.i.i.i56 = phi i32 [ %i.dr, %bb.n ], [ %i.dy, %._crit_edge.i.loopexit.i.i60 ]
  %i.eb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i56, i1 true)
  %i.ec = shl nuw nsw i32 %i.eb, 5
  %.idx454.a = zext nneg i32 %i.ec to i64
  %i.ed = or disjoint i64 %.012.lcssa.i.i.i55, %.idx454.a ; 2 uses
  %.not253301 = icmp eq i64 %i.ed, %.idx455
  br i1 %.not253301, label %.loopexit, label %.lr.ph303

.lr.ph303:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDENS1_IS2_mNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES4_NS6_IS2_S8_EEEES2_S8_S4_S9_E5beginEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 68 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.en = add nuw nsw i64 %i.do, 31
  %i.eo = lshr i64 %i.en, 5                       ; 2 uses
  br label %bb.z

bb.o:                                             ; preds = %.lr.ph296, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit
  %.pn = phi i64 [ %i.cx, %.lr.ph296 ], [ %i.ja, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit ] ; 2 uses
  %.sroa.0224.0295 = getelementptr i8, ptr %i.ca, i64 %.pn ; 2 uses
  %i.ep = load ptr, ptr %i.cy, align 8, !tbaa !286, !noalias !287 ; 2 uses
  %i.eq = load ptr, ptr %i.cz, align 8, !tbaa !288, !noalias !287 ; 3 uses
  %i.er = load i32, ptr %i.da, align 4, !tbaa !289, !noalias !287 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.et = add i32 %i.er, -1                       ; 3 uses
  %i.eu = load i32, ptr %.sroa.0224.0295, align 4, !tbaa !65 ; 3 uses
  %i.ev = mul i32 %i.eu, 37
  %.017.i.i.i = and i32 %i.ev, %i.et              ; 4 uses
  %i.ew = zext i32 %.017.i.i.i to i64             ; 3 uses
  %i.ex = lshr i64 %i.ew, 5
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !65
  %i.fa = and i32 %.017.i.i.i, 31
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = trunc i32 %i.fb to i1
  br i1 %i.fc, label %.lr.ph.i.i.i61, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread, !prof !66

bb.q:                                             ; preds = %.lr.ph.i.i.i61
  %i.fd = add nuw i32 %.018.i.i.i, 1
  %.0.i.i.i = and i32 %i.fd, %i.et                ; 3 uses
  %i.fe = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.ff = lshr i64 %i.fe, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !65
  %i.fi = and i32 %.0.i.i.i, 31
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = trunc i32 %i.fj to i1
  br i1 %i.fk, label %.lr.ph.i.i.i61, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread, !prof !67

.lr.ph.i.i.i61:                                   ; preds = %bb.p, %bb.q
  %i.fl = phi i64 [ %i.fe, %bb.q ], [ %i.ew, %bb.p ]
  %.018.i.i.i = phi i32 [ %.0.i.i.i, %bb.q ], [ %.017.i.i.i, %bb.p ]
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !65
  %i.fo = icmp eq i32 %i.eu, %i.fn
  br i1 %i.fo, label %.lr.ph.i.i, label %bb.q, !prof !68

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.fp = add nuw i32 %.018.i.i, 1
  %.0.i.i = and i32 %i.fp, %i.et                  ; 3 uses
  %i.fq = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.fr = lshr i64 %i.fq, 5
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !65
  %i.fu = and i32 %.0.i.i, 31
  %i.fv = lshr i32 %i.ft, %i.fu
  %i.fw = trunc i32 %i.fv to i1
  br i1 %i.fw, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit, !prof !67

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i61, %bb.r
  %i.fx = phi i64 [ %i.fq, %bb.r ], [ %i.ew, %.lr.ph.i.i.i61 ]
  %.018.i.i = phi i32 [ %.0.i.i, %bb.r ], [ %.017.i.i.i, %.lr.ph.i.i.i61 ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !65
  %i.ga = icmp eq i32 %i.eu, %i.fz
  br i1 %i.ga, label %bb.s, label %bb.r, !prof !68

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit: ; preds = %bb.r, %bb.s
  %i.gd = phi i64 [ %i.gc, %bb.s ], [ 0, %bb.r ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.sroa.2.0.extract.shift.i = lshr i64 %i.gd, 16 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i64 %i.gd, 32
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i16
  %i.ge = load ptr, ptr %5, align 8, !tbaa !71, !noalias !290 ; 3 uses
  %i.gf = load ptr, ptr %i.db, align 8, !tbaa !72, !noalias !290 ; 2 uses
  %i.gg = load i32, ptr %i.dc, align 4, !tbaa !73, !noalias !290 ; 4 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %.loopexit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit
  %i.gi = add i32 %i.gg, -1                       ; 2 uses
  %i.gj = trunc i64 %.sroa.2.0.extract.shift.i to i32
  %i.gk = and i32 %i.gj, 65535
  %i.gl = mul nuw nsw i32 %i.gk, 37
  %.017.i.i.i.i = and i32 %i.gi, %i.gl            ; 3 uses
  %i.gm = zext nneg i32 %.017.i.i.i.i to i64      ; 2 uses
  %i.gn = lshr i64 %i.gm, 5
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !65, !noalias !291
  %i.gq = and i32 %.017.i.i.i.i, 31
  %i.gr = lshr i32 %i.gp, %i.gq
  %i.gs = trunc i32 %i.gr to i1
  br i1 %i.gs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !66

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gt = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.gt, %i.gi              ; 3 uses
  %i.gu = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.gv = lshr i64 %i.gu, 5
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !65, !noalias !291
  %i.gy = and i32 %.0.i.i.i.i, 31
  %i.gz = lshr i32 %i.gx, %i.gy
  %i.ha = trunc i32 %i.gz to i1
  br i1 %i.ha, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !67

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %i.hb = phi i64 [ %i.gu, %bb.u ], [ %i.gm, %bb.t ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.u ], [ %.017.i.i.i.i, %bb.t ]
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.ge, i64 %i.hb ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !59, !noalias !291
  %i.he = icmp eq i16 %i.hd, %.sroa.2.0.extract.trunc.i
  br i1 %i.he, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i, label %bb.u, !prof !68

.loopexit.i.i.i:                                  ; preds = %bb.u, %bb.t, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit
  %i.hf = zext i32 %i.gg to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.ge, i64 %i.hf
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.gg to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i ], [ %i.hf, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.hc, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i ], [ %i.hg, %.loopexit.i.i.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.ge, i64 %.pre-phi.i
  %i.hi = icmp eq ptr %.lcssa.sink.i.i.i, %i.hh
  br i1 %i.hi, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !75 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !75 ; 2 uses
  %.not27.i = icmp eq ptr %i.hk, %i.hm
  br i1 %.not27.i, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.hn = and i64 %i.gd, 65535
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i
  %.030.i = phi i64 [ -1, %.lr.ph.i ], [ %.1.i, %bb.w ] ; 2 uses
  %.0929.i = phi ptr [ null, %.lr.ph.i ], [ %.110.i, %bb.w ] ; 2 uses
  %.sroa.014.028.i = phi ptr [ %i.hk, %.lr.ph.i ], [ %i.hz, %bb.w ] ; 3 uses
  %i.ho = load i64, ptr %.sroa.014.028.i, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.412.0.extract.shift.i = lshr i64 %i.ho, 32
  %.sroa.412.0.extract.trunc.i = trunc i64 %.sroa.412.0.extract.shift.i to i16
  %i.hp = and i64 %i.ho, 65535
  %i.hq = sub nsw i64 %i.hp, %i.hn
  %6 = call i64 @llvm.abs.i64(i64 %i.hq, i1 true)
  %.not.i.unshifted.i = xor i64 %i.ho, %i.gd
  %.not.i.i62 = icmp ult i64 %.not.i.unshifted.i, 281474976710656
  %i.hr = select i1 %.not.i.i62, i64 0, i64 65536
  %i.hs = icmp ne i16 %.sroa.412.0.extract.trunc.i, %.sroa.3.0.extract.trunc.i
  %i.ht = zext i1 %i.hs to i64
  %i.hu = or disjoint i64 %i.hr, %i.ht
  %i.hv = shl nuw nsw i64 %i.hu, 16
  %i.hw = add nuw nsw i64 %i.hv, %6               ; 2 uses
  %i.hx = icmp eq ptr %.0929.i, null
  %i.hy = icmp ult i64 %i.hw, %.030.i
  %or.cond.i = select i1 %i.hx, i1 true, i1 %i.hy ; 2 uses
  %.110.i = select i1 %or.cond.i, ptr %.sroa.4.0.copyload.i, ptr %.0929.i ; 3 uses
  %.1.i = select i1 %or.cond.i, i64 %i.hw, i64 %.030.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, %i.hm
  br i1 %.not.i, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit, label %bb.w

_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit: ; preds = %bb.w
  store ptr %.110.i, ptr %i.a, align 8, !tbaa !53
  %.not41 = icmp eq ptr %.110.i, null
  br i1 %.not41, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0224.0295, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !294
  %i.ic = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ic, 0
  %i.id = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !37
  %i.if = add i64 %i.ie, %i.ib
  store i64 %i.if, ptr %i.id, align 8, !tbaa !37
  br label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread

_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread: ; preds = %bb.v, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i, %bb.x, %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread: ; preds = %bb.q, %bb.p, %bb.o, %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit.thread
  %i.ig = add i64 %.pn, 16
  %i.ih = ashr exact i64 %i.ig, 4                 ; 3 uses
  %.not.i.i63 = icmp ult i64 %i.ih, %i.ci
  br i1 %.not.i.i63, label %bb.y, label %._crit_edge297

bb.y:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit.thread
  %i.ii = lshr i64 %i.ih, 5                       ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !65
  %i.il = trunc nuw i64 %i.ih to i32
  %i.im = and i32 %i.il, 31
  %i.in = shl nsw i32 -1, %i.im
  %i.io = and i32 %i.ik, %i.in                    ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i64.preheader, label %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit

.lr.ph.i.i64.preheader:                           ; preds = %bb.y
  %i.iq = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %i.ir = icmp eq i64 %i.iq, %i.de
  br i1 %i.ir, label %._crit_edge297, label %.lr.ph504

.lr.ph.i.i64:                                     ; preds = %.lr.ph504
  %i.is = add i64 %i.iu, 1                        ; 2 uses
  %i.it = icmp eq i64 %i.is, %i.de
  br i1 %i.it, label %._crit_edge297, label %.lr.ph504, !llvm.loop !204

.lr.ph504:                                        ; preds = %.lr.ph.i.i64.preheader, %.lr.ph.i.i64
  %i.iu = phi i64 [ %i.is, %.lr.ph.i.i64 ], [ %i.iq, %.lr.ph.i.i64.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !65 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i64, label %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit, !llvm.loop !204

_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit: ; preds = %.lr.ph504, %bb.y
  %.012.lcssa.i.i = phi i64 [ %i.ii, %bb.y ], [ %i.iu, %.lr.ph504 ]
  %.0.lcssa.i.i = phi i32 [ %i.io, %bb.y ], [ %i.iw, %.lr.ph504 ]
  %i.iy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.iz = shl nuw nsw i32 %i.iy, 4
  %.idx453 = zext nneg i32 %i.iz to i64
  %i.ja = or disjoint i64 %.idx.i.i, %.idx453     ; 2 uses
  %.not252 = icmp eq i64 %i.ja, %.idx452.a
  br i1 %.not252, label %._crit_edge297, label %bb.o

bb.z:                                             ; preds = %.lr.ph303, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDENS_8DenseMapIS1_mNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEEES4_NS6_IS1_S8_EELb1EEppEv.exit
  %.pn461 = phi i64 [ %i.ed, %.lr.ph303 ], [ %i.wy, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDENS_8DenseMapIS1_mNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEEES4_NS6_IS1_S8_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.0213.0302 = getelementptr i8, ptr %i.dg, i64 %.pn461 ; 5 uses
  %i.jb = load i32, ptr %.sroa.0213.0302, align 8, !tbaa !296 ; 3 uses
  %i.jc = load ptr, ptr %i.ee, align 8, !tbaa !286, !noalias !297 ; 2 uses
  %i.jd = load ptr, ptr %i.ef, align 8, !tbaa !288, !noalias !297 ; 3 uses
  %i.je = load i32, ptr %i.eg, align 4, !tbaa !289, !noalias !297 ; 2 uses
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jg = add i32 %i.je, -1                       ; 3 uses
  %i.jh = mul i32 %i.jb, 37
  %.017.i.i.i65 = and i32 %i.jg, %i.jh            ; 4 uses
  %i.ji = zext i32 %.017.i.i.i65 to i64           ; 3 uses
  %i.jj = lshr i64 %i.ji, 5
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !65
  %i.jm = and i32 %.017.i.i.i65, 31
  %i.jn = lshr i32 %i.jl, %i.jm
  %i.jo = trunc i32 %i.jn to i1
  br i1 %i.jo, label %.lr.ph.i.i.i67, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, !prof !66

bb.ab:                                            ; preds = %.lr.ph.i.i.i67
  %i.jp = add nuw i32 %.018.i.i.i68, 1
  %.0.i.i.i69 = and i32 %i.jp, %i.jg              ; 3 uses
  %i.jq = zext i32 %.0.i.i.i69 to i64             ; 2 uses
  %i.jr = lshr i64 %i.jq, 5
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !65
  %i.ju = and i32 %.0.i.i.i69, 31
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = trunc i32 %i.jv to i1
  br i1 %i.jw, label %.lr.ph.i.i.i67, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, !prof !67

.lr.ph.i.i.i67:                                   ; preds = %bb.aa, %bb.ab
  %i.jx = phi i64 [ %i.jq, %bb.ab ], [ %i.ji, %bb.aa ]
  %.018.i.i.i68 = phi i32 [ %.0.i.i.i69, %bb.ab ], [ %.017.i.i.i65, %bb.aa ]
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !65
  %i.ka = icmp eq i32 %i.jb, %i.jz
  br i1 %i.ka, label %.lr.ph.i.i72, label %bb.ab, !prof !68

bb.ac:                                            ; preds = %.lr.ph.i.i72
  %i.kb = add nuw i32 %.018.i.i73, 1
  %.0.i.i74 = and i32 %i.kb, %i.jg                ; 3 uses
  %i.kc = zext i32 %.0.i.i74 to i64               ; 2 uses
  %i.kd = lshr i64 %i.kc, 5
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !65
  %i.kg = and i32 %.0.i.i74, 31
  %i.kh = lshr i32 %i.kf, %i.kg
  %i.ki = trunc i32 %i.kh to i1
  br i1 %i.ki, label %.lr.ph.i.i72, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit75, !prof !67

.lr.ph.i.i72:                                     ; preds = %.lr.ph.i.i.i67, %bb.ac
  %i.kj = phi i64 [ %i.kc, %bb.ac ], [ %i.ji, %.lr.ph.i.i.i67 ]
  %.018.i.i73 = phi i32 [ %.0.i.i74, %bb.ac ], [ %.017.i.i.i65, %.lr.ph.i.i.i67 ]
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !65
  %i.km = icmp eq i32 %i.jb, %i.kl
  br i1 %i.km, label %bb.ad, label %bb.ac, !prof !68

bb.ad:                                            ; preds = %.lr.ph.i.i72
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit75

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit75: ; preds = %bb.ac, %bb.ad
  %i.kp = phi i64 [ %i.ko, %bb.ad ], [ 0, %bb.ac ] ; 4 uses
  %.sroa.2.0.extract.shift.i77 = lshr i64 %i.kp, 16 ; 2 uses
  %.sroa.2.0.extract.trunc.i78 = trunc i64 %.sroa.2.0.extract.shift.i77 to i16
  %.sroa.3.0.extract.shift.i79 = lshr i64 %i.kp, 32
  %.sroa.3.0.extract.trunc.i80 = trunc i64 %.sroa.3.0.extract.shift.i79 to i16
  %i.kq = load ptr, ptr %5, align 8, !tbaa !71, !noalias !298 ; 3 uses
  %i.kr = load ptr, ptr %i.eh, align 8, !tbaa !72, !noalias !298 ; 2 uses
  %i.ks = load i32, ptr %i.ei, align 4, !tbaa !73, !noalias !298 ; 4 uses
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %.loopexit.i.i.i82, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit75
  %i.ku = add i32 %i.ks, -1                       ; 2 uses
  %i.kv = trunc i64 %.sroa.2.0.extract.shift.i77 to i32
  %i.kw = and i32 %i.kv, 65535
  %i.kx = mul nuw nsw i32 %i.kw, 37
  %.017.i.i.i.i81 = and i32 %i.ku, %i.kx          ; 3 uses
  %i.ky = zext nneg i32 %.017.i.i.i.i81 to i64    ; 2 uses
  %i.kz = lshr i64 %i.ky, 5
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !65, !noalias !299
  %i.lc = and i32 %.017.i.i.i.i81, 31
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %.lr.ph.i.i.i.i104, label %.loopexit.i.i.i82, !prof !66

bb.af:                                            ; preds = %.lr.ph.i.i.i.i104
  %i.lf = add nuw i32 %.018.i.i.i.i105, 1
  %.0.i.i.i.i106 = and i32 %i.lf, %i.ku           ; 3 uses
  %i.lg = zext i32 %.0.i.i.i.i106 to i64          ; 2 uses
  %i.lh = lshr i64 %i.lg, 5
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !65, !noalias !299
  %i.lk = and i32 %.0.i.i.i.i106, 31
  %i.ll = lshr i32 %i.lj, %i.lk
  %i.lm = trunc i32 %i.ll to i1
  br i1 %i.lm, label %.lr.ph.i.i.i.i104, label %.loopexit.i.i.i82, !prof !67

.lr.ph.i.i.i.i104:                                ; preds = %bb.ae, %bb.af
  %i.ln = phi i64 [ %i.lg, %bb.af ], [ %i.ky, %bb.ae ]
  %.018.i.i.i.i105 = phi i32 [ %.0.i.i.i.i106, %bb.af ], [ %.017.i.i.i.i81, %bb.ae ]
  %i.lo = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %i.ln ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !59, !noalias !299
  %i.lq = icmp eq i16 %i.lp, %.sroa.2.0.extract.trunc.i78
  br i1 %i.lq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i107, label %bb.af, !prof !68

.loopexit.i.i.i82:                                ; preds = %bb.af, %bb.ae, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit75
  %i.lr = zext i32 %i.ks to i64                   ; 2 uses
  %i.ls = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %i.lr
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i83

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i107: ; preds = %.lr.ph.i.i.i.i104
  %.pre.i108 = zext i32 %i.ks to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i83

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i83: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i107, %.loopexit.i.i.i82
  %.pre-phi.i84 = phi i64 [ %.pre.i108, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i107 ], [ %i.lr, %.loopexit.i.i.i82 ]
  %.lcssa.sink.i.i.i85 = phi ptr [ %i.lo, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i107 ], [ %i.ls, %.loopexit.i.i.i82 ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %.pre-phi.i84
  %i.lu = icmp eq ptr %.lcssa.sink.i.i.i85, %i.lt
  br i1 %i.lu, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i83
  %i.lv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i85, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !75 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i85, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !75 ; 2 uses
  %.not27.i86 = icmp eq ptr %i.lw, %i.ly
  br i1 %.not27.i86, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ag
  %i.lz = and i64 %i.kp, 65535
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i87
  %.030.i88 = phi i64 [ -1, %.lr.ph.i87 ], [ %.1.i101, %bb.ah ] ; 2 uses
  %.0929.i89 = phi ptr [ null, %.lr.ph.i87 ], [ %.110.i100, %bb.ah ] ; 2 uses
  %.sroa.014.028.i90 = phi ptr [ %i.lw, %.lr.ph.i87 ], [ %i.ml, %bb.ah ] ; 3 uses
  %i.ma = load i64, ptr %.sroa.014.028.i90, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i90, i64 8
  %.sroa.4.0.copyload.i92 = load ptr, ptr %.sroa.4.0..sroa_idx.i91, align 8
  %.sroa.412.0.extract.shift.i94 = lshr i64 %i.ma, 32
  %.sroa.412.0.extract.trunc.i95 = trunc i64 %.sroa.412.0.extract.shift.i94 to i16
  %i.mb = and i64 %i.ma, 65535
  %i.mc = sub nsw i64 %i.mb, %i.lz
  %7 = call i64 @llvm.abs.i64(i64 %i.mc, i1 true)
  %.not.i.unshifted.i97 = xor i64 %i.ma, %i.kp
  %.not.i.i98 = icmp ult i64 %.not.i.unshifted.i97, 281474976710656
  %i.md = select i1 %.not.i.i98, i64 0, i64 65536
  %i.me = icmp ne i16 %.sroa.412.0.extract.trunc.i95, %.sroa.3.0.extract.trunc.i80
  %i.mf = zext i1 %i.me to i64
  %i.mg = or disjoint i64 %i.md, %i.mf
  %i.mh = shl nuw nsw i64 %i.mg, 16
  %i.mi = add nuw nsw i64 %i.mh, %7               ; 2 uses
  %i.mj = icmp eq ptr %.0929.i89, null
  %i.mk = icmp ult i64 %i.mi, %.030.i88
  %or.cond.i99 = select i1 %i.mj, i1 true, i1 %i.mk ; 2 uses
  %.110.i100 = select i1 %or.cond.i99, ptr %.sroa.4.0.copyload.i92, ptr %.0929.i89 ; 6 uses
  %.1.i101 = select i1 %or.cond.i99, i64 %i.mi, i64 %.030.i88
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i90, i64 16 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ml, %i.ly
  br i1 %.not.i102, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit109, label %bb.ah

_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit109: ; preds = %bb.ah
  %i.mm = icmp eq ptr %.110.i100, null
  br i1 %i.mm, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit109
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0213.0302, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !270, !noalias !300
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0213.0302, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !272, !noalias !300 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0213.0302, i64 28
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !273, !noalias !300 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0213.0302, i64 24
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !274, !noalias !300
  %i.mv = icmp eq i32 %i.mu, 0
  %i.mw = zext i32 %i.ms to i64                   ; 4 uses
  %.idx457 = shl nuw nsw i64 %i.mw, 4             ; 2 uses
  %.not.i.not.i.i110 = icmp eq i32 %i.ms, 0
  %or.cond251 = select i1 %i.mv, i1 true, i1 %.not.i.not.i.i110
  br i1 %or.cond251, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mx = add nuw nsw i64 %i.mw, 31
  %i.my = lshr i64 %i.mx, 5                       ; 2 uses
  %i.mz = load i32, ptr %i.mq, align 4, !tbaa !65, !noalias !301 ; 2 uses
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i.i116.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit119

.lr.ph.i.i.i116.preheader:                        ; preds = %bb.aj
  %i.nb = icmp eq i64 %i.my, 1
  br i1 %i.nb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph506

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph506
  %i.nc = add nuw nsw i64 %i.ne, 1                ; 2 uses
  %i.nd = icmp eq i64 %i.nc, %i.my
  br i1 %i.nd, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph506, !llvm.loop !204

.lr.ph506:                                        ; preds = %.lr.ph.i.i.i116.preheader, %.lr.ph.i.i.i116
  %i.ne = phi i64 [ %i.nc, %.lr.ph.i.i.i116 ], [ 1, %.lr.ph.i.i.i116.preheader ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !65, !noalias !301 ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph.i.i.i116, label %._crit_edge.i.loopexit.i.i118, !llvm.loop !204

._crit_edge.i.loopexit.i.i118:                    ; preds = %.lr.ph506
  %i.ni = shl i64 %i.ne, 9
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit119

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit119: ; preds = %bb.aj, %._crit_edge.i.loopexit.i.i118
  %.012.lcssa.i.i.i112 = phi i64 [ 0, %bb.aj ], [ %i.ni, %._crit_edge.i.loopexit.i.i118 ]
  %.0.lcssa.i.i.i113 = phi i32 [ %i.mz, %bb.aj ], [ %i.ng, %._crit_edge.i.loopexit.i.i118 ]
  %i.nj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i113, i1 true)
  %i.nk = shl nuw nsw i32 %i.nj, 4
  %.idx456 = zext nneg i32 %i.nk to i64
  %i.nl = or disjoint i64 %.012.lcssa.i.i.i112, %.idx456 ; 2 uses
  %.not254298 = icmp eq i64 %i.nl, %.idx457
  br i1 %.not254298, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph300

.lr.ph300:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit119
  %i.nm = ptrtoint ptr %.110.i100 to i64
  %i.nn = mul i64 %i.nm, -4658895280553007687     ; 2 uses
  %i.no = lshr i64 %i.nn, 31
  %i.np = xor i64 %i.no, %i.nn
  %i.nq = shl i64 %i.np, 32                       ; 2 uses
  %i.nr = add nuw nsw i64 %i.mw, 31
  %i.ns = lshr i64 %i.nr, 5                       ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph300, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit174
  %.pn459 = phi i64 [ %i.nl, %.lr.ph300 ], [ %i.wd, %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit174 ] ; 2 uses
  %.sroa.0202.0299 = getelementptr i8, ptr %i.mo, i64 %.pn459 ; 2 uses
  %i.nt = load i32, ptr %.sroa.0202.0299, align 8, !tbaa !302 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0202.0299, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !294
  %i.nw = load ptr, ptr %i.ee, align 8, !tbaa !286, !noalias !303 ; 2 uses
  %i.nx = load ptr, ptr %i.ef, align 8, !tbaa !288, !noalias !303 ; 3 uses
  %i.ny = load i32, ptr %i.eg, align 4, !tbaa !289, !noalias !303 ; 2 uses
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.oa = add i32 %i.ny, -1                       ; 3 uses
  %i.ob = mul i32 %i.nt, 37
  %.017.i.i.i120 = and i32 %i.oa, %i.ob           ; 4 uses
  %i.oc = zext i32 %.017.i.i.i120 to i64          ; 3 uses
  %i.od = lshr i64 %i.oc, 5
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !65
  %i.og = and i32 %.017.i.i.i120, 31
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = trunc i32 %i.oh to i1
  br i1 %i.oi, label %.lr.ph.i.i.i122, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, !prof !66

bb.am:                                            ; preds = %.lr.ph.i.i.i122
  %i.oj = add nuw i32 %.018.i.i.i123, 1
  %.0.i.i.i124 = and i32 %i.oj, %i.oa             ; 3 uses
  %i.ok = zext i32 %.0.i.i.i124 to i64            ; 2 uses
  %i.ol = lshr i64 %i.ok, 5
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !65
  %i.oo = and i32 %.0.i.i.i124, 31
  %i.op = lshr i32 %i.on, %i.oo
  %i.oq = trunc i32 %i.op to i1
  br i1 %i.oq, label %.lr.ph.i.i.i122, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, !prof !67

.lr.ph.i.i.i122:                                  ; preds = %bb.al, %bb.am
  %i.or = phi i64 [ %i.ok, %bb.am ], [ %i.oc, %bb.al ]
  %.018.i.i.i123 = phi i32 [ %.0.i.i.i124, %bb.am ], [ %.017.i.i.i120, %bb.al ]
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.nw, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !65
  %i.ou = icmp eq i32 %i.nt, %i.ot
  br i1 %i.ou, label %.lr.ph.i.i127, label %bb.am, !prof !68

bb.an:                                            ; preds = %.lr.ph.i.i127
  %i.ov = add nuw i32 %.018.i.i128, 1
  %.0.i.i129 = and i32 %i.ov, %i.oa               ; 3 uses
  %i.ow = zext i32 %.0.i.i129 to i64              ; 2 uses
  %i.ox = lshr i64 %i.ow, 5
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !65
  %i.pa = and i32 %.0.i.i129, 31
  %i.pb = lshr i32 %i.oz, %i.pa
  %i.pc = trunc i32 %i.pb to i1
  br i1 %i.pc, label %.lr.ph.i.i127, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit130, !prof !67

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i.i122, %bb.an
  %i.pd = phi i64 [ %i.ow, %bb.an ], [ %i.oc, %.lr.ph.i.i.i122 ]
  %.018.i.i128 = phi i32 [ %.0.i.i129, %bb.an ], [ %.017.i.i.i120, %.lr.ph.i.i.i122 ]
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.nw, i64 %i.pd ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !65
  %i.pg = icmp eq i32 %i.nt, %i.pf
  br i1 %i.pg, label %bb.ao, label %bb.an, !prof !68

bb.ao:                                            ; preds = %.lr.ph.i.i127
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit130

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit130: ; preds = %bb.an, %bb.ao
  %i.pj = phi i64 [ %i.pi, %bb.ao ], [ 0, %bb.an ] ; 4 uses
  %.sroa.2.0.extract.shift.i132 = lshr i64 %i.pj, 16 ; 2 uses
  %.sroa.2.0.extract.trunc.i133 = trunc i64 %.sroa.2.0.extract.shift.i132 to i16
  %.sroa.3.0.extract.shift.i134 = lshr i64 %i.pj, 32
  %.sroa.3.0.extract.trunc.i135 = trunc i64 %.sroa.3.0.extract.shift.i134 to i16
  %i.pk = load ptr, ptr %5, align 8, !tbaa !71, !noalias !304 ; 3 uses
  %i.pl = load ptr, ptr %i.eh, align 8, !tbaa !72, !noalias !304 ; 2 uses
  %i.pm = load i32, ptr %i.ei, align 4, !tbaa !73, !noalias !304 ; 4 uses
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %.loopexit.i.i.i137, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit130
  %i.po = add i32 %i.pm, -1                       ; 2 uses
  %i.pp = trunc i64 %.sroa.2.0.extract.shift.i132 to i32
  %i.pq = and i32 %i.pp, 65535
  %i.pr = mul nuw nsw i32 %i.pq, 37
  %.017.i.i.i.i136 = and i32 %i.po, %i.pr         ; 3 uses
  %i.ps = zext nneg i32 %.017.i.i.i.i136 to i64   ; 2 uses
  %i.pt = lshr i64 %i.ps, 5
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !65, !noalias !305
  %i.pw = and i32 %.017.i.i.i.i136, 31
  %i.px = lshr i32 %i.pv, %i.pw
  %i.py = trunc i32 %i.px to i1
  br i1 %i.py, label %.lr.ph.i.i.i.i159, label %.loopexit.i.i.i137, !prof !66

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i159
  %i.pz = add nuw i32 %.018.i.i.i.i160, 1
  %.0.i.i.i.i161 = and i32 %i.pz, %i.po           ; 3 uses
  %i.qa = zext i32 %.0.i.i.i.i161 to i64          ; 2 uses
  %i.qb = lshr i64 %i.qa, 5
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !65, !noalias !305
  %i.qe = and i32 %.0.i.i.i.i161, 31
  %i.qf = lshr i32 %i.qd, %i.qe
  %i.qg = trunc i32 %i.qf to i1
  br i1 %i.qg, label %.lr.ph.i.i.i.i159, label %.loopexit.i.i.i137, !prof !67

.lr.ph.i.i.i.i159:                                ; preds = %bb.ap, %bb.aq
  %i.qh = phi i64 [ %i.qa, %bb.aq ], [ %i.ps, %bb.ap ]
  %.018.i.i.i.i160 = phi i32 [ %.0.i.i.i.i161, %bb.aq ], [ %.017.i.i.i.i136, %bb.ap ]
  %i.qi = getelementptr inbounds nuw [32 x i8], ptr %i.pk, i64 %i.qh ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !59, !noalias !305
  %i.qk = icmp eq i16 %i.qj, %.sroa.2.0.extract.trunc.i133
  br i1 %i.qk, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i162, label %bb.aq, !prof !68

.loopexit.i.i.i137:                               ; preds = %bb.aq, %bb.ap, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E6lookupERKj.exit130
  %i.ql = zext i32 %i.pm to i64                   ; 2 uses
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.pk, i64 %i.ql
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i138

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i162: ; preds = %.lr.ph.i.i.i.i159
  %.pre.i163 = zext i32 %i.pm to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i138

_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i138: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i162, %.loopexit.i.i.i137
  %.pre-phi.i139 = phi i64 [ %.pre.i163, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i162 ], [ %i.ql, %.loopexit.i.i.i137 ]
  %.lcssa.sink.i.i.i140 = phi ptr [ %i.qi, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.loopexit.i162 ], [ %i.qm, %.loopexit.i.i.i137 ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.pk, i64 %.pre-phi.i139
  %i.qo = icmp eq ptr %.lcssa.sink.i.i.i140, %i.qn
  br i1 %i.qo, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i138
  %i.qp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i140, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !75 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i140, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !75 ; 2 uses
  %.not27.i141 = icmp eq ptr %i.qq, %i.qs
  br i1 %.not27.i141, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ar
  %i.qt = and i64 %i.pj, 65535
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i142
  %.030.i143 = phi i64 [ -1, %.lr.ph.i142 ], [ %.1.i156, %bb.as ] ; 2 uses
  %.0929.i144 = phi ptr [ null, %.lr.ph.i142 ], [ %.110.i155, %bb.as ] ; 2 uses
  %.sroa.014.028.i145 = phi ptr [ %i.qq, %.lr.ph.i142 ], [ %i.rf, %bb.as ] ; 3 uses
  %i.qu = load i64, ptr %.sroa.014.028.i145, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i145, i64 8
  %.sroa.4.0.copyload.i147 = load ptr, ptr %.sroa.4.0..sroa_idx.i146, align 8
  %.sroa.412.0.extract.shift.i149 = lshr i64 %i.qu, 32
  %.sroa.412.0.extract.trunc.i150 = trunc i64 %.sroa.412.0.extract.shift.i149 to i16
  %i.qv = and i64 %i.qu, 65535
  %i.qw = sub nsw i64 %i.qv, %i.qt
  %8 = call i64 @llvm.abs.i64(i64 %i.qw, i1 true)
  %.not.i.unshifted.i152 = xor i64 %i.qu, %i.pj
  %.not.i.i153 = icmp ult i64 %.not.i.unshifted.i152, 281474976710656
  %i.qx = select i1 %.not.i.i153, i64 0, i64 65536
  %i.qy = icmp ne i16 %.sroa.412.0.extract.trunc.i150, %.sroa.3.0.extract.trunc.i135
  %i.qz = zext i1 %i.qy to i64
  %i.ra = or disjoint i64 %i.qx, %i.qz
  %i.rb = shl nuw nsw i64 %i.ra, 16
  %i.rc = add nuw nsw i64 %i.rb, %8               ; 2 uses
  %i.rd = icmp eq ptr %.0929.i144, null
  %i.re = icmp ult i64 %i.rc, %.030.i143
  %or.cond.i154 = select i1 %i.rd, i1 true, i1 %i.re ; 2 uses
  %.110.i155 = select i1 %or.cond.i154, ptr %.sroa.4.0.copyload.i147, ptr %.0929.i144 ; 7 uses
  %.1.i156 = select i1 %or.cond.i154, i64 %i.rc, i64 %.030.i143
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i145, i64 16 ; 2 uses
  %.not.i157 = icmp eq ptr %i.rf, %i.qs
  br i1 %.not.i157, label %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit164, label %bb.as

_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit164: ; preds = %bb.as
  %.not39 = icmp eq ptr %.110.i155, null
  br i1 %.not39, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread, label %bb.at

bb.at:                                            ; preds = %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit164
  %i.rg = load ptr, ptr %i.ej, align 8, !tbaa !78, !noalias !306 ; 3 uses
  %i.rh = load ptr, ptr %i.ek, align 8, !tbaa !79, !noalias !306 ; 3 uses
  %i.ri = load i32, ptr %i.el, align 4, !tbaa !80, !noalias !306 ; 4 uses
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rk = add i32 %i.ri, -1                       ; 2 uses
  %i.rl = ptrtoint ptr %.110.i155 to i64
  %i.rm = mul i64 %i.rl, -4658895280553007687     ; 2 uses
  %i.rn = lshr i64 %i.rm, 31
  %i.ro = xor i64 %i.rn, %i.rm
  %i.rp = and i64 %i.ro, 4294967295
  %i.rq = or disjoint i64 %i.rp, %i.nq
  %i.rr = mul i64 %i.rq, -4658895280553007687     ; 2 uses
  %i.rs = lshr i64 %i.rr, 31
  %i.rt = xor i64 %i.rs, %i.rr
  %i.ru = trunc i64 %i.rt to i32
  %i.rv = and i32 %i.rk, %i.ru                    ; 3 uses
  %i.rw = zext i32 %i.rv to i64                   ; 2 uses
  %i.rx = getelementptr inbounds nuw [24 x i8], ptr %i.rg, i64 %i.rw ; 2 uses
  %i.ry = lshr i64 %i.rw, 5
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !65
  %i.sb = and i32 %i.rv, 31
  %i.sc = lshr i32 %i.sa, %i.sb
  %i.sd = trunc i32 %i.sc to i1
  br i1 %i.sd, label %.lr.ph.i.i192, label %.loopexit.i, !prof !66

.lr.ph.i.i192:                                    ; preds = %bb.au, %bb.av
  %i.se = phi ptr [ %i.so, %bb.av ], [ %i.rx, %bb.au ] ; 4 uses
  %.024.i.i = phi i32 [ %i.sm, %bb.av ], [ %i.rv, %bb.au ]
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !82
  %i.sg = icmp eq ptr %.110.i100, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = icmp eq ptr %.110.i155, %i.si
  %i.sk = select i1 %i.sg, i1 %i.sj, i1 false
  br i1 %i.sk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit.loopexit, label %bb.av, !prof !68

bb.av:                                            ; preds = %.lr.ph.i.i192
  %i.sl = add nuw i32 %.024.i.i, 1
  %i.sm = and i32 %i.sl, %i.rk                    ; 3 uses
  %i.sn = zext i32 %i.sm to i64                   ; 2 uses
  %i.so = getelementptr inbounds nuw [24 x i8], ptr %i.rg, i64 %i.sn ; 2 uses
  %i.sp = lshr i64 %i.sn, 5
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !65
  %i.ss = and i32 %i.sm, 31
  %i.st = lshr i32 %i.sr, %i.ss
  %i.su = trunc i32 %i.st to i1
  br i1 %i.su, label %.lr.ph.i.i192, label %.loopexit.i, !prof !67, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.av, %bb.au, %bb.at
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.rx, %bb.au ], [ null, %bb.at ], [ %i.so, %bb.av ]
  %i.sv = load i32, ptr %i.em, align 8, !tbaa !83
  %i.sw = shl i32 %i.sv, 2
  %i.sx = add i32 %i.sw, 4
  %i.sy = mul i32 %i.ri, 3
  %.not.i.i188 = icmp ult i32 %i.sx, %i.sy
  br i1 %.not.i.i188, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i, label %bb.aw, !prof !68

bb.aw:                                            ; preds = %.loopexit.i
  %i.sz = shl i32 %i.ri, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ej, i32 noundef %i.sz)
  %i.ta = load ptr, ptr %i.ej, align 8, !tbaa !78, !noalias !307 ; 5 uses
  %i.tb = load ptr, ptr %i.ek, align 8, !tbaa !79, !noalias !307 ; 5 uses
  %i.tc = load i32, ptr %i.el, align 4, !tbaa !80, !noalias !307 ; 2 uses
  %i.td = icmp ne i32 %i.tc, 0
  call void @llvm.assume(i1 %i.td)
  %i.te = add i32 %i.tc, -1                       ; 2 uses
  %i.tf = ptrtoint ptr %.110.i155 to i64
  %i.tg = mul i64 %i.tf, -4658895280553007687     ; 2 uses
  %i.th = lshr i64 %i.tg, 31
  %i.ti = xor i64 %i.th, %i.tg
  %i.tj = and i64 %i.ti, 4294967295
  %i.tk = or disjoint i64 %i.tj, %i.nq
  %i.tl = mul i64 %i.tk, -4658895280553007687     ; 2 uses
  %i.tm = lshr i64 %i.tl, 31
  %i.tn = xor i64 %i.tm, %i.tl
  %i.to = trunc i64 %i.tn to i32
  %i.tp = and i32 %i.te, %i.to                    ; 3 uses
  %i.tq = zext i32 %i.tp to i64                   ; 2 uses
  %i.tr = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %i.tq ; 2 uses
  %i.ts = lshr i64 %i.tq, 5
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !65
  %i.tv = and i32 %i.tp, 31
  %i.tw = lshr i32 %i.tu, %i.tv
  %i.tx = trunc i32 %i.tw to i1
  br i1 %i.tx, label %.lr.ph.i193, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i, !prof !66

.lr.ph.i193:                                      ; preds = %bb.aw, %bb.ax
  %i.ty = phi ptr [ %i.ui, %bb.ax ], [ %i.tr, %bb.aw ] ; 3 uses
  %.024.i = phi i32 [ %i.ug, %bb.ax ], [ %i.tp, %bb.aw ]
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !82
  %i.ua = icmp eq ptr %.110.i100, %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = icmp eq ptr %.110.i155, %i.uc
  %i.ue = select i1 %i.ua, i1 %i.ud, i1 false
  br i1 %i.ue, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i, label %bb.ax, !prof !68

bb.ax:                                            ; preds = %.lr.ph.i193
  %i.uf = add nuw i32 %.024.i, 1
  %i.ug = and i32 %i.uf, %i.te                    ; 3 uses
  %i.uh = zext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %i.uh ; 2 uses
  %i.uj = lshr i64 %i.uh, 5
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !65
  %i.um = and i32 %i.ug, 31
  %i.un = lshr i32 %i.ul, %i.um
  %i.uo = trunc i32 %i.un to i1
  br i1 %i.uo, label %.lr.ph.i193, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i, !prof !67, !llvm.loop !0

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i: ; preds = %bb.ax, %.lr.ph.i193, %bb.aw, %.loopexit.i
  %i.up = phi ptr [ %i.rg, %.loopexit.i ], [ %i.ta, %bb.aw ], [ %i.ta, %.lr.ph.i193 ], [ %i.ta, %bb.ax ]
  %i.uq = phi ptr [ %i.rh, %.loopexit.i ], [ %i.tb, %bb.aw ], [ %i.tb, %.lr.ph.i193 ], [ %i.tb, %bb.ax ]
  %i.ur = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.tr, %bb.aw ], [ %i.ui, %bb.ax ], [ %i.ty, %.lr.ph.i193 ] ; 5 uses
  %i.us = ptrtoint ptr %i.ur to i64
  %i.ut = ptrtoint ptr %i.up to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = sdiv exact i64 %i.uu, 24                ; 2 uses
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = and i32 %i.uw, 31
  %i.uy = shl nuw i32 1, %i.ux
  %i.uz = lshr i64 %i.uv, 5
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uz ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !65
  %i.vc = or i32 %i.uy, %i.vb
  store i32 %i.vc, ptr %i.va, align 4, !tbaa !65
  %i.vd = load i32, ptr %i.em, align 8, !tbaa !83
  %i.ve = add i32 %i.vd, 1
  store i32 %i.ve, ptr %i.em, align 8, !tbaa !83
  store ptr %.110.i100, ptr %i.ur, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store ptr %.110.i155, ptr %.sroa.6.0..sroa_idx, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  store i64 0, ptr %i.vf, align 8, !tbaa !37
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i
  %i.vg = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i = phi ptr [ %i.ur, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit.i ], [ %i.se, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit.loopexit ]
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.vi = add i64 %i.vg, %i.nv
  store i64 %i.vi, ptr %i.vh, align 8, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread: ; preds = %bb.am, %bb.ar, %_ZNK4llvm12DenseMapBaseINS_8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS9_EEEEtS9_SB_SE_E4findERKt.exit.i138, %bb.al, %bb.ak, %_ZNK12StaleMatcher10matchBlockEN4llvm16BlendedBlockHashE.exit164, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSB_bEOT_DpOT0_.exit
  %i.vj = add i64 %.pn459, 16
  %i.vk = ashr exact i64 %i.vj, 4                 ; 3 uses
  %.not.i.i166 = icmp ult i64 %i.vk, %i.mw
  br i1 %.not.i.i166, label %bb.ay, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread

bb.ay:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit125.thread
  %i.vl = lshr i64 %i.vk, 5                       ; 3 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !65
  %i.vo = trunc nuw i64 %i.vk to i32
  %i.vp = and i32 %i.vo, 31
  %i.vq = shl nsw i32 -1, %i.vp
  %i.vr = and i32 %i.vn, %i.vq                    ; 2 uses
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %.lr.ph.i.i172.preheader, label %_ZN4llvm16DenseMapIteratorINS_10UniqueBBIDEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEELb1EEppEv.exit174

.lr.ph.i.i172.preheader:                          ; preds = %bb.ay
  %i.vt = add nuw nsw i64 %i.vl, 1                ; 2 uses
  %i.vu = icmp eq i64 %i.vt, %i.ns
  br i1 %i.vu, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph507

.lr.ph.i.i172:                                    ; preds = %.lr.ph507
  %i.vv = add i64 %i.vx, 1                        ; 2 uses
  %i.vw = icmp eq i64 %i.vv, %i.ns
  br i1 %i.vw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjmNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjmEEEEjmS3_S6_E5countERKj.exit70.thread, label %.lr.ph507, !llvm.loop !204

.lr.ph507:                                        ; preds = %.lr.ph.i.i172.preheader, %.lr.ph.i.i172
  %i.vx = phi i64 [ %i.vv, %.lr.ph.i.i172 ], [ %i.vt, %.lr.ph.i.i172.preheader ] ; 3 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !65 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 88                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !65
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !65
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 8, ptr %i.bl, align 4, !tbaa !107
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !78, !noalias !572 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !572 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80, !noalias !572 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = shl i64 %i.m, 32
  %i.u = and i64 %i.s, 4294967295
  %i.v = or disjoint i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.h, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !66

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.aj = phi ptr [ %i.at, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.ar, %bb.c ], [ %i.aa, %bb.b ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82
  %i.al = icmp eq ptr %i.i, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.o, %i.an
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw i32 %.024.i, 1
  %i.ar = and i32 %i.aq, %i.h                     ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.as ; 2 uses
  %i.au = lshr i64 %i.as, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !65
  %i.ax = and i32 %i.ar, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ac, %bb.b ], [ null, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.bc = shl i32 %i.bb, 2
  %i.bd = add i32 %i.bc, 4
  %i.be = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.bf = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bf)
  %i.bg = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !93
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !79
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.bh = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bi = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bj = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = lshr i64 %i.bn, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65
  %i.bu = or i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !65
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.bx, align 8, !tbaa !37
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.bj, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ %i.aj, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_BasicBlockMatchingAndInference.cpp() #14 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23PropellerInferThreshold, i32 noundef 0, i32 noundef 0) #18
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 120), align 8, !tbaa !166
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIfEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 128), align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE, i64 16), ptr @_ZL23PropellerInferThreshold, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIfEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 144), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23PropellerInferThreshold, ptr nonnull align 1 dereferenceable(26) @.str, i64 25) #18
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 32), align 8, !tbaa !35
  store i64 33, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 40), align 8, !tbaa !37
  store float 6.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 120), align 8, !tbaa !166
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 140), align 4, !tbaa !167
  store float 6.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 136), align 8, !tbaa !573
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 10), align 2
  %i.b = and i16 %i.a, -8
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PropellerInferThreshold, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23PropellerInferThreshold) #18
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev, ptr nonnull @_ZL23PropellerInferThreshold, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = distinct !{!3, !62}
!4 = distinct !{!4, !62}
!5 = distinct !{!5, !62}
!6 = distinct !{!6, !62}
!7 = distinct !{!7, !62}
!8 = distinct !{!8, !62}
!9 = distinct !{!9, !62}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !14, i64 0}
!21 = !{!"_ZTSSt14_Function_base", !14, i64 0, !20, i64 16}
!22 = !{!21, !20, i64 16}
!23 = !{!"any p2 pointer", !20, i64 0}
!24 = !{!"bool", !14, i64 0}
!25 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !23, i64 0, !15, i64 8, !15, i64 12, !24, i64 16}
!26 = !{!25, !24, i64 16}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!25, !23, i64 0}
!30 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !20, i64 0, !15, i64 8, !15, i64 12}
!31 = !{!30, !20, i64 0}
!32 = !{!20, !20, i64 0}
!33 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !20, i64 0}
!34 = !{!"p1 omnipotent char", !20, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"long", !14, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN4llvm9StringRefE", !34, i64 0, !36, i64 8}
!39 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !20, i64 0}
!40 = !{!"_ZTSN4llvm8PassKindE", !14, i64 0}
!41 = !{!"_ZTSN4llvm4PassE", !39, i64 8, !20, i64 16, !40, i64 24}
!42 = !{!41, !39, i64 8}
!43 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !23, i64 0}
!44 = !{!"_ZTSN4llvm13StringMapImplE", !43, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !15, i64 8}
!47 = !{!"p1 _ZTSN4llvm18StringMapEntryBaseE", !20, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !20, i64 0}
!50 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !49, i64 0, !49, i64 8}
!51 = !{!50, !49, i64 8}
!52 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !20, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !23, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 8}
!57 = !{!55, !54, i64 0}
!58 = !{!"short", !14, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTSN4llvm16BlendedBlockHashE", !20, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN4llvm16BlendedBlockHashESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!61, !60, i64 0}
!64 = !{!"p1 int", !20, i64 0}
!65 = !{!15, !15, i64 0}
!66 = !{!"branch_weights", i32 1, i32 1999}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS7_EEEE", !20, i64 0}
!70 = !{!"_ZTSN4llvm8DenseMapItSt6vectorISt4pairINS_16BlendedBlockHashEPNS_17MachineBasicBlockEESaIS6_EENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS8_EEEE", !69, i64 0, !64, i64 8, !15, i64 16, !15, i64 20}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !64, i64 8}
!73 = !{!70, !15, i64 20}
!74 = !{!"p1 _ZTSSt4pairIN4llvm16BlendedBlockHashEPNS0_17MachineBasicBlockEE", !20, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIPKNS_17MachineBasicBlockES5_EmEE", !20, i64 0}
!77 = !{!"_ZTSN4llvm8DenseMapISt4pairIPKNS_17MachineBasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEE", !76, i64 0, !64, i64 8, !15, i64 16, !15, i64 20}
!78 = !{!77, !76, i64 0}
!79 = !{!77, !64, i64 8}
!80 = !{!77, !15, i64 20}
!81 = !{!"_ZTSSt4pairIPKN4llvm17MachineBasicBlockES3_E", !52, i64 0, !52, i64 8}
!82 = !{!81, !52, i64 0}
!83 = !{!77, !15, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvm16BlendedBlockHashEPNS1_17MachineBasicBlockEESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!85 = !{!84, !74, i64 0}
!86 = !{!84, !74, i64 16}
!87 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !20, i64 0}
!88 = !{!"p1 _ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !20, i64 0}
!89 = !{!"p1 _ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEE", !20, i64 0}
!90 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEmEE", !20, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!64, !64, i64 0}
!93 = !{!76, !76, i64 0}
!94 = !{!"_ZTSN4llvm18StringMapEntryBaseE", !36, i64 0}
!95 = !{!94, !36, i64 0}
!96 = !{!44, !15, i64 12}
!97 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEE", !90, i64 0, !64, i64 8, !15, i64 16, !15, i64 20}
!98 = !{!97, !15, i64 20}
!99 = !{!97, !90, i64 0}
!100 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockENS_11SmallVectorIS4_Lj8EEEEE", !20, i64 0}
!101 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !100, i64 0, !64, i64 8, !15, i64 16, !15, i64 20}
!102 = !{!101, !15, i64 20}
!103 = !{!101, !100, i64 0}
!104 = !{!101, !64, i64 8}
!105 = !{!30, !15, i64 8}
!106 = !{!101, !15, i64 16}
!107 = !{!30, !15, i64 12}
!108 = !{!25, !15, i64 8}
!109 = !{!25, !15, i64 12}
!110 = !{!"_ZTSN4llvm22SampleProfileInferenceINS_15MachineFunctionEEE", !87, i64 0, !88, i64 8, !89, i64 16, !77, i64 24}
!111 = !{i64 8}
!112 = !{!"p1 _ZTSN4llvm23df_iterator_default_setIPKNS_17MachineBasicBlockELj8EEE", !20, i64 0}
!113 = !{!"_ZTSN4llvm19df_iterator_storageINS_23df_iterator_default_setIPKNS_17MachineBasicBlockELj8EEELb1EEE", !112, i64 0}
!114 = !{!113, !112, i64 0}
!115 = !{!"p1 _ZTSSt4pairIPKN4llvm17MachineBasicBlockESt8optionalIPKPS1_EE", !20, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKN4llvm17MachineBasicBlockESt8optionalIPKPS2_EESaISA_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 8}
!118 = !{!116, !115, i64 0}
!119 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!120 = !{!115, !115, i64 0}
!121 = !{!116, !115, i64 16}
!122 = !{!112, !112, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm17MachineBasicBlockESaIS3_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!124 = !{!123, !54, i64 0}
!125 = !{!123, !54, i64 8}
!126 = !{!"_ZTSSt22_Optional_payload_baseIPKPN4llvm17MachineBasicBlockEE", !14, i64 0, !24, i64 8}
!127 = !{!"_ZTSSt17_Optional_payloadIPKPN4llvm17MachineBasicBlockELb1ELb1ELb1EE", !126, i64 0}
!128 = !{!"_ZTSSt14_Optional_baseIPKPN4llvm17MachineBasicBlockELb1ELb1EE", !127, i64 0}
!129 = !{!"_ZTSSt8optionalIPKPN4llvm17MachineBasicBlockEE", !128, i64 0}
!130 = !{!"_ZTSSt4pairIPKN4llvm17MachineBasicBlockESt8optionalIPKPS1_EE", !52, i64 0, !129, i64 8}
!131 = !{!130, !52, i64 0}
!132 = !{!126, !24, i64 8}
!133 = !{!54, !54, i64 0}
!134 = !{!97, !15, i64 16}
!135 = !{!97, !64, i64 8}
!136 = !{!110, !89, i64 16}
!137 = !{!"_ZTSSt4pairIPKN4llvm17MachineBasicBlockEmE", !52, i64 0, !36, i64 8}
!138 = !{!137, !36, i64 8}
!139 = !{!"p1 _ZTSN4llvm8FlowJumpE", !20, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!"p1 _ZTSN4llvm9FlowBlockE", !20, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIN4llvm9FlowBlockESaIS1_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!142, !141, i64 0}
!144 = !{!"p2 _ZTSN4llvm8FlowJumpE", !23, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIPN4llvm8FlowJumpESaIS2_EE", !147, i64 0}
!149 = !{!"_ZTSN4llvm9FlowBlockE", !36, i64 0, !36, i64 8, !24, i64 16, !24, i64 17, !36, i64 24, !148, i64 32, !148, i64 56}
!150 = !{!"_ZTSNSt12_Vector_baseIN4llvm8FlowJumpESaIS1_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!151 = !{!150, !139, i64 0}
!152 = !{!150, !139, i64 16}
!153 = !{!142, !141, i64 8}
!154 = !{!145, !144, i64 0}
!155 = !{!145, !144, i64 16}
!156 = !{!142, !141, i64 16}
!157 = !{!"_ZTSN4llvm8FlowJumpE", !36, i64 0, !36, i64 8, !36, i64 16, !24, i64 24, !24, i64 25, !36, i64 32}
!158 = !{!157, !36, i64 0}
!159 = !{!157, !36, i64 8}
!160 = !{!"float", !14, i64 0}
!161 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!162 = !{!"_ZTSN4llvm2cl15OptionValueCopyIfEE", !161, i64 0, !160, i64 8, !24, i64 12}
!163 = !{!"_ZTSN4llvm2cl15OptionValueBaseIfLb0EEE", !162, i64 0}
!164 = !{!"_ZTSN4llvm2cl11OptionValueIfEE", !163, i64 0}
!165 = !{!"_ZTSN4llvm2cl11opt_storageIfLb0ELb0EEE", !160, i64 0, !164, i64 8}
!166 = !{!165, !160, i64 0}
!167 = !{!162, !24, i64 12}
!168 = !{!69, !69, i64 0}
!169 = !{!70, !15, i64 16}
!170 = !{!81, !52, i64 8}
!171 = !{!100, !100, i64 0}
!172 = !{!145, !144, i64 8}
end_hunk_1
