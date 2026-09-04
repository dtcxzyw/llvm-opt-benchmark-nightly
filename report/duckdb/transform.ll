Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/transform?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a

vector.body.1:                                    ; preds = %vector.ph
  %i.ao = getelementptr i8, ptr %i.q, i64 33
  %i.ap = getelementptr i8, ptr %i.q, i64 49
  %wide.load.1 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !7
  %wide.load144.1 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %wide.load.1, ptr %i.aq, align 1, !tbaa !7
  store <16 x i8> %wide.load144.1, ptr %i.ar, align 1, !tbaa !7
  %i.as = icmp eq i64 %n.vec, 64
  br i1 %i.as, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.at = getelementptr i8, ptr %i.q, i64 65
  %i.au = getelementptr i8, ptr %i.q, i64 81
  %wide.load.2 = load <16 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load144.2 = load <16 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %wide.load.2, ptr %i.av, align 1, !tbaa !7
  store <16 x i8> %wide.load144.2, ptr %i.aw, align 1, !tbaa !7
  %i.ax = icmp eq i64 %n.vec, 96
  br i1 %i.ax, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ay = getelementptr i8, ptr %i.q, i64 97
  %i.az = getelementptr i8, ptr %i.q, i64 113
  %wide.load.3 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7
  %wide.load144.3 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %wide.load.3, ptr %i.ba, align 1, !tbaa !7
  store <16 x i8> %wide.load144.3, ptr %i.bb, align 1, !tbaa !7
  %i.bc = icmp eq i64 %n.vec, 128
  br i1 %i.bc, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bd = getelementptr i8, ptr %i.q, i64 129
  %i.be = getelementptr i8, ptr %i.q, i64 145
  %wide.load.4 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !7
  %wide.load144.4 = load <16 x i8>, ptr %i.be, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %wide.load.4, ptr %i.bf, align 1, !tbaa !7
  store <16 x i8> %wide.load144.4, ptr %i.bg, align 1, !tbaa !7
  %i.bh = icmp eq i64 %n.vec, 160
  br i1 %i.bh, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bi = getelementptr i8, ptr %i.q, i64 161
  %i.bj = getelementptr i8, ptr %i.q, i64 177
  %wide.load.5 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !7
  %wide.load144.5 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %wide.load.5, ptr %i.bk, align 1, !tbaa !7
  store <16 x i8> %wide.load144.5, ptr %i.bl, align 1, !tbaa !7
  %i.bm = icmp eq i64 %n.vec, 192
  br i1 %i.bm, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bn = getelementptr i8, ptr %i.q, i64 193
  %i.bo = getelementptr i8, ptr %i.q, i64 209
  %wide.load.6 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !7
  %wide.load144.6 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.bp, align 1, !tbaa !7
  store <16 x i8> %wide.load144.6, ptr %i.bq, align 1, !tbaa !7
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %i.ac, 252                  ; 6 uses
  %i.br = getelementptr i8, ptr %i.q, i64 %n.vec146
  %i.bs = trunc nuw nsw i64 %n.vec146 to i32
  %i.bt = sub nsw i32 %i.ab, %i.bs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 3 uses
  %next.gep148 = getelementptr i8, ptr %i.q, i64 %index147
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep148, i64 1
  %wide.load149 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %index147
  store <4 x i8> %wide.load149, ptr %i.bv, align 1, !tbaa !7
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n151 = icmp eq i64 %n.vec146, %i.ac
  br i1 %cmp.n151, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ] ; 2 uses
  %.pn9299.ph = phi ptr [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %.08798.ph = phi i32 [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 4 uses
  %i.bx = add nsw i32 %.08798.ph, -1
  %xtraiter = and i32 %.08798.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.pn9299.prol = phi ptr [ %.085.prol, %.lr.ph.prol ], [ %.pn9299.ph, %.lr.ph.preheader ]
  %.08798.prol = phi i32 [ %i.by, %.lr.ph.prol ], [ %.08798.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.085.prol = getelementptr inbounds nuw i8, ptr %.pn9299.prol, i64 1 ; 3 uses
  %i.by = add nsw i32 %.08798.prol, -1            ; 2 uses
  %i.bz = load i8, ptr %.085.prol, align 1, !tbaa !7
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !7
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa222.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.pn9299.unr = phi ptr [ %.pn9299.ph, %.lr.ph.preheader ], [ %.085.prol, %.lr.ph.prol ]
  %.08798.unr = phi i32 [ %.08798.ph, %.lr.ph.preheader ], [ %i.by, %.lr.ph.prol ]
  %i.cb = icmp ult i32 %i.bx, 3
  br i1 %i.cb, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.pn9299 = phi ptr [ %.085.3, %.lr.ph ], [ %.pn9299.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.08798 = phi i32 [ %i.ck, %.lr.ph ], [ %.08798.unr, %.lr.ph.prol.loopexit ]
  %.085 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 1
  %i.cc = load i8, ptr %.085, align 1, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !7
  %.085.1 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 2
  %i.ce = load i8, ptr %.085.1, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !7
  %.085.2 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 3
  %i.ch = load i8, ptr %.085.2, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !7
  %.085.3 = getelementptr inbounds nuw i8, ptr %.pn9299, i64 4 ; 2 uses
  %i.ck = add nsw i32 %.08798, -4                 ; 2 uses
  %i.cl = load i8, ptr %.085.3, align 1, !tbaa !7
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !7
  %.not.3 = icmp eq i32 %i.ck, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec146, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next.lcssa222.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.co = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.081.lcssa = phi i32 [ 0, %bb.a ], [ %i.co, %._crit_edge.loopexit ] ; 2 uses
  %i.cp = zext i8 %i.s to i32                     ; 2 uses
  %i.cq = icmp ult i8 %i.s, 10
  br i1 %i.cq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cr = sub nsw i32 %2, %i.cp
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.cs = add i8 %i.s, -12
  %or.cond = icmp ult i8 %i.cs, 9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ct = add nsw i32 %i.cp, -11                  ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cw = sub nsw i32 %2, %i.ct
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.080 = phi i32 [ %i.cr, %bb.b ], [ %i.cw, %bb.d ], [ %2, %bb.c ] ; 11 uses
  %.078 = phi ptr [ %1, %bb.b ], [ %i.cv, %bb.d ], [ %1, %bb.c ] ; 8 uses
  %.078156 = ptrtoaddr ptr %.078 to i64
  %i.cx = icmp sgt i32 %.080, 0                   ; 3 uses
  br i1 %i.cx, label %iter.check171, label %._crit_edge105

iter.check171:                                    ; preds = %bb.e
  %i.cy = zext i32 %.081.lcssa to i64             ; 7 uses
  %wide.trip.count = zext nneg i32 %.080 to i64   ; 8 uses
  %min.iters.check158 = icmp ult i32 %.080, 8
  br i1 %min.iters.check158, label %.lr.ph104.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %iter.check171
  %i.cz = add i64 %i.a, %i.cy
  %i.da = sub i64 %.078156, %i.cz
  %diff.check157 = icmp ugt i64 %i.da, -32
  br i1 %diff.check157, label %.lr.ph104.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck155
  %min.iters.check160 = icmp ult i32 %.080, 32
  br i1 %min.iters.check160, label %vec.epilog.ph175, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.db = and i64 %wide.trip.count, 24
  %n.vec162 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.dc = add nuw nsw i64 %n.vec162, %i.cy        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.cy
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.078, i64 %index164 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load165 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !7
  %wide.load166 = load <16 x i8>, ptr %i.de, align 1, !tbaa !7
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index164 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load165, ptr %gep, align 1, !tbaa !7
  store <16 x i8> %wide.load166, ptr %i.df, align 1, !tbaa !7
  %index.next167 = add nuw i64 %index164, 32      ; 2 uses
  %i.dg = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.dg, label %middle.block168, label %vector.body163, !llvm.loop !11

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count
  br i1 %cmp.n169, label %._crit_edge105.loopexit, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block168
  %min.epilog.iters.check174 = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check174, label %.lr.ph104.preheader, label %vec.epilog.ph175, !prof !34

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check173
  %vec.epilog.resume.val170 = phi i64 [ %n.vec162, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec176 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.dh = add nuw nsw i64 %n.vec176, %i.cy        ; 2 uses
  %invariant.gep230 = getelementptr i8, ptr %0, i64 %i.cy
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph175
  %index178 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph175 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.078, i64 %index178
  %wide.load179 = load <8 x i8>, ptr %i.di, align 1, !tbaa !7
  %gep231 = getelementptr i8, ptr %invariant.gep230, i64 %index178
  store <8 x i8> %wide.load179, ptr %gep231, align 1, !tbaa !7
  %index.next180 = add nuw i64 %index178, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next180, %n.vec176
  br i1 %i.dj, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !12

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %n.vec176, %wide.trip.count
  br i1 %cmp.n182, label %._crit_edge105.loopexit, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %vector.memcheck155, %iter.check171, %vec.epilog.iter.check173, %vec.epilog.middle.block181
  %indvars.iv128.ph = phi i64 [ 0, %iter.check171 ], [ 0, %vector.memcheck155 ], [ %n.vec162, %vec.epilog.iter.check173 ], [ %n.vec176, %vec.epilog.middle.block181 ] ; 3 uses
  %indvars.iv126.ph = phi i64 [ %i.cy, %iter.check171 ], [ %i.cy, %vector.memcheck155 ], [ %i.dc, %vec.epilog.iter.check173 ], [ %i.dh, %vec.epilog.middle.block181 ] ; 2 uses
  %xtraiter223 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv128.prol = phi i64 [ %indvars.iv.next129.prol, %.lr.ph104.prol ], [ %indvars.iv128.ph, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv126.prol = phi i64 [ %indvars.iv.next127.prol, %.lr.ph104.prol ], [ %indvars.iv126.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %indvars.iv.next129.prol = add nuw nsw i64 %indvars.iv128.prol, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128.prol
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !7
  %indvars.iv.next127.prol = add nuw nsw i64 %indvars.iv126.prol, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126.prol
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !7
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !13

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %indvars.iv.next127.lcssa221.unr = phi i64 [ poison, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %indvars.iv128.unr = phi i64 [ %indvars.iv128.ph, %.lr.ph104.preheader ], [ %indvars.iv.next129.prol, %.lr.ph104.prol ]
  %indvars.iv126.unr = phi i64 [ %indvars.iv126.ph, %.lr.ph104.preheader ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
  %i.dn = sub nsw i64 %indvars.iv128.ph, %wide.trip.count
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge105.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.3, %.lr.ph104 ], [ %indvars.iv128.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.3, %.lr.ph104 ], [ %indvars.iv126.unr, %.lr.ph104.prol.loopexit ] ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !7
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %indvars.iv.next127.3 = add nuw nsw i64 %indvars.iv126, 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !7
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next129.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge105.loopexit, label %.lr.ph104, !llvm.loop !14

._crit_edge105.loopexit:                          ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %vec.epilog.middle.block181, %middle.block168
  %indvars.iv.next127.lcssa = phi i64 [ %i.dh, %vec.epilog.middle.block181 ], [ %i.dc, %middle.block168 ], [ %indvars.iv.next127.lcssa221.unr, %.lr.ph104.prol.loopexit ], [ %indvars.iv.next127.3, %.lr.ph104 ]
  %i.eh = trunc nuw i64 %indvars.iv.next127.lcssa to i32
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.e
  %.182.lcssa = phi i32 [ %.081.lcssa, %bb.e ], [ %i.eh, %._crit_edge105.loopexit ] ; 6 uses
  switch i8 %i.s, label %_ZL11ToUpperCasePh.exit [
    i8 10, label %bb.f
    i8 11, label %bb.l
    i8 21, label %bb.r
    i8 22, label %bb.s
  ]

bb.f:                                             ; preds = %._crit_edge105
  %i.ei = sub nsw i32 %.182.lcssa, %.080
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %0, i64 %i.ej ; 4 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !7   ; 4 uses
  %i.em = icmp ult i8 %i.el, -64
  br i1 %i.em, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.en = add i8 %i.el, -97
  %or.cond.i = icmp ult i8 %i.en, 26
  br i1 %or.cond.i, label %bb.h, label %_ZL11ToUpperCasePh.exit

bb.h:                                             ; preds = %bb.g
  %i.eo = and i8 %i.el, 95
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit

bb.i:                                             ; preds = %bb.f
  %i.ep = icmp samesign ult i8 %i.el, -32
  br i1 %i.ep, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = xor i8 %i.er, 32
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit

bb.k:                                             ; preds = %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7
  %i.ev = xor i8 %i.eu, 5
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit

bb.l:                                             ; preds = %._crit_edge105
  br i1 %i.cx, label %.lr.ph114.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph114.preheader:                              ; preds = %bb.l
  %i.ew = sub nsw i32 %.182.lcssa, %.080
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %0, i64 %i.ex
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %_ZL11ToUpperCasePh.exit95
  %.1112 = phi i32 [ %i.fm, %_ZL11ToUpperCasePh.exit95 ], [ %.080, %.lr.ph114.preheader ]
  %.084111 = phi ptr [ %i.fl, %_ZL11ToUpperCasePh.exit95 ], [ %i.ey, %.lr.ph114.preheader ] ; 5 uses
  %i.ez = load i8, ptr %.084111, align 1, !tbaa !7 ; 4 uses
  %i.fa = icmp ult i8 %i.ez, -64
  br i1 %i.fa, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph114
  %i.fb = add i8 %i.ez, -97
  %or.cond.i94 = icmp ult i8 %i.fb, 26
  br i1 %or.cond.i94, label %bb.n, label %_ZL11ToUpperCasePh.exit95

bb.n:                                             ; preds = %bb.m
  %i.fc = and i8 %i.ez, 95
  store i8 %i.fc, ptr %.084111, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit95

bb.o:                                             ; preds = %.lr.ph114
  %i.fd = icmp samesign ult i8 %i.ez, -32
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %.084111, i64 1 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !7
  %i.fg = xor i8 %i.ff, 32
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit95

bb.q:                                             ; preds = %bb.o
  %i.fh = getelementptr inbounds nuw i8, ptr %.084111, i64 2 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !7
  %i.fj = xor i8 %i.fi, 5
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !7
  br label %_ZL11ToUpperCasePh.exit95

_ZL11ToUpperCasePh.exit95:                        ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i93 = phi i32 [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.fk = zext nneg i32 %.0.i93 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.084111, i64 %i.fk
  %i.fm = sub nsw i32 %.1112, %.0.i93             ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph114, label %_ZL11ToUpperCasePh.exit, !llvm.loop !15

bb.r:                                             ; preds = %._crit_edge105
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !35
  %i.fq = shl nsw i32 %4, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 1
  %i.fu = sub nsw i32 %.182.lcssa, %.080
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %0, i64 %i.fv
  %i.fx = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %i.fw, i32 noundef %.080, i16 noundef zeroext %i.ft) ; 0 uses
  br label %_ZL11ToUpperCasePh.exit

bb.s:                                             ; preds = %._crit_edge105
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35
  %i.ga = shl nsw i32 %4, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 1
  br i1 %i.cx, label %.lr.ph110.preheader, label %_ZL11ToUpperCasePh.exit

.lr.ph110.preheader:                              ; preds = %bb.s
  %i.ge = sub nsw i32 %.182.lcssa, %.080
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %0, i64 %i.gf
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %.079108 = phi ptr [ %i.gj, %.lr.ph110 ], [ %i.gg, %.lr.ph110.preheader ] ; 2 uses
  %.2107 = phi i32 [ %i.gk, %.lr.ph110 ], [ %.080, %.lr.ph110.preheader ] ; 2 uses
  %i.gh = tail call fastcc noundef i32 @_ZL5ShiftPhit(ptr noundef %.079108, i32 noundef %.2107, i16 noundef zeroext %i.gd) ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %.079108, i64 %i.gi
  %i.gk = sub nsw i32 %.2107, %i.gh               ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph110, label %_ZL11ToUpperCasePh.exit, !llvm.loop !16

_ZL11ToUpperCasePh.exit:                          ; preds = %.lr.ph110, %_ZL11ToUpperCasePh.exit95, %bb.s, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %._crit_edge105, %bb.r
  %i.gm = load i8, ptr %i.z, align 1, !tbaa !7    ; 5 uses
  %.not91115 = icmp eq i8 %i.gm, 0
  br i1 %.not91115, label %._crit_edge120, label %iter.check203

iter.check203:                                    ; preds = %_ZL11ToUpperCasePh.exit
  %i.gn = zext i8 %i.gm to i32                    ; 4 uses
  %i.go = zext i32 %.182.lcssa to i64             ; 13 uses
  %i.gp = zext i8 %i.gm to i64                    ; 5 uses
  %min.iters.check187 = icmp ult i8 %i.gm, 8
  br i1 %min.iters.check187, label %.lr.ph119.preheader, label %vector.memcheck185

vector.memcheck185:                               ; preds = %iter.check203
  %i.gq = add i64 %i.a, %i.go
  %i.gr = sub i64 %i.d, %i.gq
  %i.gs = add i64 %i.gr, %i.y
  %i.gt = add i64 %i.gs, 32
  %diff.check186 = icmp ult i64 %i.gt, 31
  br i1 %diff.check186, label %.lr.ph119.preheader, label %vector.main.loop.iter.check188

vector.main.loop.iter.check188:                   ; preds = %vector.memcheck185
  %min.iters.check189 = icmp ult i8 %i.gm, 32
  br i1 %min.iters.check189, label %vec.epilog.ph207, label %vector.ph190

vector.ph190:                                     ; preds = %vector.main.loop.iter.check188
  %i.gu = and i64 %i.gp, 24
  %n.vec191 = and i64 %i.gp, 224                  ; 11 uses
  %i.gv = add nuw nsw i64 %n.vec191, %i.go        ; 2 uses
  %i.gw = trunc nuw nsw i64 %n.vec191 to i32
  %i.gx = sub nsw i32 %i.gn, %i.gw
  %i.gy = getelementptr i8, ptr %i.z, i64 %n.vec191
  %i.gz = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %wide.load195 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !7
  %wide.load196 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !7
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.go ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <16 x i8> %wide.load195, ptr %i.hb, align 1, !tbaa !7
  store <16 x i8> %wide.load196, ptr %i.hc, align 1, !tbaa !7
  %i.hd = icmp eq i64 %n.vec191, 32
  br i1 %i.hd, label %middle.block198, label %vector.body192.1

vector.body192.1:                                 ; preds = %vector.ph190
  %i.he = getelementptr i8, ptr %i.z, i64 33
  %i.hf = getelementptr i8, ptr %i.z, i64 49
  %wide.load195.1 = load <16 x i8>, ptr %i.he, align 1, !tbaa !7
  %wide.load196.1 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !7
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.go ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <16 x i8> %wide.load195.1, ptr %i.hh, align 1, !tbaa !7
  store <16 x i8> %wide.load196.1, ptr %i.hi, align 1, !tbaa !7
  %i.hj = icmp eq i64 %n.vec191, 64
  br i1 %i.hj, label %middle.block198, label %vector.body192.2

vector.body192.2:                                 ; preds = %vector.body192.1
  %i.hk = getelementptr i8, ptr %i.z, i64 65
  %i.hl = getelementptr i8, ptr %i.z, i64 81
  %wide.load195.2 = load <16 x i8>, ptr %i.hk, align 1, !tbaa !7
  %wide.load196.2 = load <16 x i8>, ptr %i.hl, align 1, !tbaa !7
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.go ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <16 x i8> %wide.load195.2, ptr %i.hn, align 1, !tbaa !7
  store <16 x i8> %wide.load196.2, ptr %i.ho, align 1, !tbaa !7
  %i.hp = icmp eq i64 %n.vec191, 96
  br i1 %i.hp, label %middle.block198, label %vector.body192.3

vector.body192.3:                                 ; preds = %vector.body192.2
  %i.hq = getelementptr i8, ptr %i.z, i64 97
  %i.hr = getelementptr i8, ptr %i.z, i64 113
  %wide.load195.3 = load <16 x i8>, ptr %i.hq, align 1, !tbaa !7
  %wide.load196.3 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !7
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.go ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <16 x i8> %wide.load195.3, ptr %i.ht, align 1, !tbaa !7
  store <16 x i8> %wide.load196.3, ptr %i.hu, align 1, !tbaa !7
  %i.hv = icmp eq i64 %n.vec191, 128
  br i1 %i.hv, label %middle.block198, label %vector.body192.4

vector.body192.4:                                 ; preds = %vector.body192.3
  %i.hw = getelementptr i8, ptr %i.z, i64 129
  %i.hx = getelementptr i8, ptr %i.z, i64 145
  %wide.load195.4 = load <16 x i8>, ptr %i.hw, align 1, !tbaa !7
  %wide.load196.4 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.go ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <16 x i8> %wide.load195.4, ptr %i.hz, align 1, !tbaa !7
  store <16 x i8> %wide.load196.4, ptr %i.ia, align 1, !tbaa !7
  %i.ib = icmp eq i64 %n.vec191, 160
  br i1 %i.ib, label %middle.block198, label %vector.body192.5

vector.body192.5:                                 ; preds = %vector.body192.4
  %i.ic = getelementptr i8, ptr %i.z, i64 161
  %i.id = getelementptr i8, ptr %i.z, i64 177
  %wide.load195.5 = load <16 x i8>, ptr %i.ic, align 1, !tbaa !7
  %wide.load196.5 = load <16 x i8>, ptr %i.id, align 1, !tbaa !7
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.go ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <16 x i8> %wide.load195.5, ptr %i.if, align 1, !tbaa !7
  store <16 x i8> %wide.load196.5, ptr %i.ig, align 1, !tbaa !7
  %i.ih = icmp eq i64 %n.vec191, 192
  br i1 %i.ih, label %middle.block198, label %vector.body192.6

vector.body192.6:                                 ; preds = %vector.body192.5
  %i.ii = getelementptr i8, ptr %i.z, i64 193
  %i.ij = getelementptr i8, ptr %i.z, i64 209
  %wide.load195.6 = load <16 x i8>, ptr %i.ii, align 1, !tbaa !7
  %wide.load196.6 = load <16 x i8>, ptr %i.ij, align 1, !tbaa !7
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.go ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <16 x i8> %wide.load195.6, ptr %i.il, align 1, !tbaa !7
  store <16 x i8> %wide.load196.6, ptr %i.im, align 1, !tbaa !7
  br label %middle.block198

middle.block198:                                  ; preds = %vector.body192.6, %vector.body192.5, %vector.body192.4, %vector.body192.3, %vector.body192.2, %vector.body192.1, %vector.ph190
  %cmp.n199 = icmp eq i64 %n.vec191, %i.gp
  br i1 %cmp.n199, label %._crit_edge120.loopexit, label %vec.epilog.iter.check205

vec.epilog.iter.check205:                         ; preds = %middle.block198
  %min.epilog.iters.check206 = icmp eq i64 %i.gu, 0
  br i1 %min.epilog.iters.check206, label %.lr.ph119.preheader, label %vec.epilog.ph207, !prof !34

vec.epilog.ph207:                                 ; preds = %vector.main.loop.iter.check188, %vec.epilog.iter.check205
  %vec.epilog.resume.val200 = phi i64 [ %n.vec191, %vec.epilog.iter.check205 ], [ 0, %vector.main.loop.iter.check188 ]
  %n.vec208 = and i64 %i.gp, 248                  ; 5 uses
  %i.in = add nuw nsw i64 %n.vec208, %i.go        ; 2 uses
  %i.io = trunc nuw nsw i64 %n.vec208 to i32
  %i.ip = sub nsw i32 %i.gn, %i.io
  %i.iq = getelementptr i8, ptr %i.z, i64 %n.vec208
  %invariant.gep232 = getelementptr i8, ptr %0, i64 %i.go
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph207
  %index210 = phi i64 [ %vec.epilog.resume.val200, %vec.epilog.ph207 ], [ %index.next213, %vec.epilog.vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %i.z, i64 %index210
  %i.ir = getelementptr inbounds nuw i8, ptr %next.gep211, i64 1
  %wide.load212 = load <8 x i8>, ptr %i.ir, align 1, !tbaa !7
  %gep233 = getelementptr i8, ptr %invariant.gep232, i64 %index210
  store <8 x i8> %wide.load212, ptr %gep233, align 1, !tbaa !7
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.is, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !17

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %i.gp
  br i1 %cmp.n215, label %._crit_edge120.loopexit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %vector.memcheck185, %iter.check203, %vec.epilog.iter.check205, %vec.epilog.middle.block214
  %indvars.iv134.ph = phi i64 [ %i.go, %iter.check203 ], [ %i.go, %vector.memcheck185 ], [ %i.gv, %vec.epilog.iter.check205 ], [ %i.in, %vec.epilog.middle.block214 ] ; 2 uses
  %.0118.ph = phi i32 [ %i.gn, %iter.check203 ], [ %i.gn, %vector.memcheck185 ], [ %i.gx, %vec.epilog.iter.check205 ], [ %i.ip, %vec.epilog.middle.block214 ] ; 4 uses
  %.pn116.ph = phi ptr [ %i.z, %iter.check203 ], [ %i.z, %vector.memcheck185 ], [ %i.gy, %vec.epilog.iter.check205 ], [ %i.iq, %vec.epilog.middle.block214 ] ; 2 uses
  %i.it = add nsw i32 %.0118.ph, -1
  %xtraiter226 = and i32 %.0118.ph, 3             ; 2 uses
  %lcmp.mod227.not = icmp eq i32 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader, %.lr.ph119.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph119.prol ], [ %indvars.iv134.ph, %.lr.ph119.preheader ] ; 2 uses
  %.0118.prol = phi i32 [ %i.iu, %.lr.ph119.prol ], [ %.0118.ph, %.lr.ph119.preheader ]
  %.pn116.prol = phi ptr [ %.088.prol, %.lr.ph119.prol ], [ %.pn116.ph, %.lr.ph119.preheader ]
  %prol.iter228 = phi i32 [ %prol.iter228.next, %.lr.ph119.prol ], [ 0, %.lr.ph119.preheader ]
  %.088.prol = getelementptr inbounds nuw i8, ptr %.pn116.prol, i64 1 ; 3 uses
  %i.iu = add nsw i32 %.0118.prol, -1             ; 2 uses
  %i.iv = load i8, ptr %.088.prol, align 1, !tbaa !7
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134.prol
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !7
  %prol.iter228.next = add i32 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i32 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !18

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader
  %indvars.iv.next135.lcssa219.unr = phi i64 [ poison, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph119.preheader ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
  %.0118.unr = phi i32 [ %.0118.ph, %.lr.ph119.preheader ], [ %i.iu, %.lr.ph119.prol ]
  %.pn116.unr = phi ptr [ %.pn116.ph, %.lr.ph119.preheader ], [ %.088.prol, %.lr.ph119.prol ]
  %i.ix = icmp ult i32 %i.it, 3
  br i1 %i.ix, label %._crit_edge120.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph119 ], [ %indvars.iv134.unr, %.lr.ph119.prol.loopexit ] ; 5 uses
  %.0118 = phi i32 [ %i.jg, %.lr.ph119 ], [ %.0118.unr, %.lr.ph119.prol.loopexit ]
  %.pn116 = phi ptr [ %.088.3, %.lr.ph119 ], [ %.pn116.unr, %.lr.ph119.prol.loopexit ] ; 4 uses
  %.088 = getelementptr inbounds nuw i8, ptr %.pn116, i64 1
  %i.iy = load i8, ptr %.088, align 1, !tbaa !7
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !7
  %.088.1 = getelementptr inbounds nuw i8, ptr %.pn116, i64 2
  %i.ja = load i8, ptr %.088.1, align 1, !tbaa !7
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %i.ja, ptr %i.jc, align 1, !tbaa !7
  %.088.2 = getelementptr inbounds nuw i8, ptr %.pn116, i64 3
  %i.jd = load i8, ptr %.088.2, align 1, !tbaa !7
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i8 %i.jd, ptr %i.jf, align 1, !tbaa !7
  %.088.3 = getelementptr inbounds nuw i8, ptr %.pn116, i64 4 ; 2 uses
  %i.jg = add nsw i32 %.0118, -4                  ; 2 uses
  %i.jh = load i8, ptr %.088.3, align 1, !tbaa !7
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv134
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  store i8 %i.jh, ptr %i.jj, align 1, !tbaa !7
  %.not91.3 = icmp eq i32 %i.jg, 0
  br i1 %.not91.3, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !19

._crit_edge120.loopexit:                          ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %vec.epilog.middle.block214, %middle.block198
  %indvars.iv.next135.lcssa = phi i64 [ %i.in, %vec.epilog.middle.block214 ], [ %i.gv, %middle.block198 ], [ %indvars.iv.next135.lcssa219.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next135.3, %.lr.ph119 ]
  %i.jk = trunc nuw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %_ZL11ToUpperCasePh.exit
  %.283.lcssa = phi i32 [ %.182.lcssa, %_ZL11ToUpperCasePh.exit ], [ %i.jk, %._crit_edge120.loopexit ]
  ret i32 %.283.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -2147483648, 5) i32 @_ZL5ShiftPhit(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 32767
  %i.c = and i32 %i.a, 32768
  %reass.sub = sub nsw i32 %i.b, %i.c
  %i.d = add nsw i32 %reass.sub, 16777216         ; 3 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !7       ; 7 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i16 %2 to i8
  %i.i = add i8 %i.e, %i.h
  %i.j = and i8 %i.i, 127
  store i8 %i.j, ptr %0, align 1, !tbaa !7
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i8 %i.e, -64
  br i1 %i.k, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i8 %i.e, -32
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %1, 2
  br i1 %i.m, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.f, 6
  %i.s = and i32 %i.r, 1984
  %i.t = or disjoint i32 %i.s, %i.q
  %i.u = add nuw nsw i32 %i.t, %i.d               ; 2 uses
  %i.v = lshr i32 %i.u, 6
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 31
  %i.y = or disjoint i8 %i.x, -64
  store i8 %i.y, ptr %0, align 1, !tbaa !7
  %i.z = and i8 %i.o, -64
  %i.aa = trunc i32 %i.u to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, %i.z
  store i8 %i.ac, ptr %i.n, align 1, !tbaa !7
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ad = icmp samesign ult i8 %i.e, -16
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp slt i32 %1, 3
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %i.ah = and i8 %i.ag, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7   ; 2 uses
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 6
  %i.ao = shl nuw nsw i32 %i.f, 12
  %i.ap = and i32 %i.ao, 61440
  %i.aq = add nuw nsw i32 %i.ap, %i.d
  %i.ar = add nuw nsw i32 %i.aq, %i.ai            ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, %i.an            ; 2 uses
  %i.at = lshr i32 %i.as, 12
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 15
  %i.aw = or disjoint i8 %i.av, -32
  store i8 %i.aw, ptr %0, align 1, !tbaa !7
  %i.ax = and i8 %i.ak, -64
  %i.ay = lshr i32 %i.as, 6
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.aj, align 1, !tbaa !7
  %i.bc = and i8 %i.ag, -64
  %i.bd = trunc i32 %i.ar to i8
  %i.be = and i8 %i.bd, 63
  %i.bf = or disjoint i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.af, align 1, !tbaa !7
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.bg = icmp samesign ult i8 %i.e, -8
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp slt i32 %1, 4
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7   ; 2 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7   ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !7   ; 2 uses
  %i.bt = and i8 %i.bs, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 12
  %i.bw = shl nuw nsw i32 %i.f, 18
  %i.bx = and i32 %i.bw, 1835008
  %i.by = add nuw nsw i32 %i.bx, %i.d
  %i.bz = add nuw nsw i32 %i.by, %i.bl            ; 2 uses
  %i.ca = add nuw nsw i32 %i.bz, %i.bq            ; 2 uses
  %i.cb = add nuw nsw i32 %i.ca, %i.bv            ; 2 uses
  %i.cc = lshr i32 %i.cb, 18
  %i.cd = trunc nuw nsw i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, -16
  store i8 %i.cf, ptr %0, align 1, !tbaa !7
  %i.cg = and i8 %i.bs, -64
  %i.ch = lshr i32 %i.cb, 12
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 63
  %i.ck = or disjoint i8 %i.cj, %i.cg
  store i8 %i.ck, ptr %i.br, align 1, !tbaa !7
  %i.cl = and i8 %i.bn, -64
  %i.cm = lshr i32 %i.ca, 6
  %i.cn = trunc i32 %i.cm to i8
  %i.co = and i8 %i.cn, 63
  %i.cp = or disjoint i8 %i.co, %i.cl
  store i8 %i.cp, ptr %i.bm, align 1, !tbaa !7
  %i.cq = and i8 %i.bj, -64
  %i.cr = trunc i32 %i.bz to i8
  %i.cs = and i8 %i.cr, 63
  %i.ct = or disjoint i8 %i.cs, %i.cq
  store i8 %i.ct, ptr %i.bi, align 1, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.e, %bb.c, %bb.l, %bb.i, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %1, %bb.k ], [ 1, %bb.c ], [ 2, %bb.f ], [ 1, %bb.e ], [ 3, %bb.i ], [ %1, %bb.h ], [ 4, %bb.l ], [ 1, %bb.j ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = distinct !{!8, !30, !31, !32}
!9 = distinct !{!9, !33}
!10 = distinct !{!10, !30, !31}
!11 = distinct !{!11, !30, !31, !32}
!12 = distinct !{!12, !30, !31, !32}
!13 = distinct !{!13, !33}
!14 = distinct !{!14, !30, !31}
!15 = distinct !{!15, !30}
!16 = distinct !{!16, !30}
!17 = distinct !{!17, !30, !31, !32}
!18 = distinct !{!18, !33}
!19 = distinct !{!19, !30, !31}
!20 = !{!"short", !4, i64 0}
!21 = !{!"any pointer", !4, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"p1 short", !21, i64 0}
!24 = !{!"_ZTSN13duckdb_brotli16BrotliTransformsE", !20, i64 0, !22, i64 8, !23, i64 16, !5, i64 24, !22, i64 32, !22, i64 40, !4, i64 48}
!25 = !{!24, !22, i64 8}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !22, i64 32}
!28 = !{!20, !20, i64 0}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"branch_weights", i32 8, i32 24}
!35 = !{!24, !22, i64 40}
end_hunk_0
