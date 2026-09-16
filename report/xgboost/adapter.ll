Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/adapter?download=true
inline.NumInlined: 2916
inline.NumDeleted: 1246
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorImSaImEE15_M_range_insertIPlEEvN9__gnu_cxx17__normal_iteratorIPmS1_EET_S8_St20forward_iterator_tag:bb.a
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader143 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader143 ] ; 2 uses
  %i.ap = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !52
  store i64 %i.ap, ptr %.0811.i.i.i.i.i, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit, !llvm.loop !431

_ZSt9__advanceIPllEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = icmp eq i64 %i.m, 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.a, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 6 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIPllEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.ay, 8
  %i.ba = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond141 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond141, label %.lr.ph.i.i.i.i.i.i.i.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 3 uses
  %i.bb = and i64 %i.ay, 3
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.h, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.av, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bf ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.av, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !52
  %wide.load102 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !52
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %wide.load102, ptr %i.bh, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.i.i.i.preheader146:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %i.bj = load i64, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !52
  store i64 %i.bj, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.bm = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit, !llvm.loop !433

_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZSt9__advanceIPllEvRT_T0_St26random_access_iterator_tag.exit
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bo ; 5 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !61
  %i.bq = icmp sgt i64 %i.m, 8
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !51

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bp, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.br = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !52
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bs = phi ptr [ %.pre, %bb.k ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !61
  %i.bu = ashr exact i64 %i.m, 3                  ; 6 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i57.preheader, label %_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55
  %min.iters.check108 = icmp ult i64 %i.bu, 8
  %i.bw = sub i64 %i.b, %i.l
  %diff.check106 = icmp ugt i64 %i.bw, -32
  %or.cond142 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond142, label %.lr.ph.i.i.i.i.i57.preheader144, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %n.vec110 = and i64 %i.bu, 9223372036854775804  ; 3 uses
  %i.bx = and i64 %i.bu, 3
  %i.by = shl i64 %n.vec110, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %2, i64 %i.by
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.cb = shl i64 %index112, 3                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %next.gep114 = getelementptr i8, ptr %2, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <2 x i64>, ptr %next.gep114, align 8, !tbaa !52
  %wide.load116 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !52
  %i.cd = getelementptr i8, ptr %next.gep113, i64 16
  store <2 x i64> %wide.load115, ptr %next.gep113, align 8, !tbaa !52
  store <2 x i64> %wide.load116, ptr %i.cd, align 8, !tbaa !52
  %index.next117 = add nuw i64 %index112, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.ce, label %middle.block118, label %vector.body111, !llvm.loop !434

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.bu, %n.vec110
  br i1 %cmp.n119, label %_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i57.preheader144

.lr.ph.i.i.i.i.i57.preheader144:                  ; preds = %.lr.ph.i.i.i.i.i57.preheader, %middle.block118
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.bx, %middle.block118 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.bz, %middle.block118 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.ca, %middle.block118 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader144, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %i.cf = load i64, ptr %.0910.i.i.i.i.i60, align 8, !tbaa !52
  store i64 %i.cf, ptr %.0811.i.i.i.i.i59, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 8
  %i.ci = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.cj = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit, !llvm.loop !435

bb.n:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !60    ; 5 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cm = sub i64 %i.j, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 4 uses
  %i.co = sub nsw i64 1152921504606846975, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.d
  br i1 %i.cp, label %bb.o, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.d)
  %i.cq = add nsw i64 %.sroa.speculated.i, %i.cn  ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #30
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.p ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.cx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cy = sub i64 %i.cx, %i.cl                    ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, 8
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ck, i64 %i.cy, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67

bb.r:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit
  %i.da = icmp eq i64 %i.cy, 8
  br i1 %i.da, label %bb.s, label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67

