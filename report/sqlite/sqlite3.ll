Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@porterNext:bb.a
  %n.vec987 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next994, %vector.body988 ] ; 3 uses
  %vec.phi990 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bt, %vector.body988 ]
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bu, %vector.body988 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index989 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %wide.load992 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !733 ; 4 uses
  %wide.load993 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !733 ; 4 uses
  %i.bh = add <4 x i8> %wide.load992, splat (i8 -65)
  %i.bi = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bj = icmp ult <4 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = or disjoint <4 x i8> %wide.load992, splat (i8 32)
  %i.bm = or disjoint <4 x i8> %wide.load993, splat (i8 32)
  %i.bn = select <4 x i1> %i.bj, <4 x i8> %i.bl, <4 x i8> %wide.load992
  %i.bo = select <4 x i1> %i.bk, <4 x i8> %i.bm, <4 x i8> %wide.load993
  %i.bp = add <4 x i8> %wide.load992, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.bs = icmp ult <4 x i8> %i.br, splat (i8 10)
  %i.bt = or <4 x i1> %vec.phi990, %i.bq          ; 2 uses
  %i.bu = or <4 x i1> %vec.phi991, %i.bs          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %index989 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !733
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !733
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !5883

middle.block995:                                  ; preds = %vector.body988
  %bin.rdx996 = or <4 x i1> %i.bu, %i.bt
  %bin.rdx996.fr = freeze <4 x i1> %bin.rdx996
  %i.by = bitcast <4 x i1> %bin.rdx996.fr to i4
  %.not1035 = icmp ne i4 %i.by, 0
  %rdx.select997 = zext i1 %.not1035 to i32       ; 2 uses
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count.i.i
  br i1 %cmp.n998, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1039

.lr.ph.i.i.preheader1039:                         ; preds = %vector.memcheck982, %.lr.ph.i.i.preheader, %middle.block995
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec987, %middle.block995 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select997, %middle.block995 ] ; 2 uses
  %xtraiter1102 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1039
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !733
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1039
  %.2.i.i.lcssa1040.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cg = add nsw i64 %wide.trip.count.i.i, -1
  %i.ch = icmp eq i64 %indvars.iv.i.i.ph, %i.cg
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !733 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !733
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !733 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !733
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5884

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block995
  %.2.i.i.lcssa = phi i32 [ %rdx.select997, %middle.block995 ], [ %.2.i.i.lcssa1040.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cx = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cy = select i1 %i.cx, i32 10, i32 3          ; 3 uses
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.as, %i.cz
  br i1 %i.da, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.db = sub i32 %i.as, %i.cy
  %i.dc = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.dd = zext i32 %i.db to i64                   ; 8 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %umax1003 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %wide.trip.count.i.i)
  %i.df = sub nsw i64 %umax1003, %i.dd            ; 7 uses
  %min.iters.check1005 = icmp ult i64 %i.df, 8
  %i.dg = sub nsw i64 %i.dd, %i.dc
  %diff.check1002 = icmp ugt i64 %i.dg, -32
  %or.cond1036 = select i1 %min.iters.check1005, i1 true, i1 %diff.check1002
  br i1 %or.cond1036, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %iter.check1020
  %min.iters.check1007 = icmp ult i64 %i.df, 32
  br i1 %min.iters.check1007, label %vec.epilog.ph1024, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.dh = and i64 %i.df, 24
  %n.vec1009 = and i64 %i.df, -32                 ; 5 uses
  %i.di = add nsw i64 %n.vec1009, %i.dd
  %i.dj = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %invariant.gep1146 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1148 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1147 = getelementptr i8, ptr %invariant.gep1146, i64 %index1011 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1147, align 1, !tbaa !733
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !733
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1149, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1149, align 1, !tbaa !733
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !733
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !5885

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !1824

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
  %invariant.gep1150 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1152 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1026

