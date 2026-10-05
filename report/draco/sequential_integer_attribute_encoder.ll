Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.bh = and i64 %i.ax, 3
  %i.bi = getelementptr i8, ptr %i.g, i64 %n.vec101
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.g, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.av, i64 %index102
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !105
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !105
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !335

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ax, %n.vec101
  br i1 %cmp.n107, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !105
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !105
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !336

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !341
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !341
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !140

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !105
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !341
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !341
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !105
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !105
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !105
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !105
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !337

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !342

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !105
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !105
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !338

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !105
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !105
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !339

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !343   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #18
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !140

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !105
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !105
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !tbaa !105
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !105
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !105
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #19
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !343
  store ptr %i.do, ptr %i.f, align 8, !tbaa !341
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !340
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344  ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 48) #19
  br label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !346  ; 4 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %_ZN5draco14PointAttributeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !345
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #19
  br label %_ZN5draco14PointAttributeD2Ev.exit

_ZN5draco14PointAttributeD2Ev.exit:               ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZN5draco14PointAttributeD2Ev.exit, %bb.a
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco32CreatePredictionSchemeForEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEESt10unique_ptrINS_23PredictionSchemeEncoderIT_T0_EESt14default_deleteIS7_EENS_22PredictionSchemeMethodEiPKNS_17PointCloudEncoderERKS6_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.65") align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq i32 %1, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN5draco22SelectPredictionMethodEiPKNS_17PointCloudEncoderE(i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %i.j = icmp eq i32 %.0, -2
  br i1 %i.j, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZNSt10unique_ptrIN5draco23PredictionSchemeEncoderIiNS0_37PredictionSchemeWrapEncodingTransformIiiEEEESt14default_deleteIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5draco26CreateMeshPredictionSchemeINS_11MeshEncoderENS_23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEENS_34MeshPredictionSchemeEncoderFactoryIiEEEESt10unique_ptrIT0_St14default_deleteIS9_EEPKT_NS_22PredictionSchemeMethodEiRKNS9_9TransformEt(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.65") align 8 %0, ptr noundef nonnull %3, i32 noundef %.0, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %4, i16 noundef zeroext 514)
  %i.p = load ptr, ptr %0, align 8, !tbaa !104
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNSt10unique_ptrIN5draco23PredictionSchemeEncoderIiNS0_37PredictionSchemeWrapEncodingTransformIiiEEEESt14default_deleteIS4_EED2Ev.exit, label %.critedge

_ZNSt10unique_ptrIN5draco23PredictionSchemeEncoderIiNS0_37PredictionSchemeWrapEncodingTransformIiiEEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.e, %bb.d
  %i.q = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.g, ptr %i.r, align 8, !tbaa !148
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !101  ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZNSt10unique_ptrIN5draco23PredictionSchemeEncoderIiNS0_37PredictionSchemeWrapEncodingTransformIiiEEEESt14default_deleteIS4_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ac = getelementptr inbounds i8, ptr null, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !102
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN5draco23PredictionSchemeEncoderIiNS0_37PredictionSchemeWrapEncodingTransformIiiEEEESt14default_deleteIS4_EED2Ev.exit
  %i.ae = icmp ugt i64 %i.aa, 9223372036854775804
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !150

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.k

end_hunk_0
begin_hunk_1_@_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEE20EncodePredictionDataEPNS_13EncoderBufferE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !202
  store i32 %i.q, ptr %i.b, align 4, !tbaa !96
  %i.r = icmp slt i64 %.pr.i, 1
  br i1 %i.r, label %bb.b, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE19EncodeTransformDataEPNS_13EncoderBufferE.exit

bb.b:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.t)
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE19EncodeTransformDataEPNS_13EncoderBufferE.exit

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE19EncodeTransformDataEPNS_13EncoderBufferE.exit: ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i, %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco40MeshPredictionSchemeParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store i32 %4, ptr %i.a, align 8, !tbaa !203
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = sext i32 %4 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.l)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !149
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !96     ; 6 uses
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.r = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i32 %3, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02022.i.epil.init = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod140 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.u = load i32, ptr %i.t, align 4, !tbaa !96   ; 3 uses
  %i.v = icmp slt i32 %i.u, %.02022.i.epil.init
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.01923.i.epil.init)
  %.121.i.epil = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %.02022.i.epil.init)
  %.1.i.epil = select i1 %i.v, i32 %.01923.i.epil.init, i32 %spec.select.i.epil
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.e
  %.020.lcssa.i = phi i32 [ %i.p, %bb.e ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.121.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.019.lcssa.i = phi i32 [ %i.p, %bb.e ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.020.lcssa.i, ptr %i.w, align 4, !tbaa !201
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.019.lcssa.i, ptr %i.x, align 8, !tbaa !202
  %i.y = sext i32 %.019.lcssa.i to i64
  %i.z = sext i32 %.020.lcssa.i to i64
  %i.aa = sub nsw i64 %i.y, %i.z                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.aa, 2147483647
  br i1 %or.cond.i.i, label %bb.f, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !204
  %i.ae = lshr i32 %i.ac, 1                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !205
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !206
  %i.ai = and i32 %i.ab, 1
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.ae, -1
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.p, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.p, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !96 ; 3 uses
  %i.am = icmp slt i32 %i.al, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.am, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.aq, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.ar = icmp slt i32 %4, 0
  %i.as = shl nsw i64 %i.c, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as      ; 2 uses
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #18 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.at, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !210 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 3 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %.03491 = add i32 %i.bi, -1                     ; 2 uses
  %i.bj = icmp sgt i32 %.03491, 0
  br i1 %i.bj, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.bm = icmp sgt i32 %4, 0
  %wide.trip.count.i47 = zext i32 %4 to i64       ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.bs = zext nneg i32 %.03491 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i47, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i47
  br label %bb.h

.preheader:                                       ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.bt = icmp sgt i32 %4, 0
  br i1 %i.bt, label %.lr.ph95.preheader, label %._crit_edge

.lr.ph95.preheader:                               ; preds = %.preheader
  %i.bu = zext nneg i32 %4 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 range(i64 0, 8589934589) %i.bv, i1 false), !tbaa !96
  br label %._crit_edge

bb.h:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ %i.bs, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ] ; 10 uses
  %.034.in92 = phi i32 [ %i.bi, %.lr.ph ], [ %i.hp, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ]
  %.not.i.i42 = icmp ugt i64 %i.bh, %indvars.iv
  br i1 %.not.i.i42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv, i64 noundef %i.bh) #20
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit81

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !212 ; 4 uses
  %i.by = mul nsw i64 %indvars.iv, %i.c           ; 4 uses
  %i.bz = icmp eq i32 %i.bx, -1
  br i1 %i.bz, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !373
  %i.cb = lshr i32 %i.bx, 6
  %.zext.i.i.i = zext nneg i32 %i.cb to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.zext.i.i.i
  %i.cd = and i32 %i.bx, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !128, !noalias !373
  %i.ch = and i64 %i.cg, %i.cf
  %.not.i.i43 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i43, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.m

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.k
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !232, !noalias !373
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = zext i32 %i.bx to i64
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !210, !noalias !374
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !212, !noalias !374 ; 5 uses
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.m, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %i.bl, align 8, !tbaa !233, !noalias !375 ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !235, !noalias !375
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !96 ; 2 uses
  %i.cx = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %i.cy = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cz = add nuw <2 x i32> %i.cy, <i32 0, i32 1>
  %i.da = urem <2 x i32> %i.cz, splat (i32 3)
  %i.db = icmp eq <2 x i32> %i.da, zeroinitializer ; 2 uses
  %i.dc = extractelement <2 x i1> %i.db, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.dc, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.cn, %spec.select.i.i.i.i.v
  %i.dd = zext i32 %spec.select.i.i.i.i to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !235, !noalias !376
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !96 ; 2 uses
  %i.dj = extractelement <2 x i1> %i.db, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.dj, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.cn
  %i.dk = zext i32 %.sink.i.i12.i.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !235, !noalias !377
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !96 ; 2 uses
  %i.dq = sext i32 %i.cw to i64
  %i.dr = icmp sgt i64 %indvars.iv, %i.dq
  %i.ds = sext i32 %i.di to i64
  %i.dt = icmp sgt i64 %indvars.iv, %i.ds
  %or.cond.i = select i1 %i.dr, i1 %i.dt, i1 false
  %i.du = sext i32 %i.dp to i64
  %i.dv = icmp sgt i64 %indvars.iv, %i.du
  %or.cond40.i = select i1 %or.cond.i, i1 %i.dv, i1 false
  br i1 %or.cond40.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %i.bm, label %.lr.ph.preheader.i46, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

.lr.ph.preheader.i46:                             ; preds = %bb.l
  %i.dw = mul nsw i32 %i.dp, %4
  %i.dx = mul nsw i32 %i.di, %4
  %i.dy = mul nsw i32 %i.cw, %4
  %i.dz = sext i32 %i.dx to i64
  %i.ea = sext i32 %i.dw to i64
  %i.eb = sext i32 %i.dy to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.dz ; 2 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.ea ; 2 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.eb ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i48.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i46, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i46 ] ; 5 uses
  %i.ec = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !96
  %wide.load131 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !96
  %i.ee = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %wide.load132 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !96
  %wide.load133 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !96
  %i.eg = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !96
  %wide.load135 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !96
  %i.ei = add <4 x i32> %wide.load132, %wide.load
  %i.ej = add <4 x i32> %wide.load133, %wide.load131
  %i.ek = sub <4 x i32> %i.ei, %wide.load134
  %i.el = sub <4 x i32> %i.ej, %wide.load135
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <4 x i32> %i.ek, ptr %i.em, align 4, !tbaa !96
  store <4 x i32> %i.el, ptr %i.en, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %.lr.ph.preheader.i46, %middle.block
  %indvars.iv.i49.ph = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader, %.lr.ph.i48
  %indvars.iv.i49 = phi i64 [ %indvars.iv.next.i50, %.lr.ph.i48 ], [ %indvars.iv.i49.ph, %.lr.ph.i48.preheader ] ; 5 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i49
  %i.ep = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i49
  %i.eq = load i32, ptr %gep49.i, align 4, !tbaa !96
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i49
  %i.er = load i32, ptr %gep51.i, align 4, !tbaa !96
  %i.es = add i32 %i.eq, %i.ep
  %i.et = sub i32 %i.es, %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i49
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !96
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i47
  br i1 %exitcond.not.i51, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i48, !llvm.loop !371

bb.m:                                             ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.j, %bb.k
  %i.ev = getelementptr inbounds [4 x i8], ptr %1, i64 %i.by
  %i.ew = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  %i.ex = load i32, ptr %i.a, align 8, !tbaa !203
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.m
  %i.ez = add i32 %.034.in92, -2
  %i.fa = mul nsw i32 %i.ez, %4
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fb
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.lr.ph.i
  %indvars.iv.i53 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i54, %bb.w ] ; 4 uses
  %.01516.i = phi ptr [ %i.fc, %.lr.ph.i.lr.ph.i ], [ %i.fd, %bb.w ]
  %i.fd = load ptr, ptr %i.b, align 8             ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.s ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !96 ; 3 uses
  %i.fg = load i32, ptr %i.bn, align 8, !tbaa !202 ; 2 uses
  %i.fh = icmp sgt i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i.i
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !96
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.fj = load i32, ptr %i.bo, align 4, !tbaa !201 ; 2 uses
  %i.fk = icmp slt i32 %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !96
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 %i.ff, ptr %i.fl, align 4, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.cp)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %bb.t

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15359.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0351.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.g
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = sub nuw nsw i64 %i.g, %i.cz
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef %i.db)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.z

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dc = icmp ugt i64 %i.cz, %i.g
  br i1 %i.dc, label %bb.w, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.cu, %i.dd
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.v, %bb.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.de = shl nuw nsw i64 %i.g, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #18
          to label %.noexc181 unwind label %bb.aa ; 5 uses

.noexc181:                                        ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.g ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr i8, ptr %i.df, i64 4      ; 3 uses
  %i.di = add nsw i64 %i.g, -1                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0342.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph438, label %.preheader

