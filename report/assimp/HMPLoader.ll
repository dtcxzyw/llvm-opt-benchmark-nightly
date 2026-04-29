inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  %n.mod.vf = and i64 %i.bl, 3                    ; 2 uses
  %i.bm = icmp eq i64 %n.mod.vf, 0
  %i.bn = select i1 %i.bm, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.bl, %i.bn               ; 5 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %n.vec, 2
  %1 = mul nsw i64 %n.vec, 12
  %i.bq = mul nsw i64 %n.vec, 12
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = getelementptr i8, ptr %.04664.us, i64 %i.bp
  %i.bw = getelementptr i8, ptr %.04763.us, i64 %1
  %i.bx = getelementptr i8, ptr %.04962.us, i64 %i.bq
  %i.by = fmul float %i.bu, %i.br
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.by, i64 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 4 uses
  %next.gep = getelementptr i8, ptr %.04664.us, i64 %offset.idx ; 3 uses
  %i.bz = getelementptr i8, ptr %.04664.us, i64 %offset.idx ; 2 uses
  %i.ca = getelementptr i8, ptr %.04664.us, i64 %offset.idx ; 2 uses
  %i.cb = getelementptr i8, ptr %.04664.us, i64 %offset.idx ; 2 uses
  %offset.idx108 = mul i64 %index, 12             ; 4 uses
  %next.gep109.a = getelementptr i8, ptr %.04763.us, i64 %offset.idx108 ; 2 uses
  %i.cc = getelementptr i8, ptr %.04763.us, i64 %offset.idx108
  %next.gep110.a = getelementptr i8, ptr %i.cc, i64 12
end_hunk_2
begin_hunk_3_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  %next.gep111.a = getelementptr i8, ptr %i.cd, i64 24
  %i.ce = getelementptr i8, ptr %.04763.us, i64 %offset.idx108
  %next.gep112.a = getelementptr i8, ptr %i.ce, i64 36
  %offset.idx113 = mul i64 %index, 12
  %next.gep114 = getelementptr i8, ptr %.04962.us, i64 %offset.idx113
  %i.cf = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.cg = fmul <4 x float> %broadcast.splat, %i.cf
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !alias.scope !16
end_hunk_3
