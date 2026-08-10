inline.NumInlined: 1539
inline.NumDeleted: 799
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIlSaIlEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS_ImSaImEEEEEEvNS4_IPlS1_EET_SB_St20forward_iterator_tag:bb.a
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next133, %vector.body125 ] ; 2 uses
  %i.cy = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %1, i64 %i.cy ; 4 uses
  %next.gep128 = getelementptr i8, ptr %2, i64 %i.cy ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep128, i64 32
  %i.da = getelementptr i8, ptr %next.gep128, i64 64
  %i.db = getelementptr i8, ptr %next.gep128, i64 96
  %wide.load129 = load <4 x i64>, ptr %next.gep128, align 8, !tbaa !105
  %wide.load130 = load <4 x i64>, ptr %i.cz, align 8, !tbaa !105
  %wide.load131 = load <4 x i64>, ptr %i.da, align 8, !tbaa !105
  %wide.load132 = load <4 x i64>, ptr %i.db, align 8, !tbaa !105
  %i.dc = getelementptr i8, ptr %next.gep127, i64 32
  %i.dd = getelementptr i8, ptr %next.gep127, i64 64
  %i.de = getelementptr i8, ptr %next.gep127, i64 96
  store <4 x i64> %wide.load129, ptr %next.gep127, align 8, !tbaa !105
  store <4 x i64> %wide.load130, ptr %i.dc, align 8, !tbaa !105
  store <4 x i64> %wide.load131, ptr %i.dd, align 8, !tbaa !105
  store <4 x i64> %wide.load132, ptr %i.de, align 8, !tbaa !105
  %index.next133 = add nuw i64 %index126, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next133, %n.vec124
  br i1 %i.df, label %middle.block134, label %vector.body125, !llvm.loop !297

middle.block134:                                  ; preds = %vector.body125
  %cmp.n135 = icmp eq i64 %i.cr, %n.vec124
  br i1 %cmp.n135, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, label %vec.epilog.iter.check141

vec.epilog.iter.check141:                         ; preds = %middle.block134
  %i.dg = and i64 %i.n, 96
  %min.epilog.iters.check142 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check142, label %.lr.ph.i.i.i.i.i53.preheader, label %vec.epilog.ph143, !prof !291

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
  %wide.load149 = load <4 x i64>, ptr %next.gep148, align 8, !tbaa !105
  store <4 x i64> %wide.load149, ptr %next.gep147, align 8, !tbaa !105
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.dm, label %vec.epilog.middle.block151, label %vec.epilog.vector.body145, !llvm.loop !298

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
  %i.dn = load i64, ptr %.0910.i.i.i.i.i56, align 8, !tbaa !105
  store i64 %i.dn, ptr %.0811.i.i.i.i.i55, align 8, !tbaa !105
  %i.do = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.dq = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.dr = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit, !llvm.loop !299

bb.n:                                             ; preds = %bb.b
  %i.ds = load ptr, ptr %0, align 8, !tbaa !100   ; 5 uses
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
  br i1 %i.eh, label %bb.q, label %bb.r, !prof !220

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ee, ptr align 8 %i.ds, i64 %i.eg, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.ei = icmp eq i64 %i.eg, 8
  br i1 %i.ei, label %bb.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

bb.s:                                             ; preds = %bb.r
  %i.ej = load i64, ptr %i.ds, align 8, !tbaa !105
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63: ; preds = %bb.s, %bb.r, %bb.q
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ek, ptr align 8 %2, i64 %i.d, i1 false), !tbaa !105
  %i.el = add i64 %i.d, %i.ef
  %i.em = add i64 %i.el, 8
  %i.en = sub i64 %i.em, %i.dt
  %i.eo = getelementptr i8, ptr %i.ee, i64 %i.en
  %scevgep = getelementptr i8, ptr %i.eo, i64 -8  ; 3 uses
  %i.ep = sub i64 %i.k, %i.ef                     ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.t, label %bb.u, !prof !220

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.ep, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPllET0_T_S9_S8_RSaIT1_E.exit63
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.es = load i64, ptr %1, align 8, !tbaa !105
  store i64 %i.es, ptr %scevgep, align 8, !tbaa !105
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
  store ptr %i.ee, ptr %0, align 8, !tbaa !100
  store ptr %i.et, ptr %i.h, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eb
  store ptr %i.ev, ptr %i.f, align 8, !tbaa !104
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPlS3_IlSaIlEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %middle.block134, %vec.epilog.middle.block151, %middle.block172, %vec.epilog.middle.block189, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
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
  br i1 %i.d, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !300