.lr.ph438:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %wide.trip.count.i189 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ee = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0351.0 to i64       ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ej = icmp sgt i64 %i.eg, 4                   ; 2 uses
  %i.ek = icmp eq i64 %i.eg, 4                    ; 2 uses
  %i.el = icmp ugt i64 %i.eg, 9223372036854775804
  %i.em = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0342.0 to i64       ; 8 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 10 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.er = icmp sgt i64 %i.eo, 4                   ; 2 uses
  %i.es = icmp eq i64 %i.eo, 4                    ; 2 uses
  %i.et = icmp ugt i64 %i.eo, 9223372036854775804
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ez = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.fa = zext nneg i32 %i.ez to i64              ; 15 uses
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = mul nsw i64 %i.fd, %i.g                 ; 2 uses
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.en, %i.fg
  %i.fi = shl nuw nsw i64 %i.g, 2
  %i.fj = mul i64 %i.fe, -4
  %i.fk = sub i64 %i.fj, %i.a
  %i.fl = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fl
  %i.fm = add nsw i64 %i.fc, -1                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.g
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.a
  %i.fq = sub i64 %i.en, %i.fp
  %i.fr = shl nuw nsw i64 %i.g, 2
  %i.fs = add nsw i64 %i.fc, -2                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.g
  %i.fu = shl i64 %i.ft, 2
  %i.fv = add i64 %i.fu, %i.a
  %i.fw = sub i64 %i.en, %i.fv
  %i.fx = mul nsw i64 %i.fm, %i.g
  %i.fy = mul i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.a
  %i.ga = mul nsw i64 %i.fs, %i.g
  %i.gb = mul i64 %i.ga, -4
  %i.gc = sub i64 %i.gb, %i.a
  %min.iters.check731 = icmp ult i32 %4, 12
  %n.vec733 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n744 = icmp eq i64 %n.vec733, %wide.trip.count.i189
  %xtraiter783 = and i64 %wide.trip.count.i189, 1
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  %i.gd = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check707 = icmp ult i32 %4, 8
  %invariant.op819 = add i64 %i.fq, -1
  %invariant.op821 = add i64 %i.fw, -1
  %n.vec709 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec709, %wide.trip.count.i189
  %min.iters.check683 = icmp ult i32 %4, 8
  %n.vec685 = and i64 %i.fa, 2147483640           ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec685, %i.fa
  %xtraiter785 = and i64 %i.fa, 3                 ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %min.iters.check670 = icmp ult i32 %4, 4
  %n.vec672 = and i64 %i.fa, 2147483644           ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec672, %i.fa
  %min.iters.check655 = icmp ult i32 %4, 8
  %i.ge = sub i64 %i.ef, %i.en
  %diff.check646 = icmp ugt i64 %i.ge, -32
  %invariant.op823 = add i64 %i.fh, -1
  %invariant.op825 = add i64 %i.fk, -1
  %n.vec657 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec657, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.fa, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  %xtraiter787 = and i64 %i.fa, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %i.gf = add nsw i64 %i.fa, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader
  %i.gg = load ptr, ptr %8, align 16, !tbaa !101
  %i.gh = zext nneg i32 %4 to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 range(i64 0, 8589934589) %i.gi, i1 false), !tbaa !96
  br label %._crit_edge441

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

bb.z:                                             ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

bb.ab:                                            ; preds = %.lr.ph438, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar647 = phi i64 [ 0, %.lr.ph438 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv498 = phi i64 [ %i.fc, %.lr.ph438 ], [ %indvars.iv.next499, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gm = mul i64 %i.fr, %indvar647               ; 4 uses
  %i.gn = add i64 %i.fz, %i.gm
  %i.go = add i64 %i.gc, %i.gm
  %i.gp = mul i64 %i.fi, %indvar647               ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 8 uses
  %i.gq = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !209
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !210 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gx, %indvars.iv.next499
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next499, i64 noundef %i.gx) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next499
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !212 ; 6 uses
  %.not369404 = icmp eq i32 %i.gz, -1
  br i1 %.not369404, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.ha = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !435
  %i.hb = urem i32 %i.gz, 3
  %.not.i.i.i202 = icmp ne i32 %i.hb, 0           ; 2 uses
  %i.hc = add i32 %i.gz, -1
  %i.hd = add i32 %i.gz, 2                        ; 2 uses
  %i.he = icmp ne i32 %i.hd, -1
  %brmerge = or i1 %.not.i.i.i202, %i.he
  %.mux = select i1 %.not.i.i.i202, i32 %i.hc, i32 %i.hd ; 3 uses
  %i.hf = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.hf to i64
  %i.hg = and i32 %.mux, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = zext i32 %.mux to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144407 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146406 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0405 = phi i32 [ %i.gz, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hk = sext i32 %.0146406 to i64
  %i.hl = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !101 ; 5 uses
  %i.hn = ptrtoaddr ptr %i.hm to i64              ; 2 uses
  %i.ho = lshr i32 %.sroa.0332.0405, 6
  %.zext.i.i.i = zext nneg i32 %i.ho to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.zext.i.i.i
  %i.hq = and i32 %.sroa.0332.0405, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !128, !noalias !435
  %i.hu = and i64 %i.ht, %i.hs
  %.not.i.i185 = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ae
  %i.hv = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !435
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = zext i32 %.sroa.0332.0405 to i64
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !210, !noalias !436
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !212, !noalias !436 ; 5 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ic = zext i32 %i.ia to i64
  %i.id = load ptr, ptr %i.dx, align 8, !tbaa !233, !noalias !437 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !235, !noalias !437
  %i.ig = zext i32 %i.if to i64
  %i.ih = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ig
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !96 ; 2 uses
  %i.ik = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.im = add nuw <2 x i32> %i.il, <i32 0, i32 1>
  %i.in = urem <2 x i32> %i.im, splat (i32 3)
  %i.io = icmp eq <2 x i32> %i.in, zeroinitializer ; 2 uses
  %i.ip = extractelement <2 x i1> %i.io, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.ip, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.ia, %spec.select.i.i.i.i.v
  %i.iq = zext i32 %spec.select.i.i.i.i to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !235, !noalias !438
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !96 ; 2 uses
  %i.iw = extractelement <2 x i1> %i.io, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.iw, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.ia
  %i.ix = zext i32 %.sink.i.i12.i.i to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !235, !noalias !439
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !96 ; 2 uses
  %i.jd = sext i32 %i.ij to i64
  %i.je = icmp sgt i64 %indvars.iv.next499, %i.jd
  %i.jf = sext i32 %i.iv to i64
  %i.jg = icmp sgt i64 %indvars.iv.next499, %i.jf
  %or.cond.i = select i1 %i.je, i1 %i.jg, i1 false
  %i.jh = sext i32 %i.jc to i64
  %i.ji = icmp sgt i64 %indvars.iv.next499, %i.jh
  %or.cond40.i = select i1 %or.cond.i, i1 %i.ji, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.af
  %i.jj = mul nsw i32 %i.jc, %4
  %i.jk = mul nsw i32 %i.iv, %4
  %i.jl = mul nsw i32 %i.ij, %4
  %i.jm = sext i32 %i.jk to i64                   ; 2 uses
  %i.jn = sext i32 %i.jj to i64                   ; 2 uses
  %i.jo = sext i32 %i.jl to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.jm ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jn ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jo ; 4 uses
  br i1 %min.iters.check731, label %.lr.ph.i190.preheader, label %vector.memcheck724

vector.memcheck724:                               ; preds = %.lr.ph.preheader.i188
  %i.jp = sub i64 %i.hn, %i.a                     ; 2 uses
  %i.jq = shl nsw i64 %i.jo, 2
  %i.jr = sub i64 %i.jq, %i.jp
  %diff.check725 = icmp ugt i64 %i.jr, -32
  %i.js = shl nsw i64 %i.jn, 2
  %i.jt = sub i64 %i.js, %i.jp
  %diff.check726 = icmp ugt i64 %i.jt, -32
  %conflict.rdx727 = or i1 %diff.check725, %diff.check726
  %i.ju = shl nsw i64 %i.jm, 2
  %i.jv = add i64 %i.ju, %i.a
  %i.jw = sub i64 %i.jv, %i.hn
  %diff.check728 = icmp ugt i64 %i.jw, -32
  %conflict.rdx729 = or i1 %conflict.rdx727, %diff.check728
  br i1 %conflict.rdx729, label %.lr.ph.i190.preheader, label %vector.body734

vector.body734:                                   ; preds = %vector.memcheck724, %vector.body734
  %index735 = phi i64 [ %index.next742, %vector.body734 ], [ 0, %vector.memcheck724 ] ; 5 uses
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index735 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 16
  %wide.load736 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !96
  %wide.load737 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !96
  %i.jz = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index735 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  %wide.load738 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !96
  %wide.load739 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !96
  %i.kb = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index735 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  %wide.load740 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !96
  %wide.load741 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !96
  %i.kd = add <4 x i32> %wide.load738, %wide.load736
  %i.ke = add <4 x i32> %wide.load739, %wide.load737
  %i.kf = sub <4 x i32> %i.kd, %wide.load740
  %i.kg = sub <4 x i32> %i.ke, %wide.load741
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index735 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <4 x i32> %i.kf, ptr %i.kh, align 4, !tbaa !96
  store <4 x i32> %i.kg, ptr %i.ki, align 4, !tbaa !96
  %index.next742 = add nuw i64 %index735, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next742, %n.vec733
  br i1 %i.kj, label %middle.block743, label %vector.body734, !llvm.loop !395

middle.block743:                                  ; preds = %vector.body734
  br i1 %cmp.n744, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck724, %.lr.ph.preheader.i188, %middle.block743
  %indvars.iv.i191.ph = phi i64 [ 0, %vector.memcheck724 ], [ 0, %.lr.ph.preheader.i188 ], [ %n.vec733, %middle.block743 ] ; 7 uses
  br i1 %lcmp.mod784.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol
end_hunk_2
begin_hunk_3_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %diff.check697 = icmp ugt i64 %i.nu, -32
  %.reass820 = add i64 %i.gm, %invariant.op819
  %diff.check698 = icmp ult i64 %.reass820, 31
  %conflict.rdx699 = or i1 %diff.check697, %diff.check698
  %.reass822 = add i64 %i.gm, %invariant.op821
  %diff.check700 = icmp ult i64 %.reass822, 31
  %conflict.rdx701 = or i1 %conflict.rdx699, %diff.check700
  %i.nv = add i64 %i.gn, %i.nt
  %i.nw = add i64 %i.nv, -1
  %diff.check702 = icmp ult i64 %i.nw, 31
  %conflict.rdx703 = or i1 %conflict.rdx701, %diff.check702
  %i.nx = add i64 %i.go, %i.nt
  %i.ny = add i64 %i.nx, -1
  %diff.check704 = icmp ult i64 %i.ny, 31
  %conflict.rdx705 = or i1 %conflict.rdx703, %diff.check704
  br i1 %conflict.rdx705, label %.lr.ph.i213.preheader751, label %vector.body710

vector.body710:                                   ; preds = %vector.memcheck696, %vector.body710
  %index711 = phi i64 [ %index.next718, %vector.body710 ], [ 0, %vector.memcheck696 ] ; 5 uses
  %vec.phi712 = phi <4 x i32> [ %i.oh, %vector.body710 ], [ zeroinitializer, %vector.memcheck696 ]
  %vec.phi713 = phi <4 x i32> [ %i.oi, %vector.body710 ], [ zeroinitializer, %vector.memcheck696 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index711 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %wide.load714 = load <4 x i32>, ptr %i.nz, align 4, !tbaa !96
  %wide.load715 = load <4 x i32>, ptr %i.oa, align 4, !tbaa !96
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index711 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %wide.load716 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !96
  %wide.load717 = load <4 x i32>, ptr %i.oc, align 4, !tbaa !96
  %i.od = sub nsw <4 x i32> %wide.load714, %wide.load716 ; 5 uses
  %i.oe = sub nsw <4 x i32> %wide.load715, %wide.load717 ; 5 uses
  %i.of = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.od, i1 true)
  %i.og = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oe, i1 true)
  %i.oh = add <4 x i32> %i.of, %vec.phi712        ; 2 uses
  %i.oi = add <4 x i32> %i.og, %vec.phi713        ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index711 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <4 x i32> %i.od, ptr %i.oj, align 4, !tbaa !96
  store <4 x i32> %i.oe, ptr %i.ok, align 4, !tbaa !96
  %i.ol = shl nuw <4 x i32> %i.od, splat (i32 1)
  %i.om = shl nuw <4 x i32> %i.oe, splat (i32 1)
  %i.on = xor <4 x i32> %i.od, splat (i32 -1)
  %i.oo = xor <4 x i32> %i.oe, splat (i32 -1)
  %i.op = shl nuw <4 x i32> %i.on, splat (i32 1)
  %i.oq = shl nuw <4 x i32> %i.oo, splat (i32 1)
  %i.or = or disjoint <4 x i32> %i.op, splat (i32 1)
  %i.os = or disjoint <4 x i32> %i.oq, splat (i32 1)
  %i.ot = icmp slt <4 x i32> %i.od, zeroinitializer
  %i.ou = icmp slt <4 x i32> %i.oe, zeroinitializer
  %i.ov = select <4 x i1> %i.ot, <4 x i32> %i.or, <4 x i32> %i.ol
  %i.ow = select <4 x i1> %i.ou, <4 x i32> %i.os, <4 x i32> %i.om
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index711 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store <4 x i32> %i.ov, ptr %i.ox, align 4, !tbaa !96
  store <4 x i32> %i.ow, ptr %i.oy, align 4, !tbaa !96
  %index.next718 = add nuw i64 %index711, 8       ; 2 uses
  %i.oz = icmp eq i64 %index.next718, %n.vec709
  br i1 %i.oz, label %middle.block719, label %vector.body710, !llvm.loop !416

middle.block719:                                  ; preds = %vector.body710
  %bin.rdx720 = add <4 x i32> %i.oi, %i.oh
  %i.pa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx720) ; 2 uses
  br i1 %cmp.n721, label %._crit_edge.loopexit.i, label %.lr.ph.i213.preheader751

.lr.ph.i213.preheader751:                         ; preds = %vector.memcheck696, %.lr.ph.i213.preheader, %middle.block719
  %indvars.iv.i215.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph.i213.preheader ], [ %n.vec709, %middle.block719 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph.i213.preheader ], [ %i.pa, %middle.block719 ]
  br label %.lr.ph.i213

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i213, %middle.block719
  %.lcssa = phi i32 [ %i.pa, %middle.block719 ], [ %i.pl, %.lr.ph.i213 ]
  %i.pb = zext nneg i32 %.lcssa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 32
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.pc, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %i.ns, i32 noundef %4)
          to label %.noexc218 unwind label %bb.aw

.noexc218:                                        ; preds = %._crit_edge.i212
  %i.pd = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc219 unwind label %bb.aw

