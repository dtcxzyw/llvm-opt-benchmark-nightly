begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %87, 24
  %n.vec = and i64 %87, -32                       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %100, i64 %index ; 3 uses
  %101 = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !40
  %wide.load98 = load <16 x i8>, ptr %101, align 1, !tbaa !40
  %102 = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load)
  %103 = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load98)
  store <16 x i8> %102, ptr %next.gep, align 1, !tbaa !40
  store <16 x i8> %103, ptr %101, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %104 = icmp eq i64 %index.next, %n.vec
  br i1 %104, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %87, %n.vec
  br i1 %cmp.n, label %BitOrderInvert.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %100, i64 %n.vec
  %ind.end107 = and i64 %87, 31
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %87, -8                     ; 3 uses
  %105 = getelementptr i8, ptr %100, i64 %n.vec100
  %106 = and i64 %87, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %next.gep102 = getelementptr i8, ptr %100, i64 %index101 ; 2 uses
  %wide.load103 = load <8 x i8>, ptr %next.gep102, align 1, !tbaa !40
  %107 = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load103)
  store <8 x i8> %107, ptr %next.gep102, align 1, !tbaa !40
  %index.next104 = add nuw i64 %index101, 8       ; 2 uses
  %108 = icmp eq i64 %index.next104, %n.vec100
  br i1 %108, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %87, %n.vec100
  br i1 %cmp.n105, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %100, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %105, %vec.epilog.middle.block ]
  %.01113.i.ph = phi i64 [ %87, %iter.check ], [ %ind.end107, %vec.epilog.iter.check ], [ %106, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %111, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01113.i = phi i64 [ %110, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader ]
  %109 = load i8, ptr %.014.i, align 1, !tbaa !40
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %109)
  store i8 %rev.i, ptr %.014.i, align 1, !tbaa !40
  %110 = add i64 %.01113.i, -1                    ; 2 uses
  %111 = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  %.not.i = icmp eq i64 %110, 0
  br i1 %.not.i, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i, !llvm.loop !104

BitOrderInvert.exit.loopexit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
end_hunk_1
begin_hunk_2
  br label %BitOrderInvert.exit

BitOrderInvert.exit:                              ; preds = %BitOrderInvert.exit.loopexit, %97
  %112 = phi i64 [ %.pre, %BitOrderInvert.exit.loopexit ], [ %98, %97 ]
  %113 = trunc i64 %112 to i32                    ; 3 uses
  %114 = lshr i32 %113, 2
  %115 = lshr i32 %113, 3
  %116 = xor i32 %114, %115
  %117 = and i32 %116, 1
  %.not81 = icmp eq i32 %117, 0
  br i1 %.not81, label %TwoByteSwap.exit, label %118

118:                                              ; preds = %BitOrderInvert.exit
  %119 = lshr i32 %113, 4
  %120 = and i32 %119, 3
  %121 = shl nuw nsw i32 1, %120
  switch i32 %121, label %TwoByteSwap.exit [
    i32 4, label %146
    i32 2, label %122
  ]

122:                                              ; preds = %118
  %123 = icmp ugt i64 %87, 1
  br i1 %123, label %iter.check110, label %TwoByteSwap.exit