vec.epilog.vector.body1026:                       ; preds = %vec.epilog.vector.body1026, %vec.epilog.ph1024
  %index1027 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1029, %vec.epilog.vector.body1026 ] ; 3 uses
  %gep1151 = getelementptr i8, ptr %invariant.gep1150, i64 %index1027
  %wide.load1028 = load <8 x i8>, ptr %gep1151, align 1, !tbaa !733
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %index1027
  store <8 x i8> %wide.load1028, ptr %gep1153, align 1, !tbaa !733
  %index.next1029 = add nuw i64 %index1027, 8     ; 2 uses
  %i.dp = icmp eq i64 %index.next1029, %n.vec1025
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !5886

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !733
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i.i
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !733
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next58.i.i, %wide.trip.count.i.i
  br i1 %i.dt, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !5887

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1030, %middle.block1015
  %indvars.iv.next56.i.i.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block1030 ], [ %i.dj, %middle.block1015 ], [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ]
  %i.du = trunc nuw nsw i64 %indvars.iv.next56.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 22, %bb.h ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv786.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !733 ; 4 uses
  %i.dx = add i8 %i.dw, -65
  %or.cond4.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dy = or disjoint i8 %i.dw, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dz = add i8 %i.dw, -97
  %or.cond7.i = icmp ult i8 %i.dz, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1094, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %i.ea = add i64 %indvars.iv.lcssa, %i.e
  %i.eb = sub i64 %i.ea, %i.ba
  %diff.check = icmp ugt i64 %i.eb, -8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1094, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi957 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load = load <4 x i8>, ptr %i.ec, align 1, !tbaa !733 ; 4 uses
  %wide.load958 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !733 ; 4 uses
  %i.ee = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ef = add <4 x i8> %wide.load958, splat (i8 -65)
  %i.eg = icmp ult <4 x i8> %i.ee, splat (i8 26)
  %i.eh = icmp ult <4 x i8> %i.ef, splat (i8 26)
  %i.ei = or disjoint <4 x i8> %wide.load, splat (i8 32)
  %i.ej = or disjoint <4 x i8> %wide.load958, splat (i8 32)
  %i.ek = select <4 x i1> %i.eg, <4 x i8> %i.ei, <4 x i8> %wide.load
  %i.el = select <4 x i1> %i.eh, <4 x i8> %i.ej, <4 x i8> %wide.load958
  %i.em = add <4 x i8> %wide.load, splat (i8 -48)
  %i.en = icmp ult <4 x i8> %i.em, splat (i8 10)
  %i.eo = add <4 x i8> %wide.load958, splat (i8 -48)
  %i.ep = icmp ult <4 x i8> %i.eo, splat (i8 10)
  %i.eq = or <4 x i1> %vec.phi, %i.en             ; 2 uses
  %i.er = or <4 x i1> %vec.phi957, %i.ep          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store <4 x i8> %i.ek, ptr %i.es, align 1, !tbaa !733
  store <4 x i8> %i.el, ptr %i.et, align 1, !tbaa !733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !5888

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.er, %i.eq
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ev = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1034 = icmp ne i4 %i.ev, 0
  %rdx.select = zext i1 %.not1034 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i.preheader1094

.lr.ph.i111.i.preheader1094:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.045.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1094
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i.ph
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !733 ; 4 uses
  %i.ey = add i8 %i.ex, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.ey, 26
  %i.ez = or disjoint i8 %i.ex, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ez, i8 %i.ex
  %i.fa = add i8 %i.ex, -58
  %i.fb = icmp ult i8 %i.fa, -10
  %.2.i116.i.prol = select i1 %i.fb, i32 %.045.i113.i.ph, i32 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.fc, align 1, !tbaa !733
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1094
  %.2.i116.i.lcssa1095.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.045.i113.i.unr = phi i32 [ %.045.i113.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.fd = add nsw i64 %wide.trip.count.i.i, -1
  %i.fe = icmp eq i64 %indvars.iv.i112.i.ph, %i.fd
  br i1 %i.fe, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.045.i113.i = phi i32 [ %.2.i116.i.1, %.lr.ph.i111.i ], [ %.045.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !733 ; 4 uses
  %i.fh = add i8 %i.fg, -65
  %or.cond.i114.i = icmp ult i8 %i.fh, 26
  %i.fi = or disjoint i8 %i.fg, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fi, i8 %i.fg
  %i.fj = add i8 %i.fg, -58
  %i.fk = icmp ult i8 %i.fj, -10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fl, align 1, !tbaa !733
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i117.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733 ; 4 uses
  %i.fo = add i8 %i.fn, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fo, 26
  %i.fp = or disjoint i8 %i.fn, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fp, i8 %i.fn
  %i.fq = add i8 %i.fn, -58
  %i.fr = icmp ult i8 %i.fq, -10
  %i.fs = select i1 %i.fr, i1 %i.fk, i1 false
  %.2.i116.i.1 = select i1 %i.fs, i32 %.045.i113.i, i32 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.ft, align 1, !tbaa !733
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i, !llvm.loop !5889

._crit_edge.loopexit.i119.i:                      ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.2.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2.i116.i.lcssa1095.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.2.i116.i.1, %.lr.ph.i111.i ]
  %i.fu = icmp eq i32 %.2.i116.i.lcssa, 0
  %i.fv = select i1 %i.fu, i32 10, i32 3          ; 3 uses
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = icmp sgt i32 %i.as, %i.fw
  br i1 %i.fx, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.loopexit.i119.i
  %i.fy = sub nsw i32 %i.as, %i.fv
  %i.fz = zext nneg i32 %i.fv to i64              ; 6 uses
  %i.ga = zext i32 %i.fy to i64                   ; 8 uses
  %i.gb = add nuw nsw i64 %i.ga, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %wide.trip.count.i.i)
  %i.gc = sub nsw i64 %umax, %i.ga                ; 7 uses
  %min.iters.check962 = icmp ult i64 %i.gc, 8
  %i.gd = sub nsw i64 %i.ga, %i.fz
  %diff.check960 = icmp ugt i64 %i.gd, -32
  %or.cond1037 = select i1 %min.iters.check962, i1 true, i1 %diff.check960
  br i1 %or.cond1037, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check963 = icmp ult i64 %i.gc, 32
  br i1 %min.iters.check963, label %vec.epilog.ph, label %vector.ph964