.noexc219:                                        ; preds = %.noexc218
  %i.pe = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader751, %.lr.ph.i213
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i216, %.lr.ph.i213 ], [ %indvars.iv.i215.ph, %.lr.ph.i213.preheader751 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.pl, %.lr.ph.i213 ], [ %.sroa.3.015.i.ph, %.lr.ph.i213.preheader751 ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.i215
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !96
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i215
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !96
  %i.pj = sub nsw i32 %i.pg, %i.pi                ; 5 uses
  %i.pk = call i32 @llvm.abs.i32(i32 %i.pj, i1 true)
  %i.pl = add nuw nsw i32 %i.pk, %.sroa.3.015.i   ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i215
  store i32 %i.pj, ptr %i.pm, align 4, !tbaa !96
  %i.pn = shl nuw i32 %i.pj, 1
  %i.po = xor i32 %i.pj, -1
  %i.pp = shl nuw i32 %i.po, 1
  %i.pq = or disjoint i32 %i.pp, 1
  %i.pr = icmp slt i32 %i.pj, 0
  %.0.i.i = select i1 %i.pr, i32 %i.pq, i32 %i.pn
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.i215
  store i32 %.0.i.i, ptr %i.ps, align 4, !tbaa !96
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i215, 1 ; 2 uses
  %exitcond.not.i217 = icmp eq i64 %indvars.iv.next.i216, %wide.trip.count.i189
  br i1 %exitcond.not.i217, label %._crit_edge.loopexit.i, label %.lr.ph.i213, !llvm.loop !417

bb.at:                                            ; preds = %.noexc219
  %i.pt = add nsw i64 %i.pe, %i.pd                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.pu = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.pu, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.pv = zext nneg i32 %.2148 to i64
  %i.pw = add nsw i32 %.2148, -1
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.px ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !128
  %i.qa = add nsw i64 %i.pz, %i.pv                ; 3 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !128
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.px
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !128
  %i.qd = trunc i64 %i.qa to i32
  %i.qe = trunc i64 %i.qc to i32
  %i.qf = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.qd, i32 noundef %i.qe)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.qg = sitofp i64 %i.qa to double
  %i.qh = fmul double %i.qf, %i.qg
  %i.qi = call double @llvm.ceil.f64(double %i.qh)
  %i.qj = fptosi double %i.qi to i64
  %i.qk = add i64 %i.pt, %i.qj
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc219, %.noexc218, %._crit_edge.i212
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.qk, %bb.av ], [ %i.pt, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8, !tbaa !96
  store i8 0, ptr %i.ea, align 8, !tbaa !448
  store i32 0, ptr %i.dy, align 4, !tbaa !449
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef %i.nq, ptr noundef %i.qn)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr %.sroa.0342.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not424 = icmp slt i32 %.2148, 1
  br i1 %.not424, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph426

.lr.ph426:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.qo = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qo ; 5 uses
  %i.qq = add nsw i32 %.2148, -1
  %i.qr = zext nneg i32 %i.qq to i64              ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.qr
  %or.cond.i.i246 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.qp, i64 -1 ; 3 uses
  %i.qu = sub nsw i64 0, %i.qo
  %.reass824 = add i64 %i.gp, %invariant.op823
  %diff.check648 = icmp ult i64 %.reass824, 31
  %invariant.op = or i1 %diff.check646, %diff.check648
  %invariant.op818.reass = add i64 %i.gp, %invariant.op825
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.pu, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph426, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph426 ], [ %i.qw, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131425 = phi i32 [ 1, %.lr.ph426 ], [ %i.xx, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.qw = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.qo, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 range(i64 0, 2147483648) %i.qw, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131425, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader375

.preheader375:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph419.preheader, label %.lr.ph413.preheader

.lr.ph419.preheader:                              ; preds = %.lr.ph413.preheader, %.preheader375
  br label %.lr.ph419

.lr.ph413.preheader:                              ; preds = %.preheader375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0351.0, i8 0, i64 range(i64 0, 8589934589) %i.fb, i1 false), !tbaa !96
  br label %.lr.ph419.preheader

.preheader373:                                    ; preds = %bb.ba
  br i1 %.not.i.i.i.i168, label %._crit_edge423.thread, label %.lr.ph422.preheader

.lr.ph422.preheader:                              ; preds = %.preheader373
  br i1 %min.iters.check670, label %.lr.ph422.preheader749, label %vector.body673

vector.body673:                                   ; preds = %.lr.ph422.preheader, %vector.body673
  %index674 = phi i64 [ %index.next676, %vector.body673 ], [ 0, %.lr.ph422.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index674 ; 2 uses
  %wide.load675 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !96
  %i.qy = sdiv <4 x i32> %wide.load675, %broadcast.splat
  store <4 x i32> %i.qy, ptr %i.qx, align 4, !tbaa !96
  %index.next676 = add nuw i64 %index674, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next676, %n.vec672
  br i1 %i.qz, label %middle.block677, label %vector.body673, !llvm.loop !418

middle.block677:                                  ; preds = %vector.body673
  br i1 %cmp.n678, label %.lr.ph.i228.preheader, label %.lr.ph422.preheader749

.lr.ph422.preheader749:                           ; preds = %.lr.ph422.preheader, %middle.block677
  %indvars.iv483.ph = phi i64 [ 0, %.lr.ph422.preheader ], [ %n.vec672, %middle.block677 ]
  br label %.lr.ph422

._crit_edge423.thread:                            ; preds = %.preheader373
  %i.ra = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i224

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.ba
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 4 uses
  %.0127417 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv479
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !239, !range !61, !noundef !62
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.ba, label %.preheader372

.preheader372:                                    ; preds = %.lr.ph419
  br i1 %.not.i.i.i.i168, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader372
  %i.re = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv479
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check683, label %scalar.ph682.preheader, label %vector.memcheck680

vector.memcheck680:                               ; preds = %.lr.ph415
  %scevgep681 = getelementptr i8, ptr %i.rf, i64 %i.fl
  %bound0 = icmp ult ptr %.sroa.0351.0, %scevgep681
  %bound1 = icmp ult ptr %i.rf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph682.preheader, label %vector.body686

vector.body686:                                   ; preds = %vector.memcheck680, %vector.body686
  %index687 = phi i64 [ %index.next692, %vector.body686 ], [ 0, %vector.memcheck680 ] ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %index687 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %wide.load688 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !96, !alias.scope !450
  %wide.load689 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !96, !alias.scope !450
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index687 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  %wide.load690 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %wide.load691 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %i.rk = add nsw <4 x i32> %wide.load690, %wide.load688
  %i.rl = add nsw <4 x i32> %wide.load691, %wide.load689
  store <4 x i32> %i.rk, ptr %i.ri, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  store <4 x i32> %i.rl, ptr %i.rj, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %index.next692 = add nuw i64 %index687, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.rm, label %middle.block693, label %vector.body686, !llvm.loop !422

middle.block693:                                  ; preds = %vector.body686
  br i1 %cmp.n694, label %._crit_edge416, label %scalar.ph682.preheader

scalar.ph682.preheader:                           ; preds = %vector.memcheck680, %.lr.ph415, %middle.block693
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck680 ], [ 0, %.lr.ph415 ], [ %n.vec685, %middle.block693 ] ; 3 uses
  br i1 %lcmp.mod786.not, label %scalar.ph682.prol.loopexit, label %scalar.ph682.prol

scalar.ph682.prol:                                ; preds = %scalar.ph682.preheader, %scalar.ph682.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph682.prol ], [ %indvars.iv.ph, %scalar.ph682.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph682.prol ], [ 0, %scalar.ph682.preheader ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.prol
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !96
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.prol ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !96
  %i.rr = add nsw i32 %i.rq, %i.ro
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter785
  br i1 %prol.iter.cmp.not, label %scalar.ph682.prol.loopexit, label %scalar.ph682.prol, !llvm.loop !423

scalar.ph682.prol.loopexit:                       ; preds = %scalar.ph682.prol, %scalar.ph682.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph682.preheader ], [ %indvars.iv.next.prol, %scalar.ph682.prol ]
  %i.rs = sub nsw i64 %indvars.iv.ph, %i.fa
  %i.rt = icmp ugt i64 %i.rs, -4
  br i1 %i.rt, label %._crit_edge416, label %scalar.ph682

._crit_edge416:                                   ; preds = %scalar.ph682.prol.loopexit, %scalar.ph682, %middle.block693, %.preheader372
  %i.ru = trunc nuw nsw i64 %indvars.iv479 to i32
  %i.rv = shl nuw i32 1, %i.ru
  %i.rw = trunc i32 %i.rv to i8
  %i.rx = or i8 %.0127417, %i.rw
  br label %bb.ba

scalar.ph682:                                     ; preds = %scalar.ph682.prol.loopexit, %scalar.ph682
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph682 ], [ %indvars.iv.unr, %scalar.ph682.prol.loopexit ] ; 6 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !96
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !96
  %i.sc = add nsw i32 %i.sb, %i.rz
  store i32 %i.sc, ptr %i.sa, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !96
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !96
  %i.sh = add nsw i32 %i.sg, %i.se
  store i32 %i.sh, ptr %i.sf, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next.1
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !96
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !96
  %i.sm = add nsw i32 %i.sl, %i.sj
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next.2
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !96
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !96
  %i.sr = add nsw i32 %i.sq, %i.so
  store i32 %i.sr, ptr %i.sp, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.fa
  br i1 %exitcond.not.3, label %._crit_edge416, label %scalar.ph682, !llvm.loop !424

bb.ba:                                            ; preds = %.lr.ph419, %._crit_edge416
  %.1128 = phi i8 [ %.0127417, %.lr.ph419 ], [ %i.rx, %._crit_edge416 ] ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %i.qo
  br i1 %exitcond482.not, label %.preheader373, label %.lr.ph419, !llvm.loop !425

.lr.ph.i228.preheader:                            ; preds = %.lr.ph422, %middle.block677
  %i.ss = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check655, label %.lr.ph.i228.preheader748, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.lr.ph.i228.preheader
  %i.st = ptrtoaddr ptr %i.ss to i64              ; 3 uses
  %i.su = sub i64 %i.en, %i.st
  %diff.check645 = icmp ugt i64 %i.su, -32
  %conflict.rdx649.reass = or i1 %diff.check645, %invariant.op
  %i.sv = sub i64 %i.ef, %i.st
  %diff.check650 = icmp ugt i64 %i.sv, -32
  %conflict.rdx651 = or i1 %conflict.rdx649.reass, %diff.check650
  %.reass = add i64 %i.st, %invariant.op818.reass
  %diff.check652 = icmp ult i64 %.reass, 31
  %conflict.rdx653 = or i1 %conflict.rdx651, %diff.check652
  br i1 %conflict.rdx653, label %.lr.ph.i228.preheader748, label %vector.body658

vector.body658:                                   ; preds = %vector.memcheck644, %vector.body658
  %index659 = phi i64 [ %index.next665, %vector.body658 ], [ 0, %vector.memcheck644 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.te, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %vec.phi660 = phi <4 x i32> [ %i.tf, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index659 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load661 = load <4 x i32>, ptr %i.sw, align 4, !tbaa !96
  %wide.load662 = load <4 x i32>, ptr %i.sx, align 4, !tbaa !96
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index659 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load663 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !96
  %wide.load664 = load <4 x i32>, ptr %i.sz, align 4, !tbaa !96
  %i.ta = sub nsw <4 x i32> %wide.load661, %wide.load663 ; 5 uses
  %i.tb = sub nsw <4 x i32> %wide.load662, %wide.load664 ; 5 uses
  %i.tc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ta, i1 true)
  %i.td = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tb, i1 true)
  %i.te = add <4 x i32> %i.tc, %vec.phi           ; 2 uses
  %i.tf = add <4 x i32> %i.td, %vec.phi660        ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index659 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store <4 x i32> %i.ta, ptr %i.tg, align 4, !tbaa !96
  store <4 x i32> %i.tb, ptr %i.th, align 4, !tbaa !96
  %i.ti = shl nuw <4 x i32> %i.ta, splat (i32 1)
  %i.tj = shl nuw <4 x i32> %i.tb, splat (i32 1)
  %i.tk = xor <4 x i32> %i.ta, splat (i32 -1)
  %i.tl = xor <4 x i32> %i.tb, splat (i32 -1)
  %i.tm = shl nuw <4 x i32> %i.tk, splat (i32 1)
  %i.tn = shl nuw <4 x i32> %i.tl, splat (i32 1)
  %i.to = or disjoint <4 x i32> %i.tm, splat (i32 1)
  %i.tp = or disjoint <4 x i32> %i.tn, splat (i32 1)
  %i.tq = icmp slt <4 x i32> %i.ta, zeroinitializer
  %i.tr = icmp slt <4 x i32> %i.tb, zeroinitializer
  %i.ts = select <4 x i1> %i.tq, <4 x i32> %i.to, <4 x i32> %i.ti
  %i.tt = select <4 x i1> %i.tr, <4 x i32> %i.tp, <4 x i32> %i.tj
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %index659 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store <4 x i32> %i.ts, ptr %i.tu, align 4, !tbaa !96
  store <4 x i32> %i.tt, ptr %i.tv, align 4, !tbaa !96
  %index.next665 = add nuw i64 %index659, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next665, %n.vec657
end_hunk_3
begin_hunk_4_@_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_:bb.a

bb.y:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i104
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !128
  %i.gc = getelementptr inbounds nuw i8, ptr %.01733.i, i64 8
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %i.gd = load i8, ptr %i.fj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i106 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gd)
  %i.ge = zext i8 %.sroa.speculated.i106 to i64
  %.not.not.i107 = icmp samesign ult i64 %indvars.iv.next.i105, %i.ge
  br i1 %.not.not.i107, label %bb.w, label %.critedge.i108, !llvm.loop !510

