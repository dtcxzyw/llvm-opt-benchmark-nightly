inline.NumInlined: 514
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
.lr.ph86.split:                                   ; preds = %.outer, %.lr.ph86.lr.ph
  %.pre.i129 = phi i64 [ %i.m, %.lr.ph86.lr.ph ], [ %.pre.i130, %.outer ]
  %.promoted100 = phi i64 [ %i.m, %.lr.ph86.lr.ph ], [ %.promoted100123, %.outer ] ; 2 uses
  %.235.ph105 = phi i64 [ %.134, %.lr.ph86.lr.ph ], [ %.538, %.outer ] ; 8 uses
  %.140.ph103 = phi ptr [ %.03979, %.lr.ph86.lr.ph ], [ %.342, %.outer ] ; 7 uses
  %.0.ph102 = phi i64 [ %2, %.lr.ph86.lr.ph ], [ %.2, %.outer ] ; 4 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !66 ; 2 uses
  %.not5398 = icmp eq ptr %.140.ph103, %.promoted
  br i1 %.not5398, label %.lr.ph99, label %.split.us

.split.us:                                        ; preds = %bb.v, %.lr.ph86.split
  %.pre.i = phi i64 [ %.pre.i129, %.lr.ph86.split ], [ %i.eh, %bb.v ] ; 2 uses
  %.promoted100121 = phi i64 [ %.promoted100, %.lr.ph86.split ], [ %i.eh, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.140.ph103, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !69   ; 2 uses
  %i.w = sub i64 %i.v, %.235.ph105                ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.ph102, i64 %i.w) ; 2 uses
  %.not15.i = icmp eq i64 %i.v, %.235.ph105
  br i1 %.not15.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us
  %i.x = load ptr, ptr %.140.ph103, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.235.ph105
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre.i126 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %.0917.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %storemerge16.i = phi i64 [ %.sroa.speculated, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.z = icmp eq i64 %.pre.i126, 0
  br i1 %i.z, label %bb.f, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.e
  %.pre22.i = load ptr, ptr %i.t, align 8, !tbaa !70
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !63
  %.not11.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not11.i, label %bb.g, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !66
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  store i64 %i.af, ptr %i.l, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge21.i
  %i.ag = phi ptr [ %i.ad, %bb.g ], [ %.pre22.i, %._crit_edge21.i ]
  %i.ah = phi i64 [ %i.af, %bb.g ], [ %.pre.i126, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.speculated.i
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !70
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !71
  %i.al = sub i64 %i.ak, %.sroa.speculated.i      ; 4 uses
  store i64 %i.al, ptr %i.l, align 8, !tbaa !71
  %i.am = load i64, ptr %i.b, align 8, !tbaa !72
  %i.an = add i64 %i.am, %.sroa.speculated.i
  store i64 %i.an, ptr %i.b, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.ap = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.e, !llvm.loop !136

_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.h, %.split.us
  %.pre.i127 = phi i64 [ %.pre.i, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.promoted100120 = phi i64 [ %.promoted100121, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.not55.not = icmp ugt i64 %.0.ph102, %i.w      ; 2 uses
  %spec.select.idx = select i1 %.not55.not, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.140.ph103, i64 %spec.select.idx
  %spec.select56 = select i1 %.not55.not, i64 0, i64 %.235.ph105
  br label %.outer

.lr.ph99:                                         ; preds = %.lr.ph86.split, %bb.v
  %i.aq = phi i64 [ %i.eh, %bb.v ], [ %.promoted100, %.lr.ph86.split ] ; 7 uses
  %i.ar = phi ptr [ %i.at, %bb.v ], [ %.promoted, %.lr.ph86.split ] ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.i, label %.split92.us

bb.i:                                             ; preds = %.lr.ph99
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !63
  %.not54 = icmp ult ptr %i.at, %i.au
  br i1 %.not54, label %bb.v, label %.thread

.split92.us:                                      ; preds = %.lr.ph99
  %spec.select57 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0.ph102) ; 15 uses
  %i.av = load ptr, ptr %.140.ph103, align 8, !tbaa !67 ; 3 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.235.ph105 ; 21 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !70  ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select57 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64               ; 5 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, 8
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split92.us
  %.not.i58 = icmp slt i64 %i.aq, 11
  br i1 %.not.i58, label %iter.check, label %.lr.ph.i59, !prof !22

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = add nuw i64 %.235.ph105, %i.aw
  %i.bg = sub i64 %i.bf, %i.bb
  %diff.check = icmp ugt i64 %i.bg, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check172 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check172, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 %n.vec
  %i.bi = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep173 = getelementptr i8, ptr %i.ay, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load, ptr %next.gep173, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread69, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %spec.select57, -4          ; 4 uses
  %i.bk = getelementptr i8, ptr %i.ax, i64 %n.vec176
  %i.bl = getelementptr i8, ptr %i.ay, i64 %n.vec176
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next181, %vec.epilog.vector.body ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.ax, i64 %index177
  %next.gep179 = getelementptr i8, ptr %i.ay, i64 %index177
  %wide.load180 = load <4 x i8>, ptr %next.gep178, align 1, !tbaa !7
  store <4 x i8> %wide.load180, ptr %next.gep179, align 1, !tbaa !7
  %index.next181 = add nuw i64 %index177, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n182 = icmp eq i64 %spec.select57, %n.vec176
  br i1 %cmp.n182, label %.thread69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.ax, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.05586.i = phi i64 [ %i.bo, %.lr.ph.i59 ], [ %i.bd, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bn, %.lr.ph.i59 ], [ %i.ay, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.ax, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.05586.i ; 3 uses
  %i.bo = shl nuw nsw i64 %.05586.i, 1
  %i.bp = icmp ult i64 %.05586.i, 4
  br i1 %i.bp, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bn, %i.az
  br i1 %.not67.i, label %bb.k, label %.thread69, !prof !22

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.br = load i8, ptr %.08.i.i, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.br, ptr %.057.i.i, align 1, !tbaa !7
  %exitcond.not.i.i = icmp eq ptr %i.bs, %i.az
  br i1 %exitcond.not.i.i, label %.thread69, label %.lr.ph.i.i, !llvm.loop !149

bb.k:                                             ; preds = %._crit_edge.i, %.split92.us
  %.157.i = phi ptr [ %i.bn, %._crit_edge.i ], [ %i.ay, %.split92.us ] ; 17 uses
  %.157.i224 = ptrtoint ptr %.157.i to i64        ; 2 uses
  %i.bt = add nsw i64 %i.aq, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.bt
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.ax, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bu, align 1
  store i64 %.val.i.i, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.az
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val4.i71.i = load i64, ptr %i.by, align 1
  store i64 %.val4.i71.i, ptr %i.bw, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.bz, align 1
  store i64 %.val.i72.i, ptr %i.ca, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.az
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.val4.i73.i = load i64, ptr %i.cd, align 1
  store i64 %.val4.i73.i, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.ce, align 1
  store i64 %.val.i74.i, ptr %i.cf, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.az
  br i1 %i.ch, label %bb.q, label %.thread69

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.val4.i75.i = load i64, ptr %i.ci, align 1
  store i64 %.val4.i75.i, ptr %i.cg, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.cj, align 1
  store i64 %.val.i76.i, ptr %i.ck, align 1
  br label %.thread69

bb.r:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  %i.cm = icmp ult ptr %.157.i, %i.cl
  br i1 %i.cm, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %4 = add i64 %i.aq, %i.bb
  %i.cn = add i64 %4, -16
  %5 = ptrtoint ptr %.157.i to i64                ; 2 uses
  %i.co = add i64 %5, 16
  %umax229 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.co)
  %6 = xor i64 %5, -1
  %i.cp = add i64 %umax229, %6                    ; 3 uses
  %i.cq = lshr i64 %i.cp, 4
  %min.iters.check230 = icmp ult i64 %i.cp, 144
  br i1 %min.iters.check230, label %.lr.ph90.i.preheader247, label %vector.memcheck223

.lr.ph90.i.preheader247:                          ; preds = %vector.memcheck223, %.lr.ph90.i.preheader
  br label %.lr.ph90.i

vector.memcheck223:                               ; preds = %.lr.ph90.i.preheader
  %scevgep = getelementptr i8, ptr %.157.i, i64 16
  %i.cr = xor i64 %.157.i224, -1
  %i.cs = add i64 %i.bb, -16
  %i.ct = add i64 %i.cs, %i.aq
  %i.cu = add i64 %.157.i224, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = add i64 %umax, %i.cr
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %scevgep225 = getelementptr i8, ptr %scevgep, i64 %i.cw
  %scevgep226 = getelementptr i8, ptr %i.av, i64 16
  %scevgep227 = getelementptr i8, ptr %scevgep226, i64 %.235.ph105
  %scevgep228 = getelementptr i8, ptr %scevgep227, i64 %i.cw
  %bound0 = icmp ult ptr %.157.i, %scevgep228
  %bound1 = icmp ult ptr %i.ax, %scevgep225
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader247, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck223
  %i.cx = and i64 %i.cp, -16
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.ax, i64 %i.cy
  %i.da = getelementptr i8, ptr %.157.i, i64 %i.cy
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph231
  %index235 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %i.db = shl i64 %index235, 4                    ; 2 uses
  %next.gep236.a = getelementptr i8, ptr %i.ax, i64 %i.db
  %next.gep237 = getelementptr i8, ptr %.157.i, i64 %i.db
  %wide.load238 = load <2 x i64>, ptr %next.gep236.a, align 1, !alias.scope !150
  store <2 x i64> %wide.load238, ptr %next.gep237, align 1, !alias.scope !153, !noalias !150
  %index.next239 = add nuw i64 %index235, 1
  %i.dc = icmp eq i64 %index235, %i.cq
  br i1 %i.dc, label %._crit_edge91.i, label %vector.body234, !llvm.loop !155

._crit_edge91.i:                                  ; preds = %vector.body234, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.df, %.lr.ph90.i ], [ %i.da, %vector.body234 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.ax, %bb.r ], [ %i.dg, %.lr.ph90.i ], [ %i.cz, %vector.body234 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.az
  br i1 %.not69.i, label %bb.s, label %.thread69

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader247, %.lr.ph90.i
  %.05388.i = phi ptr [ %i.dg, %.lr.ph90.i ], [ %i.ax, %.lr.ph90.i.preheader247 ] ; 3 uses
  %.287.i = phi ptr [ %i.df, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader247 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05388.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.05388.i, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.dd, align 1
  store i64 %.val.i78.i, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05388.i, i64 16 ; 2 uses
  %i.dh = icmp ult ptr %i.df, %i.cl
  br i1 %i.dh, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !156

bb.s:                                             ; preds = %._crit_edge91.i
  %i.di = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.di
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %.053.val.i = load i64, ptr %.053.lcssa.i, align 1
  store i64 %.053.val.i, ptr %.2.lcssa.i, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.dk, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 8 uses
  %.154.i = phi ptr [ %i.dj, %bb.t ], [ %.053.lcssa.i, %bb.s ] ; 6 uses
  %i.dl = icmp ult ptr %.3.i, %i.az
  br i1 %i.dl, label %iter.check206, label %.thread69

iter.check206:                                    ; preds = %bb.u
  %.154.i187 = ptrtoaddr ptr %.154.i to i64
  %.3.i186 = ptrtoaddr ptr %.3.i to i64
  %.3.i189 = ptrtoint ptr %.3.i to i64
  %i.dm = sub i64 %i.bb, %.3.i189
  %i.dn = add i64 %i.dm, %spec.select57           ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.dn, 4
  %i.do = sub i64 %.154.i187, %.3.i186
  %diff.check188 = icmp ugt i64 %i.do, -32
  %or.cond = select i1 %min.iters.check190, i1 true, i1 %diff.check188
  br i1 %or.cond, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check206
  %min.iters.check192 = icmp ult i64 %i.dn, 16
  br i1 %min.iters.check192, label %vec.epilog.ph210, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %n.mod.vf194 = and i64 %i.dn, 12
  %n.vec195 = and i64 %i.dn, -16                  ; 5 uses
  %i.dp = getelementptr i8, ptr %.154.i, i64 %n.vec195
  %i.dq = getelementptr i8, ptr %.3.i, i64 %n.vec195
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body196 ] ; 3 uses
  %next.gep198 = getelementptr i8, ptr %.154.i, i64 %index197
  %next.gep199 = getelementptr i8, ptr %.3.i, i64 %index197
  %wide.load200 = load <16 x i8>, ptr %next.gep198, align 1, !tbaa !7
  store <16 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !7
  %index.next201 = add nuw i64 %index197, 16      ; 2 uses
  %i.dr = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.dr, label %middle.block202, label %vector.body196, !llvm.loop !157

middle.block202:                                  ; preds = %vector.body196
  %cmp.n203 = icmp eq i64 %i.dn, %n.vec195
  br i1 %cmp.n203, label %.thread69, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block202
  %min.epilog.iters.check209 = icmp eq i64 %n.mod.vf194, 0
  br i1 %min.epilog.iters.check209, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph210, !prof !146

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check208
  %vec.epilog.resume.val204 = phi i64 [ %n.vec195, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec212 = and i64 %i.dn, -4                   ; 4 uses
  %i.ds = getelementptr i8, ptr %.154.i, i64 %n.vec212
  %i.dt = getelementptr i8, ptr %.3.i, i64 %n.vec212
  br label %vec.epilog.vector.body213

vec.epilog.vector.body213:                        ; preds = %vec.epilog.vector.body213, %vec.epilog.ph210
  %index214 = phi i64 [ %vec.epilog.resume.val204, %vec.epilog.ph210 ], [ %index.next218, %vec.epilog.vector.body213 ] ; 3 uses
  %next.gep215 = getelementptr i8, ptr %.154.i, i64 %index214
  %next.gep216 = getelementptr i8, ptr %.3.i, i64 %index214
  %wide.load217 = load <4 x i8>, ptr %next.gep215, align 1, !tbaa !7
  store <4 x i8> %wide.load217, ptr %next.gep216, align 1, !tbaa !7
  %index.next218 = add nuw i64 %index214, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.du, label %vec.epilog.middle.block219, label %vec.epilog.vector.body213, !llvm.loop !158

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body213
  %cmp.n220 = icmp eq i64 %i.dn, %n.vec212
  br i1 %cmp.n220, label %.thread69, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block219
  %.08.i80.i.ph = phi ptr [ %.154.i, %iter.check206 ], [ %i.dp, %vec.epilog.iter.check208 ], [ %i.ds, %vec.epilog.middle.block219 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check206 ], [ %i.dq, %vec.epilog.iter.check208 ], [ %i.dt, %vec.epilog.middle.block219 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dv, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dx, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.dw = load i8, ptr %.08.i80.i, align 1, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.057.i81.i, align 1, !tbaa !7
  %exitcond.not.i82.i = icmp eq ptr %i.dx, %i.az
  br i1 %exitcond.not.i82.i, label %.thread69, label %.lr.ph.i79.i, !llvm.loop !159

.thread69:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block202, %vec.epilog.middle.block219, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.dy = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %spec.select57
  store ptr %i.dz, ptr %i.t, align 8, !tbaa !70
  %i.ea = load i64, ptr %i.l, align 8, !tbaa !71
  %i.eb = sub i64 %i.ea, %spec.select57           ; 3 uses
  store i64 %i.eb, ptr %i.l, align 8, !tbaa !71
  %i.ec = add i64 %spec.select57, %.235.ph105
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !72
  %i.ee = add i64 %i.ed, %spec.select57
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !72
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.h, align 8, !tbaa !66
  %i.ef = load ptr, ptr %i.at, align 8, !tbaa !67
  store ptr %i.ef, ptr %i.t, align 8, !tbaa !70
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !69 ; 4 uses
  store i64 %i.eh, ptr %i.l, align 8, !tbaa !71
  %.not53 = icmp eq ptr %.140.ph103, %i.at
  br i1 %.not53, label %.lr.ph99, label %.split.us

.outer:                                           ; preds = %.thread69, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i130 = phi i64 [ %i.eb, %.thread69 ], [ %.pre.i127, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted100123 = phi i64 [ %i.eb, %.thread69 ], [ %.promoted100120, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread69 ], [ %.sroa.speculated, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.342 = phi ptr [ %.140.ph103, %.thread69 ], [ %spec.select, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.538 = phi i64 [ %i.ec, %.thread69 ], [ %spec.select56, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.2 = sub i64 %.0.ph102, %spec.select57.pn      ; 2 uses
  %.not52 = icmp eq i64 %.2, 0
  br i1 %.not52, label %.thread, label %.lr.ph86.split, !llvm.loop !160

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone returned captures(address, ret: address, provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #22 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.g
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !22

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.05586 = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05685, i64 %.05586 ; 3 uses
  %i.i = shl nuw nsw i64 %.05586, 1
  %i.j = icmp ult i64 %.05586, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.h, %2
  br i1 %.not67, label %bb.d, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult ptr %1, %2
  br i1 %i.k, label %iter.check165, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check165:                                    ; preds = %bb.c
  %i.l = sub i64 %i.a, %i.c                       ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.d, %i.c
  %diff.check146 = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check148, %diff.check146
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check165
  %min.iters.check150 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check150, label %vec.epilog.ph169, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.l, 12
  %n.vec153 = and i64 %i.l, -16                   ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec153
  %i.o = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body154 ] ; 3 uses
  %next.gep156.a = getelementptr i8, ptr %0, i64 %index155
  %next.gep157 = getelementptr i8, ptr %1, i64 %index155
  %wide.load158 = load <16 x i8>, ptr %next.gep156.a, align 1, !tbaa !7
  store <16 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !7
  %index.next159 = add nuw i64 %index155, 16      ; 2 uses
  %i.p = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.p, label %middle.block160, label %vector.body154, !llvm.loop !161

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.l, %n.vec153
  br i1 %cmp.n161, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block160
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check168, label %.lr.ph.i.preheader, label %vec.epilog.ph169, !prof !146

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check167
  %vec.epilog.resume.val162 = phi i64 [ %n.vec153, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec171 = and i64 %i.l, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec171
  %i.r = getelementptr i8, ptr %1, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph169 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174.a = getelementptr i8, ptr %0, i64 %index173
  %next.gep175 = getelementptr i8, ptr %1, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep174.a, align 1, !tbaa !7
  store <4 x i8> %wide.load176, ptr %next.gep175, align 1, !tbaa !7
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.s, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !162

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.l, %n.vec171
  br i1 %cmp.n179, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block178
  %.08.i.ph = phi ptr [ %0, %iter.check165 ], [ %i.n, %vec.epilog.iter.check167 ], [ %i.q, %vec.epilog.middle.block178 ]
  %.057.i.ph = phi ptr [ %1, %iter.check165 ], [ %i.o, %vec.epilog.iter.check167 ], [ %i.r, %vec.epilog.middle.block178 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.057.i, align 1, !tbaa !7
  %exitcond.not.i = icmp eq ptr %i.v, %2
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !163

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.h, %._crit_edge ], [ %1, %bb.a ] ; 17 uses
  %.157110 = ptrtoint ptr %.157 to i64            ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.w
  br i1 %.not68, label %bb.k, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.x, align 1
  store i64 %.val.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ab, align 1
  store i64 %.val4.i71, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ac, align 1
  store i64 %.val.i72, ptr %i.ad, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %2
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ag, align 1
  store i64 %.val4.i73, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ah, align 1
  store i64 %.val.i74, ptr %i.ai, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %bb.j, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.al, align 1
  store i64 %.val4.i75, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.am, align 1
  store i64 %.val.i76, ptr %i.an, align 1
  br label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.ap = icmp ult ptr %.157, %i.ao
  br i1 %i.ap, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %4 = ptrtoint ptr %3 to i64
  %i.aq = add i64 %4, -16
  %5 = ptrtoint ptr %.157 to i64                  ; 2 uses
  %i.ar = add i64 %5, 16
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = xor i64 %5, -1
  %i.at = add i64 %umax112, %i.as                 ; 3 uses
  %i.au = lshr i64 %i.at, 4
  %min.iters.check = icmp ult i64 %i.at, 336
  br i1 %min.iters.check, label %.lr.ph90.preheader184, label %vector.memcheck

.lr.ph90.preheader184:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.av = add i64 %i.b, -16
  %i.aw = add i64 %.157110, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = xor i64 %.157110, -1
  %i.ay = add i64 %umax, %i.ax
  %i.az = and i64 %i.ay, -16
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.157, i64 %i.ba
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.ba
  %bound0 = icmp ult ptr %.157, %scevgep111
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bb = and i64 %i.at, -16
  %i.bc = add i64 %i.bb, 16                       ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %.157, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bf
  %next.gep113 = getelementptr i8, ptr %.157, i64 %i.bf
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !164
  store <2 x i64> %wide.load, ptr %next.gep113, align 1, !alias.scope !167, !noalias !164
  %index.next = add nuw i64 %index, 1
  %i.bg = icmp eq i64 %index, %i.au
  br i1 %i.bg, label %._crit_edge91, label %vector.body, !llvm.loop !169

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bj, %.lr.ph90 ], [ %i.be, %vector.body ] ; 5 uses
  %.053.lcssa = phi ptr [ %0, %bb.k ], [ %i.bk, %.lr.ph90 ], [ %i.bd, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader184, %.lr.ph90
  %.05388 = phi ptr [ %i.bk, %.lr.ph90 ], [ %0, %.lr.ph90.preheader184 ] ; 3 uses
  %.287 = phi ptr [ %i.bj, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader184 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05388, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.05388, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bh, align 1
  store i64 %.val.i78, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05388, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bj, %i.ao
  br i1 %i.bl, label %.lr.ph90, label %._crit_edge91, !llvm.loop !170

bb.l:                                             ; preds = %._crit_edge91
  %i.bm = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bm
  br i1 %.not70, label %bb.n, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %.053.val = load i64, ptr %.053.lcssa, align 1
  store i64 %.053.val, ptr %.2.lcssa, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bo, %bb.m ], [ %.2.lcssa, %bb.l ] ; 8 uses
  %.154 = phi ptr [ %i.bn, %bb.m ], [ %.053.lcssa, %bb.l ] ; 6 uses
  %i.bp = icmp ult ptr %.3, %2
  br i1 %i.bp, label %iter.check, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.154117 = ptrtoaddr ptr %.154 to i64
  %.3116 = ptrtoaddr ptr %.3 to i64
  %.3118 = ptrtoint ptr %.3 to i64
  %i.bq = sub i64 %i.a, %.3118                    ; 7 uses
  %min.iters.check120.a = icmp ult i64 %i.bq, 4
  %i.br = sub i64 %.154117, %.3116
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond182 = select i1 %min.iters.check120.a, i1 true, i1 %diff.check
  br i1 %or.cond182, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf123 = and i64 %i.bq, 12
  %n.vec124 = and i64 %i.bq, -16                  ; 5 uses
  %i.bs = getelementptr i8, ptr %.154, i64 %n.vec124
  %i.bt = getelementptr i8, ptr %.3, i64 %n.vec124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body125 ] ; 3 uses
  %next.gep127.a = getelementptr i8, ptr %.154, i64 %index126
  %next.gep128 = getelementptr i8, ptr %.3, i64 %index126
  %wide.load129 = load <16 x i8>, ptr %next.gep127.a, align 1, !tbaa !7
  store <16 x i8> %wide.load129, ptr %next.gep128, align 1, !tbaa !7
  %index.next130 = add nuw i64 %index126, 16      ; 2 uses
  %i.bu = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.bu, label %middle.block131, label %vector.body125, !llvm.loop !171

middle.block131:                                  ; preds = %vector.body125
  %cmp.n132 = icmp eq i64 %i.bq, %n.vec124
  br i1 %cmp.n132, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf123, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.bq, -4                   ; 4 uses
  %i.bv = getelementptr i8, ptr %.154, i64 %n.vec136
  %i.bw = getelementptr i8, ptr %.3, i64 %n.vec136
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %next.gep138.a = getelementptr i8, ptr %.154, i64 %index137
  %next.gep139 = getelementptr i8, ptr %.3, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep138.a, align 1, !tbaa !7
  store <4 x i8> %wide.load140, ptr %next.gep139, align 1, !tbaa !7
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.bq, %n.vec136
  br i1 %cmp.n142, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.154, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.by, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.ca, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bz = load i8, ptr %.08.i80, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.057.i81, align 1, !tbaa !7
  %exitcond.not.i82 = icmp eq ptr %i.ca, %2
  br i1 %exitcond.not.i82, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !173

_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block131, %vec.epilog.middle.block, %middle.block160, %vec.epilog.middle.block178, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.n, label %bb.c, label %.thread193, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i125
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit
end_hunk_0
