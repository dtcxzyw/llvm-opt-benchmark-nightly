Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/restore?download=true
inline.NumInlined: 428
inline.NumDeleted: 195
begin_hunk_0_@_ZN7CaDiCaL8External15restore_clausesEv:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 8 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 6 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !10 ; 4 uses
  %.not205249 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not205249, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph257, %.loopexit217
  %.sroa.038.0255 = phi i64 [ 0, %.lr.ph257 ], [ %i.bf, %.loopexit217 ]
  %.sroa.11.0254 = phi i64 [ 0, %.lr.ph257 ], [ %.sroa.11.2, %.loopexit217 ] ; 5 uses
  %.sroa.16.0253 = phi i64 [ 0, %.lr.ph257 ], [ %.sroa.16.2, %.loopexit217 ] ; 5 uses
  %.sroa.0161.0251 = phi ptr [ %i.bc, %.lr.ph257 ], [ %.sroa.0161.3, %.loopexit217 ] ; 3 uses
  %.sroa.0154.0250 = phi ptr [ %i.bc, %.lr.ph257 ], [ %.sroa.0154.3, %.loopexit217 ] ; 5 uses
  %i.bf = add nuw nsw i64 %.sroa.038.0255, 1      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0161.0251, i64 4 ; 2 uses
  %i.bh = load i32, ptr %.sroa.0161.0251, align 4, !tbaa !177
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0154.0250, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.sroa.0154.0250, align 4, !tbaa !177
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0161.0251, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !177 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0154.0250, i64 8 ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !177
  %.not93224 = icmp eq i32 %i.bk, 0
  br i1 %.not93224, label %._crit_edge227, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !180
  %i.bn = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = shl nsw i64 %i.bq, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  %i.bs = phi ptr [ %i.bl, %.lr.ph ], [ %i.co, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread ] ; 3 uses
  %i.bt = phi i32 [ %i.bk, %.lr.ph ], [ %i.cn, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread ] ; 3 uses
  %i.bu = phi ptr [ %i.bj, %.lr.ph ], [ %i.cm, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread ] ; 3 uses
  %.068225 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread ] ; 2 uses
  %i.bv = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bw = shl nuw i32 %i.bv, 1
  %i.bx = add i32 %i.bw, -2                       ; 2 uses
  %i.by = icmp sgt i32 %i.bt, 0
  %.lobit.i.i = zext i1 %i.by to i32
  %i.bz = or disjoint i32 %i.bx, %.lobit.i.i
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !182
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nsw i64 %i.br, %i.cc
  %i.ce = icmp ugt i64 %i.cd, %i.ca
  br i1 %i.ce, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit: ; preds = %bb.l
  %i.cf = lshr i32 %i.bx, 6
  %.zext.i = zext nneg i32 %i.cf to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.zext.i
  %i.ch = and i64 %i.ca, 63
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !179
  %i.ck = and i64 %i.cj, %i.ci
  %.fr = freeze i64 %i.ck
  %.not211 = icmp eq i64 %.fr, 0
  %spec.select200 = select i1 %.not211, i32 %.068225, i32 %i.bt
  br label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread: ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit, %bb.l
  %i.cl = phi i32 [ %.068225, %bb.l ], [ %spec.select200, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.bu, align 4, !tbaa !177 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  store i32 %i.cn, ptr %i.bs, align 4, !tbaa !177
  %.not93 = icmp eq i32 %i.cn, 0
  br i1 %.not93, label %._crit_edge227.loopexit, label %bb.l, !llvm.loop !194

._crit_edge227.loopexit:                          ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  %i.cp = icmp ne i32 %i.cl, 0
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %bb.k
  %.sroa.0154.1.lcssa = phi ptr [ %i.bi, %bb.k ], [ %i.bs, %._crit_edge227.loopexit ] ; 4 uses
  %.sroa.0161.1.lcssa = phi ptr [ %i.bg, %bb.k ], [ %i.bu, %._crit_edge227.loopexit ] ; 8 uses
  %.068.lcssa = phi i1 [ false, %bb.k ], [ %i.cp, %._crit_edge227.loopexit ]
  %.lcssa219 = phi ptr [ %i.bj, %bb.k ], [ %i.cm, %._crit_edge227.loopexit ]
  %.lcssa218 = phi ptr [ %i.bl, %bb.k ], [ %i.co, %._crit_edge227.loopexit ]
  %.sroa.0154.1.lcssa343 = ptrtoaddr ptr %.sroa.0154.1.lcssa to i64
  %.sroa.0161.1.lcssa344 = ptrtoaddr ptr %.sroa.0161.1.lcssa to i64 ; 2 uses
  %i.cq = load i32, ptr %.lcssa219, align 4, !tbaa !177 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !177
  %i.cv = sext i32 %i.cu to i64
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0154.1.lcssa, i64 8
  store i32 %i.cq, ptr %.lcssa218, align 4, !tbaa !177
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 12
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !177
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0154.1.lcssa, i64 12
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !177
  %.ptr276 = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 16 ; 6 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !177
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0154.1.lcssa, i64 16 ; 4 uses
  store i32 %i.db, ptr %i.da, align 4, !tbaa !177
  %.not212233 = icmp eq ptr %.ptr276, %i.bb
  br i1 %.not212233, label %.critedge.thread, label %.lr.ph237

.critedge.thread:                                 ; preds = %._crit_edge227
  %.sroa.0138.0.lcssa.ptr322 = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 16
  br label %bb.s

.lr.ph237:                                        ; preds = %._crit_edge227, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %.066235 = phi i32 [ %.167, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ 0, %._crit_edge227 ] ; 3 uses
  %.sroa.0138.0234.idx = phi i64 [ %.sroa.0138.0234.add, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ 16, %._crit_edge227 ] ; 3 uses
  %.sroa.0138.0234.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 %.sroa.0138.0234.idx
  %i.dd = load i32, ptr %.sroa.0138.0234.ptr, align 4, !tbaa !177 ; 4 uses
  %.not94 = icmp eq i32 %i.dd, 0
  br i1 %.not94, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph237
  %.not98 = icmp eq i32 %.066235, 0
  br i1 %.not98, label %bb.n, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true) ; 2 uses
  %i.df = load i32, ptr %i.bd, align 8, !tbaa !207
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = zext nneg i32 %i.de to i64
  %i.di = load ptr, ptr %i.be, align 8, !tbaa !178
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !177 ; 4 uses
  %.not.i107 = icmp eq i32 %i.dk, 0
  br i1 %.not.i107, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = icmp slt i32 %i.dd, 0
  %i.dm = sub nsw i32 0, %i.dk
  %spec.select.i = select i1 %i.dl, i32 %i.dm, i32 %i.dk
  %i.dn = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 472
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !208
  %i.dr = zext nneg i32 %i.do to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !209 ; 2 uses
  %.not.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = sext i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 712
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !210
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.dr
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !212
  %.not9.i.i = icmp eq i32 %i.dy, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %i.du, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.p, %bb.q
  %.0.i.i = phi i32 [ 0, %bb.p ], [ %spec.select.i.i, %bb.q ] ; 2 uses
  %i.dz = icmp slt i32 %spec.select.i, 0
  %i.ea = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %i.dz, i32 %i.ea, i32 %.0.i.i
  %spec.select10.i.i.fr = freeze i32 %spec.select10.i.i
  %i.eb = icmp sgt i32 %spec.select10.i.i.fr, 0
  %spec.select201 = select i1 %i.eb, i32 %i.dd, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

