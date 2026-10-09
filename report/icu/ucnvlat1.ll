Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvlat1?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
vector.memcheck:                                  ; preds = %iter.check
  %i.cd = add nsw i32 %.174126, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = getelementptr i8, ptr %.180124, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 2
  %i.ci = zext nneg i32 %.174126 to i64
  %i.cj = getelementptr i8, ptr %.183122, i64 %i.ci
  %bound0 = icmp ult ptr %.180124, %i.cj
  %bound1 = icmp ult ptr %.183122, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp samesign ult i32 %.174126, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cc, 12
  %n.vec = and i64 %i.cc, 2147483632              ; 6 uses
  %i.cl = trunc nuw nsw i64 %n.vec to i32
  %i.cm = sub nsw i32 %.174126, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec, 1
  %i.co = getelementptr i8, ptr %.180124, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.183122, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.180124, i64 %i.cq ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.183122, i64 %index ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !tbaa !22, !alias.scope !51
  %wide.load150 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !22, !alias.scope !51
  %i.cs = zext <8 x i8> %wide.load to <8 x i16>
  %i.ct = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.cs, ptr %next.gep, align 2, !tbaa !24, !alias.scope !52, !noalias !51
  store <8 x i16> %i.ct, ptr %i.cu, align 2, !tbaa !24, !alias.scope !52, !noalias !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.cc, 2147483644           ; 5 uses
  %i.cw = trunc nuw nsw i64 %n.vec153 to i32
  %i.cx = sub nsw i32 %.174126, %i.cw
  %i.cy = shl nuw nsw i64 %n.vec153, 1
  %i.cz = getelementptr i8, ptr %.180124, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %.183122, i64 %n.vec153 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.db = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %.180124, i64 %i.db
  %next.gep156 = getelementptr i8, ptr %.183122, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !tbaa !22, !alias.scope !51
  %i.dc = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.dc, ptr %next.gep155, align 2, !tbaa !24, !alias.scope !52, !noalias !51
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %n.vec153, %i.cc
  br i1 %cmp.n159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.27897.ph = phi i32 [ %.174126, %iter.check ], [ %.174126, %vector.memcheck ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.28196.ph = phi ptr [ %.180124, %iter.check ], [ %.180124, %vector.memcheck ], [ %i.co, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  %.28495.ph = phi ptr [ %.183122, %iter.check ], [ %.183122, %vector.memcheck ], [ %i.cp, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27897 = phi i32 [ %i.di, %.lr.ph ], [ %.27897.ph, %.lr.ph.preheader ] ; 2 uses
  %.28196 = phi ptr [ %i.dh, %.lr.ph ], [ %.28196.ph, %.lr.ph.preheader ] ; 2 uses
  %.28495 = phi ptr [ %i.de, %.lr.ph ], [ %.28495.ph, %.lr.ph.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.28495, i64 1 ; 2 uses
  %i.df = load i8, ptr %.28495, align 1, !tbaa !22
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.28196, i64 2 ; 2 uses
  store i16 %i.dg, ptr %.28196, align 2, !tbaa !24
  %i.di = add nsw i32 %.27897, -1
  %i.dj = icmp samesign ugt i32 %.27897, 1
  br i1 %i.dj, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa142 = phi ptr [ %i.da, %vec.epilog.middle.block ], [ %i.cp, %middle.block ], [ %i.de, %.lr.ph ]
  %.lcssa141 = phi ptr [ %i.cz, %vec.epilog.middle.block ], [ %i.co, %middle.block ], [ %i.dh, %.lr.ph ]
  store ptr %.lcssa142, ptr %i.a, align 8, !tbaa !15
  store ptr %.lcssa141, ptr %i.c, align 8, !tbaa !16
  %.not90 = icmp eq ptr %.271127, null
  br i1 %.not90, label %bb.g, label %.lr.ph102.preheader

._crit_edge.thread:                               ; preds = %.loopexit
  store ptr %.183, ptr %i.a, align 8, !tbaa !15
  store ptr %.180, ptr %i.c, align 8, !tbaa !16
  %.not90116 = icmp eq ptr %.271, null
  br i1 %.not90116, label %bb.g, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %._crit_edge
  %i.dk = add i32 %.174126, %.2129
  %min.iters.check163 = icmp samesign ult i32 %.174126, 8
  br i1 %min.iters.check163, label %.lr.ph102.preheader173, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph102.preheader
  %n.vec165 = and i64 %i.cc, 2147483640           ; 4 uses
  %i.dl = trunc nuw nsw i64 %n.vec165 to i32
  %i.dm = add i32 %.2129, %i.dl
  %i.dn = shl nuw nsw i64 %n.vec165, 2
  %i.do = getelementptr i8, ptr %.271127, i64 %i.dn ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2129, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body166 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph164 ], [ %vec.ind.next, %vector.body166 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dp = shl i64 %index167, 2
  %next.gep168 = getelementptr i8, ptr %.271127, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep168, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep168, align 4, !tbaa !26
  store <4 x i32> %step.add, ptr %i.dq, align 4, !tbaa !26
  %index.next169 = add nuw i64 %index167, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dr = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.dr, label %middle.block170, label %vector.body166, !llvm.loop !49

middle.block170:                                  ; preds = %vector.body166
  %cmp.n171 = icmp eq i64 %n.vec165, %i.cc
  br i1 %cmp.n171, label %._crit_edge103, label %.lr.ph102.preheader173

.lr.ph102.preheader173:                           ; preds = %.lr.ph102.preheader, %middle.block170
  %.3101.ph = phi i32 [ %.2129, %.lr.ph102.preheader ], [ %i.dm, %middle.block170 ]
  %.372100.ph = phi ptr [ %.271127, %.lr.ph102.preheader ], [ %i.do, %middle.block170 ]
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader173, %.lr.ph102
  %.3101 = phi i32 [ %i.ds, %.lr.ph102 ], [ %.3101.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %.372100 = phi ptr [ %i.dt, %.lr.ph102 ], [ %.372100.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %i.ds = add i32 %.3101, 1                       ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.372100, i64 4 ; 2 uses
  store i32 %.3101, ptr %.372100, align 4, !tbaa !26
  %exitcond.not = icmp eq i32 %i.ds, %i.dk
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !50

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block170, %._crit_edge.thread
  %.372.lcssa = phi ptr [ %.271, %._crit_edge.thread ], [ %i.do, %middle.block170 ], [ %i.dt, %.lr.ph102 ]
  store ptr %.372.lcssa, ptr %i.l, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge103, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp eq ptr %i.r, @_Latin1Data_78
  %. = select i1 %i.s, i32 255, i32 127           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0                      ; 3 uses
  %i.w = sext i1 %i.v to i32                      ; 6 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, 1
  %i.ab = trunc i64 %i.aa to i32
  %.0188 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.n) ; 6 uses
  %i.ac = icmp sgt i32 %.0188, 0
  %or.cond = select i1 %i.v, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %.0188, 15
  br i1 %i.ad, label %bb.c, label %.loopexit227

bb.c:                                             ; preds = %bb.b
  %i.ae = lshr i32 %.0188, 4                      ; 2 uses
  %i.af = trunc nuw nsw i32 %. to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0203 = phi ptr [ %i.d, %bb.c ], [ %i.aj, %bb.e ] ; 20 uses
  %.0196 = phi ptr [ %i.h, %bb.c ], [ %i.ai, %bb.e ] ; 20 uses
  %.0171 = phi i32 [ %i.ae, %bb.c ], [ %i.ak, %bb.e ] ; 3 uses
  %.0203271 = ptrtoaddr ptr %.0203 to i64         ; 2 uses
  %i.ag = add i64 %.0203271, 32
  %.0196272 = ptrtoaddr ptr %.0196 to i64         ; 2 uses
  %i.ah = add i64 %.0196272, 16
  %rt.bound0 = icmp ugt i64 %i.ag, %.0196272
  %rt.bound1 = icmp ugt i64 %i.ah, %.0203271
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !65

bb.e:                                             ; preds = %.rtcont
  %i.ai = getelementptr inbounds nuw i8, ptr %.0196, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0203, i64 32 ; 2 uses
  %i.ak = add nsw i32 %.0171, -1
  %i.al = icmp sgt i32 %.0171, 1
  br i1 %i.al, label %bb.d, label %bb.f, !llvm.loop !54

bb.f:                                             ; preds = %.rtcont, %bb.e
  %.1204 = phi ptr [ %i.aj, %bb.e ], [ %.0203, %.rtcont ] ; 4 uses
  %.1197 = phi ptr [ %i.ai, %bb.e ], [ %.0196, %.rtcont ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.e ], [ %.0171, %.rtcont ] ; 3 uses
  %i.am = sub nsw i32 %i.ae, %.1                  ; 4 uses
  %i.an = shl nsw i32 %i.am, 4                    ; 2 uses
  %i.ao = sub nsw i32 %.0188, %i.an               ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit227, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds i8, ptr %i.h, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i32 %i.am, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %.loopexit227

.lr.ph.preheader:                                 ; preds = %bb.g
  %2 = lshr i32 %.0188, 4                         ; 2 uses
  %3 = sub i32 %2, %.1
  %.neg = add i32 %.1, 1
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.au = add nsw <4 x i32> %i.at, <i32 4, i32 5, i32 6, i32 7>
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aw = add nsw <4 x i32> %i.at, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.aw, ptr %i.p, align 4, !tbaa !26
  %i.ax = add nsw <4 x i32> %i.at, <i32 8, i32 9, i32 10, i32 11>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store <4 x i32> %i.au, ptr %i.av, align 4, !tbaa !26
  %i.az = add nsw <4 x i32> %i.at, <i32 12, i32 13, i32 14, i32 15>
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store <4 x i32> %i.ax, ptr %i.ay, align 4, !tbaa !26
  %i.bb = select i1 %i.v, i32 15, i32 16          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  store <4 x i32> %i.az, ptr %i.ba, align 4, !tbaa !26
  %i.bd = add nsw i32 %i.am, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2230.unr = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %.0172229.unr = phi i32 [ %i.w, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.prol ]
  %.0181228.unr = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %.lcssa277.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.prol ]
  %.lcssa276.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.be = icmp eq i32 %2, %.neg
  br i1 %i.be, label %.loopexit227, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.2230 = phi i32 [ %i.cb, %.lr.ph ], [ %.2230.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0172229 = phi i32 [ %i.bz, %.lr.ph ], [ %.0172229.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0181228 = phi ptr [ %i.ca, %.lr.ph ], [ %.0181228.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bf = insertelement <4 x i32> poison, i32 %.0172229, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bh = add nsw <4 x i32> %i.bg, <i32 4, i32 5, i32 6, i32 7>
  %i.bi = getelementptr inbounds nuw i8, ptr %.0181228, i64 16
  %i.bj = add nsw <4 x i32> %i.bg, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bj, ptr %.0181228, align 4, !tbaa !26
  %i.bk = add nsw <4 x i32> %i.bg, <i32 8, i32 9, i32 10, i32 11>
  %i.bl = getelementptr inbounds nuw i8, ptr %.0181228, i64 32
  store <4 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !26
  %i.bm = add nsw <4 x i32> %i.bg, <i32 12, i32 13, i32 14, i32 15>
  %i.bn = getelementptr inbounds nuw i8, ptr %.0181228, i64 48
  store <4 x i32> %i.bk, ptr %i.bl, align 4, !tbaa !26
  %i.bo = add nsw i32 %.0172229, 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0181228, i64 64
  store <4 x i32> %i.bm, ptr %i.bn, align 4, !tbaa !26
  %i.bq = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bs = add nsw <4 x i32> %i.br, <i32 4, i32 5, i32 6, i32 7>
  %i.bt = getelementptr inbounds nuw i8, ptr %.0181228, i64 80
  %i.bu = add nsw <4 x i32> %i.br, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bu, ptr %i.bp, align 4, !tbaa !26
  %i.bv = add nsw <4 x i32> %i.br, <i32 8, i32 9, i32 10, i32 11>
  %i.bw = getelementptr inbounds nuw i8, ptr %.0181228, i64 96
  store <4 x i32> %i.bs, ptr %i.bt, align 4, !tbaa !26
  %i.bx = add nsw <4 x i32> %i.br, <i32 12, i32 13, i32 14, i32 15>
  %i.by = getelementptr inbounds nuw i8, ptr %.0181228, i64 112
  store <4 x i32> %i.bv, ptr %i.bw, align 4, !tbaa !26
  %i.bz = add nsw i32 %.0172229, 32               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0181228, i64 128 ; 2 uses
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !26
  %i.cb = add nsw i32 %.2230, -2
  %i.cc = icmp sgt i32 %.2230, 2
  br i1 %i.cc, label %.lr.ph, label %.loopexit227, !llvm.loop !55

.loopexit227:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g, %bb.f, %bb.b
  %.2205 = phi ptr [ %i.d, %bb.b ], [ %.1204, %bb.f ], [ %.1204, %bb.g ], [ %.1204, %.lr.ph ], [ %.1204, %.lr.ph.prol.loopexit ] ; 2 uses
  %.2198 = phi ptr [ %i.h, %bb.b ], [ %.1197, %bb.f ], [ %.1197, %bb.g ], [ %.1197, %.lr.ph ], [ %.1197, %.lr.ph.prol.loopexit ] ; 2 uses
  %.1192 = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.f ], [ %i.aq, %bb.g ], [ %i.aq, %.lr.ph ], [ %i.aq, %.lr.ph.prol.loopexit ] ; 4 uses
  %.1189 = phi i32 [ %.0188, %bb.b ], [ %i.ao, %bb.f ], [ %i.ao, %bb.g ], [ %i.ao, %.lr.ph ], [ %i.ao, %.lr.ph.prol.loopexit ] ; 2 uses
  %.2183 = phi ptr [ %i.p, %bb.b ], [ null, %bb.f ], [ %i.p, %bb.g ], [ %.lcssa276.unr, %.lr.ph.prol.loopexit ], [ %i.ca, %.lr.ph ] ; 4 uses
  %.2174 = phi i32 [ %i.w, %bb.b ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %.lcssa277.unr, %.lr.ph.prol.loopexit ], [ %i.bz, %.lr.ph ] ; 4 uses
  %i.cd = icmp sgt i32 %.1189, 0
  br i1 %i.cd, label %.lr.ph235.preheader, label %.critedge.thread

.lr.ph235.preheader:                              ; preds = %.loopexit227
  %i.ce = trunc nuw nsw i32 %. to i16
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %bb.h
  %.2190234 = phi i32 [ %i.cj, %bb.h ], [ %.1189, %.lr.ph235.preheader ] ; 2 uses
  %.3199233 = phi ptr [ %i.ci, %bb.h ], [ %.2198, %.lr.ph235.preheader ] ; 3 uses
  %.3206232 = phi ptr [ %i.cf, %bb.h ], [ %.2205, %.lr.ph235.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.3206232, i64 2 ; 4 uses
  %i.cg = load i16, ptr %.3206232, align 2, !tbaa !24 ; 3 uses
  %.not219 = icmp ugt i16 %i.cg, %i.ce
  br i1 %.not219, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph235
  %i.ch = trunc nuw i16 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.3199233, i64 1 ; 2 uses
  store i8 %i.ch, ptr %.3199233, align 1, !tbaa !22
  %i.cj = add nsw i32 %.2190234, -1
  %i.ck = icmp sgt i32 %.2190234, 1
  br i1 %i.ck, label %.lr.ph235, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.lr.ph235, %bb.h
  %.3199.lcssa.ph = phi ptr [ %.3199233, %.lr.ph235 ], [ %i.ci, %bb.h ] ; 3 uses
  %i.cl = zext i16 %i.cg to i32                   ; 4 uses
  %i.cm = icmp samesign ult i32 %., %i.cl
  br i1 %i.cm, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.critedge
  %i.cn = and i32 %i.cl, 64512
  %or.cond225 = icmp eq i32 %i.cn, 55296
  br i1 %or.cond225, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.a
  %.5208 = phi ptr [ %i.d, %bb.a ], [ %i.cf, %bb.i ] ; 4 uses
  %.4200 = phi ptr [ %i.h, %bb.a ], [ %.3199.lcssa.ph, %bb.i ] ; 2 uses
  %.2193 = phi ptr [ %i.h, %bb.a ], [ %.1192, %bb.i ] ; 2 uses
  %.3184 = phi ptr [ %i.p, %bb.a ], [ %.2183, %bb.i ] ; 2 uses
  %.0178 = phi i32 [ %i.u, %bb.a ], [ %i.cl, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.w, %bb.a ], [ %.2174, %bb.i ] ; 2 uses
  %i.co = icmp ult ptr %.5208, %i.f
  br i1 %i.co, label %bb.k, label %.critedge.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.cp = load i16, ptr %.5208, align 2, !tbaa !24
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 64512
  %i.cs = icmp eq i32 %i.cr, 56320                ; 2 uses
  %i.ct = shl i32 %.0178, 10
  %i.cu = add i32 %i.ct, -56613888
  %i.cv = add i32 %i.cu, %i.cq
  %.6209.idx = select i1 %i.cs, i64 2, i64 0
  %.6209 = getelementptr inbounds nuw i8, ptr %.5208, i64 %.6209.idx
  %.1179 = select i1 %i.cs, i32 %i.cv, i32 %.0178
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.7210 = phi ptr [ %.6209, %bb.k ], [ %i.cf, %bb.i ]
  %.5201 = phi ptr [ %.4200, %bb.k ], [ %.3199.lcssa.ph, %bb.i ]
  %.3194 = phi ptr [ %.2193, %bb.k ], [ %.1192, %bb.i ]
  %.4185 = phi ptr [ %.3184, %bb.k ], [ %.2183, %bb.i ]
  %.2180 = phi i32 [ %.1179, %bb.k ], [ %i.cl, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.k ], [ %.2174, %bb.i ]
  %i.cw = and i32 %.2180, -2048
  %i.cx = icmp eq i32 %i.cw, 55296
  %i.cy = select i1 %i.cx, i32 12, i32 10
  store i32 %i.cy, ptr %1, align 4, !tbaa !21
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %bb.j, %bb.l
  %.2180.sink = phi i32 [ %.2180, %bb.l ], [ %.0178, %bb.j ]
  %.8.ph = phi ptr [ %.7210, %bb.l ], [ %.5208, %bb.j ]
  %.6202.ph = phi ptr [ %.5201, %bb.l ], [ %.4200, %bb.j ]
  %.4195.ph = phi ptr [ %.3194, %bb.l ], [ %.2193, %bb.j ]
  %.5186.ph = phi ptr [ %.4185, %bb.l ], [ %.3184, %bb.j ]
  %.5.ph = phi i32 [ %.4, %bb.l ], [ %.3, %bb.j ]
  store i32 %.2180.sink, ptr %i.t, align 4, !tbaa !64
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.loopexit227, %.critedge
  %.8 = phi ptr [ %i.cf, %.critedge ], [ %.2205, %.loopexit227 ], [ %.8.ph, %.critedge.thread.sink.split ] ; 2 uses
  %.6202 = phi ptr [ %.3199.lcssa.ph, %.critedge ], [ %.2198, %.loopexit227 ], [ %.6202.ph, %.critedge.thread.sink.split ] ; 3 uses
  %.4195 = phi ptr [ %.1192, %.critedge ], [ %.1192, %.loopexit227 ], [ %.4195.ph, %.critedge.thread.sink.split ]
  %.5186 = phi ptr [ %.2183, %.critedge ], [ %.2183, %.loopexit227 ], [ %.5186.ph, %.critedge.thread.sink.split ] ; 5 uses
  %.5 = phi i32 [ %.2174, %.critedge ], [ %.2174, %.loopexit227 ], [ %.5.ph, %.critedge.thread.sink.split ] ; 3 uses
  %.not220 = icmp eq ptr %.5186, null
  br i1 %.not220, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.cz = ptrtoint ptr %.6202 to i64
  %i.da = ptrtoint ptr %.4195 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %.not221243 = icmp eq i64 %i.db, 0
  br i1 %.not221243, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %.lr.ph247.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph247.preheader
  %n.vec = and i64 %i.db, -8                      ; 4 uses
  %i.dc = and i64 %i.db, 7
  %i.dd = trunc i64 %n.vec to i32
  %i.de = add i32 %.5, %i.dd
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %.5186, i64 %i.df ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.dh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.5186, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %step.add, ptr %i.di, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph247.preheader273

.lr.ph247.preheader273:                           ; preds = %.lr.ph247.preheader, %middle.block
  %.0246.ph = phi i64 [ %i.db, %.lr.ph247.preheader ], [ %i.dc, %middle.block ]
  %.6245.ph = phi i32 [ %.5, %.lr.ph247.preheader ], [ %i.de, %middle.block ]
  %.6187244.ph = phi ptr [ %.5186, %.lr.ph247.preheader ], [ %i.dg, %middle.block ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader273, %.lr.ph247
  %.0246 = phi i64 [ %i.dm, %.lr.ph247 ], [ %.0246.ph, %.lr.ph247.preheader273 ]
  %.6245 = phi i32 [ %i.dk, %.lr.ph247 ], [ %.6245.ph, %.lr.ph247.preheader273 ] ; 2 uses
  %.6187244 = phi ptr [ %i.dl, %.lr.ph247 ], [ %.6187244.ph, %.lr.ph247.preheader273 ] ; 2 uses
  %i.dk = add nsw i32 %.6245, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.6187244, i64 4 ; 2 uses
  store i32 %.6245, ptr %.6187244, align 4, !tbaa !26
  %i.dm = add i64 %.0246, -1                      ; 2 uses
  %.not221 = icmp eq i64 %i.dm, 0
  br i1 %.not221, label %.loopexit, label %.lr.ph247, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph247, %middle.block, %bb.m, %.critedge.thread
  %.7 = phi ptr [ null, %.critedge.thread ], [ %.5186, %bb.m ], [ %i.dg, %middle.block ], [ %i.dl, %.lr.ph247 ]
  %i.dn = load i32, ptr %1, align 4, !tbaa !21
  %i.do = icmp slt i32 %i.dn, 1
  %i.dp = icmp ult ptr %.8, %i.f
end_hunk_0
