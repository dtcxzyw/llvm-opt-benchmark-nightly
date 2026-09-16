Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIlSaIlEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS_ImSaImEEEEEEvNS4_IPlS1_EET_SB_St20forward_iterator_tag:bb.a
  %next.gep110 = getelementptr i8, ptr %i.i, i64 %i.ce
  %next.gep111 = getelementptr i8, ptr %i.bh, i64 %i.ce
  %wide.load112 = load <4 x i64>, ptr %next.gep111, align 8, !tbaa !50
  store <4 x i64> %wide.load112, ptr %next.gep110, align 8, !tbaa !50
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !289

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.bk, %n.vec108
  br i1 %cmp.n114, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cg = load i64, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !50
  store i64 %i.cg, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.cj = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !290

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cl = sub nuw nsw i64 %i.e, %i.o
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cl ; 5 uses
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !48
  %i.cn = icmp sgt i64 %i.n, 8
  br i1 %i.cn, label %bb.k, label %bb.l, !prof !120

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cm, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit
  br i1 %i.bg, label %bb.m, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.k, %bb.l, %bb.m
  %i.cp = phi ptr [ %.pre, %bb.k ], [ %i.cm, %bb.l ], [ %i.cm, %bb.m ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !48
  %i.cr = ashr exact i64 %i.n, 3                  ; 10 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %iter.check139, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit

iter.check139:                                    ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51
  %min.iters.check120 = icmp ult i64 %i.cr, 4
  %i.ct = sub i64 %i.c, %i.m
  %diff.check119 = icmp ugt i64 %i.ct, -128
  %or.cond195 = or i1 %min.iters.check120, %diff.check119
  br i1 %or.cond195, label %.lr.ph.i.i.i.i.i53.preheader, label %vector.main.loop.iter.check121

vector.main.loop.iter.check121:                   ; preds = %iter.check139
  %min.iters.check122 = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check122, label %vec.epilog.ph143, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check121
  %n.vec124 = and i64 %i.cr, 9223372036854775792  ; 4 uses
  %i.cu = and i64 %i.cr, 15
  %i.cv = shl i64 %n.vec124, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next133, %vector.body125 ] ; 2 uses
  %i.cy = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %1, i64 %i.cy ; 4 uses
  %next.gep128 = getelementptr i8, ptr %2, i64 %i.cy ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep128, i64 32
  %i.da = getelementptr i8, ptr %next.gep128, i64 64
  %i.db = getelementptr i8, ptr %next.gep128, i64 96
  %wide.load129 = load <4 x i64>, ptr %next.gep128, align 8, !tbaa !50
  %wide.load130 = load <4 x i64>, ptr %i.cz, align 8, !tbaa !50
  %wide.load131 = load <4 x i64>, ptr %i.da, align 8, !tbaa !50
  %wide.load132 = load <4 x i64>, ptr %i.db, align 8, !tbaa !50
  %i.dc = getelementptr i8, ptr %next.gep127, i64 32
  %i.dd = getelementptr i8, ptr %next.gep127, i64 64
  %i.de = getelementptr i8, ptr %next.gep127, i64 96
  store <4 x i64> %wide.load129, ptr %next.gep127, align 8, !tbaa !50
  store <4 x i64> %wide.load130, ptr %i.dc, align 8, !tbaa !50
  store <4 x i64> %wide.load131, ptr %i.dd, align 8, !tbaa !50
  store <4 x i64> %wide.load132, ptr %i.de, align 8, !tbaa !50
  %index.next133 = add nuw i64 %index126, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next133, %n.vec124
  br i1 %i.df, label %middle.block134, label %vector.body125, !llvm.loop !291

middle.block134:                                  ; preds = %vector.body125
  %cmp.n135 = icmp eq i64 %i.cr, %n.vec124
  br i1 %cmp.n135, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, label %vec.epilog.iter.check141

vec.epilog.iter.check141:                         ; preds = %middle.block134
  %i.dg = and i64 %i.n, 96
  %min.epilog.iters.check142 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check142, label %.lr.ph.i.i.i.i.i53.preheader, label %vec.epilog.ph143, !prof !296