vector.ph964:                                     ; preds = %vector.main.loop.iter.check
  %i.ge = and i64 %i.gc, 24
  %n.vec965 = and i64 %i.gc, -32                  ; 5 uses
  %i.gf = add nsw i64 %n.vec965, %i.ga
  %i.gg = or disjoint i64 %n.vec965, %i.fz        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1140 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next970, %vector.body966 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index967 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load968 = load <16 x i8>, ptr %gep, align 1, !tbaa !733
  %wide.load969 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !733
  %gep1141 = getelementptr i8, ptr %invariant.gep1140, i64 %index967 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep1141, i64 16
  store <16 x i8> %wide.load968, ptr %gep1141, align 1, !tbaa !733
  store <16 x i8> %wide.load969, ptr %i.gi, align 1, !tbaa !733
  %index.next970 = add nuw i64 %index967, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next970, %n.vec965
  br i1 %i.gj, label %middle.block971, label %vector.body966, !llvm.loop !5890

middle.block971:                                  ; preds = %vector.body966
  %cmp.n972 = icmp eq i64 %i.gc, %n.vec965
  br i1 %cmp.n972, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block971
  %min.epilog.iters.check = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !1824

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec965, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec975 = and i64 %i.gc, -8                   ; 4 uses
  %i.gk = add nsw i64 %n.vec975, %i.ga
  %i.gl = add nsw i64 %n.vec975, %i.fz            ; 2 uses
  %invariant.gep1142 = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1144 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index976 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next978, %vec.epilog.vector.body ] ; 3 uses
  %gep1143 = getelementptr i8, ptr %invariant.gep1142, i64 %index976
  %wide.load977 = load <8 x i8>, ptr %gep1143, align 1, !tbaa !733
  %gep1145 = getelementptr i8, ptr %invariant.gep1144, i64 %index976
  store <8 x i8> %wide.load977, ptr %gep1145, align 1, !tbaa !733
  %index.next978 = add nuw i64 %index976, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next978, %n.vec975
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5891

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n979 = icmp eq i64 %i.gc, %n.vec975
  br i1 %cmp.n979, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %i.ga, %iter.check ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fz, %iter.check ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i104.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !733
  %i.gp = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i105.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !733
  %indvars.iv.next58.i106.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %indvars.iv.next56.i107.i = add nuw nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next58.i106.i, %wide.trip.count.i.i
  br i1 %i.gq, label %.lr.ph50.i103.i, label %.loopexit.loopexit.i108.i, !llvm.loop !5892

.loopexit.loopexit.i108.i:                        ; preds = %.lr.ph50.i103.i, %vec.epilog.middle.block, %middle.block971
  %indvars.iv.next56.i107.i.lcssa = phi i64 [ %i.gl, %vec.epilog.middle.block ], [ %i.gg, %middle.block971 ], [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ]
  %i.gr = trunc nuw nsw i64 %indvars.iv.next56.i107.i.lcssa to i32
  br label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ %i.dy, %bb.i ], [ %i.dw, %bb.j ]
  %i.gs = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.gs, align 1, !tbaa !733
  %indvars.iv.next787.i = add nuw nsw i64 %indvars.iv786.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next787.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5893

