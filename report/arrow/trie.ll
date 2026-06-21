inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs:bb.a
  %i.bq = lshr i64 %i.bp, 1
  %i.br = add nuw i64 %i.bq, 1                    ; 5 uses
  %min.iters.check122 = icmp ult i64 %i.bp, 6
  br i1 %min.iters.check122, label %.lr.ph.i.i.i71.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check137
  %min.iters.check124 = icmp ult i64 %i.bp, 30
  br i1 %min.iters.check124, label %vec.epilog.ph141, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.br, 12
  %n.vec127 = and i64 %i.br, -16                  ; 4 uses
  %i.bs = shl i64 %n.vec127, 1
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %broadcast.splatinsert128 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat129 = shufflevector <8 x i16> %broadcast.splatinsert128, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.bu = shl i64 %index131, 1
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep132, i64 16
  store <8 x i16> %broadcast.splat129, ptr %next.gep132, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat129, ptr %i.bv, align 2, !tbaa !28
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.bw, label %middle.block134, label %vector.body130, !llvm.loop !147

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.br, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !141

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.br, -4                   ; 3 uses
  %i.bx = shl i64 %n.vec143, 1
  %i.by = getelementptr i8, ptr %1, i64 %i.bx
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.bz = shl i64 %index147, 1
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.bz
  store <4 x i16> %broadcast.splat145, ptr %next.gep148, align 2, !tbaa !28
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.ca, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !148

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.br, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bt, %vec.epilog.iter.check139 ], [ %i.by, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.cb, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i72, align 2, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 2 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.cb, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !149

bb.o:                                             ; preds = %bb.b
  %i.cc = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = sub i64 %i.f, %i.cd
  %i.cf = ashr exact i64 %i.ce, 1                 ; 4 uses
  %i.cg = sub nsw i64 4611686018427387903, %i.cf
  %i.ch = icmp ult i64 %i.cg, %2
  br i1 %i.ch, label %bb.p, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #18
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %2)
  %i.ci = add i64 %.sroa.speculated.i, %i.cf      ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.cf
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 4611686018427387903)
  %i.cl = select i1 %i.cj, i64 4611686018427387903, i64 %i.ck ; 3 uses
  %i.cm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cn = sub i64 %i.cm, %i.cd                    ; 4 uses
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %iter.check199, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit
  %i.co = shl nuw nsw i64 %i.cl, 1
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #17
  br label %iter.check199

iter.check199:                                    ; preds = %bb.q, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit
  %i.cq = phi ptr [ %i.cp, %bb.q ], [ null, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.cn ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 1       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i.i.i75
  %i.ct = load i16, ptr %3, align 2, !tbaa !28    ; 3 uses
  %i.cu = add nsw i64 %.idx.i.i.i.i.i75, -2       ; 3 uses
  %i.cv = lshr exact i64 %i.cu, 1
  %i.cw = add nuw i64 %i.cv, 1                    ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.cu, 30
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.cw, 12
  %n.vec189 = and i64 %i.cw, -16                  ; 4 uses
  %i.cx = shl i64 %n.vec189, 1
  %i.cy = getelementptr i8, ptr %i.cr, i64 %i.cx
  %broadcast.splatinsert190 = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %broadcast.splat191 = shufflevector <8 x i16> %broadcast.splatinsert190, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.cz = shl i64 %index193, 1
  %next.gep194 = getelementptr i8, ptr %i.cr, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep194, i64 16
  store <8 x i16> %broadcast.splat191, ptr %next.gep194, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat191, ptr %i.da, align 2, !tbaa !28
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.db, label %middle.block196, label %vector.body192, !llvm.loop !150

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.cw, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !141

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.cw, -4                   ; 3 uses
  %i.dc = shl i64 %n.vec205, 1
  %i.dd = getelementptr i8, ptr %i.cr, i64 %i.dc
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.ct, i64 0
  %broadcast.splat207 = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.de = shl i64 %index209, 1
  %next.gep210 = getelementptr i8, ptr %i.cr, i64 %i.de
  store <4 x i16> %broadcast.splat207, ptr %next.gep210, align 2, !tbaa !28
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.df, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !151

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.cw, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cr, %iter.check199 ], [ %i.cy, %vec.epilog.iter.check201 ], [ %i.dd, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i16 %i.ct, ptr %.06.i.i.i.i.i.i.i77, align 2, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.dg, %i.cs
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !152

_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.dh = icmp sgt i64 %i.cn, 2
  br i1 %i.dh, label %bb.r, label %bb.s, !prof !137

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.cq, ptr align 2 %i.cc, i64 %i.cn, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.di = icmp eq i64 %i.cn, 2
  br i1 %i.di, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dj = load i16, ptr %i.cc, align 2, !tbaa !28
  store i16 %i.dj, ptr %i.cq, align 2, !tbaa !28
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %2 ; 3 uses
  %i.dl = sub i64 %i.f, %i.cm                     ; 4 uses
  %i.dm = icmp sgt i64 %i.dl, 2
  br i1 %i.dm, label %bb.u, label %bb.v, !prof !137

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dk, ptr align 2 %1, i64 %i.dl, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  %i.dn = icmp eq i64 %i.dl, 2
  br i1 %i.dn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.do = load i16, ptr %1, align 2, !tbaa !28
  store i16 %i.do, ptr %i.dk, align 2, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %.not.i82 = icmp eq ptr %i.cc, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = sub i64 %i.e, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.dq) #16
  br label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit

_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cq, ptr %0, align 8, !tbaa !46
  store ptr %i.dp, ptr %i.c, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cl
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !62
  br label %_ZSt4fillIPssEvT_S1_RKT0_.exit

_ZSt4fillIPssEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(46) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !153
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !153
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !153, !nonnull !166, !align !167
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %2) #15, !noalias !153
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !153 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !153
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !153
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !168
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !168
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !168, !nonnull !166, !align !167
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %2) #15, !noalias !168
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !168 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !168
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !168
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
end_hunk_0
