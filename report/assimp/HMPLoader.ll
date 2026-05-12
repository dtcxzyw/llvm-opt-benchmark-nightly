inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.not68 = icmp eq i32 %i.au, 0
  %i.bc = getelementptr i8, ptr %i.c, i64 36      ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %.not68, label %._crit_edge66, label %.preheader.us.preheader

end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  br i1 %conflict.rdx104, label %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %1 = getelementptr i8, ptr %.04664.us, i64 %i.bp
  %2 = getelementptr i8, ptr %.04763.us, i64 %i.bq
  %3 = getelementptr i8, ptr %.04962.us, i64 %i.bq
  %i.bt = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = load float, ptr %i.bd, align 1, !alias.scope !13
  %5 = fmul float %4, %i.br
  %broadcast.splatinsert115 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat116 = shufflevector <4 x float> %broadcast.splatinsert115, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert115.a = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat116.a = shufflevector <4 x float> %broadcast.splatinsert115.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

end_hunk_1
begin_hunk_2_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  %i.ce = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.cf = fdiv nnan <4 x float> %i.ce, splat (float 6.553500e+04)
  %i.cg = fadd nnan <4 x float> %i.cf, splat (float -5.000000e-01)
  %i.ch = fmul <4 x float> %broadcast.splat116.a, %i.cg
  %i.ci = fmul <4 x float> %i.ch, splat (float 8.000000e+00)
  %i.cj = shufflevector <4 x float> %i.cd, <4 x float> %broadcast.splat116, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cj, <8 x float> %i.ck, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep112, align 4, !alias.scope !18, !noalias !20
end_hunk_2
begin_hunk_3_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a

_ZN10aiVector3tIfEdVEf.exit.i.us.preheader:       ; preds = %vector.body, %vector.memcheck, %.preheader.us
  %.04459.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %i.bo, %vector.body ]
  %.158.us.ph = phi ptr [ %.04664.us, %vector.memcheck ], [ %.04664.us, %.preheader.us ], [ %1, %vector.body ]
  %.14857.us.ph = phi ptr [ %.04763.us, %vector.memcheck ], [ %.04763.us, %.preheader.us ], [ %2, %vector.body ]
  %.15056.us.ph = phi ptr [ %.04962.us, %vector.memcheck ], [ %.04962.us, %.preheader.us ], [ %3, %vector.body ]
  br label %_ZN10aiVector3tIfEdVEf.exit.i.us

_ZN10aiVector3tIfEdVEf.exit.i.us:                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader, %_ZN10aiVector3tIfEdVEf.exit.i.us
end_hunk_3