iter.check110:                                    ; preds = %122
  %124 = load ptr, ptr %94, align 8, !tbaa !98    ; 5 uses
  %125 = add nsw i64 %87, -2                      ; 3 uses
  %126 = lshr i64 %125, 1
  %127 = add nuw i64 %126, 1                      ; 5 uses
  %min.iters.check108 = icmp ult i64 %125, 6
  br i1 %min.iters.check108, label %.lr.ph.i82.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %iter.check110
  %min.iters.check111 = icmp ult i64 %125, 30
  br i1 %min.iters.check111, label %vec.epilog.ph128, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check112
  %n.mod.vf114 = and i64 %127, 12
  %n.vec115 = and i64 %127, -16                   ; 5 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph113
  %index117 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body116 ] ; 2 uses
  %128 = shl i64 %index117, 1
  %next.gep118 = getelementptr i8, ptr %124, i64 %128 ; 3 uses
  %129 = getelementptr i8, ptr %next.gep118, i64 16 ; 2 uses
  %wide.load119 = load <8 x i16>, ptr %next.gep118, align 2, !tbaa !105
  %wide.load120 = load <8 x i16>, ptr %129, align 2, !tbaa !105
  %130 = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load119)
  %131 = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load120)
  store <8 x i16> %130, ptr %next.gep118, align 2, !tbaa !105
  store <8 x i16> %131, ptr %129, align 2, !tbaa !105
  %index.next121 = add nuw i64 %index117, 16      ; 2 uses
  %132 = icmp eq i64 %index.next121, %n.vec115
  br i1 %132, label %middle.block122, label %vector.body116, !llvm.loop !106

middle.block122:                                  ; preds = %vector.body116
  %cmp.n123 = icmp eq i64 %127, %n.vec115
  br i1 %cmp.n123, label %TwoByteSwap.exit, label %vec.epilog.iter.check126

vec.epilog.iter.check126:                         ; preds = %middle.block122
  %133 = shl i64 %n.vec115, 1
  %ind.end140 = getelementptr i8, ptr %124, i64 %133
  %134 = shl i64 %n.vec115, 1
  %ind.end141 = sub i64 %87, %134
  %min.epilog.iters.check127 = icmp eq i64 %n.mod.vf114, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph.i82.preheader, label %vec.epilog.ph128, !prof !107

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check126
  %vec.epilog.resume.val124 = phi i64 [ %n.vec115, %vec.epilog.iter.check126 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec130 = and i64 %127, -4                    ; 4 uses
  %135 = shl i64 %n.vec130, 1
  %136 = getelementptr i8, ptr %124, i64 %135
  %137 = shl i64 %n.vec130, 1
  %138 = sub i64 %87, %137
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.vector.body131, %vec.epilog.ph128
  %index132 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph128 ], [ %index.next135, %vec.epilog.vector.body131 ] ; 2 uses
  %offset.idx = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %124, i64 %offset.idx ; 2 uses
  %wide.load134 = load <4 x i16>, ptr %next.gep133, align 2, !tbaa !105
  %139 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load134)
  store <4 x i16> %139, ptr %next.gep133, align 2, !tbaa !105
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %140 = icmp eq i64 %index.next135, %n.vec130
  br i1 %140, label %vec.epilog.middle.block136, label %vec.epilog.vector.body131, !llvm.loop !108