.critedge.i108:                                   ; preds = %bb.y, %bb.v
  %.lcssa.i109 = phi i8 [ %i.fk, %bb.v ], [ %i.gd, %bb.y ] ; 2 uses
  %i.gf = icmp ult i8 %.lcssa.i109, %2
  br i1 %i.gf, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.b
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated32.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gh)
  %.not33.i = icmp eq i8 %.sroa.speculated32.i, 0
  br i1 %.not33.i, label %.critedge.i116, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.z
  %i.gi = load i32, ptr %1, align 4, !tbaa !86
  %i.gj = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !125
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !243
  %i.gn = zext i32 %i.gi to i64
  %i.go = mul nsw i64 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %i.gk, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !122
  %i.gs = getelementptr i8, ptr %i.gp, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !244 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load i8, ptr %i.gv, align 8, !range !61
  %.fr47.i = freeze i8 %i.gw
  %i.gx = trunc i8 %.fr47.i to i1
  %i.gy = icmp ule ptr %i.gu, %i.gs
  %or.cond.not.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.not.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %.lr.ph41.i

bb.aa:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %.0173440.i, i64 4 ; 2 uses
  %i.ha = icmp ugt ptr %i.gu, %i.gz
  br i1 %i.ha, label %.lr.ph41.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !511

.lr.ph41.i:                                       ; preds = %.lr.ph.i111, %bb.aa
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %bb.aa ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %.0173440.i = phi ptr [ %i.gz, %bb.aa ], [ %i.gs, %.lr.ph.i111 ] ; 2 uses
  %i.hb = load float, ptr %.0173440.i, align 4, !tbaa !247 ; 4 uses
  %i.hc = tail call float @llvm.fabs.f32(float %i.hb)
  %or.cond.i.i = fcmp ueq float %i.hc, +inf
  %i.hd = fcmp olt float %i.hb, f0xDF000000
  %or.cond11.i.i = or i1 %i.hd, %or.cond.i.i
  %i.he = fcmp oge float %i.hb, f0x5F000000
  %or.cond12.i.i = or i1 %i.he, %or.cond11.i.i
  br i1 %or.cond12.i.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph41.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i112
  %i.hg = fptosi float %i.hb to i64
  store i64 %i.hg, ptr %i.hf, align 8, !tbaa !128
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %i.hh = load i8, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i114 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hh)
  %i.hi = zext i8 %.sroa.speculated.i114 to i64
  %.not.not.i115 = icmp samesign ult i64 %indvars.iv.next.i113, %i.hi
  br i1 %.not.not.i115, label %bb.aa, label %.critedge.i116, !llvm.loop !511

.critedge.i116:                                   ; preds = %bb.ab, %bb.z
  %.lcssa.i117 = phi i8 [ %i.gh, %bb.z ], [ %i.hh, %bb.ab ] ; 2 uses
  %i.hj = icmp ult i8 %.lcssa.i117, %2
  br i1 %i.hj, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated32.i120 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hl)
  %.not33.i121 = icmp eq i8 %.sroa.speculated32.i120, 0
  br i1 %.not33.i121, label %.critedge.i134, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ac
  %i.hm = load i32, ptr %1, align 4, !tbaa !86
  %i.hn = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !125
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !243
  %i.hr = zext i32 %i.hm to i64
  %i.hs = mul nsw i64 %i.hq, %i.hr
  %i.ht = getelementptr i8, ptr %i.ho, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !122
  %i.hw = getelementptr i8, ptr %i.ht, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !244 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ia = load i8, ptr %i.hz, align 8, !range !61
  %.fr47.i123 = freeze i8 %i.ia
  %i.ib = trunc i8 %.fr47.i123 to i1
  %i.ic = icmp ule ptr %i.hy, %i.hw
  %or.cond.not.i124 = select i1 %i.ib, i1 true, i1 %i.ic
  br i1 %or.cond.not.i124, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %.lr.ph41.i125

bb.ad:                                            ; preds = %bb.ae
  %i.id = getelementptr inbounds nuw i8, ptr %.0173440.i127, i64 8 ; 2 uses
  %i.ie = icmp ugt ptr %i.hy, %i.id
  br i1 %i.ie, label %.lr.ph41.i125, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !512

.lr.ph41.i125:                                    ; preds = %.lr.ph.i122, %bb.ad
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i131, %bb.ad ], [ 0, %.lr.ph.i122 ] ; 2 uses
  %.0173440.i127 = phi ptr [ %i.id, %bb.ad ], [ %i.hw, %.lr.ph.i122 ] ; 2 uses
  %i.if = load double, ptr %.0173440.i127, align 8, !tbaa !248 ; 4 uses
  %i.ig = tail call double @llvm.fabs.f64(double %i.if)
  %or.cond.i.i128 = fcmp ueq double %i.ig, +inf
  %i.ih = fcmp olt double %i.if, f0xC3E0000000000000
  %or.cond11.i.i129 = or i1 %i.ih, %or.cond.i.i128
  %i.ii = fcmp oge double %i.if, f0x43E0000000000000
  %or.cond12.i.i130 = or i1 %i.ii, %or.cond11.i.i129
  br i1 %or.cond12.i.i130, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph41.i125
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i126
  %i.ik = fptosi double %i.if to i64
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !128
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %i.il = load i8, ptr %i.hk, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i132 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.il)
  %i.im = zext i8 %.sroa.speculated.i132 to i64
  %.not.not.i133 = icmp samesign ult i64 %indvars.iv.next.i131, %i.im
  br i1 %.not.not.i133, label %bb.ad, label %.critedge.i134, !llvm.loop !512

.critedge.i134:                                   ; preds = %bb.ae, %bb.ac
  %.lcssa.i135 = phi i8 [ %i.hl, %bb.ac ], [ %i.il, %bb.ae ] ; 2 uses
  %i.in = icmp ult i8 %.lcssa.i135, %2
  br i1 %i.in, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.af:                                            ; preds = %bb.b
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i139 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ip)
  %.not30.i140 = icmp eq i8 %.sroa.speculated29.i139, 0
  br i1 %.not30.i140, label %.critedge.i148, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %bb.af
  %i.iq = load i32, ptr %1, align 4, !tbaa !86
  %i.ir = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !125
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !243
  %i.iv = zext i32 %i.iq to i64
  %i.iw = mul nsw i64 %i.iu, %i.iv
  %i.ix = getelementptr i8, ptr %i.is, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !122
  %i.ja = getelementptr i8, ptr %i.ix, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !244 ; 2 uses
  %i.jd = icmp ugt ptr %i.jc, %i.ja
  br i1 %i.jd, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ag:                                            ; preds = %.lr.ph
  %i.je = getelementptr inbounds nuw i8, ptr %.01731.i143259, i64 1 ; 2 uses
  %i.jf = icmp ugt ptr %i.jc, %i.je
  br i1 %i.jf, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !513

.lr.ph:                                           ; preds = %.lr.ph.i141, %bb.ag
  %.01731.i143259 = phi ptr [ %i.je, %bb.ag ], [ %i.ja, %.lr.ph.i141 ] ; 2 uses
  %indvars.iv.i142258 = phi i64 [ %indvars.iv.next.i145, %bb.ag ], [ 0, %.lr.ph.i141 ] ; 2 uses
  %i.jg = load i8, ptr %.01731.i143259, align 1, !tbaa !239, !range !61, !noundef !62
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i142258
  %i.ji = zext nneg i8 %i.jg to i64
  store i64 %i.ji, ptr %i.jh, align 8, !tbaa !128
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i142258, 1 ; 2 uses
  %i.jj = load i8, ptr %i.io, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i146 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jj)
  %i.jk = zext i8 %.sroa.speculated.i146 to i64
  %.not.not.i147 = icmp samesign ult i64 %indvars.iv.next.i145, %i.jk
  br i1 %.not.not.i147, label %bb.ag, label %.critedge.i148, !llvm.loop !513

.critedge.i148:                                   ; preds = %.lr.ph, %bb.af
  %.lcssa.i149 = phi i8 [ %i.ip, %bb.af ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.jl = icmp ult i8 %.lcssa.i149, %2
  br i1 %i.jl, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split: ; preds = %.critedge.i148, %.critedge.i134, %.critedge.i116, %.critedge.i108, %.critedge.i99, %.critedge.i86, %.critedge.i73, %.critedge.i60, %.critedge.i47, %.critedge.i34, %.critedge.i
  %.lcssa.i149.sink = phi i8 [ %.lcssa.i135, %.critedge.i134 ], [ %.lcssa.i117, %.critedge.i116 ], [ %.lcssa.i109, %.critedge.i108 ], [ %.lcssa.i100, %.critedge.i99 ], [ %.lcssa.i87, %.critedge.i86 ], [ %.lcssa.i74, %.critedge.i73 ], [ %.lcssa.i61, %.critedge.i60 ], [ %.lcssa.i48, %.critedge.i47 ], [ %.lcssa.i35, %.critedge.i34 ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i149, %.critedge.i148 ]
  %i.jm = zext i8 %2 to i64
  %i.jn = zext i8 %.lcssa.i149.sink to i64        ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %scevgep.i151 = getelementptr i8, ptr %3, i64 %i.jo
  %i.jp = xor i64 %i.jn, -1
  %i.jq = add nsw i64 %i.jp, %i.jm
  %i.jr = shl nsw i64 %i.jq, 3
  %i.js = and i64 %i.jr, 34359738360
  %i.jt = add nuw nsw i64 %i.js, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i151, i8 0, i64 range(i64 0, 2041) %i.jt, i1 false), !tbaa !128
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ag, %.lr.ph41.i125, %bb.ad, %.lr.ph41.i, %bb.aa, %bb.x, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i141, %.lr.ph.i27, %.lr.ph.i, %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, %.critedge.i148, %.critedge.i134, %.lr.ph.i122, %.critedge.i116, %.lr.ph.i111, %.critedge.i108, %.critedge.i99, %.critedge.i86, %.critedge.i73, %.critedge.i60, %.critedge.i47, %.critedge.i34, %.critedge.i, %bb.b, %bb.a
  %.0 = phi i1 [ false, %.lr.ph.i27 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.t ], [ false, %bb.n ], [ true, %.critedge.i108 ], [ true, %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split ], [ true, %.critedge.i116 ], [ true, %.critedge.i148 ], [ true, %.critedge.i ], [ false, %.lr.ph41.i ], [ true, %.critedge.i34 ], [ false, %.lr.ph.i111 ], [ true, %.critedge.i47 ], [ false, %.lr.ph.i ], [ true, %.critedge.i60 ], [ true, %.critedge.i134 ], [ true, %.critedge.i73 ], [ false, %bb.x ], [ true, %.critedge.i86 ], [ false, %.lr.ph.i122 ], [ true, %.critedge.i99 ], [ false, %bb.k ], [ false, %.lr.ph.i141 ], [ false, %.lr.ph41.i125 ], [ false, %bb.q ], [ false, %bb.w ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !190
  br label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17, !inline_history !514
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !515
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %.0.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.0.i, label %bb.b, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %.not1.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %.not2.i = icmp eq ptr %i.l, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  %i.o = icmp ne ptr %i.n, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetParentAttributeTypeEi(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE18SetParentAttributeEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !121
  %.not5 = icmp eq i8 %i.d, 3
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.e, align 8, !tbaa !249
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20EncodePredictionDataEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201
  store i32 %i.d, ptr %i.a, align 4, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i

_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.c

_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.j)
  %.pr.i = load i64, ptr %i.e, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !202
  store i32 %i.q, ptr %i.b, align 4, !tbaa !96
  %i.r = icmp slt i64 %.pr.i, 1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.t)
  br label %bb.c

bb.c:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i, %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull %1)
  ret i1 true