vec.epilog.ph143:                                 ; preds = %vector.main.loop.iter.check121, %vec.epilog.iter.check141
  %vec.epilog.resume.val136 = phi i64 [ %n.vec124, %vec.epilog.iter.check141 ], [ 0, %vector.main.loop.iter.check121 ]
  %n.vec144 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.dh = and i64 %i.cr, 3
  %i.di = shl i64 %n.vec144, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %i.dk = getelementptr i8, ptr %2, i64 %i.di
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph143
  %index146 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph143 ], [ %index.next150, %vec.epilog.vector.body145 ] ; 2 uses
  %i.dl = shl i64 %index146, 3                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %1, i64 %i.dl
  %next.gep148 = getelementptr i8, ptr %2, i64 %i.dl
  %wide.load149 = load <4 x i64>, ptr %next.gep148, align 8, !tbaa !50
  store <4 x i64> %wide.load149, ptr %next.gep147, align 8, !tbaa !50
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.dm, label %vec.epilog.middle.block151, label %vec.epilog.vector.body145, !llvm.loop !292

vec.epilog.middle.block151:                       ; preds = %vec.epilog.vector.body145
  %cmp.n152 = icmp eq i64 %i.cr, %n.vec144
  br i1 %cmp.n152, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i53.preheader

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %iter.check139, %vec.epilog.iter.check141, %vec.epilog.middle.block151
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.cr, %iter.check139 ], [ %i.cu, %vec.epilog.iter.check141 ], [ %i.dh, %vec.epilog.middle.block151 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %iter.check139 ], [ %i.cw, %vec.epilog.iter.check141 ], [ %i.dj, %vec.epilog.middle.block151 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %iter.check139 ], [ %i.cx, %vec.epilog.iter.check141 ], [ %i.dk, %vec.epilog.middle.block151 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %i.dn = load i64, ptr %.0910.i.i.i.i.i56, align 8, !tbaa !50
  store i64 %i.dn, ptr %.0811.i.i.i.i.i55, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.dq = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.dr = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, !llvm.loop !293

bb.n:                                             ; preds = %bb.b
  %i.ds = load ptr, ptr %0, align 8, !tbaa !47    ; 5 uses
  %i.dt = ptrtoint ptr %i.ds to i64               ; 4 uses
  %i.du = sub i64 %i.k, %i.dt
  %i.dv = ashr exact i64 %i.du, 3                 ; 4 uses
  %i.dw = sub nsw i64 1152921504606846975, %i.dv
  %i.dx = icmp ult i64 %i.dw, %i.e
  br i1 %i.dx, label %bb.o, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.e)
  %i.dy = add nsw i64 %.sroa.speculated.i, %i.dv  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dv
  %i.ea = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #28
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, %bb.p
  %i.ee = phi ptr [ %i.ed, %bb.p ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.ef = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.eg = sub i64 %i.ef, %i.dt                    ; 4 uses
  %i.eh = icmp sgt i64 %i.eg, 8
  br i1 %i.eh, label %bb.q, label %bb.r, !prof !120

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ee, ptr align 8 %i.ds, i64 %i.eg, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.ei = icmp eq i64 %i.eg, 8
  br i1 %i.ei, label %bb.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.s:                                             ; preds = %bb.r
  %i.ej = load i64, ptr %i.ds, align 8, !tbaa !50
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63: ; preds = %bb.s, %bb.r, %bb.q
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.d, i1 false), !tbaa !50
  %i.el = add i64 %i.d, %i.ef
  %i.em = sub i64 %i.el, %i.dt
  %scevgep = getelementptr i8, ptr %i.ee, i64 %i.em ; 3 uses
  %i.en = sub i64 %i.k, %i.ef                     ; 4 uses
  %i.eo = icmp sgt i64 %i.en, 8
  br i1 %i.eo, label %bb.t, label %bb.u, !prof !120

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.en, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  %i.ep = icmp eq i64 %i.en, 8
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.eq, ptr %scevgep, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.er = getelementptr inbounds i8, ptr %scevgep, i64 %i.en
  %.not.i65 = icmp eq ptr %i.ds, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.eu) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.w, %bb.x
  store ptr %i.ee, ptr %0, align 8, !tbaa !47
  store ptr %i.er, ptr %i.h, align 8, !tbaa !48
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eb
  store ptr %i.ev, ptr %i.f, align 8, !tbaa !49
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %middle.block134, %vec.epilog.middle.block151, %middle.block172, %vec.epilog.middle.block189, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEEC2ESt16initializer_listIlERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %2, 3                   ; 4 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !49
  br label %bb.c

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #28
          to label %.noexc3 unwind label %bb.d    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %0, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !297