_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
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
  br i1 %i.t, label %bb.d, label %bb.e, !prof !220

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.r, i64 %.idx.neg, i1 false)
  %.pre87 = load ptr, ptr %i.g, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.neg, 0
  br i1 %i.u, label %bb.f, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !105
  store i64 %i.v, ptr %i.h, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.w = phi ptr [ %.pre87, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.c
  store ptr %i.x, ptr %i.g, align 8, !tbaa !103
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !220

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
  %i.af = load i64, ptr %1, align 8, !tbaa !105
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !105
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g, %bb.h, %bb.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !105
  store i64 %i.ah, ptr %.07.i.i.i.i.i, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i) #30 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %3
  br i1 %i.ak, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !301

bb.j:                                             ; preds = %bb.b
  %i.al = icmp sgt i64 %i.o, 0
  br i1 %i.al, label %.lr.ph.i51, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %bb.j
  %.not9.i = icmp eq ptr %i.h, %1
  tail call void @llvm.assume(i1 %.not9.i)
  br label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit

.lr.ph.i51:                                       ; preds = %bb.j, %.lr.ph.i51
  %.110.i = phi i64 [ %i.an, %.lr.ph.i51 ], [ %i.o, %bb.j ]
  %i.am = phi ptr [ %i.ao, %.lr.ph.i51 ], [ %2, %bb.j ]
  %i.an = add nsw i64 %.110.i, -1                 ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.am) #30 ; 2 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i51, !llvm.loop !302

_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i51, %.preheader.i.a
  %.sroa.0.0 = phi ptr [ %2, %.preheader.i.a ], [ %i.ao, %.lr.ph.i51 ] ; 4 uses
  %i.ap = icmp eq ptr %.sroa.0.0, %3
  br i1 %i.ap, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !105
  store i64 %i.ar, ptr %.07.i.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 8
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i.i.i.i) #30 ; 2 uses
  %i.au = icmp eq ptr %i.at, %3
  br i1 %i.au, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !301

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIlElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.av = sub nuw i64 %i.c, %i.o
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.av ; 5 uses
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !103
  %4 = icmp samesign ugt i64 %i.n, 8
  br i1 %4, label %bb.k, label %bb.l, !prof !220

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aw, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit
  %i.ax = icmp eq i64 %i.n, 8
  br i1 %i.ax, label %bb.m, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %1, align 8, !tbaa !105
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52: ; preds = %bb.k, %bb.l, %bb.m
  %i.az = phi ptr [ %.pre, %bb.k ], [ %i.aw, %bb.l ], [ %i.aw, %bb.m ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.n
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !103
  %i.bb = icmp eq ptr %2, %.sroa.0.0
  br i1 %i.bb, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52, %.lr.ph.i.i.i.i.i53
  %.07.i.i.i.i.i54 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i53 ], [ %1, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52 ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i55 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i53 ], [ %2, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i55, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !105
  store i64 %i.bd, ptr %.07.i.i.i.i.i54, align 8, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i54, i64 8
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i55) #30 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %.sroa.0.0
  br i1 %i.bg, label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i53, !llvm.loop !301