vec.epilog.middle.block136:                       ; preds = %vec.epilog.vector.body131
  %cmp.n137 = icmp eq i64 %127, %n.vec130
  br i1 %cmp.n137, label %TwoByteSwap.exit, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %iter.check110, %vec.epilog.iter.check126, %vec.epilog.middle.block136
  %.07.i.ph = phi ptr [ %124, %iter.check110 ], [ %ind.end140, %vec.epilog.iter.check126 ], [ %136, %vec.epilog.middle.block136 ]
  %.056.i.ph = phi i64 [ %87, %iter.check110 ], [ %ind.end141, %vec.epilog.iter.check126 ], [ %138, %vec.epilog.middle.block136 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.07.i = phi ptr [ %144, %.lr.ph.i82 ], [ %.07.i.ph, %.lr.ph.i82.preheader ] ; 3 uses
  %.056.i = phi i64 [ %143, %.lr.ph.i82 ], [ %.056.i.ph, %.lr.ph.i82.preheader ]
  %141 = load i16, ptr %.07.i, align 2, !tbaa !105
  %142 = tail call i16 @llvm.bswap.i16(i16 %141)
  store i16 %142, ptr %.07.i, align 2, !tbaa !105
  %143 = add i64 %.056.i, -2                      ; 2 uses
  %144 = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %145 = icmp ugt i64 %143, 1
  br i1 %145, label %.lr.ph.i82, label %TwoByteSwap.exit, !llvm.loop !109

146:                                              ; preds = %118
  %147 = icmp ugt i64 %87, 3
  br i1 %147, label %.lr.ph.i83.preheader, label %TwoByteSwap.exit

.lr.ph.i83.preheader:                             ; preds = %146
  %148 = load ptr, ptr %94, align 8, !tbaa !98    ; 3 uses
  %149 = add nsw i64 %87, -4                      ; 2 uses
  %150 = lshr i64 %149, 2
  %151 = add nuw nsw i64 %150, 1                  ; 2 uses
  %min.iters.check142 = icmp ult i64 %149, 28
  br i1 %min.iters.check142, label %.lr.ph.i83.preheader157, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i83.preheader
  %n.vec145 = and i64 %151, 9223372036854775800   ; 4 uses
  %152 = shl i64 %n.vec145, 2
  %153 = getelementptr i8, ptr %148, i64 %152
  %154 = shl i64 %n.vec145, 2
  %155 = sub i64 %87, %154
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph143
  %index147 = phi i64 [ 0, %vector.ph143 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %offset.idx148 = shl i64 %index147, 2
  %next.gep149 = getelementptr i8, ptr %148, i64 %offset.idx148 ; 3 uses
  %156 = getelementptr i8, ptr %next.gep149, i64 16 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !3
  %wide.load151 = load <4 x i32>, ptr %156, align 4, !tbaa !3
  %157 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load150)
  %158 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load151)
  store <4 x i32> %157, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %158, ptr %156, align 4, !tbaa !3
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %159 = icmp eq i64 %index.next152, %n.vec145
  br i1 %159, label %middle.block153, label %vector.body146, !llvm.loop !110

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %151, %n.vec145
  br i1 %cmp.n154, label %TwoByteSwap.exit, label %.lr.ph.i83.preheader157

.lr.ph.i83.preheader157:                          ; preds = %.lr.ph.i83.preheader, %middle.block153
  %.07.i84.ph = phi ptr [ %148, %.lr.ph.i83.preheader ], [ %153, %middle.block153 ]
  %.056.i85.ph = phi i64 [ %87, %.lr.ph.i83.preheader ], [ %155, %middle.block153 ]
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.preheader157, %.lr.ph.i83
  %.07.i84 = phi ptr [ %163, %.lr.ph.i83 ], [ %.07.i84.ph, %.lr.ph.i83.preheader157 ] ; 3 uses
  %.056.i85 = phi i64 [ %162, %.lr.ph.i83 ], [ %.056.i85.ph, %.lr.ph.i83.preheader157 ]
  %160 = load i32, ptr %.07.i84, align 4, !tbaa !3
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  store i32 %161, ptr %.07.i84, align 4, !tbaa !3
  %162 = add i64 %.056.i85, -4                    ; 2 uses
  %163 = getelementptr inbounds nuw i8, ptr %.07.i84, i64 4
  %164 = icmp ugt i64 %162, 3
  br i1 %164, label %.lr.ph.i83, label %TwoByteSwap.exit, !llvm.loop !111

TwoByteSwap.exit:                                 ; preds = %.lr.ph.i82, %.lr.ph.i83, %middle.block122, %vec.epilog.middle.block136, %middle.block153, %146, %122, %52, %81, %93, %89, %118, %BitOrderInvert.exit, %4, %7
  %.066 = phi i32 [ 35, %4 ], [ 0, %52 ], [ %88, %81 ], [ %92, %89 ], [ %96, %93 ], [ 0, %118 ], [ 0, %middle.block153 ], [ 6, %7 ], [ 0, %BitOrderInvert.exit ], [ 0, %122 ], [ 0, %146 ], [ 0, %middle.block122 ], [ 0, %.lr.ph.i83 ], [ 0, %vec.epilog.middle.block136 ], [ 0, %.lr.ph.i82 ]
  ret i32 %.066
}

end_hunk_2