._crit_edge.i:                                    ; preds = %bb.k
  %i.gt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gu = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !741
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !733 ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 115
  br i1 %i.gw, label %.lr.ph.i121.1.i, label %.lr.ph.i150.i

.lr.ph.i121.1.i:                                  ; preds = %._crit_edge.i
  %i.gx = getelementptr i8, ptr %i.gu, i64 2      ; 4 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !733 ; 2 uses
  switch i8 %i.gy, label %.lr.ph.i137.1.i.thread [
    i8 101, label %.lr.ph.i121.2.i
    i8 115, label %.lr.ph33.i144.preheader.i
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gz = getelementptr i8, ptr %i.gu, i64 3      ; 5 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !733
  switch i8 %i.ha, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
    i8 105, label %.lr.ph33.i131.preheader.i
  ]

.lr.ph.i121.3.i:                                  ; preds = %.lr.ph.i121.2.i
  %i.hb = getelementptr i8, ptr %i.gu, i64 4
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !733
  %i.hd = icmp eq i8 %i.hc, 115
  br i1 %i.hd, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph33.i131.preheader.i:                        ; preds = %.lr.ph.i121.2.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gx, align 1, !tbaa !733
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !741
  br label %.lr.ph.i150.i

.lr.ph.i150.i:                                    ; preds = %.lr.ph.i137.1.i.thread, %._crit_edge.i
  %i.he = phi i8 [ %i.gv, %._crit_edge.i ], [ %i.gy, %.lr.ph.i137.1.i.thread ]
  %i.hf = phi ptr [ %i.gt, %._crit_edge.i ], [ %i.gx, %.lr.ph.i137.1.i.thread ] ; 14 uses
  %scevgep799.i = getelementptr i8, ptr %i.hf, i64 3 ; 5 uses
  switch i8 %i.he, label %stem.exit162.thread.ithread-pre-split [
    i8 100, label %.lr.ph.i150.1.i
    i8 103, label %.lr.ph.i163.1.i
  ]

.lr.ph.i150.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !733
  %i.hi = icmp eq i8 %i.hh, 101
  br i1 %i.hi, label %.lr.ph.i150.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i150.2.i:                                  ; preds = %.lr.ph.i150.1.i
  %i.hj = getelementptr i8, ptr %i.hf, i64 2      ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !733 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 101
  br i1 %i.hl, label %._crit_edge.i155.i, label %._crit_edge.i178.i

._crit_edge.i155.i:                               ; preds = %.lr.ph.i150.2.i
  %i.hm = load i8, ptr %scevgep799.i, align 1, !tbaa !733 ; 2 uses
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i

.lr.ph.i419.i:                                    ; preds = %._crit_edge.i155.i, %bb.n
  %i.ho = phi i8 [ %i.hz, %bb.n ], [ %i.hm, %._crit_edge.i155.i ]
  %.011.i.i = phi ptr [ %i.hy, %bb.n ], [ %scevgep799.i, %._crit_edge.i155.i ] ; 3 uses
  %i.hp = sext i8 %i.ho to i64
  %i.hq = getelementptr i8, ptr @cType, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -97
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !733 ; 2 uses
  %i.ht = icmp slt i8 %i.hs, 2
  br i1 %i.ht, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i419.i
  %i.hu = sext i8 %i.hs to i32
  %i.hv = sub nsw i32 1, %i.hu
  br label %isVowel.exit.i420.i

bb.m:                                             ; preds = %.lr.ph.i419.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.hx = call fastcc i32 @isConsonant(ptr noundef nonnull readonly %i.hw), !inline_history !492
  br label %isVowel.exit.i420.i

isVowel.exit.i420.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i421.i = phi i32 [ %i.hx, %bb.m ], [ %i.hv, %bb.l ]
  %.not.i422.i = icmp eq i32 %.0.i.i421.i, 0
  br i1 %.not.i422.i, label %.preheader.i.i, label %bb.n

bb.n:                                             ; preds = %isVowel.exit.i420.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !733 ; 2 uses
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i, !llvm.loop !493

.preheader.i.i:                                   ; preds = %isVowel.exit.i420.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ic, %.preheader.i.i ], [ %.011.i.i, %isVowel.exit.i420.i ] ; 3 uses
  %i.ib = call fastcc i32 @isConsonant(ptr noundef nonnull %.1.i.i)
  %.not7.i.i = icmp eq i32 %i.ib, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not7.i.i, label %m_gt_0.exit.i, label %.preheader.i.i, !llvm.loop !494