bb.s:                                             ; preds = %bb.r
  %i.db = load i64, ptr %i.ck, align 8, !tbaa !52
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !52
  br label %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67: ; preds = %bb.s, %bb.r, %bb.q
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dc, ptr align 8 %2, i64 %i.c, i1 false), !tbaa !52
  %i.dd = add i64 %i.c, %i.cx
  %4 = add i64 %i.dd, 8
  %i.de = sub i64 %4, %i.cl
  %5 = getelementptr i8, ptr %i.cw, i64 %i.de
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 3 uses
  %i.df = sub i64 %i.j, %i.cx                     ; 4 uses
  %i.dg = icmp sgt i64 %i.df, 8
  br i1 %i.dg, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.df, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPlPmmET0_T_S3_S2_RSaIT1_E.exit67
  %i.dh = icmp eq i64 %i.df, 8
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.di, ptr %scevgep, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dj = getelementptr inbounds i8, ptr %scevgep, i64 %i.df
  %.not.i69 = icmp eq ptr %i.ck, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dm) #28
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.w, %bb.x
  store ptr %i.cw, ptr %0, align 8, !tbaa !60
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !61
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ct
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !124
  br label %_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit

_ZSt4copyIPlN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block118, %middle.block136, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPflEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load float, ptr %i.q, align 4, !tbaa !167
  store float %i.u, ptr %i.h, align 4, !tbaa !167
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre71, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !63
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load float, ptr %1, align 4, !tbaa !167
  store float %i.ae, ptr %i.ad, align 4, !tbaa !167
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !51

bb.k:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load float, ptr %2, align 4, !tbaa !167
  store float %i.ag, ptr %1, align 4, !tbaa !167
  br label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

_ZSt9__advanceIPflEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !51

bb.n:                                             ; preds = %_ZSt9__advanceIPflEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPflEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load float, ptr %i.ai, align 4, !tbaa !167
  store float %i.an, ptr %i.h, align 4, !tbaa !167
  br label %_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !63
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre70 = load ptr, ptr %i.g, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.as = load float, ptr %1, align 4, !tbaa !167
  store float %i.as, ptr %i.aq, align 4, !tbaa !167
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre70, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !63
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit55
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load float, ptr %2, align 4, !tbaa !167
  store float %i.ax, ptr %1, align 4, !tbaa !167
  br label %_ZSt4copyIPfN9__gnu_cxx17__normal_iteratorIS0_St6vectorIfSaIfEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !62    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE15_M_range_insertIPiEEvN9__gnu_cxx17__normal_iteratorIPjS1_EET_S8_St20forward_iterator_tag:bb.a
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader143 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader143 ] ; 2 uses
  %i.ap = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !90
  store i32 %i.ap, ptr %.0811.i.i.i.i.i, align 4, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, !llvm.loop !437

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
  %or.cond141 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond141, label %.lr.ph.i.i.i.i.i.i.i.i.preheader146, label %vector.ph

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
  %next.gep101 = getelementptr i8, ptr %i.av, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !90
  %wide.load102 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !90
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !90
  store <4 x i32> %wide.load102, ptr %i.bh, align 4, !tbaa !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.i.i.i.preheader146:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %i.bj = load i32, ptr %.0910.i.i.i.i.i.i.i.i, align 4, !tbaa !90
  store i32 %i.bj, ptr %.0811.i.i.i.i.i.i.i.i, align 4, !tbaa !90
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 4
  %i.bm = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit, !llvm.loop !439

_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 5 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !65
  %i.bq = icmp sgt i64 %i.m, 4
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !51

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bp, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.br = load i32, ptr %1, align 4, !tbaa !90
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !90
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bs = phi ptr [ %.pre, %bb.k ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !65
  %i.bu = ashr exact i64 %i.m, 2                  ; 6 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i57.preheader, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55
  %min.iters.check108 = icmp ult i64 %i.bu, 8
  %i.bw = sub i64 %i.b, %i.l
  %diff.check106 = icmp ugt i64 %i.bw, -32
  %or.cond142 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond142, label %.lr.ph.i.i.i.i.i57.preheader144, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %n.vec110 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bx = and i64 %i.bu, 7
  %i.by = shl i64 %n.vec110, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %2, i64 %i.by
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.cb = shl i64 %index112, 2                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %next.gep114 = getelementptr i8, ptr %2, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !90
  %wide.load116 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !90
  %i.cd = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep113, align 4, !tbaa !90
  store <4 x i32> %wide.load116, ptr %i.cd, align 4, !tbaa !90
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.ce, label %middle.block118, label %vector.body111, !llvm.loop !440

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.bu, %n.vec110
  br i1 %cmp.n119, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i57.preheader144

.lr.ph.i.i.i.i.i57.preheader144:                  ; preds = %.lr.ph.i.i.i.i.i57.preheader, %middle.block118
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.bx, %middle.block118 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.bz, %middle.block118 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.ca, %middle.block118 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader144, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader144 ] ; 2 uses
  %i.cf = load i32, ptr %.0910.i.i.i.i.i60, align 4, !tbaa !90
  store i32 %i.cf, ptr %.0811.i.i.i.i.i59, align 4, !tbaa !90
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 4
  %i.ci = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.cj = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit, !llvm.loop !441