end_hunk_4
begin_hunk_5_@_ZNK5draco40MeshPredictionSchemeParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = icmp ne ptr %i.h, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco40MeshPredictionSchemeParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store i32 %4, ptr %i.a, align 8, !tbaa !203
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = sext i32 %4 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.l)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !149
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !96     ; 6 uses
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.r = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i32 %3, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02022.i.epil.init = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod139 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.u = load i32, ptr %i.t, align 4, !tbaa !96   ; 3 uses
  %i.v = icmp slt i32 %i.u, %.02022.i.epil.init
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.01923.i.epil.init)
  %.121.i.epil = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %.02022.i.epil.init)
  %.1.i.epil = select i1 %i.v, i32 %.01923.i.epil.init, i32 %spec.select.i.epil
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.e
  %.020.lcssa.i = phi i32 [ %i.p, %bb.e ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.121.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.019.lcssa.i = phi i32 [ %i.p, %bb.e ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.020.lcssa.i, ptr %i.w, align 4, !tbaa !201
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.019.lcssa.i, ptr %i.x, align 8, !tbaa !202
  %i.y = sext i32 %.019.lcssa.i to i64
  %i.z = sext i32 %.020.lcssa.i to i64
  %i.aa = sub nsw i64 %i.y, %i.z                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.aa, 2147483647
  br i1 %or.cond.i.i, label %bb.f, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !204
  %i.ae = lshr i32 %i.ac, 1                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !205
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !206
  %i.ai = and i32 %i.ab, 1
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.ae, -1
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.p, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.p, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !96 ; 3 uses
  %i.am = icmp slt i32 %i.al, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.am, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.aq, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.ar = icmp slt i32 %4, 0
  %i.as = shl nsw i64 %i.c, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as      ; 2 uses
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #18 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.at, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !164 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !165 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !210 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 3 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %.03489 = add i32 %i.bi, -1                     ; 2 uses
  %i.bj = icmp sgt i32 %.03489, 0
  br i1 %i.bj, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bl = icmp sgt i32 %4, 0
  %wide.trip.count.i45 = zext i32 %4 to i64       ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.br = zext nneg i32 %.03489 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i45, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i45
  br label %bb.h

.preheader:                                       ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.bs = icmp sgt i32 %4, 0
  br i1 %i.bs, label %.lr.ph93.preheader, label %._crit_edge

.lr.ph93.preheader:                               ; preds = %.preheader
  %i.bt = zext nneg i32 %4 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 range(i64 0, 8589934589) %i.bu, i1 false), !tbaa !96
  br label %._crit_edge

bb.h:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ %i.br, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ] ; 10 uses
  %.034.in90 = phi i32 [ %i.bi, %.lr.ph ], [ %i.hf, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ]
  %.not.i.i42 = icmp ugt i64 %i.bh, %indvars.iv
  br i1 %.not.i.i42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv, i64 noundef %i.bh) #20
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit79

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !212 ; 2 uses
  %i.bx = mul nsw i64 %indvars.iv, %i.c           ; 4 uses
  %i.by = icmp eq i32 %i.bw, -1
  br i1 %i.by, label %bb.o, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.j
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !210, !noalias !613
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !212, !noalias !613 ; 7 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.o, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ce = zext i32 %i.cc to i64
  %i.cf = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !614 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !235, !noalias !614
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !96 ; 2 uses
  %i.cm = add nuw i32 %i.cc, 1                    ; 2 uses
  %i.cn = urem i32 %i.cm, 3
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  %i.co = add i32 %i.cc, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.co, i32 %i.cm ; 2 uses
  %i.cp = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.cp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.cq = zext i32 %spec.select.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !235, !noalias !615
  %i.ct = zext i32 %i.cs to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ct, %bb.k ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %storemerge.i11.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !96 ; 2 uses
  %i.cw = urem i32 %i.cc, 3
  %.not.i13.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.l
  %i.cx = add i32 %i.cc, -1
  br label %bb.m

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.l
  %i.cy = add i32 %i.cc, 2                        ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.cx, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.cy, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.da = zext i32 %.sink.i1428.i.i to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !235, !noalias !616
  %i.dd = zext i32 %i.dc to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.m, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.dd, %bb.m ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %storemerge.i15.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !96 ; 2 uses
  %i.dg = sext i32 %i.cl to i64
  %i.dh = icmp sgt i64 %indvars.iv, %i.dg
  %i.di = sext i32 %i.cv to i64
  %i.dj = icmp sgt i64 %indvars.iv, %i.di
  %or.cond.i = select i1 %i.dh, i1 %i.dj, i1 false
  %i.dk = sext i32 %i.df to i64
  %i.dl = icmp sgt i64 %indvars.iv, %i.dk
  %or.cond40.i = select i1 %or.cond.i, i1 %i.dl, i1 false
  br i1 %or.cond40.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %i.bl, label %.lr.ph.preheader.i44, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

.lr.ph.preheader.i44:                             ; preds = %bb.n
  %i.dm = mul nsw i32 %i.df, %4
  %i.dn = mul nsw i32 %i.cv, %4
  %i.do = mul nsw i32 %i.cl, %4
  %i.dp = sext i32 %i.dn to i64
  %i.dq = sext i32 %i.dm to i64
  %i.dr = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.dp ; 2 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.dq ; 2 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.dr ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i46.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i44, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i44 ] ; 5 uses
  %i.ds = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %wide.load = load <4 x i32>, ptr %i.ds, align 4, !tbaa !96
  %wide.load130 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !96
  %i.du = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %wide.load131 = load <4 x i32>, ptr %i.du, align 4, !tbaa !96
  %wide.load132 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !96
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %wide.load133 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !96
  %wide.load134 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !96
  %i.dy = add <4 x i32> %wide.load131, %wide.load
  %i.dz = add <4 x i32> %wide.load132, %wide.load130
  %i.ea = sub <4 x i32> %i.dy, %wide.load133
  %i.eb = sub <4 x i32> %i.dz, %wide.load134
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x i32> %i.ea, ptr %i.ec, align 4, !tbaa !96
  store <4 x i32> %i.eb, ptr %i.ed, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block
  %indvars.iv.i47.ph = phi i64 [ 0, %.lr.ph.preheader.i44 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ %indvars.iv.i47.ph, %.lr.ph.i46.preheader ] ; 5 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i47
  %i.ef = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i47
  %i.eg = load i32, ptr %gep50.i, align 4, !tbaa !96
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i47
  %i.eh = load i32, ptr %gep52.i, align 4, !tbaa !96
  %i.ei = add i32 %i.eg, %i.ef
  %i.ej = sub i32 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i47
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !96
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i45
  br i1 %exitcond.not.i49, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i46, !llvm.loop !611

bb.o:                                             ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.j
  %i.el = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.em = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bx
  %i.en = load i32, ptr %i.a, align 8, !tbaa !203
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.o
  %i.ep = add i32 %.034.in90, -2
  %i.eq = mul nsw i32 %i.ep, %4
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %1, i64 %i.er
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.lr.ph.i
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i52, %bb.y ] ; 4 uses
  %.01516.i = phi ptr [ %i.es, %.lr.ph.i.lr.ph.i ], [ %i.et, %bb.y ]
  %i.et = load ptr, ptr %i.b, align 8             ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !96 ; 3 uses
  %i.ew = load i32, ptr %i.bm, align 8, !tbaa !202 ; 2 uses
  %i.ex = icmp sgt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i.i
  store i32 %i.ew, ptr %i.ey, align 4, !tbaa !96
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ez = load i32, ptr %i.bn, align 4, !tbaa !201 ; 2 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.fa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !96
  br label %bb.u

end_hunk_5
begin_hunk_6_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.cp = sub nuw nsw i64 %i.g, %i.cl
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.cp)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %bb.t

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15352.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0344.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.g
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = sub nuw nsw i64 %i.g, %i.cz
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef %i.db)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.z

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dc = icmp ugt i64 %i.cz, %i.g
  br i1 %i.dc, label %bb.w, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.cu, %i.dd
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.v, %bb.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.de = shl nuw nsw i64 %i.g, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #18
          to label %.noexc181 unwind label %bb.aa ; 5 uses

.noexc181:                                        ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.g ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr i8, ptr %i.df, i64 4      ; 3 uses
  %i.di = add nsw i64 %i.g, -1                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph432, label %.preheader

.lr.ph432:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %wide.trip.count.i187 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0344.0 to i64       ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ei = icmp sgt i64 %i.ef, 4                   ; 2 uses
  %i.ej = icmp eq i64 %i.ef, 4                    ; 2 uses
  %i.ek = icmp ugt i64 %i.ef, 9223372036854775804
  %i.el = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.em = ptrtoint ptr %.sroa.0335.0 to i64       ; 8 uses
  %i.en = sub i64 %i.el, %i.em                    ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.eq = icmp sgt i64 %i.en, 4                   ; 2 uses
  %i.er = icmp eq i64 %i.en, 4                    ; 2 uses
  %i.es = icmp ugt i64 %i.en, 9223372036854775804
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ey = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.ez = zext nneg i32 %i.ey to i64              ; 15 uses
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = mul nsw i64 %i.fc, %i.g                 ; 2 uses
  %i.fe = shl i64 %i.fd, 2
  %i.ff = add i64 %i.fe, %i.a
  %i.fg = sub i64 %i.em, %i.ff
  %i.fh = shl nuw nsw i64 %i.g, 2
  %i.fi = mul i64 %i.fd, -4
  %i.fj = sub i64 %i.fi, %i.a
  %i.fk = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fk
  %i.fl = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.g
  %i.fn = shl i64 %i.fm, 2
  %i.fo = add i64 %i.fn, %i.a
  %i.fp = sub i64 %i.em, %i.fo
  %i.fq = shl nuw nsw i64 %i.g, 2
  %i.fr = add nsw i64 %i.fb, -2                   ; 2 uses
  %i.fs = mul nsw i64 %i.fr, %i.g
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = sub i64 %i.em, %i.fu
  %i.fw = mul nsw i64 %i.fl, %i.g
  %i.fx = mul i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.a
  %i.fz = mul nsw i64 %i.fr, %i.g
  %i.ga = mul i64 %i.fz, -4
  %i.gb = sub i64 %i.ga, %i.a
  %min.iters.check726 = icmp ult i32 %4, 12
  %n.vec728 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n739 = icmp eq i64 %n.vec728, %wide.trip.count.i187
  %xtraiter778 = and i64 %wide.trip.count.i187, 1
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  %i.gc = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check702 = icmp ult i32 %4, 8
  %invariant.op814 = add i64 %i.fp, -1
  %invariant.op816 = add i64 %i.fv, -1
  %n.vec704 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec704, %wide.trip.count.i187
  %min.iters.check678 = icmp ult i32 %4, 8
  %n.vec680 = and i64 %i.ez, 2147483640           ; 3 uses
  %cmp.n689 = icmp eq i64 %n.vec680, %i.ez
  %xtraiter780 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %min.iters.check665 = icmp ult i32 %4, 4
  %n.vec667 = and i64 %i.ez, 2147483644           ; 3 uses
  %cmp.n673 = icmp eq i64 %n.vec667, %i.ez
  %min.iters.check650 = icmp ult i32 %4, 8
  %i.gd = sub i64 %i.ee, %i.em
  %diff.check641 = icmp ugt i64 %i.gd, -32
  %invariant.op818 = add i64 %i.fg, -1
  %invariant.op820 = add i64 %i.fj, -1
  %n.vec652 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n662 = icmp eq i64 %n.vec652, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.ez, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ez
  %xtraiter782 = and i64 %i.ez, 1
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %i.ge = add nsw i64 %i.ez, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader
  %i.gf = load ptr, ptr %8, align 16, !tbaa !101
  %i.gg = zext nneg i32 %4 to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 range(i64 0, 8589934589) %i.gh, i1 false), !tbaa !96
  br label %._crit_edge435

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

bb.z:                                             ; preds = %bb.u
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274

