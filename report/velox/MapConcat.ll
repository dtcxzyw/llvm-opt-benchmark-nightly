inline.NumInlined: 2563
inline.NumDeleted: 1210
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
vector.ph706:                                     ; preds = %vector.main.loop.iter.check704
  %n.mod.vf707 = and i32 %i.fa, 28
  %n.vec708 = and i32 %i.fa, -32                  ; 4 uses
  %39 = add i32 %i.ct, %n.vec708
  %broadcast.splatinsert.a = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.pre39.i, i64 0
  %40 = load i32, ptr %i.ez, align 4, !tbaa !3, !alias.scope !855
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %40, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body709

vector.body709:                                   ; preds = %vector.body709, %vector.ph706
  %index710 = phi i32 [ 0, %vector.ph706 ], [ %index.next715, %vector.body709 ]
  %vec.phi711 = phi <8 x i32> [ %broadcast.splatinsert.a, %vector.ph706 ], [ %i.fc, %vector.body709 ]
  %vec.phi712 = phi <8 x i32> [ zeroinitializer, %vector.ph706 ], [ %i.fd, %vector.body709 ]
  %vec.phi713 = phi <8 x i32> [ zeroinitializer, %vector.ph706 ], [ %i.fe, %vector.body709 ]
  %vec.phi714 = phi <8 x i32> [ zeroinitializer, %vector.ph706 ], [ %i.ff, %vector.body709 ]
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %vec.epilog.resume.val721 = phi i32 [ %n.vec708, %vec.epilog.iter.check725 ], [ 0, %vector.main.loop.iter.check704 ]
  %bc.merge.rdx722 = phi i32 [ %i.fh, %vec.epilog.iter.check725 ], [ %.pre39.i, %vector.main.loop.iter.check704 ]
  %n.vec729 = and i32 %i.fa, -4                   ; 3 uses
  %41 = add i32 %i.ct, %n.vec729
  %broadcast.splatinsert733.a = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx722, i64 0
  %42 = load i32, ptr %i.ez, align 4, !tbaa !3, !alias.scope !855
  %broadcast.splatinsert733 = insertelement <4 x i32> poison, i32 %42, i64 0
  %broadcast.splat734 = shufflevector <4 x i32> %broadcast.splatinsert733, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body730

vec.epilog.vector.body730:                        ; preds = %vec.epilog.vector.body730, %vec.epilog.ph727
  %index731 = phi i32 [ %vec.epilog.resume.val721, %vec.epilog.ph727 ], [ %index.next735, %vec.epilog.vector.body730 ]
  %vec.phi732 = phi <4 x i32> [ %broadcast.splatinsert733.a, %vec.epilog.ph727 ], [ %i.fi, %vec.epilog.vector.body730 ]
  %i.fi = add <4 x i32> %broadcast.splat734, %vec.phi732 ; 2 uses
  %index.next735 = add nuw i32 %index731, 4       ; 2 uses
  %i.fj = icmp eq i32 %index.next735, %n.vec729
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us14.i.preheader: ; preds = %vector.memcheck697, %iter.check723, %vec.epilog.iter.check725, %vec.epilog.middle.block736
  %.ph827 = phi i32 [ %.pre39.i, %iter.check723 ], [ %.pre39.i, %vector.memcheck697 ], [ %i.fh, %vec.epilog.iter.check725 ], [ %i.fk, %vec.epilog.middle.block736 ] ; 2 uses
  %.012.us.us15.i.ph = phi i32 [ %i.ct, %iter.check723 ], [ %i.ct, %vector.memcheck697 ], [ %39, %vec.epilog.iter.check725 ], [ %41, %vec.epilog.middle.block736 ] ; 4 uses
  %i.fl = sub i32 %i.cu, %.012.us.us15.i.ph
  %xtraiter844 = and i32 %i.fl, 3                 ; 2 uses
  %lcmp.mod845.not = icmp eq i32 %xtraiter844, 0
end_hunk_2