bb.n:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIlEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !100   ; 5 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bj = sub i64 %i.j, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  %i.bl = sub nsw i64 1152921504606846975, %i.bk
  %.not = icmp ugt i64 %i.bl, %.05.i
  br i1 %.not, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.c)
  %i.bm = add nsw i64 %.sroa.speculated.i, %i.bk  ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i58 = icmp eq i64 %i.bp, 0
  br i1 %.not.i58, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, %bb.p
  %i.bs = phi ptr [ %i.br, %bb.p ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = sub i64 %i.bt, %i.bi                    ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, 8
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !220

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %i.bh, i64 %i.bu, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.bw = icmp eq i64 %i.bu, 8
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !105
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !105
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  br label %.lr.ph.i.i.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i.i.i59:                         ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i59
  %.07.i.i.i.i.i.i.i.i60 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i59 ], [ %i.by, %bb.t ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i61 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i59 ], [ %2, %bb.t ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i61, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !105
  store i64 %i.ca, ptr %.07.i.i.i.i.i.i.i.i60, align 8, !tbaa !105
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i60, i64 8 ; 4 uses
  %i.cc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i.i.i.i.i.i.i.i61) #30 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %3
  br i1 %i.cd, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63, label %.lr.ph.i.i.i.i.i.i.i.i59, !llvm.loop !301

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63: ; preds = %.lr.ph.i.i.i.i.i.i.i.i59
  %i.ce = sub i64 %i.j, %i.bt                     ; 4 uses
  %i.cf = icmp sgt i64 %i.ce, 8
  br i1 %i.cf, label %bb.u, label %bb.v, !prof !220

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %1, i64 %i.ce, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIlEPllET0_T_S4_S3_RSaIT1_E.exit63
  %i.cg = icmp eq i64 %i.ce, 8
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = load i64, ptr %1, align 8, !tbaa !105
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !105
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %.not.i65 = icmp eq ptr %i.bh, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = sub i64 %i.i, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.cj) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bs, ptr %0, align 8, !tbaa !100
  store ptr %i.ci, ptr %i.g, align 8, !tbaa !103
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bp
  store ptr %i.ck, ptr %i.e, align 8, !tbaa !104
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit

_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303
  tail call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !304  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !305

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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !228  ; 4 uses
  %i.h = load i32, ptr %2, align 4                ; 4 uses
  %i.i = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.i   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.f ] ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !228
  %i.l = icmp eq i32 %i.k, %i.g
  %i.m = load i32, ptr %.sroa.032.051, align 4
  %i.n = icmp eq i32 %i.m, %i.h
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228
  %i.s = icmp eq i32 %i.r, %i.g
  %i.t = load i32, ptr %i.p, align 4
  %i.u = icmp eq i32 %i.t, %i.h
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !228
  %i.z = icmp eq i32 %i.y, %i.g
  %i.aa = load i32, ptr %i.w, align 4
  %i.ab = icmp eq i32 %i.aa, %i.h
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !228
  %i.ag = icmp eq i32 %i.af, %i.g
  %i.ah = load i32, ptr %i.ad, align 4
  %i.ai = icmp eq i32 %i.ah, %i.h
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  %i.al = add nsw i64 %.052, -1
  %i.am = icmp sgt i64 %.052, 1
  br i1 %i.am, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !306

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
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4, !tbaa !228
  %.pre61 = load i32, ptr %2, align 4
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !228
  %.pre57 = load i32, ptr %2, align 4
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !228
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !228 ; 2 uses
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
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !228
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
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !228
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef align 8) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.aq = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !8
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !32
  store ptr %i.am, ptr %i.o, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !36
  store ptr %i.am, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !20
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE17_M_reallocate_mapEmb:bb.a
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !220

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !23
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit, !prof !111

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !220

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !23
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !20
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #27
  store ptr %i.aq, ptr %0, align 8, !tbaa !20
  store i64 %i.am, ptr %i.k, align 8, !tbaa !26
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !32
  %i.be = load ptr, ptr %.0, align 8, !tbaa !23   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !36
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !33
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.45
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.162", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !65
  %i.c = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63   ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !59
  %i.j = load i64, ptr %i.d, align 8, !tbaa !64
  store i64 %i.j, ptr %i.b, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.m, align 8, !tbaa !63
  store ptr %i.d, ptr %2, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !63
  store i8 0, ptr %i.d, align 8, !tbaa !64
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  unreachable