bb.ab:                                            ; preds = %.lr.ph432, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar642 = phi i64 [ 0, %.lr.ph432 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv492 = phi i64 [ %i.fb, %.lr.ph432 ], [ %indvars.iv.next493, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gl = mul i64 %i.fq, %indvar642               ; 4 uses
  %i.gm = add i64 %i.fy, %i.gl
  %i.gn = add i64 %i.gb, %i.gl
  %i.go = mul i64 %i.fh, %indvar642               ; 2 uses
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, -1 ; 8 uses
  %i.gp = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !209
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !210 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gw, %indvars.iv.next493
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next493, i64 noundef %i.gw) #20
          to label %.noexc184 unwind label %bb.ai

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.next493
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !212 ; 6 uses
  %.not362398 = icmp eq i32 %i.gy, -1
  br i1 %.not362398, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !666
  %i.ha = urem i32 %i.gy, 3
  %.not.i.i197 = icmp ne i32 %i.ha, 0             ; 2 uses
  %i.hb = add i32 %i.gy, -1
  %i.hc = add i32 %i.gy, 2                        ; 2 uses
  %i.hd = icmp ne i32 %i.hc, -1
  %.mux = select i1 %.not.i.i197, i32 %i.hb, i32 %i.hc
  %i.he = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.hd
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144401 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146400 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0399 = phi i32 [ %i.gy, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.hf = sext i32 %.0146400 to i64
  %i.hg = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !101 ; 5 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %i.hj = zext i32 %.sroa.0325.0399 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !212, !noalias !666 ; 7 uses
  %i.hm = icmp eq i32 %i.hl, -1
  br i1 %i.hm, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hn = zext i32 %i.hl to i64
  %i.ho = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !667 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !235, !noalias !667
  %i.hr = zext i32 %i.hq to i64
  %i.hs = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !96 ; 2 uses
  %i.hv = add nuw i32 %i.hl, 1                    ; 2 uses
  %i.hw = urem i32 %i.hv, 3
  %.not.i.i.i = icmp eq i32 %i.hw, 0
  %i.hx = add i32 %i.hl, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.hx, i32 %i.hv ; 2 uses
  %i.hy = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.hz = zext i32 %spec.select.i.i.i to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !235, !noalias !668
  %i.ic = zext i32 %i.ib to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ic, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i11.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !96 ; 2 uses
  %i.if = urem i32 %i.hl, 3
  %.not.i13.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.af
  %i.ig = add i32 %i.hl, -1
  br label %bb.ag

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.af
  %i.ih = add i32 %i.hl, 2                        ; 2 uses
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ig, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.ih, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ij = zext i32 %.sink.i1428.i.i to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !235, !noalias !669
  %i.im = zext i32 %i.il to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ag, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.im, %bb.ag ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i15.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !96 ; 2 uses
  %i.ip = sext i32 %i.hu to i64
  %i.iq = icmp sgt i64 %indvars.iv.next493, %i.ip
  %i.ir = sext i32 %i.ie to i64
  %i.is = icmp sgt i64 %indvars.iv.next493, %i.ir
  %or.cond.i = select i1 %i.iq, i1 %i.is, i1 false
  %i.it = sext i32 %i.io to i64
  %i.iu = icmp sgt i64 %indvars.iv.next493, %i.it
  %or.cond40.i = select i1 %or.cond.i, i1 %i.iu, i1 false
  br i1 %or.cond40.i, label %bb.ah, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ah:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.ah
  %i.iv = mul nsw i32 %i.io, %4
  %i.iw = mul nsw i32 %i.ie, %4
  %i.ix = mul nsw i32 %i.hu, %4
  %i.iy = sext i32 %i.iw to i64                   ; 2 uses
  %i.iz = sext i32 %i.iv to i64                   ; 2 uses
  %i.ja = sext i32 %i.ix to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.iy ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.iz ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.ja ; 4 uses
  br i1 %min.iters.check726, label %.lr.ph.i188.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %.lr.ph.preheader.i186
  %i.jb = sub i64 %i.hi, %i.a                     ; 2 uses
  %i.jc = shl nsw i64 %i.ja, 2
  %i.jd = sub i64 %i.jc, %i.jb
  %diff.check720 = icmp ugt i64 %i.jd, -32
  %i.je = shl nsw i64 %i.iz, 2
  %i.jf = sub i64 %i.je, %i.jb
  %diff.check721 = icmp ugt i64 %i.jf, -32
  %conflict.rdx722 = or i1 %diff.check720, %diff.check721
  %i.jg = shl nsw i64 %i.iy, 2
  %i.jh = add i64 %i.jg, %i.a
  %i.ji = sub i64 %i.jh, %i.hi
  %diff.check723 = icmp ugt i64 %i.ji, -32
  %conflict.rdx724 = or i1 %conflict.rdx722, %diff.check723
  br i1 %conflict.rdx724, label %.lr.ph.i188.preheader, label %vector.body729

vector.body729:                                   ; preds = %vector.memcheck719, %vector.body729
  %index730 = phi i64 [ %index.next737, %vector.body729 ], [ 0, %vector.memcheck719 ] ; 5 uses
  %i.jj = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index730 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  %wide.load731 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !96
  %wide.load732 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !96
  %i.jl = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index730 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %wide.load733 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !96
  %wide.load734 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !96
  %i.jn = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index730 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load735 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !96
  %wide.load736 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !96
  %i.jp = add <4 x i32> %wide.load733, %wide.load731
  %i.jq = add <4 x i32> %wide.load734, %wide.load732
  %i.jr = sub <4 x i32> %i.jp, %wide.load735
  %i.js = sub <4 x i32> %i.jq, %wide.load736
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index730 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <4 x i32> %i.jr, ptr %i.jt, align 4, !tbaa !96
  store <4 x i32> %i.js, ptr %i.ju, align 4, !tbaa !96
  %index.next737 = add nuw i64 %index730, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next737, %n.vec728
  br i1 %i.jv, label %middle.block738, label %vector.body729, !llvm.loop !632

middle.block738:                                  ; preds = %vector.body729
  br i1 %cmp.n739, label %.loopexit371, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %vector.memcheck719, %.lr.ph.preheader.i186, %middle.block738
  %indvars.iv.i189.ph = phi i64 [ 0, %vector.memcheck719 ], [ 0, %.lr.ph.preheader.i186 ], [ %n.vec728, %middle.block738 ] ; 7 uses
end_hunk_6
begin_hunk_7_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %diff.check692 = icmp ugt i64 %i.mg, -32
  %.reass815 = add i64 %i.gl, %invariant.op814
  %diff.check693 = icmp ult i64 %.reass815, 31
  %conflict.rdx694 = or i1 %diff.check692, %diff.check693
  %.reass817 = add i64 %i.gl, %invariant.op816
  %diff.check695 = icmp ult i64 %.reass817, 31
  %conflict.rdx696 = or i1 %conflict.rdx694, %diff.check695
  %i.mh = add i64 %i.gm, %i.mf
  %i.mi = add i64 %i.mh, -1
  %diff.check697 = icmp ult i64 %i.mi, 31
  %conflict.rdx698 = or i1 %conflict.rdx696, %diff.check697
  %i.mj = add i64 %i.gn, %i.mf
  %i.mk = add i64 %i.mj, -1
  %diff.check699 = icmp ult i64 %i.mk, 31
  %conflict.rdx700 = or i1 %conflict.rdx698, %diff.check699
  br i1 %conflict.rdx700, label %.lr.ph.i206.preheader746, label %vector.body705

vector.body705:                                   ; preds = %vector.memcheck691, %vector.body705
  %index706 = phi i64 [ %index.next713, %vector.body705 ], [ 0, %vector.memcheck691 ] ; 5 uses
  %vec.phi707 = phi <4 x i32> [ %i.mt, %vector.body705 ], [ zeroinitializer, %vector.memcheck691 ]
  %vec.phi708 = phi <4 x i32> [ %i.mu, %vector.body705 ], [ zeroinitializer, %vector.memcheck691 ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %index706 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load709 = load <4 x i32>, ptr %i.ml, align 4, !tbaa !96
  %wide.load710 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !96
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index706 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load711 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !96
  %wide.load712 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !96
  %i.mp = sub nsw <4 x i32> %wide.load709, %wide.load711 ; 5 uses
  %i.mq = sub nsw <4 x i32> %wide.load710, %wide.load712 ; 5 uses
  %i.mr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mp, i1 true)
  %i.ms = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mq, i1 true)
  %i.mt = add <4 x i32> %i.mr, %vec.phi707        ; 2 uses
  %i.mu = add <4 x i32> %i.ms, %vec.phi708        ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index706 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <4 x i32> %i.mp, ptr %i.mv, align 4, !tbaa !96
  store <4 x i32> %i.mq, ptr %i.mw, align 4, !tbaa !96
  %i.mx = shl nuw <4 x i32> %i.mp, splat (i32 1)
  %i.my = shl nuw <4 x i32> %i.mq, splat (i32 1)
  %i.mz = xor <4 x i32> %i.mp, splat (i32 -1)
  %i.na = xor <4 x i32> %i.mq, splat (i32 -1)
  %i.nb = shl nuw <4 x i32> %i.mz, splat (i32 1)
  %i.nc = shl nuw <4 x i32> %i.na, splat (i32 1)
  %i.nd = or disjoint <4 x i32> %i.nb, splat (i32 1)
  %i.ne = or disjoint <4 x i32> %i.nc, splat (i32 1)
  %i.nf = icmp slt <4 x i32> %i.mp, zeroinitializer
  %i.ng = icmp slt <4 x i32> %i.mq, zeroinitializer
  %i.nh = select <4 x i1> %i.nf, <4 x i32> %i.nd, <4 x i32> %i.mx
  %i.ni = select <4 x i1> %i.ng, <4 x i32> %i.ne, <4 x i32> %i.my
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index706 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <4 x i32> %i.nh, ptr %i.nj, align 4, !tbaa !96
  store <4 x i32> %i.ni, ptr %i.nk, align 4, !tbaa !96
  %index.next713 = add nuw i64 %index706, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next713, %n.vec704
  br i1 %i.nl, label %middle.block714, label %vector.body705, !llvm.loop !647

middle.block714:                                  ; preds = %vector.body705
  %bin.rdx715 = add <4 x i32> %i.mu, %i.mt
  %i.nm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx715) ; 2 uses
  br i1 %cmp.n716, label %._crit_edge.loopexit.i, label %.lr.ph.i206.preheader746

.lr.ph.i206.preheader746:                         ; preds = %vector.memcheck691, %.lr.ph.i206.preheader, %middle.block714
  %indvars.iv.i208.ph = phi i64 [ 0, %vector.memcheck691 ], [ 0, %.lr.ph.i206.preheader ], [ %n.vec704, %middle.block714 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck691 ], [ 0, %.lr.ph.i206.preheader ], [ %i.nm, %middle.block714 ]
  br label %.lr.ph.i206

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i206, %middle.block714
  %.lcssa = phi i32 [ %i.nm, %middle.block714 ], [ %i.nx, %.lr.ph.i206 ]
  %i.nn = zext nneg i32 %.lcssa to i64
  %i.no = shl nuw nsw i64 %i.nn, 32
  br label %._crit_edge.i205

._crit_edge.i205:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.no, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.me, i32 noundef %4)
          to label %.noexc211 unwind label %bb.aw

.noexc211:                                        ; preds = %._crit_edge.i205
  %i.np = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc212 unwind label %bb.aw

.noexc212:                                        ; preds = %.noexc211
  %i.nq = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.preheader746, %.lr.ph.i206
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %.lr.ph.i206 ], [ %indvars.iv.i208.ph, %.lr.ph.i206.preheader746 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.nx, %.lr.ph.i206 ], [ %.sroa.3.015.i.ph, %.lr.ph.i206.preheader746 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv.i208
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !96
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i208
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !96
  %i.nv = sub nsw i32 %i.ns, %i.nu                ; 5 uses
  %i.nw = call i32 @llvm.abs.i32(i32 %i.nv, i1 true)
  %i.nx = add nuw nsw i32 %i.nw, %.sroa.3.015.i   ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i208
  store i32 %i.nv, ptr %i.ny, align 4, !tbaa !96
  %i.nz = shl nuw i32 %i.nv, 1
  %i.oa = xor i32 %i.nv, -1
  %i.ob = shl nuw i32 %i.oa, 1
  %i.oc = or disjoint i32 %i.ob, 1
  %i.od = icmp slt i32 %i.nv, 0
  %.0.i.i = select i1 %i.od, i32 %i.oc, i32 %i.nz
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i208
  store i32 %.0.i.i, ptr %i.oe, align 4, !tbaa !96
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %wide.trip.count.i187
  br i1 %exitcond.not.i210, label %._crit_edge.loopexit.i, label %.lr.ph.i206, !llvm.loop !648

bb.at:                                            ; preds = %.noexc212
  %i.of = add nsw i64 %i.nq, %i.np                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.og = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.og, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.oh = zext nneg i32 %.2148 to i64
  %i.oi = add nsw i32 %.2148, -1
  %i.oj = zext nneg i32 %i.oi to i64              ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.oj ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !128
  %i.om = add nsw i64 %i.ol, %i.oh                ; 3 uses
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !128
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.oj
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !128
  %i.op = trunc i64 %i.om to i32
  %i.oq = trunc i64 %i.oo to i32
  %i.or = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.op, i32 noundef %i.oq)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.os = sitofp i64 %i.om to double
  %i.ot = fmul double %i.or, %i.os
  %i.ou = call double @llvm.ceil.f64(double %i.ot)
  %i.ov = fptosi double %i.ou to i64
  %i.ow = add i64 %i.of, %i.ov
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc212, %.noexc211, %._crit_edge.i205
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.ow, %bb.av ], [ %i.of, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8, !tbaa !96
  store i8 0, ptr %i.dz, align 8, !tbaa !675
  store i32 0, ptr %i.dx, align 4, !tbaa !676
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef %i.mc, ptr noundef %i.oz)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr %.sroa.0335.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not418 = icmp slt i32 %.2148, 1
  br i1 %.not418, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph420

