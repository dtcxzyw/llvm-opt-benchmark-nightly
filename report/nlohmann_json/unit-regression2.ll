Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-regression2?download=true
inline.NumInlined: 24436
inline.NumDeleted: 5451
loop-unroll.NumCompletelyUnrolled: 259
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZNSt6vectorIh12my_allocatorIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS2_EET_SA_St20forward_iterator_tag:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1
  %i.ac = icmp eq ptr %i.aa, %i.h
  br i1 %i.ac, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !3595

_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block188, %middle.block172
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !753
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.d
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !753
  %i.af = ptrtoint ptr %i.p to i64
  %i.ag = sub i64 %i.af, %i.l                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.d, label %bb.e, !prof !318

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds i8, ptr %i.h, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %1, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit
  %i.ak = icmp eq i64 %i.ag, 1
  br i1 %i.ak, label %bb.f, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.am = load i8, ptr %1, align 1, !tbaa !140
  store i8 %i.am, ptr %i.al, align 1, !tbaa !140
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.d, %bb.e, %bb.f
  %i.an = icmp sgt i64 %i.d, 1
  br i1 %i.an, label %bb.g, label %bb.h, !prof !318

bb.g:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.d, 1
  br i1 %i.ao, label %bb.i, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %2, align 1, !tbaa !140
  store i8 %i.ap, ptr %1, align 1, !tbaa !140
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not10.i = icmp eq ptr %i.aq, %3
  br i1 %.not10.i, label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ar = add i64 %i.b, %i.l
  %i.as = add i64 %i.j, %i.c
  %i.at = sub i64 %i.ar, %i.as                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  %i.au = sub i64 %i.c, %i.l
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check113 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.at, 24
  %n.vec = and i64 %i.at, -32                     ; 5 uses
  %i.aw = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ax = getelementptr i8, ptr %i.aq, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep114, align 1, !tbaa !140
  %wide.load115 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !140
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !140
  store <16 x i8> %wide.load115, ptr %i.az, align 1, !tbaa !140
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !3596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !756

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %i.at, -8                   ; 4 uses
  %i.bb = getelementptr i8, ptr %i.h, i64 %n.vec117
  %i.bc = getelementptr i8, ptr %i.aq, i64 %n.vec117
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %next.gep119 = getelementptr i8, ptr %i.h, i64 %index118
  %next.gep120 = getelementptr i8, ptr %i.aq, i64 %index118
  %wide.load121 = load <8 x i8>, ptr %next.gep120, align 1, !tbaa !140
  store <8 x i8> %wide.load121, ptr %next.gep119, align 1, !tbaa !140
  %index.next122 = add nuw i64 %index118, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3597

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.at, %n.vec117
  br i1 %cmp.n123, label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.ph = phi ptr [ %i.aq, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.ph298 = ptrtoaddr ptr %.0911.i.ph to i64 ; 2 uses
  %i.be = sub i64 %i.b, %.0911.i.ph298
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.012.i.prol = phi ptr [ %i.bh, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0911.i.prol = phi ptr [ %i.bg, %.lr.ph.i.prol ], [ %.0911.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bf = load i8, ptr %.0911.i.prol, align 1, !tbaa !140
  store i8 %i.bf, ptr %.012.i.prol, align 1, !tbaa !140
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.prol, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3598

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %.0911.i.unr = phi ptr [ %.0911.i.ph, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bi = sub i64 %.0911.i.ph298, %i.b
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0911.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %.0911.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bk = load i8, ptr %.0911.i, align 1, !tbaa !140
  store i8 %i.bk, ptr %.012.i, align 1, !tbaa !140
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !140
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !140
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !140
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !140
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i, i64 3
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !140
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !140
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !140
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !140
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 5
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !140
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !140
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i, i64 6
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i, i64 6
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !140
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !140
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i, i64 7
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i, i64 7
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !140
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !140
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.not.i.7 = icmp eq ptr %i.cg, %3
  br i1 %.not.i.7, label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3599

_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !753
  br label %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ci = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = sub nuw i64 %i.d, %i.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 8 uses
  store ptr %i.cl, ptr %i.g, align 8, !tbaa !753
  %i.cm = icmp eq ptr %1, %i.h
  br i1 %i.cm, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59, label %iter.check144

iter.check144:                                    ; preds = %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit
  %min.iters.check128 = icmp ult i64 %i.m, 8
  br i1 %min.iters.check128, label %.lr.ph.i.i55.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %iter.check144
  %i.cn = add i64 %i.cj, %i.b
  %i.co = add i64 %i.j, %i.c
  %i.cp = sub i64 %i.co, %i.cn
  %diff.check127 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check127, label %.lr.ph.i.i55.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck126
  %min.iters.check130 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check130, label %vec.epilog.ph148, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.cq = and i64 %i.m, 24
  %n.vec132 = and i64 %i.m, -32                   ; 5 uses
  %i.cr = getelementptr i8, ptr %i.cl, i64 %n.vec132
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %i.cl, i64 %index134 ; 2 uses
  %next.gep136 = getelementptr i8, ptr %1, i64 %index134 ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <16 x i8>, ptr %next.gep136, align 1, !tbaa !140
  %wide.load138 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !140
  %i.cu = getelementptr i8, ptr %next.gep135, i64 16
  store <16 x i8> %wide.load137, ptr %next.gep135, align 1, !tbaa !140
  store <16 x i8> %wide.load138, ptr %i.cu, align 1, !tbaa !140
  %index.next139 = add nuw i64 %index134, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.cv, label %middle.block140, label %vector.body133, !llvm.loop !3600

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.m, %n.vec132
  br i1 %cmp.n141, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block140
  %min.epilog.iters.check147 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check147, label %.lr.ph.i.i55.preheader, label %vec.epilog.ph148, !prof !756

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check146
  %vec.epilog.resume.val142 = phi i64 [ %n.vec132, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec149 = and i64 %i.m, -8                    ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %n.vec149
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec149
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph148 ], [ %index.next155, %vec.epilog.vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %i.cl, i64 %index151
  %next.gep153 = getelementptr i8, ptr %1, i64 %index151
  %wide.load154 = load <8 x i8>, ptr %next.gep153, align 1, !tbaa !140
  store <8 x i8> %wide.load154, ptr %next.gep152, align 1, !tbaa !140
  %index.next155 = add nuw i64 %index151, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.cy, label %vec.epilog.middle.block156, label %vec.epilog.vector.body150, !llvm.loop !3601

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body150
  %cmp.n157 = icmp eq i64 %i.m, %n.vec149
  br i1 %cmp.n157, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %iter.check144, %vector.memcheck126, %vec.epilog.iter.check146, %vec.epilog.middle.block156
  %.09.i.i56.ph = phi ptr [ %i.cl, %iter.check144 ], [ %i.cl, %vector.memcheck126 ], [ %i.cr, %vec.epilog.iter.check146 ], [ %i.cw, %vec.epilog.middle.block156 ] ; 2 uses
  %.sroa.05.08.i.i57.ph = phi ptr [ %1, %iter.check144 ], [ %1, %vector.memcheck126 ], [ %i.cs, %vec.epilog.iter.check146 ], [ %i.cx, %vec.epilog.middle.block156 ] ; 3 uses
  %.sroa.05.08.i.i57.ph299 = ptrtoaddr ptr %.sroa.05.08.i.i57.ph to i64 ; 2 uses
  %i.cz = sub i64 %i.j, %.sroa.05.08.i.i57.ph299
  %xtraiter300 = and i64 %i.cz, 7                 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55.prol
  %.09.i.i56.prol = phi ptr [ %i.dc, %.lr.ph.i.i55.prol ], [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %.sroa.05.08.i.i57.prol = phi ptr [ %i.db, %.lr.ph.i.i55.prol ], [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %.lr.ph.i.i55.prol ], [ 0, %.lr.ph.i.i55.preheader ]
  %i.da = load i8, ptr %.sroa.05.08.i.i57.prol, align 1, !tbaa !140
  store i8 %i.da, ptr %.09.i.i56.prol, align 1, !tbaa !140
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57.prol, i64 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i56.prol, i64 1 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !3602

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %.lr.ph.i.i55.preheader
  %.09.i.i56.unr = phi ptr [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ], [ %i.dc, %.lr.ph.i.i55.prol ]
  %.sroa.05.08.i.i57.unr = phi ptr [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ], [ %i.db, %.lr.ph.i.i55.prol ]
  %i.dd = sub i64 %.sroa.05.08.i.i57.ph299, %i.j
  %i.de = icmp ugt i64 %i.dd, -8
  br i1 %i.de, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %.09.i.i56 = phi ptr [ %i.ec, %.lr.ph.i.i55 ], [ %.09.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i57 = phi ptr [ %i.eb, %.lr.ph.i.i55 ], [ %.sroa.05.08.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %i.df = load i8, ptr %.sroa.05.08.i.i57, align 1, !tbaa !140
  store i8 %i.df, ptr %.09.i.i56, align 1, !tbaa !140
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 1
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !140
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !140
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 2
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !140
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !140
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 3
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 3
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !140
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !140
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 4
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !140
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !140
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 5
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !140
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !140
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 6
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !140
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !140
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 7
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 7
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !140
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !140
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 8
  %i.ed = icmp eq ptr %i.eb, %i.h
  br i1 %i.ed, label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit, label %.lr.ph.i.i55, !llvm.loop !3603

_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %vec.epilog.middle.block156, %middle.block140
  %.pre93 = load ptr, ptr %i.g, align 8, !tbaa !753
  br label %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59

_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit, %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit
  %i.ee = phi ptr [ %.pre93, %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59.loopexit ], [ %i.cl, %_ZSt22__uninitialized_copy_aIPKhPh12my_allocatorIhEET0_T_S6_S5_RT1_.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.m
  store ptr %i.ef, ptr %i.g, align 8, !tbaa !753
  %i.eg = icmp sgt i64 %i.m, 1
  br i1 %i.eg, label %bb.j, label %bb.k, !prof !318

bb.j:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_12my_allocatorIhEET0_T_S4_S3_RT1_.exit59
  %i.eh = icmp eq i64 %i.m, 1
  br i1 %i.eh, label %bb.l, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ei = load i8, ptr %2, align 1, !tbaa !140
  store i8 %i.ei, ptr %1, align 1, !tbaa !140
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIh12my_allocatorIhEEEEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.b
  %i.ej = load ptr, ptr %0, align 8, !tbaa !269   ; 9 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.el = sub i64 %i.j, %i.ek                     ; 4 uses
  %i.em = sub i64 9223372036854775807, %i.el
  %i.en = icmp ult i64 %i.em, %i.d
  br i1 %i.en, label %bb.n, label %_ZNKSt6vectorIh12my_allocatorIhEE12_M_check_lenEmPKc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #36
  unreachable

_ZNKSt6vectorIh12my_allocatorIhEE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.d)
  %i.eo = add i64 %.sroa.speculated.i, %i.el      ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.el
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 9223372036854775807)
  %i.er = select i1 %i.ep, i64 9223372036854775807, i64 %i.eq ; 3 uses
  %.not.i61 = icmp eq i64 %i.er, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIh12my_allocatorIhEE11_M_allocateEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIh12my_allocatorIhEE12_M_check_lenEmPKc.exit
  %i.es = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #37
  br label %_ZNSt12_Vector_baseIh12my_allocatorIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIh12my_allocatorIhEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIh12my_allocatorIhEE12_M_check_lenEmPKc.exit, %bb.o
  %i.et = phi ptr [ %i.es, %bb.o ], [ null, %_ZNKSt6vectorIh12my_allocatorIhEE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.eu = icmp eq ptr %i.ej, %1
  br i1 %i.eu, label %iter.check243, label %iter.check208

iter.check208:                                    ; preds = %_ZNSt12_Vector_baseIh12my_allocatorIhEE11_M_allocateEm.exit
  %i.ev = sub i64 %i.a, %i.ek                     ; 7 uses
  %min.iters.check192 = icmp ult i64 %i.ev, 8
  br i1 %min.iters.check192, label %.lr.ph.i.i62.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %iter.check208
  %min.iters.check194 = icmp ult i64 %i.ev, 32
  br i1 %min.iters.check194, label %vec.epilog.ph212, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.ew = and i64 %i.ev, 24
  %n.vec196 = and i64 %i.ev, -32                  ; 5 uses
  %i.ex = getelementptr i8, ptr %i.et, i64 %n.vec196 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ej, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.ph195, %vector.body197
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %i.et, i64 %index198 ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.ej, i64 %index198 ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep200, i64 16
  %wide.load201 = load <16 x i8>, ptr %next.gep200, align 1, !tbaa !140
  %wide.load202 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !140
end_hunk_0
