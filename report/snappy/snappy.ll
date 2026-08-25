Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  br label %.lr.ph88.split

.lr.ph88.split:                                   ; preds = %.outer, %.lr.ph88.lr.ph
  %.pre.i131 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.pre.i132, %.outer ]
  %.promoted102 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.promoted102125, %.outer ] ; 2 uses
  %.2.ph107 = phi i64 [ %.1, %.lr.ph88.lr.ph ], [ %.5, %.outer ] ; 7 uses
  %.134.ph105 = phi ptr [ %.03381, %.lr.ph88.lr.ph ], [ %.336, %.outer ] ; 7 uses
  %.0.ph104 = phi i64 [ %2, %.lr.ph88.lr.ph ], [ %.267, %.outer ] ; 4 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !70 ; 2 uses
  %.not53100 = icmp eq ptr %.134.ph105, %.promoted
  br i1 %.not53100, label %.lr.ph101, label %.split.us

.split.us:                                        ; preds = %bb.v, %.lr.ph88.split
  %.pre.i = phi i64 [ %.pre.i131, %.lr.ph88.split ], [ %i.ed, %bb.v ] ; 2 uses
  %.promoted102123 = phi i64 [ %.promoted102, %.lr.ph88.split ], [ %i.ed, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = sub i64 %i.v, %.2.ph107                  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.ph104, i64 %i.w) ; 2 uses
  %.not15.i = icmp eq i64 %i.v, %.2.ph107
  br i1 %.not15.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us
  %i.x = load ptr, ptr %.134.ph105, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.2.ph107
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre.i128 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %.0917.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %storemerge16.i = phi i64 [ %.sroa.speculated, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.z = icmp eq i64 %.pre.i128, 0
  br i1 %i.z, label %bb.f, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.e
  %.pre22.i = load ptr, ptr %i.t, align 8, !tbaa !74
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !67
  %.not11.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not11.i, label %bb.g, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  store i64 %i.af, ptr %i.l, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge21.i
  %i.ag = phi ptr [ %i.ad, %bb.g ], [ %.pre22.i, %._crit_edge21.i ]
  %i.ah = phi i64 [ %i.af, %bb.g ], [ %.pre.i128, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.speculated.i
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !74
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !75
  %i.al = sub i64 %i.ak, %.sroa.speculated.i      ; 4 uses
  store i64 %i.al, ptr %i.l, align 8, !tbaa !75
  %i.am = load i64, ptr %i.b, align 8, !tbaa !76
  %i.an = add i64 %i.am, %.sroa.speculated.i
  store i64 %i.an, ptr %i.b, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.ap = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.e, !llvm.loop !151

_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.h, %.split.us
  %.pre.i129 = phi i64 [ %.pre.i, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.promoted102122 = phi i64 [ %.promoted102123, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.not55.not = icmp ugt i64 %.0.ph104, %i.w      ; 2 uses
  %spec.select.idx = select i1 %.not55.not, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 %spec.select.idx
  %spec.select56 = select i1 %.not55.not, i64 0, i64 %.2.ph107
  br label %.outer

.lr.ph101:                                        ; preds = %.lr.ph88.split, %bb.v
  %i.aq = phi i64 [ %i.ed, %bb.v ], [ %.promoted102, %.lr.ph88.split ] ; 7 uses
  %i.ar = phi ptr [ %i.at, %bb.v ], [ %.promoted, %.lr.ph88.split ] ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.i, label %.split94.us

bb.i:                                             ; preds = %.lr.ph101
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !67
  %.not54 = icmp ult ptr %i.at, %i.au
  br i1 %.not54, label %bb.v, label %.thread

.split94.us:                                      ; preds = %.lr.ph101
  %spec.select57 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0.ph104) ; 15 uses
  %i.av = load ptr, ptr %.134.ph105, align 8, !tbaa !71 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.2.ph107 ; 20 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !74  ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select57 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 8
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split94.us
  %.not.i58 = icmp slt i64 %i.aq, 11
  br i1 %.not.i58, label %iter.check, label %.lr.ph.i59, !prof !25

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  %i.be = add nsw i64 %i.bc, -1
  %diff.check = icmp ult i64 %i.be, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %n.vec
  %i.bh = getelementptr i8, ptr %i.ax, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index
  %next.gep175 = getelementptr i8, ptr %i.ax, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !161

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec177 = and i64 %spec.select57, -4          ; 4 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %n.vec177
  %i.bk = getelementptr i8, ptr %i.ax, i64 %n.vec177
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 3 uses
  %next.gep179 = getelementptr i8, ptr %i.aw, i64 %index178
  %next.gep180 = getelementptr i8, ptr %i.ax, i64 %index178
  %wide.load181 = load <4 x i8>, ptr %next.gep179, align 1, !tbaa !9
  store <4 x i8> %wide.load181, ptr %next.gep180, align 1, !tbaa !9
  %index.next182 = add nuw i64 %index178, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n183 = icmp eq i64 %spec.select57, %n.vec177
  br i1 %cmp.n183, label %.thread71, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.aw, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.086.i = phi i64 [ %i.bn, %.lr.ph.i59 ], [ %i.bc, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bm, %.lr.ph.i59 ], [ %i.ax, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.aw, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.086.i ; 3 uses
  %i.bn = shl nuw nsw i64 %.086.i, 1
  %i.bo = icmp ult i64 %.086.i, 4
  br i1 %i.bo, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bm, %i.ay
  br i1 %.not67.i, label %bb.k, label %.thread71, !prof !25

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.bq = load i8, ptr %.08.i.i, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.bq, ptr %.057.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.br, %i.ay
  br i1 %exitcond.not.i.i, label %.thread71, label %.lr.ph.i.i, !llvm.loop !164

bb.k:                                             ; preds = %._crit_edge.i, %.split94.us
  %.157.i = phi ptr [ %i.bm, %._crit_edge.i ], [ %i.ax, %.split94.us ] ; 16 uses
  %.157.i222 = ptrtoaddr ptr %.157.i to i64       ; 2 uses
  %i.bs = add nsw i64 %i.aq, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.bs
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.aw, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bt, align 1
  store i64 %.val.i.i, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.ay
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val4.i71.i = load i64, ptr %i.bx, align 1
  store i64 %.val4.i71.i, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.by, align 1
  store i64 %.val.i72.i, ptr %i.bz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %i.ay
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val4.i73.i = load i64, ptr %i.cc, align 1
  store i64 %.val4.i73.i, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.cd, align 1
  store i64 %.val.i74.i, ptr %i.ce, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.ay
  br i1 %i.cg, label %bb.q, label %.thread71

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.val4.i75.i = load i64, ptr %i.ch, align 1
  store i64 %.val4.i75.i, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.ci, align 1
  store i64 %.val.i76.i, ptr %i.cj, align 1
  br label %.thread71

bb.r:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  %i.cl = icmp ult ptr %.157.i, %i.ck
  br i1 %i.cl, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %i.cm = add i64 %i.aq, %i.ba
  %i.cn = add i64 %i.cm, -17
  %4 = sub i64 %i.cn, %.157.i222                  ; 3 uses
  %i.co = lshr i64 %4, 4
  %min.iters.check227 = icmp ult i64 %4, 80
  br i1 %min.iters.check227, label %.lr.ph90.i.preheader244, label %vector.memcheck221

.lr.ph90.i.preheader244:                          ; preds = %vector.memcheck221, %.lr.ph90.i.preheader
  br label %.lr.ph90.i

vector.memcheck221:                               ; preds = %.lr.ph90.i.preheader
  %scevgep = getelementptr i8, ptr %.157.i, i64 16
  %i.cp = add i64 %i.ba, -17
  %5 = sub i64 %i.cp, %.157.i222
  %i.cq = add i64 %5, %i.aq
  %i.cr = and i64 %i.cq, -16                      ; 2 uses
  %scevgep223 = getelementptr i8, ptr %scevgep, i64 %i.cr
  %scevgep224 = getelementptr i8, ptr %i.av, i64 16
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %.2.ph107
  %scevgep226 = getelementptr i8, ptr %scevgep225, i64 %i.cr
  %bound0 = icmp ult ptr %.157.i, %scevgep226
  %bound1 = icmp ult ptr %i.aw, %scevgep223
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader244, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck221
  %i.cs = and i64 %4, -16
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.aw, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.157.i, i64 %i.ct
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next235, %vector.body230 ] ; 3 uses
  %i.cw = shl i64 %index231, 4                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %next.gep233 = getelementptr i8, ptr %.157.i, i64 %i.cw
  %wide.load234 = load <2 x i64>, ptr %next.gep232, align 1, !alias.scope !165
  store <2 x i64> %wide.load234, ptr %next.gep233, align 1, !alias.scope !168, !noalias !165
  %index.next235 = add nuw i64 %index231, 1
  %i.cx = icmp eq i64 %index231, %i.co
  br i1 %i.cx, label %._crit_edge91.i, label %vector.body230, !llvm.loop !170

._crit_edge91.i:                                  ; preds = %vector.body230, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.da, %.lr.ph90.i ], [ %i.cv, %vector.body230 ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.aw, %bb.r ], [ %i.db, %.lr.ph90.i ], [ %i.cu, %vector.body230 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.ay
  br i1 %.not69.i, label %bb.s, label %.thread71

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader244, %.lr.ph90.i
  %.05488.i = phi ptr [ %i.db, %.lr.ph90.i ], [ %i.aw, %.lr.ph90.i.preheader244 ] ; 3 uses
  %.287.i = phi ptr [ %i.da, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader244 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05488.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.05488.i, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.cy, align 1
  store i64 %.val.i78.i, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.05488.i, i64 16 ; 2 uses
  %i.dc = icmp ult ptr %i.da, %i.ck
  br i1 %i.dc, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !171

bb.s:                                             ; preds = %._crit_edge91.i
  %i.dd = getelementptr inbounds i8, ptr %i.az, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.dd
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s
  %.054.val.i = load i64, ptr %.054.lcssa.i, align 1
  store i64 %.054.val.i, ptr %.2.lcssa.i, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.df, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 7 uses
  %.155.i = phi ptr [ %i.de, %bb.t ], [ %.054.lcssa.i, %bb.s ] ; 6 uses
  %i.dg = icmp ult ptr %.3.i, %i.ay
  br i1 %i.dg, label %iter.check205, label %.thread71

iter.check205:                                    ; preds = %bb.u
  %.155.i188 = ptrtoaddr ptr %.155.i to i64
  %.3.i187 = ptrtoaddr ptr %.3.i to i64           ; 2 uses
  %i.dh = sub i64 %i.ba, %.3.i187
  %i.di = add i64 %i.dh, %spec.select57           ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.di, 4
  %i.dj = sub i64 %.155.i188, %.3.i187
  %diff.check189 = icmp ugt i64 %i.dj, -32
  %or.cond242 = select i1 %min.iters.check190, i1 true, i1 %diff.check189
  br i1 %or.cond242, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check205
  %min.iters.check192 = icmp ult i64 %i.di, 16
  br i1 %min.iters.check192, label %vec.epilog.ph209, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %i.dk = and i64 %i.di, 12
  %n.vec194 = and i64 %i.di, -16                  ; 5 uses
  %i.dl = getelementptr i8, ptr %.155.i, i64 %n.vec194
  %i.dm = getelementptr i8, ptr %.3.i, i64 %n.vec194
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next200, %vector.body195 ] ; 3 uses
  %next.gep197 = getelementptr i8, ptr %.155.i, i64 %index196
  %next.gep198 = getelementptr i8, ptr %.3.i, i64 %index196
  %wide.load199 = load <16 x i8>, ptr %next.gep197, align 1, !tbaa !9
  store <16 x i8> %wide.load199, ptr %next.gep198, align 1, !tbaa !9
  %index.next200 = add nuw i64 %index196, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.dn, label %middle.block201, label %vector.body195, !llvm.loop !172

middle.block201:                                  ; preds = %vector.body195
  %cmp.n202 = icmp eq i64 %i.di, %n.vec194
  br i1 %cmp.n202, label %.thread71, label %vec.epilog.iter.check207

vec.epilog.iter.check207:                         ; preds = %middle.block201
  %min.epilog.iters.check208 = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check208, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph209, !prof !161

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check207
  %vec.epilog.resume.val203 = phi i64 [ %n.vec194, %vec.epilog.iter.check207 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec210 = and i64 %i.di, -4                   ; 4 uses
  %i.do = getelementptr i8, ptr %.155.i, i64 %n.vec210
  %i.dp = getelementptr i8, ptr %.3.i, i64 %n.vec210
  br label %vec.epilog.vector.body211

vec.epilog.vector.body211:                        ; preds = %vec.epilog.vector.body211, %vec.epilog.ph209
  %index212 = phi i64 [ %vec.epilog.resume.val203, %vec.epilog.ph209 ], [ %index.next216, %vec.epilog.vector.body211 ] ; 3 uses
  %next.gep213 = getelementptr i8, ptr %.155.i, i64 %index212
  %next.gep214 = getelementptr i8, ptr %.3.i, i64 %index212
  %wide.load215 = load <4 x i8>, ptr %next.gep213, align 1, !tbaa !9
  store <4 x i8> %wide.load215, ptr %next.gep214, align 1, !tbaa !9
  %index.next216 = add nuw i64 %index212, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.dq, label %vec.epilog.middle.block217, label %vec.epilog.vector.body211, !llvm.loop !173

vec.epilog.middle.block217:                       ; preds = %vec.epilog.vector.body211
  %cmp.n218 = icmp eq i64 %i.di, %n.vec210
  br i1 %cmp.n218, label %.thread71, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check205, %vec.epilog.iter.check207, %vec.epilog.middle.block217
  %.08.i80.i.ph = phi ptr [ %.155.i, %iter.check205 ], [ %i.dl, %vec.epilog.iter.check207 ], [ %i.do, %vec.epilog.middle.block217 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check205 ], [ %i.dm, %vec.epilog.iter.check207 ], [ %i.dp, %vec.epilog.middle.block217 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dr, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dt, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.ds = load i8, ptr %.08.i80.i, align 1, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.ds, ptr %.057.i81.i, align 1, !tbaa !9
  %exitcond.not.i82.i = icmp eq ptr %i.dt, %i.ay
  br i1 %exitcond.not.i82.i, label %.thread71, label %.lr.ph.i79.i, !llvm.loop !174

.thread71:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block201, %vec.epilog.middle.block217, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %spec.select57
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !74
  %i.dw = load i64, ptr %i.l, align 8, !tbaa !75
  %i.dx = sub i64 %i.dw, %spec.select57           ; 3 uses
  store i64 %i.dx, ptr %i.l, align 8, !tbaa !75
  %i.dy = add i64 %spec.select57, %.2.ph107
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !76
  %i.ea = add i64 %i.dz, %spec.select57
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !76
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.h, align 8, !tbaa !70
  %i.eb = load ptr, ptr %i.at, align 8, !tbaa !71
  store ptr %i.eb, ptr %i.t, align 8, !tbaa !74
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !73 ; 4 uses
  store i64 %i.ed, ptr %i.l, align 8, !tbaa !75
  %.not53 = icmp eq ptr %.134.ph105, %i.at
  br i1 %.not53, label %.lr.ph101, label %.split.us

.outer:                                           ; preds = %.thread71, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i132 = phi i64 [ %i.dx, %.thread71 ], [ %.pre.i129, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted102125 = phi i64 [ %i.dx, %.thread71 ], [ %.promoted102122, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread71 ], [ %.sroa.speculated, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.336 = phi ptr [ %.134.ph105, %.thread71 ], [ %spec.select, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.5 = phi i64 [ %i.dy, %.thread71 ], [ %spec.select56, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.267 = sub i64 %.0.ph104, %spec.select57.pn    ; 2 uses
  %.not52 = icmp eq i64 %.267, 0
  br i1 %.not52, label %.thread, label %.lr.ph88.split, !llvm.loop !175

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.543 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.543
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone returned captures(address, ret: address, provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.g
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !25

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.086 = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05685, i64 %.086 ; 3 uses
  %i.i = shl nuw nsw i64 %.086, 1
  %i.j = icmp ult i64 %.086, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.h, %2
  br i1 %.not67, label %bb.d, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult ptr %1, %2
  br i1 %i.k, label %iter.check160, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check160:                                    ; preds = %bb.c
  %i.l = sub i64 %i.a, %i.c                       ; 7 uses
  %min.iters.check144 = icmp ult i64 %i.l, 4
  %i.m = add nsw i64 %i.e, -1
  %diff.check142 = icmp ult i64 %i.m, 31
  %or.cond = select i1 %min.iters.check144, i1 true, i1 %diff.check142
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check160
  %min.iters.check146 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check146, label %vec.epilog.ph164, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.n = and i64 %i.l, 12
  %n.vec148 = and i64 %i.l, -16                   ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec148
  %i.p = getelementptr i8, ptr %1, i64 %n.vec148
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %next.gep151 = getelementptr i8, ptr %0, i64 %index150
  %next.gep152 = getelementptr i8, ptr %1, i64 %index150
  %wide.load153 = load <16 x i8>, ptr %next.gep151, align 1, !tbaa !9
  store <16 x i8> %wide.load153, ptr %next.gep152, align 1, !tbaa !9
  %index.next154 = add nuw i64 %index150, 16      ; 2 uses
  %i.q = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.q, label %middle.block155, label %vector.body149, !llvm.loop !176

middle.block155:                                  ; preds = %vector.body149
  %cmp.n156 = icmp eq i64 %i.l, %n.vec148
  br i1 %cmp.n156, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  %min.epilog.iters.check163 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph.i.preheader, label %vec.epilog.ph164, !prof !161

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec148, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec165 = and i64 %i.l, -4                    ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 %n.vec165
  %i.s = getelementptr i8, ptr %1, i64 %n.vec165
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %0, i64 %index167
  %next.gep169 = getelementptr i8, ptr %1, i64 %index167
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !9
  store <4 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !9
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.t = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.t, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !177

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  %cmp.n173 = icmp eq i64 %i.l, %n.vec165
  br i1 %cmp.n173, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block172
  %.08.i.ph = phi ptr [ %0, %iter.check160 ], [ %i.o, %vec.epilog.iter.check162 ], [ %i.r, %vec.epilog.middle.block172 ]
  %.057.i.ph = phi ptr [ %1, %iter.check160 ], [ %i.p, %vec.epilog.iter.check162 ], [ %i.s, %vec.epilog.middle.block172 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.v = load i8, ptr %.08.i, align 1, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.v, ptr %.057.i, align 1, !tbaa !9
  %exitcond.not.i = icmp eq ptr %i.w, %2
  br i1 %exitcond.not.i, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !178

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.h, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %.157110 = ptrtoaddr ptr %.157 to i64           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.x
  br i1 %.not68, label %bb.k, label %bb.e, !prof !25

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.y, align 1
  store i64 %.val.i, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %2
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ac, align 1
  store i64 %.val4.i71, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ad, align 1
  store i64 %.val.i72, ptr %i.ae, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ah, align 1
  store i64 %.val4.i73, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ai, align 1
  store i64 %.val.i74, ptr %i.aj, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %bb.j, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.am, align 1
  store i64 %.val4.i75, ptr %i.ak, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.an, align 1
  store i64 %.val.i76, ptr %i.ao, align 1
  br label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.aq = icmp ult ptr %.157, %i.ap
  br i1 %i.aq, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %i.ar = add i64 %i.b, -17
  %4 = sub i64 %i.ar, %.157110                    ; 3 uses
  %i.as = lshr i64 %4, 4
  %min.iters.check = icmp ult i64 %4, 208
  br i1 %min.iters.check, label %.lr.ph90.preheader178, label %vector.memcheck

.lr.ph90.preheader178:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.at = add i64 %i.b, -17
  %5 = sub i64 %i.at, %.157110
  %i.au = and i64 %5, -16
  %i.av = add i64 %i.au, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.157, i64 %i.av
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.av
  %bound0 = icmp ult ptr %.157, %scevgep111
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = and i64 %4, -16
  %i.ax = add i64 %i.aw, 16                       ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.ax
  %i.az = getelementptr i8, ptr %.157, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ba
  %next.gep112 = getelementptr i8, ptr %.157, i64 %i.ba
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !179
  store <2 x i64> %wide.load, ptr %next.gep112, align 1, !alias.scope !182, !noalias !179
  %index.next = add nuw i64 %index, 1
  %i.bb = icmp eq i64 %index, %i.as
  br i1 %i.bb, label %._crit_edge91, label %vector.body, !llvm.loop !184

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.be, %.lr.ph90 ], [ %i.az, %vector.body ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.k ], [ %i.bf, %.lr.ph90 ], [ %i.ay, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader178, %.lr.ph90
  %.05488 = phi ptr [ %i.bf, %.lr.ph90 ], [ %0, %.lr.ph90.preheader178 ] ; 3 uses
  %.287 = phi ptr [ %i.be, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader178 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05488, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.05488, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bc, align 1
  store i64 %.val.i78, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05488, i64 16 ; 2 uses
  %i.bg = icmp ult ptr %i.be, %i.ap
  br i1 %i.bg, label %.lr.ph90, label %._crit_edge91, !llvm.loop !185

bb.l:                                             ; preds = %._crit_edge91
  %i.bh = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bh
  br i1 %.not70, label %bb.n, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %.054.val = load i64, ptr %.054.lcssa, align 1
  store i64 %.054.val, ptr %.2.lcssa, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bj, %bb.m ], [ %.2.lcssa, %bb.l ] ; 7 uses
  %.155 = phi ptr [ %i.bi, %bb.m ], [ %.054.lcssa, %bb.l ] ; 6 uses
  %i.bk = icmp ult ptr %.3, %2
  br i1 %i.bk, label %iter.check, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.155116 = ptrtoaddr ptr %.155 to i64
  %.3115 = ptrtoaddr ptr %.3 to i64               ; 2 uses
  %i.bl = sub i64 %i.a, %.3115                    ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.bl, 4
  %i.bm = sub i64 %.155116, %.3115
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond176 = select i1 %min.iters.check118, i1 true, i1 %diff.check
  br i1 %or.cond176, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.bl, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bl, 12
  %n.vec121 = and i64 %i.bl, -16                  ; 5 uses
  %i.bo = getelementptr i8, ptr %.155, i64 %n.vec121
  %i.bp = getelementptr i8, ptr %.3, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %.155, i64 %index123
  %next.gep125 = getelementptr i8, ptr %.3, i64 %index123
  %wide.load126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !9
  store <16 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !9
  %index.next127 = add nuw i64 %index123, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.bq, label %middle.block128, label %vector.body122, !llvm.loop !186

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.bl, %n.vec121
  br i1 %cmp.n129, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !161

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.bl, -4                   ; 4 uses
  %i.br = getelementptr i8, ptr %.155, i64 %n.vec132
  %i.bs = getelementptr i8, ptr %.3, i64 %n.vec132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.155, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.3, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !9
  store <4 x i8> %wide.load136, ptr %next.gep135, align 1, !tbaa !9
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !187

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.bl, %n.vec132
  br i1 %cmp.n138, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bu, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.bw, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bv = load i8, ptr %.08.i80, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bv, ptr %.057.i81, align 1, !tbaa !9
  %exitcond.not.i82 = icmp eq ptr %i.bw, %2
  br i1 %exitcond.not.i82, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !188

_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block128, %vec.epilog.middle.block, %middle.block155, %vec.epilog.middle.block172, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !147 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !22

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !49
  %i.ad = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
end_hunk_0