.lr.ph420:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.pa = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pa ; 5 uses
  %i.pc = add nsw i32 %.2148, -1
  %i.pd = zext nneg i32 %i.pc to i64              ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pd
  %or.cond.i.i239 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.pb, i64 -1 ; 3 uses
  %i.pg = sub nsw i64 0, %i.pa
  %.reass819 = add i64 %i.go, %invariant.op818
  %diff.check643 = icmp ult i64 %.reass819, 31
  %invariant.op = or i1 %diff.check641, %diff.check643
  %invariant.op813.reass = add i64 %i.go, %invariant.op820
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.og, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph420, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph420 ], [ %i.pi, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131419 = phi i32 [ 1, %.lr.ph420 ], [ %i.wj, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.pi = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.pa, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 range(i64 0, 2147483648) %i.pi, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131419, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader368

.preheader368:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph413.preheader, label %.lr.ph.preheader

.lr.ph413.preheader:                              ; preds = %.lr.ph.preheader, %.preheader368
  br label %.lr.ph413

.lr.ph.preheader:                                 ; preds = %.preheader368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0344.0, i8 0, i64 range(i64 0, 8589934589) %i.fa, i1 false), !tbaa !96
  br label %.lr.ph413.preheader

.preheader366:                                    ; preds = %bb.ba
  br i1 %.not.i.i.i.i168, label %._crit_edge417.thread, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %.preheader366
  br i1 %min.iters.check665, label %.lr.ph416.preheader744, label %vector.body668

vector.body668:                                   ; preds = %.lr.ph416.preheader, %vector.body668
  %index669 = phi i64 [ %index.next671, %vector.body668 ], [ 0, %.lr.ph416.preheader ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index669 ; 2 uses
  %wide.load670 = load <4 x i32>, ptr %i.pj, align 4, !tbaa !96
  %i.pk = sdiv <4 x i32> %wide.load670, %broadcast.splat
  store <4 x i32> %i.pk, ptr %i.pj, align 4, !tbaa !96
  %index.next671 = add nuw i64 %index669, 4       ; 2 uses
  %i.pl = icmp eq i64 %index.next671, %n.vec667
  br i1 %i.pl, label %middle.block672, label %vector.body668, !llvm.loop !649

middle.block672:                                  ; preds = %vector.body668
  br i1 %cmp.n673, label %.lr.ph.i221.preheader, label %.lr.ph416.preheader744

.lr.ph416.preheader744:                           ; preds = %.lr.ph416.preheader, %middle.block672
  %indvars.iv477.ph = phi i64 [ 0, %.lr.ph416.preheader ], [ %n.vec667, %middle.block672 ]
  br label %.lr.ph416

._crit_edge417.thread:                            ; preds = %.preheader366
  %i.pm = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i217

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %bb.ba
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 4 uses
  %.0127411 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv473
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !239, !range !61, !noundef !62
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.ba, label %.preheader365

.preheader365:                                    ; preds = %.lr.ph413
  br i1 %.not.i.i.i.i168, label %._crit_edge410, label %.lr.ph409

.lr.ph409:                                        ; preds = %.preheader365
  %i.pq = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv473
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check678, label %scalar.ph677.preheader, label %vector.memcheck675

vector.memcheck675:                               ; preds = %.lr.ph409
  %scevgep676 = getelementptr i8, ptr %i.pr, i64 %i.fk
  %bound0 = icmp ult ptr %.sroa.0344.0, %scevgep676
  %bound1 = icmp ult ptr %i.pr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph677.preheader, label %vector.body681

vector.body681:                                   ; preds = %vector.memcheck675, %vector.body681
  %index682 = phi i64 [ %index.next687, %vector.body681 ], [ 0, %vector.memcheck675 ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index682 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load683 = load <4 x i32>, ptr %i.ps, align 4, !tbaa !96, !alias.scope !677
  %wide.load684 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !96, !alias.scope !677
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index682 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %wide.load685 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %wide.load686 = load <4 x i32>, ptr %i.pv, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %i.pw = add nsw <4 x i32> %wide.load685, %wide.load683
  %i.px = add nsw <4 x i32> %wide.load686, %wide.load684
  store <4 x i32> %i.pw, ptr %i.pu, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  store <4 x i32> %i.px, ptr %i.pv, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.py = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.py, label %middle.block688, label %vector.body681, !llvm.loop !653

middle.block688:                                  ; preds = %vector.body681
  br i1 %cmp.n689, label %._crit_edge410, label %scalar.ph677.preheader

scalar.ph677.preheader:                           ; preds = %vector.memcheck675, %.lr.ph409, %middle.block688
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck675 ], [ 0, %.lr.ph409 ], [ %n.vec680, %middle.block688 ] ; 3 uses
  br i1 %lcmp.mod781.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol

scalar.ph677.prol:                                ; preds = %scalar.ph677.preheader, %scalar.ph677.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph677.prol ], [ %indvars.iv.ph, %scalar.ph677.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph677.prol ], [ 0, %scalar.ph677.preheader ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.prol
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !96
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.prol ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !96
  %i.qd = add nsw i32 %i.qc, %i.qa
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter780
  br i1 %prol.iter.cmp.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol, !llvm.loop !654

scalar.ph677.prol.loopexit:                       ; preds = %scalar.ph677.prol, %scalar.ph677.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph677.preheader ], [ %indvars.iv.next.prol, %scalar.ph677.prol ]
  %i.qe = sub nsw i64 %indvars.iv.ph, %i.ez
  %i.qf = icmp ugt i64 %i.qe, -4
  br i1 %i.qf, label %._crit_edge410, label %scalar.ph677

._crit_edge410:                                   ; preds = %scalar.ph677.prol.loopexit, %scalar.ph677, %middle.block688, %.preheader365
  %i.qg = trunc nuw nsw i64 %indvars.iv473 to i32
  %i.qh = shl nuw i32 1, %i.qg
  %i.qi = trunc i32 %i.qh to i8
  %i.qj = or i8 %.0127411, %i.qi
  br label %bb.ba

scalar.ph677:                                     ; preds = %scalar.ph677.prol.loopexit, %scalar.ph677
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph677 ], [ %indvars.iv.unr, %scalar.ph677.prol.loopexit ] ; 6 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !96
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !96
  %i.qo = add nsw i32 %i.qn, %i.ql
  store i32 %i.qo, ptr %i.qm, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !96
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !96
  %i.qt = add nsw i32 %i.qs, %i.qq
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.1
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !96
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !96
  %i.qy = add nsw i32 %i.qx, %i.qv
  store i32 %i.qy, ptr %i.qw, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.2
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !96
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !96
  %i.rd = add nsw i32 %i.rc, %i.ra
  store i32 %i.rd, ptr %i.rb, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ez
  br i1 %exitcond.not.3, label %._crit_edge410, label %scalar.ph677, !llvm.loop !655

bb.ba:                                            ; preds = %.lr.ph413, %._crit_edge410
  %.1128 = phi i8 [ %.0127411, %.lr.ph413 ], [ %i.qj, %._crit_edge410 ] ; 2 uses
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond476.not = icmp eq i64 %indvars.iv.next474, %i.pa
  br i1 %exitcond476.not, label %.preheader366, label %.lr.ph413, !llvm.loop !656

.lr.ph.i221.preheader:                            ; preds = %.lr.ph416, %middle.block672
  %i.re = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check650, label %.lr.ph.i221.preheader743, label %vector.memcheck639

vector.memcheck639:                               ; preds = %.lr.ph.i221.preheader
  %i.rf = ptrtoaddr ptr %i.re to i64              ; 3 uses
  %i.rg = sub i64 %i.em, %i.rf
  %diff.check640 = icmp ugt i64 %i.rg, -32
  %conflict.rdx644.reass = or i1 %diff.check640, %invariant.op
  %i.rh = sub i64 %i.ee, %i.rf
  %diff.check645 = icmp ugt i64 %i.rh, -32
  %conflict.rdx646 = or i1 %conflict.rdx644.reass, %diff.check645
  %.reass = add i64 %i.rf, %invariant.op813.reass
  %diff.check647 = icmp ult i64 %.reass, 31
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  br i1 %conflict.rdx648, label %.lr.ph.i221.preheader743, label %vector.body653

vector.body653:                                   ; preds = %vector.memcheck639, %vector.body653
  %index654 = phi i64 [ %index.next660, %vector.body653 ], [ 0, %vector.memcheck639 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.rq, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %vec.phi655 = phi <4 x i32> [ %i.rr, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index654 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %wide.load656 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !96
  %wide.load657 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !96
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index654 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %wide.load658 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !96
  %wide.load659 = load <4 x i32>, ptr %i.rl, align 4, !tbaa !96
  %i.rm = sub nsw <4 x i32> %wide.load656, %wide.load658 ; 5 uses
  %i.rn = sub nsw <4 x i32> %wide.load657, %wide.load659 ; 5 uses
  %i.ro = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rm, i1 true)
  %i.rp = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rn, i1 true)
  %i.rq = add <4 x i32> %i.ro, %vec.phi           ; 2 uses
  %i.rr = add <4 x i32> %i.rp, %vec.phi655        ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index654 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store <4 x i32> %i.rm, ptr %i.rs, align 4, !tbaa !96
  store <4 x i32> %i.rn, ptr %i.rt, align 4, !tbaa !96
  %i.ru = shl nuw <4 x i32> %i.rm, splat (i32 1)
  %i.rv = shl nuw <4 x i32> %i.rn, splat (i32 1)
  %i.rw = xor <4 x i32> %i.rm, splat (i32 -1)
  %i.rx = xor <4 x i32> %i.rn, splat (i32 -1)
  %i.ry = shl nuw <4 x i32> %i.rw, splat (i32 1)
  %i.rz = shl nuw <4 x i32> %i.rx, splat (i32 1)
  %i.sa = or disjoint <4 x i32> %i.ry, splat (i32 1)
  %i.sb = or disjoint <4 x i32> %i.rz, splat (i32 1)
  %i.sc = icmp slt <4 x i32> %i.rm, zeroinitializer
  %i.sd = icmp slt <4 x i32> %i.rn, zeroinitializer
  %i.se = select <4 x i1> %i.sc, <4 x i32> %i.sa, <4 x i32> %i.ru
  %i.sf = select <4 x i1> %i.sd, <4 x i32> %i.sb, <4 x i32> %i.rv
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %index654 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store <4 x i32> %i.se, ptr %i.sg, align 4, !tbaa !96
  store <4 x i32> %i.sf, ptr %i.sh, align 4, !tbaa !96
  %index.next660 = add nuw i64 %index654, 8       ; 2 uses
  %i.si = icmp eq i64 %index.next660, %n.vec652
end_hunk_7
begin_hunk_8_@_ZN5draco28PredictionSchemeDeltaEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store i32 %.sink.i, ptr %i.cc, align 4, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %bb.o
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !203
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i22, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !3

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34
  %i.co = phi i32 [ %i.dx, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34 ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.041 = phi i32 [ %.0, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34 ], [ %.040, %.lr.ph ] ; 2 uses
  %i.cp = zext nneg i32 %.041 to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp
  %i.cs = icmp sgt i32 %i.co, 0
  br i1 %i.cs, label %.lr.ph.i.lr.ph.i24, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34

.lr.ph.i.lr.ph.i24:                               ; preds = %.lr.ph.split
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.as
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bb.aa, %.lr.ph.i.lr.ph.i24
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i.lr.ph.i24 ], [ %indvars.iv.next.i31, %bb.aa ] ; 4 uses
  %.01516.i27 = phi ptr [ %i.ct, %.lr.ph.i.lr.ph.i24 ], [ %i.cu, %bb.aa ]
  %i.cu = load ptr, ptr %i.b, align 8             ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.i.i25
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph.i.i25 ], [ %indvars.iv.next.i.i29, %bb.w ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01516.i27, i64 %indvars.iv.i.i28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !96 ; 3 uses
  %i.cx = load i32, ptr %i.at, align 8, !tbaa !202 ; 2 uses
  %i.cy = icmp sgt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i28
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !96
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.da = load i32, ptr %i.au, align 4, !tbaa !201 ; 2 uses
  %i.db = icmp slt i32 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i28 ; 2 uses
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !96
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 %i.cw, ptr %i.dc, align 4, !tbaa !96
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !203
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next.i.i29, %i.de
  br i1 %i.df, label %bb.r, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30: ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i26
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !96
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i26
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !96
  %i.dk = sub nsw i32 %i.dh, %i.dj                ; 5 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i26 ; 2 uses
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !96
  %i.dm = load i32, ptr %i.av, align 4, !tbaa !206
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30
  %i.do = load i32, ptr %i.ax, align 4, !tbaa !204
  %i.dp = add nsw i32 %i.do, %i.dk
  br label %.sink.split.i32

bb.y:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30
  %i.dq = load i32, ptr %i.aw, align 8, !tbaa !205
  %i.dr = icmp sgt i32 %i.dk, %i.dq
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = load i32, ptr %i.ax, align 4, !tbaa !204
  %i.dt = sub nsw i32 %i.dk, %i.ds
  br label %.sink.split.i32

.sink.split.i32:                                  ; preds = %bb.z, %bb.x
  %.sink.i33 = phi i32 [ %i.dt, %bb.z ], [ %i.dp, %bb.x ]
  store i32 %.sink.i33, ptr %i.dl, align 4, !tbaa !96
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i32, %bb.y
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %i.du = load i32, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next.i31, %i.dv
  br i1 %i.dw, label %.lr.ph.i.i25, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34, !llvm.loop !3

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34: ; preds = %bb.aa, %.lr.ph.split
  %i.dx = phi i32 [ %i.co, %.lr.ph.split ], [ %i.du, %bb.aa ]
  %.0 = sub nsw i32 %.041, %4                     ; 2 uses
  %i.dy = icmp sgt i32 %.0, 0
  br i1 %i.dy, label %.lr.ph.split, label %._crit_edge, !llvm.loop !797

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.q, %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #19
  ret i1 true
}

declare noundef zeroext i1 @_ZNK5draco7Options7GetBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 8, label %bb.x
    i32 9, label %bb.ab
    i32 10, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !86
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !243
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph207
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i206, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !798

.lr.ph207:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i206 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i206, align 1, !tbaa !105
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i205
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !798

.critedge.i:                                      ; preds = %.lr.ph207, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph207 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 1021) %i.ai, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !86
  %i.am = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !243
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !122
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph204
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29203, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !799

.lr.ph204:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29203 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28202 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29203, align 1, !tbaa !105
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28202
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !96
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28202, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !799

.critedge.i34:                                    ; preds = %.lr.ph204, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph204 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 range(i64 0, 1021) %i.bo, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !86
  %i.bs = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !243
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !122
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !244
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !246
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !800

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 range(i64 0, 1021) %i.ct, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !86
  %i.cx = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !243
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !122
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !244
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !246
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !801

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 range(i64 0, 1021) %i.dy, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !86
  %i.ec = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !125
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !243
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !122
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !244
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !96
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !96
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !802

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 range(i64 0, 1021) %i.fc, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i82, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !86
  %i.fg = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !125
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !243
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !122
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !244
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i77
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i79, %bb.s ] ; 2 uses
  %.01733.i = phi ptr [ %i.fp, %.lr.ph.i77 ], [ %i.fw, %bb.s ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01733.i
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01733.i, align 4, !tbaa !96 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.s, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i78
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !96
  %i.fw = getelementptr inbounds nuw i8, ptr %.01733.i, i64 4
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.fx = load i8, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i80 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fx)
  %i.fy = zext i8 %.sroa.speculated.i80 to i64
  %.not.not.i81 = icmp samesign ult i64 %indvars.iv.next.i79, %i.fy
  br i1 %.not.not.i81, label %bb.q, label %.critedge.i82, !llvm.loop !803

