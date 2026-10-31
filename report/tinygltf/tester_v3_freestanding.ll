Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3__serialize_string_array:bb.a
  %i.w = and i64 %i.m, 28
  %n.vec37 = and i64 %i.m, 4294967264             ; 5 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %n.vec37
  %i.y = getelementptr i8, ptr %i.t, i64 %n.vec37
  %i.z = and i64 %i.m, 31
  br label %vector.body38

vector.body38:                                    ; preds = %vector.ph36, %vector.body38
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next43, %vector.body38 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %index39 ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.t, i64 %index39 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load41 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load42 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !37
  %i.ab = getelementptr i8, ptr %next.gep40, i64 16
  store <16 x i8> %wide.load41, ptr %next.gep40, align 1, !tbaa !37
  store <16 x i8> %wide.load42, ptr %i.ab, align 1, !tbaa !37
  %index.next43 = add nuw i64 %index39, 32        ; 2 uses
  %i.ac = icmp eq i64 %index.next43, %n.vec37
  br i1 %i.ac, label %middle.block44, label %vector.body38, !llvm.loop !998

middle.block44:                                   ; preds = %vector.body38
  %cmp.n45 = icmp eq i64 %n.vec37, %i.m
  br i1 %cmp.n45, label %.loopexit.i, label %vec.epilog.iter.check47

vec.epilog.iter.check47:                          ; preds = %middle.block44
  %min.epilog.iters.check49 = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check49, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph50, !prof !46

vec.epilog.ph50:                                  ; preds = %vector.main.loop.iter.check34, %vec.epilog.iter.check47
  %vec.epilog.resume.val51 = phi i64 [ %n.vec37, %vec.epilog.iter.check47 ], [ 0, %vector.main.loop.iter.check34 ]
  %n.vec52 = and i64 %i.m, 4294967292             ; 4 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %n.vec52
  %i.ae = getelementptr i8, ptr %i.t, i64 %n.vec52
  %i.af = and i64 %i.m, 3
  br label %vec.epilog.vector.body53