bb.d:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !64
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27, !inline_history !307
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %1) #26, !inline_history !307
  %i.s = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.u = load i64, ptr %i.d, align 8, !tbaa !64
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.n
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 2 uses
  tail call void @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr nonnull @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !59
  %i.k = load i64, ptr %i.e, align 8, !tbaa !64
  store i64 %i.k, ptr %i.c, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !63
  store ptr %i.e, ptr %i.b, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !63
  store i8 0, ptr %i.e, align 8, !tbaa !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !307
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !307
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN8facebook5velox9functions10geospatial33getDissolvedTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEll"(i64 noundef %0, i64 noundef %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = lshr i64 %0, 26
  %i.b = trunc i64 %i.a to i8
  %i.c = and i8 %i.b, 63                          ; 2 uses
  %i.d = lshr i64 %1, 26
  %i.e = trunc i64 %i.d to i8
  %i.f = and i8 %i.e, 63                          ; 2 uses
  %.not = icmp eq i8 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i8 %i.c, %i.f
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !63   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.i) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !59 ; 3 uses
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %i.m = load ptr, ptr %2, align 8, !tbaa !59
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
  %i.t = load i64, ptr %i.q, align 8, !tbaa !64
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !64
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
  %i.ab = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !64
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !59
  %i.i = load i64, ptr %i.c, align 8, !tbaa !64
  store i64 %i.i, ptr %i.a, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %0, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !63
  store i8 0, ptr %i.c, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !65
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !59
  %i.s = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.s, ptr %i.o, align 8, !tbaa !64
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !63
  store ptr %i.a, ptr %2, align 8, !tbaa !59
  store i64 0, ptr %i.m, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !64
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  unreachable