.critedge.i82:                                    ; preds = %bb.s, %bb.p
  %.lcssa.i83 = phi i8 [ %i.fe, %bb.p ], [ %i.fx, %bb.s ] ; 2 uses
  %i.fz = icmp ult i8 %.lcssa.i83, %2
  br i1 %i.fz, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i82
  %i.ga = zext i8 %2 to i64
  %i.gb = zext i8 %.lcssa.i83 to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %scevgep.i84 = getelementptr i8, ptr %3, i64 %i.gc
  %i.gd = xor i64 %i.gb, -1
  %i.ge = add nsw i64 %i.gd, %i.ga
  %i.gf = shl nsw i64 %i.ge, 2
  %i.gg = and i64 %i.gf, 17179869180
  %i.gh = add nuw nsw i64 %i.gg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i84, i8 0, i64 range(i64 0, 1021) %i.gh, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.t:                                             ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i85 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gj)
  %.not32.i86 = icmp eq i8 %.sroa.speculated31.i85, 0
  br i1 %.not32.i86, label %.critedge.i94, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.t
  %i.gk = load i32, ptr %1, align 4, !tbaa !86
  %i.gl = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !125
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !243
  %i.gp = zext i32 %i.gk to i64
  %i.gq = mul nsw i64 %i.go, %i.gp
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !122
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !244
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i91, %bb.w ] ; 2 uses
  %.01733.i89 = phi ptr [ %i.gu, %.lr.ph.i87 ], [ %i.hc, %bb.w ] ; 3 uses
  %i.gx = icmp ugt ptr %i.gw, %.01733.i89
  br i1 %i.gx, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = load i64, ptr %.01733.i89, align 8, !tbaa !128 ; 2 uses
  %i.gz = add i64 %i.gy, 2147483648
  %or.cond.i.i = icmp ult i64 %i.gz, 4294967296
  br i1 %or.cond.i.i, label %bb.w, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i88
  %i.hb = trunc nsw i64 %i.gy to i32
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !96
  %i.hc = getelementptr inbounds nuw i8, ptr %.01733.i89, i64 8
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.hd = load i8, ptr %i.gi, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i92 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hd)
  %i.he = zext i8 %.sroa.speculated.i92 to i64
  %.not.not.i93 = icmp samesign ult i64 %indvars.iv.next.i91, %i.he
  br i1 %.not.not.i93, label %bb.u, label %.critedge.i94, !llvm.loop !804

.critedge.i94:                                    ; preds = %bb.w, %bb.t
  %.lcssa.i95 = phi i8 [ %i.gj, %bb.t ], [ %i.hd, %bb.w ] ; 2 uses
  %i.hf = icmp ult i8 %.lcssa.i95, %2
  br i1 %i.hf, label %.lr.ph38.preheader.i96, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i96:                           ; preds = %.critedge.i94
  %i.hg = zext i8 %2 to i64
  %i.hh = zext i8 %.lcssa.i95 to i64              ; 2 uses
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hi
  %i.hj = xor i64 %i.hh, -1
  %i.hk = add nsw i64 %i.hj, %i.hg
  %i.hl = shl nsw i64 %i.hk, 2
  %i.hm = and i64 %i.hl, 17179869180
  %i.hn = add nuw nsw i64 %i.hm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 range(i64 0, 1021) %i.hn, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.x:                                             ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hp)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.x
  %i.hq = load i32, ptr %1, align 4, !tbaa !86
  %i.hr = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !125
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !243
  %i.hv = zext i32 %i.hq to i64
  %i.hw = mul nsw i64 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !122
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !244
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.aa ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.ia, %.lr.ph.i100 ], [ %i.ii, %bb.aa ] ; 3 uses
  %i.id = icmp ugt ptr %i.ic, %.01733.i102
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %.01733.i102, align 8, !tbaa !128 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 2147483648
  br i1 %i.if, label %bb.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.ih = trunc nuw nsw i64 %i.ie to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !96
  %i.ii = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ij = load i8, ptr %i.ho, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ij)
  %i.ik = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ik
  br i1 %.not.not.i106, label %bb.y, label %.critedge.i107, !llvm.loop !805

.critedge.i107:                                   ; preds = %bb.aa, %bb.x
  %.lcssa.i108 = phi i8 [ %i.hp, %bb.x ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.il = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.il, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.im = zext i8 %2 to i64
  %i.in = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.io
  %i.ip = xor i64 %i.in, -1
  %i.iq = add nsw i64 %i.ip, %i.im
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = and i64 %i.ir, 17179869180
  %i.it = add nuw nsw i64 %i.is, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 range(i64 0, 1021) %i.it, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !86
  store i32 %i.iu, ptr %4, align 4, !tbaa !86
  %i.iv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.iw = load i32, ptr %1, align 4, !tbaa !86
  store i32 %i.iw, ptr %5, align 4, !tbaa !86
  %i.ix = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %bb.b
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i111 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.iz)
  %.not30.i112 = icmp eq i8 %.sroa.speculated29.i111, 0
  br i1 %.not30.i112, label %.critedge.i120, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ad
  %i.ja = load i32, ptr %1, align 4, !tbaa !86
  %i.jb = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !125
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !243
  %i.jf = zext i32 %i.ja to i64
  %i.jg = mul nsw i64 %i.je, %i.jf
  %i.jh = getelementptr i8, ptr %i.jc, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !122
  %i.jk = getelementptr i8, ptr %i.jh, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !244 ; 2 uses
  %i.jn = icmp ugt ptr %i.jm, %i.jk
  br i1 %i.jn, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.01731.i115201, i64 1 ; 2 uses
  %i.jp = icmp ugt ptr %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !806

.lr.ph:                                           ; preds = %.lr.ph.i113, %bb.ae
  %.01731.i115201 = phi ptr [ %i.jo, %bb.ae ], [ %i.jk, %.lr.ph.i113 ] ; 2 uses
  %indvars.iv.i114200 = phi i64 [ %indvars.iv.next.i117, %bb.ae ], [ 0, %.lr.ph.i113 ] ; 2 uses
  %i.jq = load i8, ptr %.01731.i115201, align 1, !tbaa !239, !range !61, !noundef !62
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i114200
  %i.js = zext nneg i8 %i.jq to i32
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !96
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i114200, 1 ; 2 uses
  %i.jt = load i8, ptr %i.iy, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i118 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jt)
  %i.ju = zext i8 %.sroa.speculated.i118 to i64
  %.not.not.i119 = icmp samesign ult i64 %indvars.iv.next.i117, %i.ju
  br i1 %.not.not.i119, label %bb.ae, label %.critedge.i120, !llvm.loop !806

.critedge.i120:                                   ; preds = %.lr.ph, %bb.ad
  %.lcssa.i121 = phi i8 [ %i.iz, %bb.ad ], [ %i.jt, %.lr.ph ] ; 2 uses
  %i.jv = icmp ult i8 %.lcssa.i121, %2
  br i1 %i.jv, label %.lr.ph36.preheader.i122, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i122:                          ; preds = %.critedge.i120
  %i.jw = zext i8 %2 to i64
  %i.jx = zext i8 %.lcssa.i121 to i64             ; 2 uses
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %scevgep.i123 = getelementptr i8, ptr %3, i64 %i.jy
  %i.jz = xor i64 %i.jx, -1
  %i.ka = add nsw i64 %i.jz, %i.jw
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = and i64 %i.kb, 17179869180
  %i.kd = add nuw nsw i64 %i.kc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i123, i8 0, i64 range(i64 0, 1021) %i.kd, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ae, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i113, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i122, %.critedge.i120, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i96, %.critedge.i94, %.lr.ph38.preheader.i, %.critedge.i82, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i27 ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %.lr.ph36.preheader.i122 ], [ true, %.critedge.i120 ], [ %i.iv, %bb.ab ], [ %i.ix, %bb.ac ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i82 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.v ], [ true, %.critedge.i94 ], [ true, %.lr.ph38.preheader.i96 ], [ false, %bb.r ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %.lr.ph.i113 ], [ false, %bb.z ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.ae ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !61
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !807

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !247 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call float @llvm.fabs.f32(float %i.v)
  %or.cond13.i.us = fcmp one float %i.x, +inf
  %i.y = fcmp uge float %i.v, f0xCF000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult float %i.v, f0x4F000000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt float %i.v, 1.000000e+00
  %i.ab = fcmp olt float %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fpext float %i.v to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32
  store i32 %i.af, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ag = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ag)
  %i.ah = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ah
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !807

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.aj = icmp ugt ptr %i.o, %i.ai
  br i1 %i.aj, label %.lr.ph44, label %.loopexit, !llvm.loop !807

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ai, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ak = load float, ptr %.0173443, align 4, !tbaa !247 ; 4 uses
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %or.cond13.i = fcmp one float %i.al, +inf
  %i.am = fcmp uge float %i.ak, f0xCF000000
  %or.cond14.not16.i = and i1 %i.am, %or.cond13.i
  %i.an = fcmp ult float %i.ak, f0x4F000000
  %or.cond15.i = and i1 %i.an, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = fptosi float %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aq)
  %i.ar = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !807

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ag, %bb.d ], [ %i.aq, %bb.f ] ; 3 uses
  %i.as = icmp ult i8 %.lcssa, %2
  br i1 %i.as, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.at = zext i8 %2 to i64
  %i.au = zext i8 %.lcssa to i64
  %i.av = zext i8 %.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aw
  %i.ax = xor i64 %i.au, -1
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = and i64 %i.az, 17179869180
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.bb, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !61
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 8 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !808

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load double, ptr %.01734.us50, align 8, !tbaa !248 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond13.i.us = fcmp one double %i.x, +inf
  %i.y = fcmp uge double %i.v, f0xC1E0000000000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult double %i.v, f0x41DFFFFFFFC00000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt double %i.v, 1.000000e+00
  %i.ab = fcmp olt double %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %storemerge.i.us = fptosi double %i.ad to i32
  store i32 %storemerge.i.us, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ae)
  %i.af = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.af
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !808

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !808

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ag, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ai = load double, ptr %.0173443, align 8, !tbaa !248 ; 4 uses
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %or.cond13.i = fcmp one double %i.aj, +inf
  %i.ak = fcmp uge double %i.ai, f0xC1E0000000000000
  %or.cond14.not16.i = and i1 %i.ak, %or.cond13.i
  %i.al = fcmp ult double %i.ai, f0x41DFFFFFFFC00000
  %or.cond15.i = and i1 %i.al, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %storemerge.i = fptosi double %i.ai to i32
  store i32 %storemerge.i, ptr %i.am, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.an)
  %i.ao = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !808

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ae, %bb.d ], [ %i.an, %bb.f ] ; 3 uses
  %i.ap = icmp ult i8 %.lcssa, %2
  br i1 %i.ap, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.aq = zext i8 %2 to i64
  %i.ar = zext i8 %.lcssa to i64
  %i.as = zext i8 %.lcssa to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = xor i64 %i.ar, -1
  %i.av = add nsw i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = and i64 %i.aw, 17179869180
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.ay, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null}
!1 = distinct !{!1, !94}
!2 = distinct !{!2, !94}
!3 = distinct !{!3, !94}
!4 = distinct !{!4, !94}
!5 = distinct !{!5, !94}
!6 = distinct !{!6, !94}
!7 = distinct !{!7, !94}
!8 = distinct !{!8, !94}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedEncoderInterfaceIiiEE", !19, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN5draco37PredictionSchemeTypedEncoderInterfaceIiiEELb0EE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"p1 _ZTSN5draco17PointCloudEncoderE", !19, i64 0}
!24 = !{!"p1 _ZTSN5draco14PointAttributeE", !19, i64 0}
!25 = !{!"p1 int", !19, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"bool", !13, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !24, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !35, i64 0}
!37 = !{!"_ZTSN5draco26SequentialAttributeEncoderE", !23, i64 8, !24, i64 16, !14, i64 24, !29, i64 32, !30, i64 56, !36, i64 64}
!38 = !{!37, !24, i64 16}
!39 = !{!"p1 _ZTSN5draco10DataBufferE", !19, i64 0}
!40 = !{!"long", !13, i64 0}
!41 = !{!"_ZTSN5draco20DataBufferDescriptorE", !40, i64 0, !40, i64 8}
!42 = !{!"_ZTSN5draco8DataTypeE", !13, i64 0}
!43 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !13, i64 0}
!44 = !{!"_ZTSN5draco17GeometryAttributeE", !39, i64 0, !41, i64 8, !13, i64 24, !42, i64 28, !30, i64 32, !40, i64 40, !40, i64 48, !43, i64 56, !14, i64 60}
!45 = !{!44, !42, i64 28}
!46 = !{!"p1 _ZTSN5draco10PointCloudE", !19, i64 0}
!47 = !{!"p1 _ZTSSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS1_EE", !19, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !50, i64 0}
!52 = !{!"p1 _ZTSN5draco13EncoderBufferE", !19, i64 0}
!53 = !{!"p1 _ZTSN5draco18EncoderOptionsBaseIiEE", !19, i64 0}
!54 = !{!"_ZTSN5draco17PointCloudEncoderE", !46, i64 8, !51, i64 16, !29, i64 40, !29, i64 64, !52, i64 88, !53, i64 96, !40, i64 104}
!55 = !{!54, !53, i64 96}
!56 = !{!20, !20, i64 0}
!57 = !{!37, !23, i64 8}
!58 = !{!54, !46, i64 8}
!59 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !19, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!24, !24, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !39, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !68, i64 0}
!70 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !19, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !73, i64 0}
!75 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !74, i64 0}
!76 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !19, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !81, i64 0}
!83 = !{!"_ZTSN5draco14PointAttributeE", !44, i64 0, !69, i64 64, !75, i64 72, !14, i64 96, !30, i64 100, !82, i64 104}
!84 = !{!83, !14, i64 96}
!85 = !{!"_ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !14, i64 0}
!86 = !{!85, !14, i64 0}
!87 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !19, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 8}
!90 = !{!88, !87, i64 0}
!91 = !{!83, !30, i64 100}
!92 = !{!"_ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !14, i64 0}
!93 = !{!92, !14, i64 0}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!14, !14, i64 0}
!97 = !{!71, !70, i64 8}
!98 = !{!71, !70, i64 0}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!26, !25, i64 0}
!102 = !{!26, !25, i64 16}
!103 = !{!"p1 _ZTSN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE", !19, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!13, !13, i64 0}
!106 = !{!"p1 omnipotent char", !19, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorIcSaIcEE", !109, i64 0}
!111 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !19, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !116, i64 0}
!118 = !{!"_ZTSN5draco13EncoderBufferE", !110, i64 0, !117, i64 24, !40, i64 32, !30, i64 40}
!119 = !{!118, !40, i64 32}
!120 = !{!106, !106, i64 0}
end_hunk_8