bb.n:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !64    ; 5 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cm = sub i64 %i.j, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2                 ; 4 uses
  %i.co = sub nsw i64 2305843009213693951, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.d
  br i1 %i.cp, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #29
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
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #30
  br label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.p ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.cx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cy = sub i64 %i.cx, %i.cl                    ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, 4
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.ck, i64 %i.cy, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  %i.da = icmp eq i64 %i.cy, 4
  br i1 %i.da, label %bb.s, label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.ck, align 4, !tbaa !90
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !90
  br label %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67: ; preds = %bb.s, %bb.r, %bb.q
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dc, ptr align 4 %2, i64 %i.c, i1 false), !tbaa !90
  %i.dd = add i64 %i.c, %i.cx
  %4 = add i64 %i.dd, 4
  %i.de = sub i64 %4, %i.cl
  %5 = getelementptr i8, ptr %i.cw, i64 %i.de
  %scevgep = getelementptr i8, ptr %5, i64 -4     ; 3 uses
  %i.df = sub i64 %i.j, %i.cx                     ; 4 uses
  %i.dg = icmp sgt i64 %i.df, 4
  br i1 %i.dg, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %1, i64 %i.df, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPiPjjET0_T_S3_S2_RSaIT1_E.exit67
  %i.dh = icmp eq i64 %i.df, 4
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %1, align 4, !tbaa !90
  store i32 %i.di, ptr %scevgep, align 4, !tbaa !90
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dj = getelementptr inbounds i8, ptr %scevgep, i64 %i.df
  %.not.i69 = icmp eq ptr %i.ck, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dm) #28
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.w, %bb.x
  store ptr %i.cw, ptr %0, align 8, !tbaa !64
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !123
  br label %_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit

