begin_hunk_0
inline.NumInlined: 21
inline.NumDeleted: 9
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %87, 24
  %n.vec = and i64 %87, -32                       ; 4 uses
  %101 = getelementptr i8, ptr %100, i64 %n.vec
  %102 = and i64 %87, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %100, i64 %index ; 3 uses
  %103 = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !40
  %wide.load98 = load <16 x i8>, ptr %103, align 1, !tbaa !40
  %104 = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load)
  %105 = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load98)
  store <16 x i8> %104, ptr %next.gep, align 1, !tbaa !40
  store <16 x i8> %105, ptr %103, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %106 = icmp eq i64 %index.next, %n.vec
  br i1 %106, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %87, %n.vec
  br i1 %cmp.n, label %BitOrderInvert.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %87, -8                     ; 3 uses
  %107 = getelementptr i8, ptr %100, i64 %n.vec101
  %108 = and i64 %87, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %next.gep103 = getelementptr i8, ptr %100, i64 %index102 ; 2 uses
  %wide.load104 = load <8 x i8>, ptr %next.gep103, align 1, !tbaa !40
  %109 = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load104)
  store <8 x i8> %109, ptr %next.gep103, align 1, !tbaa !40
  %index.next105 = add nuw i64 %index102, 8       ; 2 uses
  %110 = icmp eq i64 %index.next105, %n.vec101
  br i1 %110, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %87, %n.vec101
  br i1 %cmp.n106, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %100, %iter.check ], [ %101, %vec.epilog.iter.check ], [ %107, %vec.epilog.middle.block ]
  %.01113.i.ph = phi i64 [ %87, %iter.check ], [ %102, %vec.epilog.iter.check ], [ %108, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %113, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01113.i = phi i64 [ %112, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader ]
  %111 = load i8, ptr %.014.i, align 1, !tbaa !40
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %111)
  store i8 %rev.i, ptr %.014.i, align 1, !tbaa !40
  %112 = add i64 %.01113.i, -1                    ; 2 uses
  %113 = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  %.not.i = icmp eq i64 %112, 0
  br i1 %.not.i, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i, !llvm.loop !104

BitOrderInvert.exit.loopexit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
end_hunk_1
begin_hunk_2
  br label %BitOrderInvert.exit

BitOrderInvert.exit:                              ; preds = %BitOrderInvert.exit.loopexit, %97
  %114 = phi i64 [ %.pre, %BitOrderInvert.exit.loopexit ], [ %98, %97 ]
  %115 = trunc i64 %114 to i32                    ; 3 uses
  %116 = lshr i32 %115, 2
  %117 = lshr i32 %115, 3
  %118 = xor i32 %116, %117
  %119 = and i32 %118, 1
  %.not81 = icmp eq i32 %119, 0
  br i1 %.not81, label %TwoByteSwap.exit, label %120

120:                                              ; preds = %BitOrderInvert.exit
  %121 = lshr i32 %115, 4
  %122 = and i32 %121, 3
  %123 = shl nuw nsw i32 1, %122
  switch i32 %123, label %TwoByteSwap.exit [
    i32 4, label %150
    i32 2, label %124
  ]

124:                                              ; preds = %120
  %125 = icmp ugt i64 %87, 1
  br i1 %125, label %iter.check111, label %TwoByteSwap.exit

iter.check111:                                    ; preds = %124
  %126 = load ptr, ptr %94, align 8, !tbaa !98    ; 5 uses
  %127 = add nsw i64 %87, -2                      ; 3 uses
  %128 = lshr i64 %127, 1
  %129 = add nuw i64 %128, 1                      ; 5 uses
  %min.iters.check109 = icmp ult i64 %127, 6
  br i1 %min.iters.check109, label %.lr.ph.i82.preheader, label %vector.main.loop.iter.check113

