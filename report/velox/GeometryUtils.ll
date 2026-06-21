inline.NumInlined: 1539
inline.NumDeleted: 799
begin_hunk_0_@_ZNSt6vectorIlSaIlEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS_ImSaImEEEEEEvNS4_IPlS1_EET_SB_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cg = load i64, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !104
  store i64 %i.cg, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !104
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.cj = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !294

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cl = sub nuw nsw i64 %i.e, %i.o
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cl ; 5 uses
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !102
  %i.cn = icmp sgt i64 %i.n, 8
  br i1 %i.cn, label %bb.k, label %bb.l, !prof !219

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cm, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !102
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit
  br i1 %i.bg, label %bb.m, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.k, %bb.l, %bb.m
  %i.cp = phi ptr [ %.pre, %bb.k ], [ %i.cm, %bb.l ], [ %i.cm, %bb.m ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !102
  %i.cr = ashr exact i64 %i.n, 3                  ; 10 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %iter.check141, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit

iter.check141:                                    ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51
  %min.iters.check121 = icmp ult i64 %i.cr, 4
  %i.ct = sub i64 %i.m, %i.c
  %diff.check120 = icmp ult i64 %i.ct, 128
  %or.cond200 = or i1 %min.iters.check121, %diff.check120
  br i1 %or.cond200, label %.lr.ph.i.i.i.i.i53.preheader, label %vector.main.loop.iter.check122

vector.main.loop.iter.check122:                   ; preds = %iter.check141
  %min.iters.check123 = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check123, label %vec.epilog.ph145, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check122
  %n.vec126 = and i64 %i.cr, 9223372036854775792  ; 4 uses
  %i.cu = and i64 %i.cr, 15
  %i.cv = shl i64 %n.vec126, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next135, %vector.body127 ] ; 2 uses
  %i.cy = shl i64 %index128, 3                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %1, i64 %i.cy ; 4 uses
  %next.gep130 = getelementptr i8, ptr %2, i64 %i.cy ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep130, i64 32
  %i.da = getelementptr i8, ptr %next.gep130, i64 64
  %i.db = getelementptr i8, ptr %next.gep130, i64 96
  %wide.load131 = load <4 x i64>, ptr %next.gep130, align 8, !tbaa !104
  %wide.load132 = load <4 x i64>, ptr %i.cz, align 8, !tbaa !104
  %wide.load133 = load <4 x i64>, ptr %i.da, align 8, !tbaa !104
  %wide.load134 = load <4 x i64>, ptr %i.db, align 8, !tbaa !104
  %i.dc = getelementptr i8, ptr %next.gep129, i64 32
  %i.dd = getelementptr i8, ptr %next.gep129, i64 64
  %i.de = getelementptr i8, ptr %next.gep129, i64 96
  store <4 x i64> %wide.load131, ptr %next.gep129, align 8, !tbaa !104
  store <4 x i64> %wide.load132, ptr %i.dc, align 8, !tbaa !104
  store <4 x i64> %wide.load133, ptr %i.dd, align 8, !tbaa !104
  store <4 x i64> %wide.load134, ptr %i.de, align 8, !tbaa !104
  %index.next135 = add nuw i64 %index128, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next135, %n.vec126
  br i1 %i.df, label %middle.block136, label %vector.body127, !llvm.loop !295

middle.block136:                                  ; preds = %vector.body127
  %cmp.n137 = icmp eq i64 %i.cr, %n.vec126
  br i1 %cmp.n137, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block136
  %i.dg = and i64 %i.n, 96
  %min.epilog.iters.check144 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check144, label %.lr.ph.i.i.i.i.i53.preheader, label %vec.epilog.ph145, !prof !289

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check122, %vec.epilog.iter.check143
  %vec.epilog.resume.val138 = phi i64 [ %n.vec126, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check122 ]
  %n.vec147 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.dh = and i64 %i.cr, 3
  %i.di = shl i64 %n.vec147, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %i.dk = getelementptr i8, ptr %2, i64 %i.di
  br label %vec.epilog.vector.body148