vec.epilog.vector.body53:                         ; preds = %vec.epilog.vector.body53, %vec.epilog.ph50
  %index54 = phi i64 [ %vec.epilog.resume.val51, %vec.epilog.ph50 ], [ %index.next58, %vec.epilog.vector.body53 ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.i, i64 %index54
  %next.gep56 = getelementptr i8, ptr %i.t, i64 %index54
  %wide.load57 = load <4 x i8>, ptr %next.gep55, align 1, !tbaa !37
  store <4 x i8> %wide.load57, ptr %next.gep56, align 1, !tbaa !37
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.ag, label %vec.epilog.middle.block59, label %vec.epilog.vector.body53, !llvm.loop !999

vec.epilog.middle.block59:                        ; preds = %vec.epilog.vector.body53
  %cmp.n60 = icmp eq i64 %n.vec52, %i.m
  br i1 %cmp.n60, label %.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check46, %vector.memcheck31, %vec.epilog.iter.check47, %vec.epilog.middle.block59
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %iter.check46 ], [ %i.i, %vector.memcheck31 ], [ %i.x, %vec.epilog.iter.check47 ], [ %i.ad, %vec.epilog.middle.block59 ] ; 2 uses
  %.059.i.i.i.i.ph = phi ptr [ %i.t, %iter.check46 ], [ %i.t, %vector.memcheck31 ], [ %i.y, %vec.epilog.iter.check47 ], [ %i.ae, %vec.epilog.middle.block59 ] ; 2 uses
  %.068.i.i.i.i.ph = phi i64 [ %i.m, %iter.check46 ], [ %i.m, %vector.memcheck31 ], [ %i.z, %vec.epilog.iter.check47 ], [ %i.af, %vec.epilog.middle.block59 ] ; 4 uses
  %i.ah = add nsw i64 %.068.i.i.i.i.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.010.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.prol ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.prol ], [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.prol ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ai = add nsw i64 %.068.i.i.i.i.prol, -1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.010.i.i.i.i.prol, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ak, ptr %.059.i.i.i.i.prol, align 1, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1000

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.010.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
  %.059.i.i.i.i.unr = phi ptr [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ah, 7
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.059.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 1
  %i.ao = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 1
  store i8 %i.ao, ptr %.059.i.i.i.i, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 2
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 2
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 3
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 3
  store i8 %i.au, ptr %i.as, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 4
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 5
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 5
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 6
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 6
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 7
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 7
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !37
  %i.bi = add nsw i64 %.068.i.i.i.i, -8           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 8
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !37
  %.not.i.i.i.i.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1001

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block44, %vec.epilog.middle.block59, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store i8 0, ptr %i.bm, align 1, !tbaa !37
  store ptr %i.t, ptr %i.c, align 8, !tbaa !37
  store i64 %i.m, ptr %i.d, align 8, !tbaa !37
  %i.bn = load i32, ptr %5, align 8, !tbaa !40
  %i.bo = icmp eq i32 %i.bn, 5
  br i1 %i.bo, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.loopexit.i
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !37  ; 5 uses
  %i.bq = add i64 %i.bp, 1                        ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.bp, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.g

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !37
  br label %tg3__json_push_take.exit.i

bb.g:                                             ; preds = %bb.f
  %.not25.i.i.i.i = icmp eq i64 %i.bp, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.bp ; 3 uses
  %i.br = icmp ult i64 %spec.select.i.i.i.i, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i20.i:                                 ; preds = %bb.g, %bb.h
  %.030.i.i.i.i = phi i64 [ %i.bt, %bb.h ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %i.bs = icmp slt i64 %.030.i.i.i.i, 0
  br i1 %i.bs, label %._crit_edge.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.bt = shl nuw i64 %.030.i.i.i.i, 1            ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.bq
  br i1 %i.bu, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %.lr.ph.i.i.i20.i, %bb.g
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.g ], [ %i.bt, %bb.h ], [ %i.bq, %.lr.ph.i.i.i20.i ] ; 2 uses
  %i.bv = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.bv, label %bb.n, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !55  ; 10 uses
  %i.bx = ptrtoaddr ptr %i.bw to i64
  %i.by = mul nuw i64 %.1.i.i.i.i, 24             ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  %i.bz = add nuw nsw i64 %i.p, 8
  %i.ca = add i64 %i.bz, %i.by                    ; 4 uses
  %i.cb = icmp ugt i64 %i.ca, 524288              ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.cb, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.p ; 2 uses
  store i64 %i.by, ptr %i.cc, align 8, !tbaa !30
  store i64 %i.ca, ptr @test_heap_used, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  br label %.loopexit.i.i.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.p ; 2 uses
  store i64 %i.by, ptr %i.cg, align 8, !tbaa !30
  store i64 %i.ca, ptr @test_heap_used, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 12 uses
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.by) ; 11 uses
  %.not27.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not27.i.i.i.i.i, label %.loopexit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cj = add i64 %i.g, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 24)
  %i.ck = add i64 %i.cj, %i.n
  %i.cl = sub i64 %i.bx, %i.ck
  %diff.check = icmp ugt i64 %i.cl, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.ci, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cm = and i64 %i.ci, 28
  %n.vec = and i64 %i.ci, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <16 x i8>, ptr %i.cn, align 1, !tbaa !37
  %wide.load25 = load <16 x i8>, ptr %i.co, align 1, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <16 x i8> %wide.load, ptr %i.cp, align 1, !tbaa !37
  store <16 x i8> %wide.load25, ptr %i.cq, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.ci, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.ct, align 1, !tbaa !37
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1003

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.ci, %n.vec26
  br i1 %cmp.n30, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter64 = and i64 %i.ci, 3                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.026.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.026.i.i.i.i.i.prol
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.026.i.i.i.i.i.prol
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !37
  %i.cy = add nuw i64 %.026.i.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1004

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = sub i64 %.026.i.i.i.i.i.ph, %i.ci
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.026.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.026.i.i.i.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.026.i.i.i.i.i
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !37
  %i.de = add nuw i64 %.026.i.i.i.i.i, 1          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.de
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !37
  %i.di = add nuw i64 %.026.i.i.i.i.i, 2          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.di
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !37
  %i.dm = add nuw i64 %.026.i.i.i.i.i, 3          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !37
  %i.dq = add nuw i64 %.026.i.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.dq, %i.ci
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1005

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.k
  %.018.i.ph.i.i.i.i = phi ptr [ %i.cd, %bb.k ], [ %i.ch, %bb.m ], [ %i.ch, %middle.block ], [ %i.ch, %vec.epilog.middle.block ], [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i, ptr %i.e, align 8, !tbaa !55
  br label %tg3__json_push_take.exit.i

tg3__json_push_take.exit.i:                       ; preds = %.loopexit.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i
  %i.dr = phi i64 [ %i.p, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %i.ca, %.loopexit.i.i.i.i ]
  %i.ds = phi ptr [ %.pre.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %.018.i.ph.i.i.i.i, %.loopexit.i.i.i.i ]
  store i64 %i.bq, ptr %i.f, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j, %._crit_edge.i.i.i.i, %.loopexit.i
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  br label %tg3__json_from_string_array.exit.thread

tg3__json_from_string_array.exit.thread:          ; preds = %bb.d, %bb.n
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3__json_set_take.exit

bb.o:                                             ; preds = %tg3__json_push_take.exit.i, %bb.c
  %i.du = phi i64 [ %i.g, %bb.c ], [ %i.dr, %tg3__json_push_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_string_array.exit, label %bb.c, !llvm.loop !1006

tg3__json_from_string_array.exit:                 ; preds = %bb.o
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %tg3__json_from_string_array.exit, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.dw, %.preheader.i.i ], [ %1, %tg3__json_from_string_array.exit ] ; 3 uses
  %i.dv = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.dx = ptrtoint ptr %.0.i.i.i to i64
  %i.dy = ptrtoint ptr %1 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.dz, ptr noundef nonnull %5) #21
  %.not.i9 = icmp eq i32 %i.ea, 0
  br i1 %.not.i9, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.thread.i, %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit.thread, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %tg3__json_from_string_array.exit.thread ], [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_push_take(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 4 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %.not.i.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.not.i, label %.tg3json__init_value.exit_crit_edge.i, label %bb.c

.tg3json__init_value.exit_crit_edge.i:            ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %tg3json_array_append_take.exit

bb.c:                                             ; preds = %bb.b
  %.not25.i.i = icmp eq i64 %i.e, 0
  %spec.select.i.i = select i1 %.not25.i.i, i64 8, i64 %i.e ; 3 uses
  %i.g = icmp ult i64 %spec.select.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.030.i.i = phi i64 [ %i.i, %bb.d ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.h = icmp slt i64 %.030.i.i, 0
  br i1 %i.h, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = shl nuw i64 %.030.i.i, 1                 ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.d, %.lr.ph.i.i, %bb.c
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.k = icmp ugt i64 %.1.i.i, 768614336404564650
  br i1 %i.k, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
end_hunk_0