vector.main.loop.iter.check113:                   ; preds = %iter.check111
  %min.iters.check112 = icmp ult i64 %127, 30
  br i1 %min.iters.check112, label %vec.epilog.ph130, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check113
  %n.mod.vf115 = and i64 %129, 12
  %n.vec116 = and i64 %129, -16                   ; 5 uses
  %130 = shl i64 %n.vec116, 1
  %131 = getelementptr i8, ptr %126, i64 %130
  %132 = shl i64 %n.vec116, 1
  %133 = sub i64 %87, %132
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body117 ] ; 2 uses
  %134 = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr %126, i64 %134 ; 3 uses
  %135 = getelementptr i8, ptr %next.gep119, i64 16 ; 2 uses
  %wide.load120 = load <8 x i16>, ptr %next.gep119, align 2, !tbaa !105
  %wide.load121 = load <8 x i16>, ptr %135, align 2, !tbaa !105
  %136 = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load120)
  %137 = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load121)
  store <8 x i16> %136, ptr %next.gep119, align 2, !tbaa !105
  store <8 x i16> %137, ptr %135, align 2, !tbaa !105
  %index.next122 = add nuw i64 %index118, 16      ; 2 uses
  %138 = icmp eq i64 %index.next122, %n.vec116
  br i1 %138, label %middle.block123, label %vector.body117, !llvm.loop !106

middle.block123:                                  ; preds = %vector.body117
  %cmp.n124 = icmp eq i64 %129, %n.vec116
  br i1 %cmp.n124, label %TwoByteSwap.exit, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block123
  %min.epilog.iters.check129 = icmp eq i64 %n.mod.vf115, 0
  br i1 %min.epilog.iters.check129, label %.lr.ph.i82.preheader, label %vec.epilog.ph130, !prof !107

vec.epilog.ph130:                                 ; preds = %vector.main.loop.iter.check113, %vec.epilog.iter.check128
  %vec.epilog.resume.val125 = phi i64 [ %n.vec116, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check113 ]
  %n.vec132 = and i64 %129, -4                    ; 4 uses
  %139 = shl i64 %n.vec132, 1
  %140 = getelementptr i8, ptr %126, i64 %139
  %141 = shl i64 %n.vec132, 1
  %142 = sub i64 %87, %141
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph130
  %index134 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph130 ], [ %index.next137, %vec.epilog.vector.body133 ] ; 2 uses
  %offset.idx = shl i64 %index134, 1
  %next.gep135 = getelementptr i8, ptr %126, i64 %offset.idx ; 2 uses
  %wide.load136 = load <4 x i16>, ptr %next.gep135, align 2, !tbaa !105
  %143 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load136)
  store <4 x i16> %143, ptr %next.gep135, align 2, !tbaa !105
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %144 = icmp eq i64 %index.next137, %n.vec132
  br i1 %144, label %vec.epilog.middle.block138, label %vec.epilog.vector.body133, !llvm.loop !108

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body133
  %cmp.n139 = icmp eq i64 %129, %n.vec132
  br i1 %cmp.n139, label %TwoByteSwap.exit, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %iter.check111, %vec.epilog.iter.check128, %vec.epilog.middle.block138
  %.07.i.ph = phi ptr [ %126, %iter.check111 ], [ %131, %vec.epilog.iter.check128 ], [ %140, %vec.epilog.middle.block138 ]
  %.056.i.ph = phi i64 [ %87, %iter.check111 ], [ %133, %vec.epilog.iter.check128 ], [ %142, %vec.epilog.middle.block138 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.07.i = phi ptr [ %148, %.lr.ph.i82 ], [ %.07.i.ph, %.lr.ph.i82.preheader ] ; 3 uses
  %.056.i = phi i64 [ %147, %.lr.ph.i82 ], [ %.056.i.ph, %.lr.ph.i82.preheader ]
  %145 = load i16, ptr %.07.i, align 2, !tbaa !105
  %146 = tail call i16 @llvm.bswap.i16(i16 %145)
  store i16 %146, ptr %.07.i, align 2, !tbaa !105
  %147 = add i64 %.056.i, -2                      ; 2 uses
  %148 = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %149 = icmp ugt i64 %147, 1
  br i1 %149, label %.lr.ph.i82, label %TwoByteSwap.exit, !llvm.loop !109

150:                                              ; preds = %120
  %151 = icmp ugt i64 %87, 3
  br i1 %151, label %.lr.ph.i83.preheader, label %TwoByteSwap.exit

.lr.ph.i83.preheader:                             ; preds = %150
  %152 = load ptr, ptr %94, align 8, !tbaa !98    ; 3 uses
  %153 = add nsw i64 %87, -4                      ; 2 uses
  %154 = lshr i64 %153, 2
  %155 = add nuw nsw i64 %154, 1                  ; 2 uses
  %min.iters.check142 = icmp ult i64 %153, 28
  br i1 %min.iters.check142, label %.lr.ph.i83.preheader156, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i83.preheader
  %n.vec145 = and i64 %155, 9223372036854775800   ; 4 uses
  %156 = shl i64 %n.vec145, 2
  %157 = getelementptr i8, ptr %152, i64 %156
  %158 = shl i64 %n.vec145, 2
  %159 = sub i64 %87, %158
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph143
  %index147 = phi i64 [ 0, %vector.ph143 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %offset.idx148 = shl i64 %index147, 2
  %next.gep149 = getelementptr i8, ptr %152, i64 %offset.idx148 ; 3 uses
  %160 = getelementptr i8, ptr %next.gep149, i64 16 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !3
  %wide.load151 = load <4 x i32>, ptr %160, align 4, !tbaa !3
  %161 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load150)
  %162 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load151)
  store <4 x i32> %161, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %162, ptr %160, align 4, !tbaa !3
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %163 = icmp eq i64 %index.next152, %n.vec145
  br i1 %163, label %middle.block153, label %vector.body146, !llvm.loop !110

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %155, %n.vec145
  br i1 %cmp.n154, label %TwoByteSwap.exit, label %.lr.ph.i83.preheader156