vec.epilog.vector.body148:                        ; preds = %vec.epilog.vector.body148, %vec.epilog.ph145
  %index149 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph145 ], [ %index.next153, %vec.epilog.vector.body148 ] ; 2 uses
  %i.dl = shl i64 %index149, 3                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %i.dl
  %next.gep151 = getelementptr i8, ptr %2, i64 %i.dl
  %wide.load152 = load <4 x i64>, ptr %next.gep151, align 8, !tbaa !104
  store <4 x i64> %wide.load152, ptr %next.gep150, align 8, !tbaa !104
  %index.next153 = add nuw i64 %index149, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next153, %n.vec147
  br i1 %i.dm, label %vec.epilog.middle.block154, label %vec.epilog.vector.body148, !llvm.loop !296

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body148
  %cmp.n155 = icmp eq i64 %i.cr, %n.vec147
  br i1 %cmp.n155, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i53.preheader

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %iter.check141, %vec.epilog.iter.check143, %vec.epilog.middle.block154
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.cr, %iter.check141 ], [ %i.cu, %vec.epilog.iter.check143 ], [ %i.dh, %vec.epilog.middle.block154 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %iter.check141 ], [ %i.cw, %vec.epilog.iter.check143 ], [ %i.dj, %vec.epilog.middle.block154 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %iter.check141 ], [ %i.cx, %vec.epilog.iter.check143 ], [ %i.dk, %vec.epilog.middle.block154 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader ] ; 2 uses
  %i.dn = load i64, ptr %.0910.i.i.i.i.i56, align 8, !tbaa !104
  store i64 %i.dn, ptr %.0811.i.i.i.i.i55, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.dq = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.dr = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, !llvm.loop !297

bb.n:                                             ; preds = %bb.b
  %i.ds = load ptr, ptr %0, align 8, !tbaa !99    ; 5 uses
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
  br i1 %i.eh, label %bb.q, label %bb.r, !prof !219

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ee, ptr align 8 %i.ds, i64 %i.eg, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.ei = icmp eq i64 %i.eg, 8
  br i1 %i.ei, label %bb.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.s:                                             ; preds = %bb.r
  %i.ej = load i64, ptr %i.ds, align 8, !tbaa !104
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63: ; preds = %bb.s, %bb.r, %bb.q
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ek, ptr align 8 %2, i64 %i.d, i1 false), !tbaa !104
  %i.el = add i64 %i.d, %i.ef
  %i.em = add i64 %i.el, 8
  %i.en = sub i64 %i.em, %i.dt
  %i.eo = getelementptr i8, ptr %i.ee, i64 %i.en
  %scevgep = getelementptr i8, ptr %i.eo, i64 -8  ; 3 uses
  %i.ep = sub i64 %i.k, %i.ef                     ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.t, label %bb.u, !prof !219

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.ep, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.es = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.es, ptr %scevgep, align 8, !tbaa !104
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.et = getelementptr inbounds i8, ptr %scevgep, i64 %i.ep
  %.not.i65 = icmp eq ptr %i.ds, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = sub i64 %i.j, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.eu) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.w, %bb.x
  store ptr %i.ee, ptr %0, align 8, !tbaa !99
  store ptr %i.et, ptr %i.h, align 8, !tbaa !102
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eb
  store ptr %i.ev, ptr %i.f, align 8, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %middle.block136, %vec.epilog.middle.block154, %middle.block176, %vec.epilog.middle.block194, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.not = icmp ugt i64 %i.l, %.05.i
  br i1 %.not.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.j, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 5 uses
  %i.p = icmp ugt i64 %i.o, %i.c
  br i1 %i.p, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.q = xor i64 %.05.i, -1
  %i.r = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %.neg = shl i64 %.05.i, 3                       ; 2 uses
  %.idx.neg = add i64 %.neg, 8                    ; 2 uses
  %i.t = icmp sgt i64 %.idx.neg, 8
  br i1 %i.t, label %bb.d, label %bb.e, !prof !219

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.r, i64 %.idx.neg, i1 false)
  %.pre87 = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.neg, 0
  br i1 %i.u, label %bb.f, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !104
  store i64 %i.v, ptr %i.h, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.w = phi ptr [ %.pre87, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.c
  store ptr %i.x, ptr %i.g, align 8, !tbaa !102
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !219

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
  %i.af = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !104
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g, %bb.h, %bb.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !104
  store i64 %i.ah, ptr %.07.i.i.i.i.i, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i) #30 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %3
  br i1 %i.ak, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !299