_ZNK7CaDiCaL8External5fixedEi.exit.thread:        ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.o, %bb.n, %bb.m
  %.167 = phi i32 [ %.066235, %bb.m ], [ 0, %bb.o ], [ %spec.select201, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ 0, %bb.n ] ; 2 uses
  %.sroa.0138.0234.add = add nuw nsw i64 %.sroa.0138.0234.idx, 4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 %.sroa.0138.0234.add
  %.not212 = icmp eq ptr %.ptr, %i.bb
  br i1 %.not212, label %.critedge, label %.lr.ph237, !llvm.loop !195

.critedge:                                        ; preds = %.lr.ph237, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %.sroa.0138.0.lcssa.idx.ph = phi i64 [ %.sroa.0138.0234.idx, %.lr.ph237 ], [ %.sroa.0138.0234.add, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 3 uses
  %.066.lcssa.ph = phi i32 [ %.066235, %.lr.ph237 ], [ %.167, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ]
  %i.ec = icmp eq i32 %.066.lcssa.ph, 0
  %.sroa.0138.0.lcssa.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0161.1.lcssa, i64 %.sroa.0138.0.lcssa.idx.ph ; 2 uses
  br i1 %i.ec, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.ed = load ptr, ptr %0, align 8, !tbaa !48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3692
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !213
  %.not96 = icmp ne i32 %i.ef, 0
  br label %bb.s

bb.s:                                             ; preds = %.critedge.thread, %bb.r, %.critedge
  %.sroa.0138.0.lcssa.ptr324 = phi ptr [ %.sroa.0138.0.lcssa.ptr, %bb.r ], [ %.sroa.0138.0.lcssa.ptr, %.critedge ], [ %.sroa.0138.0.lcssa.ptr322, %.critedge.thread ] ; 7 uses
  %.sroa.0138.0.lcssa.idx323 = phi i64 [ %.sroa.0138.0.lcssa.idx.ph, %bb.r ], [ %.sroa.0138.0.lcssa.idx.ph, %.critedge ], [ 16, %.critedge.thread ]
  %i.eg = phi i1 [ %.not96, %bb.r ], [ false, %.critedge ], [ false, %.critedge.thread ] ; 2 uses
  %.sroa.0138.0.lcssa.ptr324345 = ptrtoaddr ptr %.sroa.0138.0.lcssa.ptr324 to i64
  %or.cond = select i1 %i.eg, i1 true, i1 %.068.lcssa
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load ptr, ptr %0, align 8, !tbaa !48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 3688
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !206
  %.not97 = icmp eq i32 %i.ej, 0
  br i1 %.not97, label %.preheader216, label %bb.u

.preheader216:                                    ; preds = %bb.t
  %.not213243 = icmp eq i64 %.sroa.0138.0.lcssa.idx323, 16
  br i1 %.not213243, label %.loopexit217, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader216
  %i.ek = add i64 %.sroa.0138.0.lcssa.ptr324345, -20
  %i.el = sub i64 %i.ek, %.sroa.0161.1.lcssa344   ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 28
  %i.eo = sub i64 %.sroa.0161.1.lcssa344, %.sroa.0154.1.lcssa343
  %diff.check = icmp ugt i64 %i.eo, -32
  %or.cond348 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond348, label %.lr.ph246.preheader351, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph246.preheader
  %n.vec = and i64 %i.en, 9223372036854775800     ; 3 uses
  %i.ep = shl i64 %n.vec, 2                       ; 2 uses
  %i.eq = getelementptr i8, ptr %.ptr276, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.dc, i64 %i.ep  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.ptr276, i64 %i.es ; 2 uses
  %next.gep345 = getelementptr i8, ptr %i.dc, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !177
  %wide.load346 = load <4 x i32>, ptr %i.et, align 4, !tbaa !177
  %i.eu = getelementptr i8, ptr %next.gep345, i64 16
  store <4 x i32> %wide.load, ptr %next.gep345, align 4, !tbaa !177
  store <4 x i32> %wide.load346, ptr %i.eu, align 4, !tbaa !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %.loopexit217, label %.lr.ph246.preheader351

.lr.ph246.preheader351:                           ; preds = %.lr.ph246.preheader, %middle.block
  %.sroa.0161.2245.ph = phi ptr [ %.ptr276, %.lr.ph246.preheader ], [ %i.eq, %middle.block ]
  %.sroa.0154.2244.ph = phi ptr [ %i.dc, %.lr.ph246.preheader ], [ %i.er, %middle.block ]
  br label %.lr.ph246

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.eg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ew = add nsw i64 %.sroa.11.0254, 1
  br label %.loopexit217

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr %.ptr276, ptr %1, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %.sroa.0138.0.lcssa.ptr324, ptr %2, align 8, !tbaa !217
  call void @_ZN7CaDiCaL8External14restore_clauseERKN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESA_m(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.ex = add nsw i64 %.sroa.16.0253, 1
  br label %.loopexit217

.lr.ph246:                                        ; preds = %.lr.ph246.preheader351, %.lr.ph246
  %.sroa.0161.2245 = phi ptr [ %i.ey, %.lr.ph246 ], [ %.sroa.0161.2245.ph, %.lr.ph246.preheader351 ] ; 2 uses
  %.sroa.0154.2244 = phi ptr [ %i.fa, %.lr.ph246 ], [ %.sroa.0154.2244.ph, %.lr.ph246.preheader351 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0161.2245, i64 4 ; 2 uses
  %i.ez = load i32, ptr %.sroa.0161.2245, align 4, !tbaa !177
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0154.2244, i64 4 ; 2 uses
  store i32 %i.ez, ptr %.sroa.0154.2244, align 4, !tbaa !177
  %.not213 = icmp eq ptr %i.ey, %.sroa.0138.0.lcssa.ptr324
  br i1 %.not213, label %.loopexit217, label %.lr.ph246, !llvm.loop !197

.loopexit217:                                     ; preds = %.lr.ph246, %middle.block, %bb.v, %bb.w, %.preheader216
  %.sroa.0154.3 = phi ptr [ %.sroa.0154.0250, %bb.v ], [ %i.dc, %.preheader216 ], [ %.sroa.0154.0250, %bb.w ], [ %i.er, %middle.block ], [ %i.fa, %.lr.ph246 ] ; 2 uses
  %.sroa.0161.3 = phi ptr [ %.sroa.0138.0.lcssa.ptr324, %bb.v ], [ %.ptr276, %.preheader216 ], [ %.sroa.0138.0.lcssa.ptr324, %bb.w ], [ %.sroa.0138.0.lcssa.ptr324, %middle.block ], [ %.sroa.0138.0.lcssa.ptr324, %.lr.ph246 ] ; 2 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.0253, %bb.v ], [ %.sroa.16.0253, %.preheader216 ], [ %i.ex, %bb.w ], [ %.sroa.16.0253, %middle.block ], [ %.sroa.16.0253, %.lr.ph246 ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %i.ew, %bb.v ], [ %.sroa.11.0254, %.preheader216 ], [ %.sroa.11.0254, %bb.w ], [ %.sroa.11.0254, %middle.block ], [ %.sroa.11.0254, %.lr.ph246 ] ; 2 uses
  %.not205 = icmp eq ptr %.sroa.0161.3, %i.bb
  br i1 %.not205, label %._crit_edge258.loopexit, label %bb.k, !llvm.loop !198

._crit_edge258.loopexit:                          ; preds = %.loopexit217
  %.pre286 = load ptr, ptr %i.az, align 8, !tbaa !10
  %.pre287 = load ptr, ptr %i.ba, align 8, !tbaa !175
  br label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge258.loopexit, %bb.j
  %i.fb = phi ptr [ %i.bb, %bb.j ], [ %.pre287, %._crit_edge258.loopexit ] ; 3 uses
  %i.fc = phi ptr [ %i.bc, %bb.j ], [ %.pre286, %._crit_edge258.loopexit ] ; 4 uses
  %.sroa.0154.0.lcssa = phi ptr [ %i.bb, %bb.j ], [ %.sroa.0154.3, %._crit_edge258.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.16.2, %._crit_edge258.loopexit ] ; 3 uses
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.11.2, %._crit_edge258.loopexit ] ; 3 uses
  %.sroa.038.0.lcssa = phi i64 [ 0, %bb.j ], [ %i.bf, %._crit_edge258.loopexit ] ; 8 uses
  %i.fd = ptrtoint ptr %.sroa.0154.0.lcssa to i64
  %i.fe = ptrtoint ptr %i.fc to i64               ; 4 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = ashr exact i64 %i.ff, 2                 ; 3 uses
  %i.fh = ptrtoint ptr %i.fb to i64
  %i.fi = sub i64 %i.fh, %i.fe
  %i.fj = ashr exact i64 %i.fi, 2                 ; 3 uses
  %i.fk = icmp ugt i64 %i.fg, %i.fj
  br i1 %i.fk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge258
  %i.fl = sub nuw nsw i64 %i.fg, %i.fj
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.fl)
  %.pre288 = load ptr, ptr %i.az, align 8, !tbaa !178 ; 2 uses
  %.pre289 = load ptr, ptr %i.ba, align 8, !tbaa !175
  %.pre291 = ptrtoint ptr %.pre288 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.y:                                             ; preds = %._crit_edge258
  %i.fm = icmp uge i64 %i.fg, %i.fj
  %.not.i.i108 = icmp eq ptr %i.fb, %.sroa.0154.0.lcssa
  %or.cond215 = or i1 %i.fm, %.not.i.i108
  br i1 %or.cond215, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff ; 2 uses
  store ptr %i.fn, ptr %i.ba, align 8, !tbaa !175
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.x, %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre291, %bb.x ], [ %i.fe, %bb.y ], [ %i.fe, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.fo = phi ptr [ %.pre289, %bb.x ], [ %i.fb, %bb.y ], [ %i.fn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.fp = phi ptr [ %.pre288, %bb.x ], [ %i.fc, %bb.y ], [ %i.fc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !176
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %.pre-phi
  %i.fu = ptrtoint ptr %i.fo to i64
  %i.fv = sub i64 %i.fu, %.pre-phi                ; 4 uses
  %i.fw = icmp ugt i64 %i.ft, %i.fv
  br i1 %i.fw, label %bb.z, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp ugt i64 %i.fv, 9223372036854775804
  br i1 %i.fx, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !218

.noexc.i.i.i:                                     ; preds = %bb.aa
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #10
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.fy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #11
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !10 ; 2 uses
  %.pre6.i = load ptr, ptr %i.ba, align 8, !tbaa !10
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.z
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.z ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.z ]
  %i.fz = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.fp, %bb.z ] ; 4 uses
  %i.ga = phi ptr [ %i.fy, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.z ] ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fv ; 2 uses
  %i.gc = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.gd = icmp sgt i64 %i.gc, 4
  br i1 %i.gd, label %bb.ac, label %bb.ad, !prof !183

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ga, ptr align 4 %i.fz, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ge = icmp eq i64 %i.gc, 4
  br i1 %i.ge, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i:       ; preds = %bb.ad
  %i.gf = load i32, ptr %i.fz, align 4, !tbaa !177
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !177
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store ptr %i.ga, ptr %i.az, align 8, !tbaa !178
  store ptr %i.gg, ptr %i.ba, align 8, !tbaa !175
  store ptr %i.gb, ptr %i.fq, align 8, !tbaa !176
  br label %bb.ae

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.ad, %bb.ac
  %i.gh = getelementptr inbounds i8, ptr %i.ga, i64 %i.gc
  store ptr %i.ga, ptr %i.az, align 8, !tbaa !178
  store ptr %i.gh, ptr %i.ba, align 8, !tbaa !175
  store ptr %i.gb, ptr %i.fq, align 8, !tbaa !176
  %.not.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.fz) #12
  br label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %bb.ae
  %.not83 = icmp eq i64 %.sroa.11.0.lcssa, 0
  %i.gi = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %.not84 = icmp eq ptr %i.gi, null               ; 2 uses
  br i1 %.not83, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit
  br i1 %.not84, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 5376
end_hunk_0