.lr.ph.i83.preheader156:                          ; preds = %.lr.ph.i83.preheader, %middle.block153
  %.07.i84.ph = phi ptr [ %152, %.lr.ph.i83.preheader ], [ %157, %middle.block153 ]
  %.056.i85.ph = phi i64 [ %87, %.lr.ph.i83.preheader ], [ %159, %middle.block153 ]
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.preheader156, %.lr.ph.i83
  %.07.i84 = phi ptr [ %167, %.lr.ph.i83 ], [ %.07.i84.ph, %.lr.ph.i83.preheader156 ] ; 3 uses
  %.056.i85 = phi i64 [ %166, %.lr.ph.i83 ], [ %.056.i85.ph, %.lr.ph.i83.preheader156 ]
  %164 = load i32, ptr %.07.i84, align 4, !tbaa !3
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  store i32 %165, ptr %.07.i84, align 4, !tbaa !3
  %166 = add i64 %.056.i85, -4                    ; 2 uses
  %167 = getelementptr inbounds nuw i8, ptr %.07.i84, i64 4
  %168 = icmp ugt i64 %166, 3
  br i1 %168, label %.lr.ph.i83, label %TwoByteSwap.exit, !llvm.loop !111

TwoByteSwap.exit:                                 ; preds = %.lr.ph.i82, %.lr.ph.i83, %middle.block123, %vec.epilog.middle.block138, %middle.block153, %150, %124, %52, %81, %93, %89, %120, %BitOrderInvert.exit, %4, %7
  %.066 = phi i32 [ 35, %4 ], [ 0, %52 ], [ %88, %81 ], [ %92, %89 ], [ %96, %93 ], [ 0, %120 ], [ 0, %middle.block153 ], [ 6, %7 ], [ 0, %BitOrderInvert.exit ], [ 0, %124 ], [ 0, %150 ], [ 0, %middle.block123 ], [ 0, %.lr.ph.i83 ], [ 0, %vec.epilog.middle.block138 ], [ 0, %.lr.ph.i82 ]
  ret i32 %.066
}

end_hunk_2