_ZSt4copyIPiN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block118, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(none) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !103}
!2 = distinct !{!2, !103}
!3 = distinct !{ptr @_ZN7xgboost9JsonArrayD2Ev, ptr @_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev, null, null, null, null, null, null}
!4 = distinct !{!4, !103}
!5 = distinct !{ptr @_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev, null, null, null, null, null, null}
!6 = distinct !{!6, !103}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN4dmlc8DataIterIN7xgboost4data16FileAdapterBatchEEE"}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"p1 long", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseImSaImEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorImSaImEE", !22, i64 0}
!24 = !{!"p1 float", !18, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIfSaIfEE", !27, i64 0}
!29 = !{!"p1 int", !18, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIjSaIjEE", !32, i64 0}
!34 = !{!"long", !11, i64 0}
!35 = !{!"bool", !11, i64 0}
!36 = !{!"_ZTSN4dmlc8RowBlockIjfEE", !34, i64 0, !19, i64 8, !24, i64 16, !24, i64 24, !19, i64 32, !29, i64 40, !29, i64 48, !24, i64 56}
!37 = !{!"p1 _ZTSN7xgboost4data16FileAdapterBatchE", !18, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN7xgboost4data16FileAdapterBatchELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EE", !42, i64 0}
!44 = !{!"_ZTSN7xgboost4data15IteratorAdapterIPvFiS2_PFiS2_15XGBoostBatchCSRES2_ES3_EE", !17, i64 0, !23, i64 8, !28, i64 32, !28, i64 56, !33, i64 80, !28, i64 104, !34, i64 128, !34, i64 136, !35, i64 144, !18, i64 152, !18, i64 160, !36, i64 168, !43, i64 232}
!45 = !{!44, !34, i64 128}
!46 = !{!44, !34, i64 136}
!47 = !{!44, !35, i64 144}
!48 = !{!44, !18, i64 152}
!49 = !{!44, !18, i64 160}
!50 = !{}
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{!34, !34, i64 0}
!53 = !{!"p1 omnipotent char", !18, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !34, i64 8, !11, i64 16}
!56 = !{!55, !53, i64 0}
!57 = !{!55, !34, i64 8}
!58 = !{!11, !11, i64 0}
!59 = !{!37, !37, i64 0}
!60 = !{!20, !19, i64 0}
!61 = !{!20, !19, i64 8}
!62 = !{!25, !24, i64 0}
!63 = !{!25, !24, i64 8}
!64 = !{!30, !29, i64 0}
!65 = !{!30, !29, i64 8}
!66 = !{!29, !29, i64 0}
!67 = !{!19, !19, i64 0}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"_ZTSN4dmlc8DataIterIN7xgboost4data27EncColumnarAdapterBatchImplINS1_12NoOpAccessorEEEEE"}
!71 = !{!"_ZTSN7xgboost4data6detail19SingleBatchDataIterINS0_27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEE", !70, i64 0, !12, i64 8}
!72 = !{!71, !12, i64 8}
!73 = !{!"p1 _ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !18, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN7xgboost14ArrayInterfaceILi1ELb1EEESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"p1 _ZTSSt7variantIJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEE", !18, i64 0}
!76 = !{!"_ZTSN7xgboost6common4SpanIKiLm18446744073709551615EEE", !34, i64 0, !29, i64 8}
!77 = !{!"_ZTSNSt12_Vector_baseISt7variantIJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEESaISM_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!79 = !{!"p1 _ZTSN7xgboost5ValueE", !18, i64 0}
!80 = !{!"_ZTSN7xgboost12IntrusivePtrINS_5ValueEEE", !79, i64 0}
!81 = !{!80, !79, i64 0}
!82 = !{!"_ZTSSt13__atomic_baseIiE", !12, i64 0}
!83 = !{!"_ZTSSt6atomicIiE", !82, i64 0}
!84 = !{!"_ZTSN7xgboost16IntrusivePtrCellE", !83, i64 0}
!85 = !{!"_ZTSN7xgboost5Value9ValueKindE", !11, i64 0}
!86 = !{!"_ZTSN7xgboost5ValueE", !84, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 16}
!88 = !{!54, !53, i64 0}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!12, !12, i64 0}
!91 = !{!"p1 _ZTSN7xgboost4JsonE", !18, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!73, !73, i64 0}
!94 = !{!74, !73, i64 8}
!95 = !{!74, !73, i64 16}
!96 = !{!"_ZTSN7xgboost17BitFieldContainerIhNS_11RBitsPolicyIhEELb0EEE", !53, i64 0, !34, i64 8}
!97 = !{!"_ZTSN7xgboost21ArrayInterfaceHandler4TypeE", !11, i64 0}
!98 = !{!"_ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !96, i64 0, !11, i64 16, !11, i64 24, !18, i64 32, !34, i64 40, !35, i64 48, !97, i64 49}
!99 = !{!98, !97, i64 49}
!100 = !{!77, !75, i64 8}
!101 = !{!77, !75, i64 16}
!102 = !{!77, !75, i64 0}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!78, !29, i64 0}
!105 = !{!78, !29, i64 16}
!106 = !{!74, !73, i64 0}
!107 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"p1 _ZTSSt6vectorISt7variantIJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEESaISM_EE", !18, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!98, !34, i64 40}
!112 = !{!"any p2 pointer", !18, i64 0}
!113 = !{!"p2 _ZTSSt6vectorISt7variantIJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEESaISM_EE", !112, i64 0}
!114 = !{!53, !53, i64 0}
!115 = !{!18, !18, i64 0}
!116 = !{!35, !35, i64 0}
!117 = !{!97, !97, i64 0}
!118 = !{i64 0, i64 8, !114, i64 8, i64 8, !52, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !115, i64 40, i64 8, !52, i64 48, i64 1, !116, i64 49, i64 1, !117}
!119 = !{!"_ZTSNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!120 = !{!119, !91, i64 8}
!121 = !{!119, !91, i64 0}
!122 = !{!25, !24, i64 16}
!123 = !{!30, !29, i64 16}
!124 = !{!20, !19, i64 16}
!125 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!126 = !{!"_ZTSSt6locale", !125, i64 0}
!127 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !126, i64 56}
!128 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!129 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!130 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!131 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !34, i64 8}
!132 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!133 = !{!"_ZTSSt8ios_base", !34, i64 8, !34, i64 16, !128, i64 24, !129, i64 28, !129, i64 32, !130, i64 40, !131, i64 48, !11, i64 64, !12, i64 192, !132, i64 200, !126, i64 208}
!134 = !{!133, !129, i64 32}
!135 = !{!127, !53, i64 40}
!136 = !{!127, !53, i64 32}
!137 = !{!82, !12, i64 0}
!138 = !{!"_ZTSN7xgboost11JsonIntegerE", !86, i64 0, !34, i64 24}
!139 = !{!138, !34, i64 24}
!140 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!"_ZTSSt14_Rb_tree_color", !11, i64 0}
!143 = !{!"_ZTSSt18_Rb_tree_node_base", !142, i64 0, !140, i64 8, !140, i64 16, !140, i64 24}
!144 = !{!"_ZTSSt15_Rb_tree_header", !143, i64 0, !34, i64 32}
!145 = !{!144, !142, i64 0}
!146 = !{!144, !140, i64 8}
!147 = !{!144, !140, i64 16}
!148 = !{!144, !140, i64 24}
!149 = !{!144, !34, i64 32}
!150 = !{!119, !91, i64 16}
!151 = !{!"p1 _ZTSN7xgboost9DeviceOrdE", !18, i64 0}
!152 = !{!"_ZTSZN7xgboost13DispatchDTypeILi1EZNS_4data20GetArrowNumericNamesISt7variantIJN3enc15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENS7_IKaLm18446744073709551615EEENS7_IKtLm18446744073709551615EEENS7_IKsLm18446744073709551615EEENS7_IKjLm18446744073709551615EEENS7_IKiLm18446744073709551615EEENS7_IKmLm18446744073709551615EEENS7_IKlLm18446744073709551615EEEEEEEmNS_9DeviceOrdERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4JsonESt4lessIvESaISt4pairIKSW_SX_EEEPSt6vectorIT_SaIS18_EEPmEUlS18_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEESP_T0_EUlS18_E_", !18, i64 0, !73, i64 8, !151, i64 16}
!153 = !{!152, !73, i64 8}
!154 = !{i64 8}
!155 = !{!98, !18, i64 32}
!156 = !{!152, !18, i64 0}
!157 = !{!"_ZTSZN7xgboost4data20GetArrowNumericNamesISt7variantIJN3enc15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENS6_IKaLm18446744073709551615EEENS6_IKtLm18446744073709551615EEENS6_IKsLm18446744073709551615EEENS6_IKjLm18446744073709551615EEENS6_IKiLm18446744073709551615EEENS6_IKmLm18446744073709551615EEENS6_IKlLm18446744073709551615EEEEEEEmNS_9DeviceOrdERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4JsonESt4lessIvESaISt4pairIKSV_SW_EEEPSt6vectorIT_SaIS17_EEPmEUlS17_E_", !113, i64 0, !19, i64 8, !73, i64 16}
!158 = !{!157, !113, i64 0}
!159 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS6_IKaLm18446744073709551615EEENS6_IKtLm18446744073709551615EEENS6_IKsLm18446744073709551615EEENS6_IKjLm18446744073709551615EEENS6_IKiLm18446744073709551615EEENS6_IKmLm18446744073709551615EEENS6_IKlLm18446744073709551615EEEEEE", !11, i64 0, !11, i64 32}
end_hunk_1