bb.e:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !64
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27, !inline_history !307
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %1) #26, !inline_history !307
  %i.z = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !64
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
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !18, i64 48}
!12 = !{!"_ZTSNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_Deque_impl_dataE", !13, i64 0, !16, i64 8, !17, i64 16, !17, i64 48}
!13 = !{!"p3 _ZTSN4geos4geom8GeometryE", !14, i64 0}
!14 = !{!"any p3 pointer", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt15_Deque_iteratorIPKN4geos4geom8GeometryERS4_PS4_E", !18, i64 0, !18, i64 8, !18, i64 16, !13, i64 24}
!18 = !{!"p2 _ZTSN4geos4geom8GeometryE", !15, i64 0}
!19 = !{!12, !18, i64 64}
!20 = !{!12, !13, i64 0}
!21 = !{!12, !13, i64 40}
!22 = !{!12, !13, i64 72}
!23 = !{!18, !18, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!12, !16, i64 8}
!27 = !{!17, !18, i64 0}
!28 = !{!17, !18, i64 8}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!31 = distinct !{!31, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!32 = !{!17, !13, i64 24}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{!12, !18, i64 56}
!36 = !{!17, !18, i64 16}
!37 = distinct !{!37, !25}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!40 = distinct !{!40, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!41 = distinct !{!41, !25}
!42 = !{!43, !44, i64 32}
!43 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !44, i64 32}
!44 = !{!"bool", !6, i64 0}
!45 = !{!46, !9, i64 0}
!46 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !9, i64 0, !44, i64 8, !47, i64 16}
!47 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !50, i64 0}
!50 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !51, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !52, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !10, i64 0}
!54 = !{!46, !44, i64 8}
!55 = !{!52, !53, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!58 = distinct !{!58, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!59 = !{!60, !62, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !16, i64 8, !6, i64 16}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!62 = !{!"p1 omnipotent char", !10, i64 0}
!63 = !{!60, !16, i64 8}
!64 = !{!6, !6, i64 0}
!65 = !{!61, !62, i64 0}
!66 = distinct !{null}
!67 = !{!68, !44, i64 8}
!68 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !9, i64 0, !44, i64 8, !44, i64 9, !44, i64 10, !69, i64 16, !44, i64 40}
!69 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!74 = !{!68, !44, i64 9}
!75 = !{!68, !44, i64 10}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!78 = distinct !{!78, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!81 = distinct !{!81, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!82 = !{!83, !83, i64 0}
!83 = !{!"double", !6, i64 0}
!84 = !{!72, !73, i64 0}
!85 = !{!72, !73, i64 16}
!86 = !{!53, !53, i64 0}
!87 = !{!"branch_weights", i32 11189848, i32 -569676999}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!90 = distinct !{!90, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSN8facebook5velox6StatusE", !93, i64 0}
!93 = !{!"p1 _ZTSN8facebook5velox6Status5StateE", !10, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!96 = distinct !{!96, !"_ZN8facebook5velox6Status2OKEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!99 = distinct !{!99, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 long", !10, i64 0}
!103 = !{!101, !102, i64 8}
!104 = !{!101, !102, i64 16}
!105 = !{!16, !16, i64 0}
!106 = !{!107, !108, i64 32}
!107 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !6, i64 0, !108, i64 32}
!108 = !{!"_ZTSN5folly15expected_detail5WhichE", !6, i64 0}
!109 = !{!"branch_weights", i32 1000, i32 2001000, i32 -292967296}
!110 = !{!102, !102, i64 0}
!111 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!112 = !{!113, !102, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!114 = !{!113, !102, i64 16}
!115 = distinct !{!115, !25}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!118 = !{!119, !44, i64 24}
!119 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIlSaIlEEE", !6, i64 0, !44, i64 24}
!120 = !{i8 0, i8 2}
!121 = !{}
!122 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN4geos4geom4prep23PreparedGeometryFactory7prepareEPKNS0_8GeometryE: argument 0"}
!125 = distinct !{!125, !"_ZN4geos4geom4prep23PreparedGeometryFactory7prepareEPKNS0_8GeometryE"}
!126 = !{!127, !16, i64 8}
!127 = !{!"_ZTSNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE16_Deque_impl_dataE", !128, i64 0, !16, i64 8, !129, i64 16, !129, i64 48}
!128 = !{!"p2 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !15, i64 0}
!129 = !{!"_ZTSSt15_Deque_iteratorIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryERS5_PS5_E", !130, i64 0, !130, i64 8, !130, i64 16, !128, i64 24}
!130 = !{!"p1 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !10, i64 0}
!131 = !{!127, !128, i64 0}
!132 = !{!130, !130, i64 0}
!133 = !{!129, !128, i64 24}
!134 = !{!129, !130, i64 8}
!135 = !{!129, !130, i64 16}
!136 = !{!127, !130, i64 16}
!137 = !{!127, !130, i64 48}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEE", !10, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"p2 _ZTSN4geos4geom8EnvelopeE", !15, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom4prep16PreparedGeometryESt14default_deleteIS3_EE", !10, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"p1 _ZTSSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE", !10, i64 0}
!146 = !{!129, !130, i64 0}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv: argument 0"}
!149 = distinct !{!149, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv"}
!150 = !{!151, !16, i64 0}
!151 = !{!"_ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !16, i64 0, !152, i64 8, !158, i64 16}
!152 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !153, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !154, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !155, i64 0}
!155 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !156, i64 0}
!156 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !157, i64 0}
!157 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !117, i64 0}
!158 = !{!"_ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !159, i64 0}
!159 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8GeometryESt14default_deleteIS2_ELb1ELb1EE", !160, i64 0}
!160 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8GeometryESt14default_deleteIS2_EE", !161, i64 0}
!161 = !{!"_ZTSSt5tupleIJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !162, i64 0}
!162 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !163, i64 0}
!163 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !9, i64 0}
!164 = distinct !{null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!165 = !{!127, !128, i64 72}
!166 = distinct !{null, null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!167 = !{!168, !168, i64 0}
!168 = !{!"p1 _ZTSN4geos4geom4prep16PreparedGeometryE", !10, i64 0}
!169 = distinct !{ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!170 = distinct !{!170, !25}
!171 = distinct !{null, null}
!172 = !{!173, !173, i64 0}
!173 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !10, i64 0}
!174 = !{!175, !83, i64 16}
!175 = !{!"_ZTSN4geos4geom8EnvelopeE", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24}
!176 = !{!175, !83, i64 8}
!177 = !{!178, !108, i64 32}
!178 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !6, i64 0, !108, i64 32}
!179 = !{!175, !83, i64 24}
!180 = !{!175, !83, i64 0}
!181 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!182 = !{!"branch_weights", i32 4002000, i32 1}
!183 = distinct !{!183, !25}
!184 = distinct !{!184, !25}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!187 = distinct !{!187, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!190 = distinct !{!190, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!193 = distinct !{!193, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!196 = distinct !{!196, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!197 = !{!"branch_weights", i32 1, i32 4001}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!200 = distinct !{!200, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!203 = distinct !{!203, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!206 = distinct !{!206, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!209 = distinct !{!209, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!210 = !{!211, !213, i64 0}
!211 = !{!"_ZTSSt15_Rb_tree_header", !212, i64 0, !16, i64 32}
!212 = !{!"_ZTSSt18_Rb_tree_node_base", !213, i64 0, !214, i64 8, !214, i64 16, !214, i64 24}
!213 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!214 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!215 = !{!211, !214, i64 8}
!216 = !{!211, !214, i64 16}
!217 = !{!211, !214, i64 24}
!218 = !{!211, !16, i64 32}
!219 = distinct !{!219, !25}
!220 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!221 = !{!214, !214, i64 0}
!222 = distinct !{!222, !25}
!223 = distinct !{!223, !25}
!224 = !{!225, !5, i64 0}
!225 = !{!"_ZTSSt10_Head_baseILm1EiLb0EE", !5, i64 0}
!226 = !{!227, !5, i64 0}
!227 = !{!"_ZTSSt10_Head_baseILm0EiLb0EE", !5, i64 0}
!228 = !{!5, !5, i64 0}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!234 = !{!235, !237}
!235 = distinct !{!235, !236, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!236 = distinct !{!236, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_"}
!237 = distinct !{!237, !236, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!238 = !{!239, !240}
!239 = distinct !{!239, !236, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!240 = distinct !{!240, !236, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!241 = !{!242, !83, i64 16}
!242 = !{!"_ZTSN8facebook5velox9functions10geospatial14CartesianPointE", !83, i64 0, !83, i64 8, !83, i64 16}
!243 = distinct !{!243, !25}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN3fmt3v116formatIJRdS2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!246 = distinct !{!246, !"_ZN3fmt3v116formatIJRdS2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_"}
!247 = !{!242, !83, i64 0}
!248 = !{!242, !83, i64 8}
!249 = distinct !{!249, !25}
!250 = !{!251, !251, i64 0}
!251 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !10, i64 0}
!252 = distinct !{null, null}
!253 = distinct !{!253, !25}
!254 = distinct !{null}
!255 = distinct !{!255, !25, !256}
!256 = !{!"llvm.loop.peeled.count", i32 1}
!257 = distinct !{!257, !25}
!258 = !{!12, !18, i64 16}
!259 = !{!260, !139, i64 0}
!260 = !{!"_ZTSZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiE3$_0", !139, i64 0, !141, i64 8, !143, i64 16, !145, i64 24}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_114tileToEnvelopeEl: argument 0"}
!263 = distinct !{!263, !"_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_114tileToEnvelopeEl"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZSt11make_uniqueIN4geos4geom8EnvelopeEJRdS3_S3_S3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!266 = distinct !{!266, !"_ZSt11make_uniqueIN4geos4geom8EnvelopeEJRdS3_S3_S3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!267 = !{!265, !262}
!268 = !{!260, !141, i64 8}
!269 = !{i64 8}
!270 = !{!260, !143, i64 16}
!271 = !{!260, !145, i64 24}
!272 = !{!127, !130, i64 64}
!273 = distinct !{null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!274 = distinct !{!274, !25}
!275 = !{i64 0, i64 8, !138, i64 8, i64 8, !140, i64 16, i64 8, !142, i64 24, i64 8, !144}
!276 = distinct !{null, null}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE5beginEv: argument 0"}
!279 = distinct !{!279, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE5beginEv"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv: argument 0"}
!282 = distinct !{!282, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv"}
!283 = distinct !{null, null, null, null, null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!284 = distinct !{!284, !25}
!285 = distinct !{!285, !25}
!286 = !{!127, !128, i64 40}
!287 = distinct !{!287, !25}
!288 = distinct !{!288, !25, !289, !290}
!289 = !{!"llvm.loop.isvectorized", i32 1}
!290 = !{!"llvm.loop.unroll.runtime.disable"}
!291 = !{!"branch_weights", i32 4, i32 12}
!292 = distinct !{!292, !25, !289, !290}
!293 = distinct !{!293, !25, !289}
!294 = distinct !{!294, !25, !289, !290}
!295 = distinct !{!295, !25, !289, !290}
!296 = distinct !{!296, !25, !289}
!297 = distinct !{!297, !25, !289, !290}
!298 = distinct !{!298, !25, !289, !290}
!299 = distinct !{!299, !25, !289}
!300 = distinct !{!300, !25}
!301 = distinct !{!301, !25}
!302 = distinct !{!302, !25}
!303 = !{!212, !214, i64 24}
!304 = !{!212, !214, i64 16}
!305 = distinct !{!305, !25}
!306 = distinct !{!306, !25}
!307 = !{ptr @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
end_hunk_1
