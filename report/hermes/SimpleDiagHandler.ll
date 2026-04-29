inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 4 uses
  %i.ab = and i64 %i.g, 3
  %i.ac = shl i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ac
  %2 = shl i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %i.c, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %offset.idx
  %3 = getelementptr i8, ptr %i.j, i64 %offset.idx
  %next.gep52.a = getelementptr i8, ptr %3, i64 16
  %offset.idx53 = shl i64 %index, 3               ; 2 uses
  %next.gep54.a = getelementptr i8, ptr %i.c, i64 %offset.idx53
  %i.af = getelementptr i8, ptr %i.c, i64 %offset.idx53
  %next.gep55 = getelementptr i8, ptr %i.af, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep54.a, align 4, !tbaa !3
  %wide.vec57 = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !3
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.vec57, ptr %next.gep52.a, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !134
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a
  br i1 %conflict.rdx76, label %.lr.ph.i.i.i.i.i26.preheader123, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck63
  %n.vec81 = and i64 %i.an, 9223372036854775804   ; 4 uses
  %i.aq = and i64 %i.an, 3
  %i.ar = shl i64 %n.vec81, 3
  %i.as = getelementptr i8, ptr %i.j, i64 %i.ar
  %4 = shl i64 %n.vec81, 3
  %i.at = getelementptr i8, ptr %i.c, i64 %4
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph79
  %index83 = phi i64 [ 0, %vector.ph79 ], [ %index.next98, %vector.body82 ] ; 3 uses
  %offset.idx84 = shl i64 %index83, 3             ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.j, i64 %offset.idx84
  %5 = getelementptr i8, ptr %i.j, i64 %offset.idx84
  %next.gep86.a = getelementptr i8, ptr %5, i64 16
  %offset.idx87 = shl i64 %index83, 3             ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.c, i64 %offset.idx87
  %i.au = getelementptr i8, ptr %i.c, i64 %offset.idx87
  %next.gep89 = getelementptr i8, ptr %i.au, i64 16
  %wide.vec90.a = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !3
  %wide.vec93 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !3
  store <4 x i32> %wide.vec90.a, ptr %next.gep85, align 4, !tbaa !3
  store <4 x i32> %wide.vec93, ptr %next.gep86.a, align 4, !tbaa !3
  %index.next98 = add nuw i64 %index83, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next98, %n.vec81
  br i1 %i.av, label %middle.block99, label %vector.body82, !llvm.loop !139
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec109 = and i64 %i.bg, 4611686018427387900  ; 4 uses
  %i.bi = shl i64 %n.vec109, 3
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.bi
  %6 = shl i64 %n.vec109, 3
  %i.bk = getelementptr i8, ptr %i.am, i64 %6
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next117, %vector.body110 ] ; 3 uses
  %offset.idx112 = shl i64 %index111, 3
  %next.gep113 = getelementptr i8, ptr %i.w, i64 %offset.idx112 ; 2 uses
  %offset.idx114 = shl i64 %index111, 3
  %next.gep115 = getelementptr i8, ptr %i.am, i64 %offset.idx114 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep115, align 4
  %wide.load116 = load <2 x i64>, ptr %i.bl, align 4
end_hunk_2