bb.a:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 8 %1, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %.noexc3
  %i.f = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.f, ptr %i.c, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i
  %i.g = phi ptr [ %i.d, %bb.a ], [ %i.a, %.thread.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !48
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit

_ZNSt12_Vector_baseIlSaIlEED2Ev.exit:             ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE15_M_range_insertISt23_Rb_tree_const_iteratorIlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ] ; 5 uses
  %.sroa.02.04.i = phi ptr [ %i.b, %.lr.ph.i ], [ %2, %bb.a ]
  %i.b = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i) #30 ; 2 uses
  %i.c = add nuw nsw i64 %.05.i, 1                ; 5 uses
  %i.d = icmp eq ptr %i.b, %3
  br i1 %i.d, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !298

_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.not = icmp ugt i64 %i.l, %.05.i
  br i1 %.not.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.j, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 4 uses
  %i.p = icmp ugt i64 %i.o, %i.c
  br i1 %i.p, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.q = xor i64 %.05.i, -1
  %i.r = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %.neg = shl i64 %.05.i, 3                       ; 2 uses
  %.idx.neg = add i64 %.neg, 8                    ; 2 uses
  %i.t = icmp sgt i64 %.idx.neg, 8
  br i1 %i.t, label %bb.d, label %bb.e, !prof !120

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.r, i64 %.idx.neg, i1 false)
  %.pre85 = load ptr, ptr %i.g, align 8, !tbaa !48
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.neg, 0
  br i1 %i.u, label %bb.f, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !50
  store i64 %i.v, ptr %i.h, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.w = phi ptr [ %.pre85, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.c
  store ptr %i.x, ptr %i.g, align 8, !tbaa !48
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !120

bb.g:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %1, i64 %i.y, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.ad = icmp eq i64 %i.y, 8
  br i1 %i.ad, label %bb.i, label %.lr.ph.i.i.i.i.i.preheader

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.af = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !50
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g, %bb.h, %bb.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !50
  store i64 %i.ah, ptr %.07.i.i.i.i.i, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i) #30 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %3
  br i1 %i.ak, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !299
end_hunk_0
begin_hunk_1_@"_ZZN8facebook5velox9functions10geospatial33getDissolvedTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEll":bb.a
  %i.l = icmp eq i64 %.sroa.speculated.i.i, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !39 ; 3 uses
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %i.m = load ptr, ptr %2, align 8, !tbaa !39
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %.pre.pre, i64 noundef %.sroa.speculated.i.i) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d
  %i.o = sub i64 %i.i, %i.k
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.p = icmp slt i32 %.0.i.i, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %.pre.pre, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.t = load i64, ptr %i.q, align 8, !tbaa !41
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !41
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ab = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.aa

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  ret i1 %.0
}

declare void @_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJOS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.162", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !39
  %i.i = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.i, ptr %i.a, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.l, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !42
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !39
  %i.s = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.s, ptr %i.o, align 8, !tbaa !41
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !40
  store ptr %i.a, ptr %2, align 8, !tbaa !39
  store i64 0, ptr %i.m, align 8, !tbaa !40
  store i8 0, ptr %i.a, align 8, !tbaa !41
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  unreachable

bb.e:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27, !inline_history !127
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %1) #26, !inline_history !127
  %i.z = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"any p3 pointer", !14, i64 0}