m_gt_0.exit.i:                                    ; preds = %.preheader.i.i
  %i.id = load i8, ptr %.1.i.i, align 1, !tbaa !733
  %.not619.i = icmp eq i8 %i.id, 0
  br i1 %.not619.i, label %stem.exit162.thread.ithread-pre-split, label %stem.exit162.thread.thread.i

stem.exit162.thread.thread.i:                     ; preds = %m_gt_0.exit.i
  store ptr %i.hg, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph.i163.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !733
  %i.ig = icmp eq i8 %i.if, 110
  br i1 %i.ig, label %.lr.ph.i163.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i163.2.i:                                  ; preds = %.lr.ph.i163.1.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !733
  %i.ij = icmp eq i8 %i.ii, 105
  br i1 %i.ij, label %._crit_edge.i168.i, label %stem.exit162.thread.ithread-pre-split

._crit_edge.i168.i:                               ; preds = %.lr.ph.i163.2.i, %._crit_edge.i168.i
  %.0.i423.i = phi ptr [ %i.il, %._crit_edge.i168.i ], [ %scevgep799.i, %.lr.ph.i163.2.i ] ; 3 uses
  %i.ik = call fastcc i32 @isConsonant(ptr noundef nonnull %.0.i423.i)
  %.not.i424.i = icmp eq i32 %i.ik, 0
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i423.i, i64 1
  br i1 %.not.i424.i, label %hasVowel.exit425.i, label %._crit_edge.i168.i, !llvm.loop !5894

hasVowel.exit425.i:                               ; preds = %._crit_edge.i168.i
  %i.im = load i8, ptr %.0.i423.i, align 1, !tbaa !733
  %.not617.i = icmp eq i8 %i.im, 0
  br i1 %.not617.i, label %stem.exit162.thread.ithread-pre-split, label %hasVowel.exit425.i..lr.ph.i183.i_crit_edge

hasVowel.exit425.i..lr.ph.i183.i_crit_edge:       ; preds = %hasVowel.exit425.i
  %.pre706 = load i8, ptr %scevgep799.i, align 1, !tbaa !733
  br label %.lr.ph.i183.i

._crit_edge.i178.i:                               ; preds = %.lr.ph.i150.2.i, %._crit_edge.i178.i
  %.0.i426.i = phi ptr [ %i.io, %._crit_edge.i178.i ], [ %i.hj, %.lr.ph.i150.2.i ] ; 3 uses
  %i.in = call fastcc i32 @isConsonant(ptr noundef nonnull %.0.i426.i)
  %.not.i427.i = icmp eq i32 %i.in, 0
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i426.i, i64 1
  br i1 %.not.i427.i, label %hasVowel.exit428.i, label %._crit_edge.i178.i, !llvm.loop !5894

hasVowel.exit428.i:                               ; preds = %._crit_edge.i178.i
  %i.ip = load i8, ptr %.0.i426.i, align 1, !tbaa !733
  %.not.i69 = icmp eq i8 %i.ip, 0
  br i1 %.not.i69, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i183.i

.lr.ph.i183.i:                                    ; preds = %hasVowel.exit425.i..lr.ph.i183.i_crit_edge, %hasVowel.exit428.i
  %i.iq = phi i8 [ %i.hk, %hasVowel.exit428.i ], [ %.pre706, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 5 uses
  %storemerge = phi ptr [ %i.hj, %hasVowel.exit428.i ], [ %scevgep799.i, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 18 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !741
  switch i8 %i.iq, label %.lr.ph.i209.thread.i [
    i8 116, label %.lr.ph.i183.1.i
    i8 108, label %.lr.ph.i196.1.i
    i8 122, label %.lr.ph.i209.1.i
  ]

.lr.ph.i183.1.i:                                  ; preds = %.lr.ph.i183.i
  %i.ir = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !733
  %i.it = icmp eq i8 %i.is, 97
  br i1 %i.it, label %.lr.ph33.i190.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i190.preheader.i:                        ; preds = %.lr.ph.i183.1.i
  %i.iu = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.iu, align 1, !tbaa !733
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph.i196.1.i:                                  ; preds = %.lr.ph.i183.i
  %i.iv = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !733
  %i.ix = icmp eq i8 %i.iw, 98
  br i1 %i.ix, label %.lr.ph33.i203.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i203.preheader.i:                        ; preds = %.lr.ph.i196.1.i
end_hunk_0
