Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNSt6vectorIjSaIjEE15_M_range_insertIPiEEvN9__gnu_cxx17__normal_iteratorIPjS1_EET_S8_St20forward_iterator_tag:bb.a
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader133 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader133 ] ; 2 uses
  %i.ap = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !583
  store i32 %i.ap, ptr %.0811.i.i.i.i.i, align 4, !tbaa !583
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, !llvm.loop !2824

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = icmp eq i64 %i.m, 4
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.a, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 6 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.ay, 8
  %i.ba = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond131 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond131, label %.lr.ph.i.i.i.i.i.i.i.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.bb = and i64 %i.ay, 7
  %i.bc = shl i64 %n.vec, 2                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.h, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.av, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bf ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.av, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep91, align 4, !tbaa !583
  %wide.load92 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !583
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !583
  store <4 x i32> %wide.load92, ptr %i.bh, align 4, !tbaa !583
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !2825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.i.i.preheader136:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader136 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader136 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader136 ] ; 2 uses
  %i.bj = load i32, ptr %.0910.i.i.i.i.i.i.i.i, align 4, !tbaa !583
  store i32 %i.bj, ptr %.0811.i.i.i.i.i.i.i.i, align 4, !tbaa !583
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 4
  %i.bm = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit, !llvm.loop !2826

_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 5 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !949
  %i.bq = icmp sgt i64 %i.m, 4
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !585

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bp, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !949
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47

bb.m:                                             ; preds = %bb.l
  %i.br = load i32, ptr %1, align 4, !tbaa !583
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !583
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.k, %bb.l, %bb.m
  %i.bs = phi ptr [ %.pre, %bb.k ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !949
  %i.bu = ashr exact i64 %i.m, 2                  ; 6 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i49.preheader, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47
  %min.iters.check98 = icmp ult i64 %i.bu, 8
  %i.bw = sub i64 %i.b, %i.l
  %diff.check96 = icmp ugt i64 %i.bw, -32
  %or.cond132 = or i1 %min.iters.check98, %diff.check96
  br i1 %or.cond132, label %.lr.ph.i.i.i.i.i49.preheader134, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %n.vec100 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bx = and i64 %i.bu, 7
  %i.by = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %2, i64 %i.by
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.cb = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %next.gep104 = getelementptr i8, ptr %2, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !583
  %wide.load106 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !583
  %i.cd = getelementptr i8, ptr %next.gep103, i64 16
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !583
  store <4 x i32> %wide.load106, ptr %i.cd, align 4, !tbaa !583
  %index.next107 = add nuw i64 %index102, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.ce, label %middle.block108, label %vector.body101, !llvm.loop !2827

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.bu, %n.vec100
  br i1 %cmp.n109, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i49.preheader134

.lr.ph.i.i.i.i.i49.preheader134:                  ; preds = %.lr.ph.i.i.i.i.i49.preheader, %middle.block108
  %.012.i.i.i.i.i50.ph = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bx, %middle.block108 ]
  %.0811.i.i.i.i.i51.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bz, %middle.block108 ]
  %.0910.i.i.i.i.i52.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ca, %middle.block108 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader134, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i49 ], [ %.012.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader134 ] ; 2 uses
  %.0811.i.i.i.i.i51 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i49 ], [ %.0811.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader134 ] ; 2 uses
  %.0910.i.i.i.i.i52 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i49 ], [ %.0910.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i49.preheader134 ] ; 2 uses
  %i.cf = load i32, ptr %.0910.i.i.i.i.i52, align 4, !tbaa !583
  store i32 %i.cf, ptr %.0811.i.i.i.i.i51, align 4, !tbaa !583
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i52, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i51, i64 4
  %i.ci = add nsw i64 %.012.i.i.i.i.i50, -1
  %i.cj = icmp samesign ugt i64 %.012.i.i.i.i.i50, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i49, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, !llvm.loop !2828

bb.n:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !951   ; 5 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cm = sub i64 %i.j, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2                 ; 4 uses
  %i.co = sub nsw i64 2305843009213693951, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.d
  br i1 %i.cp, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.318) #34
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.d)
  %i.cq = add nsw i64 %.sroa.speculated.i, %i.cn  ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 2305843009213693951)
  %i.ct = select i1 %i.cr, i64 2305843009213693951, i64 %i.cs ; 3 uses
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #33
  br label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.p ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.cx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cy = sub i64 %i.cx, %i.cl                    ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, 4
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !585

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.ck, i64 %i.cy, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  %i.da = icmp eq i64 %i.cy, 4
  br i1 %i.da, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.ck, align 4, !tbaa !583
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !583
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dc, ptr align 4 %2, i64 %i.c, i1 false), !tbaa !583
  %i.dd = add i64 %i.c, %i.cx
  %4 = add i64 %i.dd, 4
  %i.de = sub i64 %4, %i.cl
  %5 = getelementptr i8, ptr %i.cw, i64 %i.de
  %scevgep = getelementptr i8, ptr %5, i64 -4     ; 3 uses
  %i.df = sub i64 %i.j, %i.cx                     ; 4 uses
  %i.dg = icmp sgt i64 %i.df, 4
  br i1 %i.dg, label %bb.t, label %bb.u, !prof !585

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %1, i64 %i.df, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.dh = icmp eq i64 %i.df, 4
  br i1 %i.dh, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %1, align 4, !tbaa !583
  store i32 %i.di, ptr %scevgep, align 4, !tbaa !583
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60: ; preds = %bb.t, %bb.u, %bb.v
  %i.dj = getelementptr inbounds i8, ptr %scevgep, i64 %i.df
  %.not.i61 = icmp eq ptr %i.ck, null
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !950
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dm) #31
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit60, %bb.w
  store ptr %i.cw, ptr %0, align 8, !tbaa !951
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !949
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !950
  br label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit

_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i49, %.lr.ph.i.i.i.i.i, %middle.block108, %middle.block126, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit47, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !920  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !919  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !914  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !915
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !585

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !903
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !903
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !585

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !903
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !903
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !591

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !919 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !920
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !585

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !903
  store ptr %i.be, ptr %i.av, align 8, !tbaa !903
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !915
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !914
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #31
  store ptr %i.aq, ptr %0, align 8, !tbaa !915
  store i64 %i.am, ptr %i.k, align 8, !tbaa !914
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !916
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !903  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !917
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !918
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !916
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !903 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !917
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !918
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.80", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
end_hunk_0
