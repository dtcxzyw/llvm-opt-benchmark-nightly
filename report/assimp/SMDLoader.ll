inline.NumInlined: 1538
inline.NumDeleted: 693
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader632, label %vector.ph612

vector.ph612:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec614 = and i64 %i.iu, 4611686018427387900  ; 3 uses
  %i.iw = shl i64 %n.vec614, 3                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ip, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ie, i64 %i.iw
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph612
  %index616 = phi i64 [ 0, %vector.ph612 ], [ %index.next623, %vector.body615 ] ; 2 uses
  %offset.idx617 = shl i64 %index616, 3           ; 2 uses
  %next.gep618 = getelementptr i8, ptr %i.ip, i64 %offset.idx617 ; 2 uses
  %next.gep620 = getelementptr i8, ptr %i.ie, i64 %offset.idx617 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.iz = getelementptr i8, ptr %next.gep620, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %or.cond628, label %.lr.ph.i.i.i.i.i.preheader630, label %vector.ph592

vector.ph592:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec594 = and i64 %i.sb, 4611686018427387900  ; 3 uses
  %i.sd = shl i64 %n.vec594, 3                    ; 2 uses
  %i.se = getelementptr i8, ptr %i.rt, i64 %i.sd  ; 2 uses
  %i.sf = getelementptr i8, ptr %i.ri, i64 %i.sd
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph592
  %index596 = phi i64 [ 0, %vector.ph592 ], [ %index.next603, %vector.body595 ] ; 2 uses
  %offset.idx597 = shl i64 %index596, 3           ; 2 uses
  %next.gep598 = getelementptr i8, ptr %i.rt, i64 %offset.idx597 ; 2 uses
  %next.gep600 = getelementptr i8, ptr %i.ri, i64 %offset.idx597 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.sg = getelementptr i8, ptr %next.gep600, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %or.cond629, label %.lr.ph.i.i.i.i.i209.preheader631, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph.i.i.i.i.i209.preheader
  %n.vec578 = and i64 %i.ve, 4611686018427387900  ; 3 uses
  %i.vg = shl i64 %n.vec578, 3                    ; 2 uses
  %i.vh = getelementptr i8, ptr %i.ux, i64 %i.vg  ; 2 uses
  %i.vi = getelementptr i8, ptr %i.um, i64 %i.vg
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph576
  %index580 = phi i64 [ 0, %vector.ph576 ], [ %index.next584, %vector.body579 ] ; 2 uses
  %offset.idx = shl i64 %index580, 3              ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ux, i64 %offset.idx ; 2 uses
  %next.gep582 = getelementptr i8, ptr %i.um, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vj = getelementptr i8, ptr %next.gep582, i64 16
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.i.i.preheader331, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec185 = and i64 %i.r, 4611686018427387900   ; 3 uses
  %i.s = shl i64 %n.vec185, 3                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %i.u = getelementptr i8, ptr %i.o, i64 %i.s
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph183
  %index187 = phi i64 [ 0, %vector.ph183 ], [ %index.next194, %vector.body186 ] ; 2 uses
  %offset.idx188 = shl i64 %index187, 3           ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.d, i64 %offset.idx188 ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.o, i64 %offset.idx188 ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 4
  %wide.load193 = load <2 x i64>, ptr %i.v, align 4
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br i1 %conflict.rdx219, label %.lr.ph.i.i.i.i.i69.preheader330, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck199
  %n.vec224 = and i64 %i.af, 9223372036854775806  ; 3 uses
  %i.ao = and i64 %i.af, 1
  %i.ap = mul i64 %n.vec224, -8                   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.d, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.o, i64 %i.ap
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next236, %vector.body225 ] ; 2 uses
  %offset.idx227 = mul i64 %index226, -8          ; 2 uses
  %next.gep228 = getelementptr i8, ptr %i.d, i64 %offset.idx227
  %next.gep230 = getelementptr i8, ptr %i.o, i64 %offset.idx227
  %i.as = getelementptr inbounds i8, ptr %next.gep230, i64 -16
  %wide.vec325 = load <4 x float>, ptr %i.as, align 4
  %i.at = getelementptr inbounds i8, ptr %next.gep228, i64 -16
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i71.preheader333, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec148 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.cc = shl i64 %n.vec148, 3                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc
  %i.ce = getelementptr i8, ptr %1, i64 %i.cc
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body149 ] ; 2 uses
  %offset.idx151 = shl i64 %index150, 3           ; 2 uses
  %next.gep152.a = getelementptr i8, ptr %i.bv, i64 %offset.idx151 ; 2 uses
  %next.gep154 = getelementptr i8, ptr %1, i64 %offset.idx151 ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep154, align 4
  %wide.load155 = load <2 x i64>, ptr %i.cf, align 4
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br i1 %or.cond326, label %.lr.ph.i.i.i.i.i90.preheader328, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %n.vec290 = and i64 %i.ex, 4611686018427387900  ; 3 uses
  %i.ez = shl i64 %n.vec290, 3                    ; 2 uses
  %i.fa = getelementptr i8, ptr %i.dm, i64 %i.ez  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cy, i64 %i.ez
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next299, %vector.body291 ] ; 2 uses
  %offset.idx293 = shl i64 %index292, 3           ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.dm, i64 %offset.idx293 ; 2 uses
  %next.gep296 = getelementptr i8, ptr %i.cy, i64 %offset.idx293 ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep296, i64 16
  %wide.load297 = load <2 x i64>, ptr %next.gep296, align 4
  %wide.load298 = load <2 x i64>, ptr %i.fc, align 4
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br i1 %diff.check306, label %.lr.ph.i.i.i.i.i96.preheader327, label %vector.ph309

vector.ph309:                                     ; preds = %vector.memcheck304
  %n.vec311 = and i64 %i.fm, 4611686018427387900  ; 3 uses
  %i.fq = shl i64 %n.vec311, 3                    ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fi, i64 %i.fq  ; 2 uses
  %i.fs = getelementptr i8, ptr %1, i64 %i.fq
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph309
  %index313 = phi i64 [ 0, %vector.ph309 ], [ %index.next320, %vector.body312 ] ; 2 uses
  %offset.idx314 = shl i64 %index313, 3           ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.fi, i64 %offset.idx314 ; 2 uses
  %next.gep317 = getelementptr i8, ptr %1, i64 %offset.idx314 ; 2 uses
  %i.ft = getelementptr i8, ptr %next.gep317, i64 16
  %wide.load318 = load <2 x i64>, ptr %next.gep317, align 4
  %wide.load319 = load <2 x i64>, ptr %i.ft, align 4
end_hunk_7