bb.j:                                             ; preds = %bb.b
  %i.al = icmp sgt i64 %i.o, 0
  br i1 %i.al, label %.preheader.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.j
  %.not9.i = icmp eq ptr %i.h, %1
  br i1 %.not9.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i51

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.012.i = phi i64 [ %i.an, %.preheader.i ], [ %i.o, %bb.j ]
  %i.am = phi ptr [ %i.ao, %.preheader.i ], [ %2, %bb.j ]
  %i.an = add nsw i64 %.012.i, -1                 ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.am) #30 ; 2 uses
  %.not6.i = icmp eq i64 %i.an, 0
  br i1 %.not6.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i, !llvm.loop !300

.lr.ph.i51:                                       ; preds = %.preheader7.i, %.lr.ph.i51
  %.110.i = phi i64 [ %i.aq, %.lr.ph.i51 ], [ %i.o, %.preheader7.i ]
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i51 ], [ %2, %.preheader7.i ]
  %i.aq = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %i.ap) #30 ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i51, !llvm.loop !301

_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i51, %.preheader.i, %.preheader7.i
  %.sroa.0.0 = phi ptr [ %i.ao, %.preheader.i ], [ %2, %.preheader7.i ], [ %i.ar, %.lr.ph.i51 ] ; 4 uses
  %i.as = icmp eq ptr %.sroa.0.0, %3
  br i1 %i.as, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !104
  store i64 %i.au, ptr %.07.i.i.i.i.i.i.i.i, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 8
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i.i.i.i) #30 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %3
  br i1 %i.ax, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !299

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ay = sub nuw i64 %i.c, %i.o
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay ; 5 uses
  store ptr %i.az, ptr %i.g, align 8, !tbaa !102
  %i.ba = icmp sgt i64 %i.n, 8
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !219

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.az, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit
  %i.bb = icmp eq i64 %i.n, 8
  br i1 %i.bb, label %bb.m, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

bb.m:                                             ; preds = %bb.l
  %i.bc = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52: ; preds = %bb.k, %bb.l, %bb.m
  %i.bd = phi ptr [ %.pre, %bb.k ], [ %i.az, %bb.l ], [ %i.az, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.n
  store ptr %i.be, ptr %i.g, align 8, !tbaa !102
  %i.bf = icmp eq ptr %2, %.sroa.0.0
  br i1 %i.bf, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52, %.lr.ph.i.i.i.i.i53
  %.07.i.i.i.i.i54 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i53 ], [ %1, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52 ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i55 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i53 ], [ %2, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i55, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !104
  store i64 %i.bh, ptr %.07.i.i.i.i.i54, align 8, !tbaa !104
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i54, i64 8
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i55) #30 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %.sroa.0.0
  br i1 %i.bk, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i53, !llvm.loop !299