!16 = !{!"p3 _ZTSN4geos4geom8GeometryE", !15, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p2 _ZTSN4geos4geom8GeometryE", !14, i64 0}
!19 = !{!"_ZTSSt15_Deque_iteratorIPKN4geos4geom8GeometryERS4_PS4_E", !18, i64 0, !18, i64 8, !18, i64 16, !16, i64 24}
!20 = !{!"_ZTSNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_Deque_impl_dataE", !16, i64 0, !17, i64 8, !19, i64 16, !19, i64 48}
!21 = !{!20, !18, i64 48}
!22 = !{!20, !18, i64 64}
!23 = !{!20, !16, i64 0}
!24 = !{!20, !16, i64 40}
!25 = !{!20, !16, i64 72}
!26 = !{!18, !18, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !17, i64 8}
!29 = !{!19, !18, i64 0}
!30 = !{!19, !18, i64 8}
!31 = !{!19, !16, i64 24}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!19, !18, i64 16}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !17, i64 8, !7, i64 16}
!39 = !{!38, !36, i64 0}
!40 = !{!38, !17, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!37, !36, i64 0}
!43 = !{!"double", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 long", !11, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 8}
!49 = !{!46, !45, i64 16}
!50 = !{!17, !17, i64 0}
!51 = !{!"_ZTSN5folly15expected_detail5WhichE", !7, i64 0}
!52 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!53 = !{!52, !51, i64 32}
!54 = !{!"branch_weights", i32 1000, i32 2001000, i32 -292967296}
!55 = !{!45, !45, i64 0}
!56 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!57 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!58 = !{!57, !45, i64 0}
!59 = !{!57, !45, i64 16}
!60 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !11, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIlSaIlEEE", !7, i64 0, !35, i64 24}
!63 = !{!62, !35, i64 24}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!67 = !{!"p2 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !14, i64 0}
!68 = !{!"p1 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !11, i64 0}
!69 = !{!"_ZTSSt15_Deque_iteratorIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryERS5_PS5_E", !68, i64 0, !68, i64 8, !68, i64 16, !67, i64 24}
!70 = !{!"_ZTSNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE16_Deque_impl_dataE", !67, i64 0, !17, i64 8, !69, i64 16, !69, i64 48}
!71 = !{!70, !17, i64 8}
!72 = !{!70, !67, i64 0}
!73 = !{!68, !68, i64 0}
!74 = !{!69, !67, i64 24}
!75 = !{!69, !68, i64 8}
!76 = !{!69, !68, i64 16}
!77 = !{!70, !68, i64 48}
!78 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEE", !11, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"p2 _ZTSN4geos4geom8EnvelopeE", !14, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom4prep16PreparedGeometryESt14default_deleteIS3_EE", !11, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p1 _ZTSSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!69, !68, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !60, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !87, i64 0}
!89 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !91, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !12, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8GeometryESt14default_deleteIS2_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8GeometryESt14default_deleteIS2_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !97, i64 0}
!99 = !{!"_ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !17, i64 0, !92, i64 8, !98, i64 16}
!100 = !{!99, !17, i64 0}
!101 = !{!70, !67, i64 72}
!102 = !{!"p1 _ZTSN4geos4geom4prep16PreparedGeometryE", !11, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"_ZTSN4geos4geom8EnvelopeE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!107 = !{!106, !43, i64 16}
!108 = !{!106, !43, i64 8}
!109 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!110 = !{!109, !51, i64 32}
!111 = !{!106, !43, i64 24}
!112 = !{!106, !43, i64 0}
!113 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!114 = !{!"branch_weights", i32 1, i32 4001}
!115 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!116 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!117 = !{!"_ZTSSt18_Rb_tree_node_base", !115, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!118 = !{!"_ZTSSt15_Rb_tree_header", !117, i64 0, !17, i64 32}
!119 = !{!118, !116, i64 8}
!120 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!121 = !{!8, !8, i64 0}
!122 = !{!"_ZTSN8facebook5velox9functions10geospatial14CartesianPointE", !43, i64 0, !43, i64 8, !43, i64 16}
!123 = !{!122, !43, i64 16}
!124 = !{!122, !43, i64 0}
!125 = !{!122, !43, i64 8}
!126 = !{!70, !67, i64 40}
!127 = !{ptr @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!128 = distinct !{!128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!129 = distinct !{!129, !128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!130 = distinct !{!130, !27}
!131 = !{!129}
!132 = !{!20, !18, i64 56}
!133 = distinct !{!133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!134 = distinct !{!134, !133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!135 = !{!134}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!138 = distinct !{!138, !137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!139 = distinct !{null}
!140 = distinct !{!140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!141 = distinct !{!141, !140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!142 = distinct !{!142, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!143 = distinct !{!143, !142, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!144 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !35, i64 32}
!145 = !{!144, !35, i64 32}
!146 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !11, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !146, i64 0}
!148 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !147, i64 0}
!149 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !151, i64 0}
!153 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !12, i64 0, !35, i64 8, !152, i64 16}
!154 = !{!153, !12, i64 0}
!155 = !{!153, !35, i64 8}
!156 = !{!147, !146, i64 0}
!157 = !{!138}
!158 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
end_hunk_1