bb.n:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !99    ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = sub i64 %i.j, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3                 ; 4 uses
  %i.bp = sub nsw i64 1152921504606846975, %i.bo
  %.not = icmp ugt i64 %i.bp, %.05.i
  br i1 %.not, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.c)
  %i.bq = add nsw i64 %.sroa.speculated.i, %i.bo  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i58 = icmp eq i64 %i.bt, 0
  br i1 %.not.i58, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #28
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, %bb.p
  %i.bw = phi ptr [ %i.bv, %bb.p ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bx = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.by = sub i64 %i.bx, %i.bm                    ; 4 uses
  %i.bz = icmp sgt i64 %i.by, 8
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !219

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %i.bl, i64 %i.by, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.ca = icmp eq i64 %i.by, 8
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !104
  store i64 %i.cb, ptr %i.bw, align 8, !tbaa !104
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  br label %.lr.ph.i.i.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i.i.i59:                         ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i59
  %.07.i.i.i.i.i.i.i.i60 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i59 ], [ %i.cc, %bb.t ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i61 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i59 ], [ %2, %bb.t ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i61, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !104
  store i64 %i.ce, ptr %.07.i.i.i.i.i.i.i.i60, align 8, !tbaa !104
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i60, i64 8 ; 4 uses
  %i.cg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i.i.i.i61) #30 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %3
  br i1 %i.ch, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63, label %.lr.ph.i.i.i.i.i.i.i.i59, !llvm.loop !299

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63: ; preds = %.lr.ph.i.i.i.i.i.i.i.i59
  %i.ci = sub i64 %i.j, %i.bx                     ; 4 uses
  %i.cj = icmp sgt i64 %i.ci, 8
  br i1 %i.cj, label %bb.u, label %bb.v, !prof !219

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %1, i64 %i.ci, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63
  %i.ck = icmp eq i64 %i.ci, 8
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !104
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  %.not.i65 = icmp eq ptr %i.bl, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = sub i64 %i.i, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cn) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bw, ptr %0, align 8, !tbaa !99
  store ptr %i.cm, ptr %i.g, align 8, !tbaa !102
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bt
  store ptr %i.co, ptr %i.e, align 8, !tbaa !103
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit

_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302
  tail call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 4 uses
  %i.h = load i32, ptr %2, align 4                ; 4 uses
  %i.i = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.i   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.f ] ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = icmp eq i32 %i.k, %i.g
  %i.m = load i32, ptr %.sroa.032.051, align 4
  %i.n = icmp eq i32 %i.m, %i.h
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp eq i32 %i.r, %i.g
  %i.t = load i32, ptr %i.p, align 4
  %i.u = icmp eq i32 %i.t, %i.h
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, %i.g
  %i.aa = load i32, ptr %i.w, align 4
  %i.ab = icmp eq i32 %i.aa, %i.h
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = icmp eq i32 %i.af, %i.g
  %i.ah = load i32, ptr %i.ad, align 4
  %i.ai = icmp eq i32 %i.ah, %i.h
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  %i.al = add nsw i64 %.052, -1
  %i.am = icmp sgt i64 %.052, 1
  br i1 %i.am, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !305

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre62 = ptrtoint ptr %scevgep to i64
  %.pre63 = sub i64 %i.a, %.pre62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi64, 3
  switch i64 %i.an, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge58
  ]

._crit_edge._crit_edge58:                         ; preds = %._crit_edge
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4, !tbaa !3
  %.pre61 = load i32, ptr %2, align 4
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.pre57 = load i32, ptr %2, align 4
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 2 uses
  %i.as = icmp eq i32 %i.ap, %i.ar
  %i.at = load i32, ptr %.sroa.032.0.lcssa, align 4
  %i.au = load i32, ptr %2, align 4               ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi i32 [ %i.au, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.ar, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = icmp eq i32 %i.bb, %i.az
  %i.bd = load i32, ptr %.sroa.032.1, align 4
  %i.be = icmp eq i32 %i.bd, %i.ay
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bh = phi i32 [ %i.ay, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bi = phi i32 [ %i.az, %bb.j ], [ %.pre60, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bg, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = icmp eq i32 %i.bk, %i.bi
  %i.bm = load i32, ptr %.sroa.032.2, align 4
  %i.bn = icmp eq i32 %i.bm, %i.bh
  %i.bo = select i1 %i.bl, i1 %i.bn, i1 false
  %spec.select = select i1 %i.bo, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.br, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bp, %.loopexit.loopexit.split.loop.exit ], [ %i.bq, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #13
end_hunk_0
