begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/work/opt-out/oiio-s-ftbase.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %24 = ashr exact i64 %sext.i144, 32             ; [#uses=1 type=i64]
  %.023.i150 = tail call i64 @llvm.abs.i64(i64 %6, i1 true) ; [#uses=1 type=i64]
  %25 = icmp slt i64 %2, -1                       ; [#uses=1 type=i1]
  %26 = insertelement <2 x i64> poison, i64 %5, i64 0 ; [#uses=1 type=<2 x i64>]
  %27 = insertelement <2 x i64> %26, i64 %6, i64 1 ; [#uses=1 type=<2 x i64>]
  br label %28

28:                                               ; preds = %.lr.ph199, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next, %._crit_edge ] ; [#uses=2 type=i64]
  %.0111197 = phi i32 [ -1, %.lr.ph199 ], [ %32, %._crit_edge ] ; [#uses=1 type=i32]
  %29 = add nsw i32 %.0111197, 1                  ; [#uses=4 type=i32]
  %30 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %indvars.iv ; [#uses=1 type=ptr]
  %31 = load i16, ptr %30, align 2, !tbaa !138    ; [#uses=2 type=i16]
  %32 = sext i16 %31 to i32                       ; [#uses=5 type=i32]
  %33 = icmp ne i32 %29, %32                      ; [#uses=1 type=i1]
  %34 = icmp ne i16 %31, -1                       ; [#uses=1 type=i1]
  %35 = and i1 %33, %34                           ; [#uses=1 type=i1]
  br i1 %35, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %28, %FT_Vector_NormLen.exit.thread
  %.0193 = phi i32 [ %.3, %FT_Vector_NormLen.exit.thread ], [ -1, %28 ] ; [#uses=6 type=i32]
  %.097192 = phi i32 [ %242, %FT_Vector_NormLen.exit.thread ], [ %29, %28 ] ; [#uses=9 type=i32]
  %.098191 = phi i32 [ %.3101, %FT_Vector_NormLen.exit.thread ], [ %32, %28 ] ; [#uses=6 type=i32]
  %.0104189 = phi i64 [ %.3107, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.0109188 = phi i64 [ %.1110, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.sroa.052.0186 = phi i64 [ %.sroa.052.3, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.sroa.5.0184 = phi i64 [ %.sroa.5.3, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.sroa.056.0183 = phi i64 [ %.sroa.056.1, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.sroa.8.0182 = phi i64 [ %.sroa.8.1, %FT_Vector_NormLen.exit.thread ], [ 0, %28 ] ; [#uses=5 type=i64]
  %.not118 = icmp eq i32 %.097192, %.0193         ; [#uses=1 type=i1]
  br i1 %.not118, label %124, label %36

36:                                               ; preds = %.lr.ph195
  %37 = sext i32 %.097192 to i64                  ; [#uses=1 type=i64]
  %38 = getelementptr inbounds [16 x i8], ptr %16, i64 %37 ; [#uses=2 type=ptr]
  %39 = load i64, ptr %38, align 8, !tbaa !163    ; [#uses=1 type=i64]
  %40 = sext i32 %.098191 to i64                  ; [#uses=1 type=i64]
  %41 = getelementptr inbounds [16 x i8], ptr %16, i64 %40 ; [#uses=2 type=ptr]
  %42 = load i64, ptr %41, align 8, !tbaa !163    ; [#uses=1 type=i64]
  %43 = sub nsw i64 %39, %42                      ; [#uses=2 type=i64]
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 8 ; [#uses=1 type=ptr]
  %45 = load i64, ptr %44, align 8, !tbaa !165    ; [#uses=1 type=i64]
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 8 ; [#uses=1 type=ptr]
  %47 = load i64, ptr %46, align 8, !tbaa !165    ; [#uses=1 type=i64]
  %48 = sub nsw i64 %45, %47                      ; [#uses=2 type=i64]
  %49 = trunc i64 %43 to i32                      ; [#uses=3 type=i32]
  %50 = trunc i64 %48 to i32                      ; [#uses=3 type=i32]
  %51 = icmp slt i32 %49, 0                       ; [#uses=2 type=i1]
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %49, i1 false) ; [#uses=6 type=i32]
  %52 = icmp slt i32 %50, 0                       ; [#uses=2 type=i1]
  %.087.i = tail call i32 @llvm.abs.i32(i32 %50, i1 false) ; [#uses=6 type=i32]
  %53 = icmp eq i32 %49, 0                        ; [#uses=1 type=i1]
  %.not102.i = icmp eq i32 %50, 0                 ; [#uses=2 type=i1]
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  %.0.i = select i1 %52, i64 -65536, i64 65536    ; [#uses=1 type=i64]
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

55:                                               ; preds = %36
  %spec.select103.i = select i1 %51, i64 -65536, i64 65536 ; [#uses=1 type=i64]
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %56

56:                                               ; preds = %55
  %57 = icmp ugt i32 %spec.select.i, %.087.i      ; [#uses=1 type=i1]
  %58 = lshr i32 %.087.i, 1                       ; [#uses=1 type=i32]
  %59 = add nuw i32 %58, %spec.select.i           ; [#uses=1 type=i32]
  %60 = lshr i32 %spec.select.i, 1                ; [#uses=1 type=i32]
  %61 = add nuw i32 %.087.i, %60                  ; [#uses=1 type=i32]
  %62 = select i1 %57, i32 %59, i32 %61           ; [#uses=3 type=i32]
  %63 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %62, i1 true) ; [#uses=2 type=i32]
  %64 = zext i32 %62 to i64                       ; [#uses=1 type=i64]
  %65 = zext nneg i32 %63 to i64                  ; [#uses=1 type=i64]
  %66 = lshr i64 2863311530, %65                  ; [#uses=1 type=i64]
  %.not.i = icmp samesign ugt i64 %66, %64        ; [#uses=1 type=i1]
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16   ; [#uses=1 type=i32]
  %67 = add nsw i32 %.neg.i, %63                  ; [#uses=7 type=i32]
  %68 = icmp sgt i32 %67, 0                       ; [#uses=2 type=i1]
  br i1 %68, label %69, label %78

69:                                               ; preds = %56
  %70 = shl i32 %spec.select.i, %67               ; [#uses=4 type=i32]
  %71 = shl i32 %.087.i, %67                      ; [#uses=4 type=i32]
  %72 = icmp ugt i32 %70, %71                     ; [#uses=1 type=i1]
  %73 = lshr i32 %71, 1                           ; [#uses=1 type=i32]
  %74 = add i32 %73, %70                          ; [#uses=1 type=i32]
  %75 = lshr i32 %70, 1                           ; [#uses=1 type=i32]
  %76 = add i32 %75, %71                          ; [#uses=1 type=i32]
  %77 = select i1 %72, i32 %74, i32 %76           ; [#uses=1 type=i32]
  br label %83

78:                                               ; preds = %56
  %79 = sub nsw i32 0, %67                        ; [#uses=3 type=i32]
  %80 = lshr i32 %spec.select.i, %79              ; [#uses=1 type=i32]
  %81 = lshr i32 %.087.i, %79                     ; [#uses=1 type=i32]
  %82 = lshr i32 %62, %79                         ; [#uses=1 type=i32]
  br label %83

83:                                               ; preds = %78, %69
  %.190.i = phi i32 [ %70, %69 ], [ %80, %78 ]    ; [#uses=3 type=i32]
  %.188.i = phi i32 [ %71, %69 ], [ %81, %78 ]    ; [#uses=3 type=i32]
  %.085.i = phi i32 [ %77, %69 ], [ %82, %78 ]    ; [#uses=1 type=i32]
  %84 = sub nsw i32 65536, %.085.i                ; [#uses=1 type=i32]
  br label %85

85:                                               ; preds = %85, %83
  %.091.i = phi i32 [ %84, %83 ], [ %100, %85 ]   ; [#uses=4 type=i32]
  %86 = mul nsw i32 %.091.i, %.190.i              ; [#uses=1 type=i32]
  %87 = ashr i32 %86, 16                          ; [#uses=1 type=i32]
  %88 = add nsw i32 %87, %.190.i                  ; [#uses=4 type=i32]
  %89 = mul nsw i32 %.091.i, %.188.i              ; [#uses=1 type=i32]
  %90 = ashr i32 %89, 16                          ; [#uses=1 type=i32]
  %91 = add nsw i32 %90, %.188.i                  ; [#uses=4 type=i32]
  %92 = mul i32 %88, %88                          ; [#uses=1 type=i32]
  %93 = mul i32 %91, %91                          ; [#uses=1 type=i32]
  %94 = add i32 %92, %93                          ; [#uses=1 type=i32]
  %95 = sdiv i32 %94, -512                        ; [#uses=1 type=i32]
  %96 = add nsw i32 %.091.i, 65536                ; [#uses=1 type=i32]
  %97 = ashr i32 %96, 8                           ; [#uses=1 type=i32]
  %98 = mul nsw i32 %95, %97                      ; [#uses=2 type=i32]
  %99 = lshr i32 %98, 16                          ; [#uses=1 type=i32]
  %100 = add nsw i32 %99, %.091.i                 ; [#uses=1 type=i32]
  %101 = icmp sgt i32 %98, 65535                  ; [#uses=1 type=i1]
  br i1 %101, label %85, label %102, !llvm.loop !170

102:                                              ; preds = %85
  %103 = zext i32 %88 to i64                      ; [#uses=2 type=i64]
  %104 = sub nsw i64 0, %103                      ; [#uses=1 type=i64]
  %105 = select i1 %51, i64 %104, i64 %103        ; [#uses=2 type=i64]
  %106 = zext i32 %91 to i64                      ; [#uses=2 type=i64]
  %107 = sub nsw i64 0, %106                      ; [#uses=1 type=i64]
  %108 = select i1 %52, i64 %107, i64 %106        ; [#uses=2 type=i64]
  %109 = mul i32 %88, %.190.i                     ; [#uses=1 type=i32]
  %110 = mul i32 %91, %.188.i                     ; [#uses=1 type=i32]
  %111 = add i32 %109, %110                       ; [#uses=1 type=i32]
  %112 = sdiv i32 %111, 65536                     ; [#uses=1 type=i32]
  %113 = add nsw i32 %112, 65536                  ; [#uses=2 type=i32]
  br i1 %68, label %114, label %119

114:                                              ; preds = %102
  %115 = add nsw i32 %67, -1                      ; [#uses=1 type=i32]
  %116 = shl nuw nsw i32 1, %115                  ; [#uses=1 type=i32]
  %117 = add nuw nsw i32 %113, %116               ; [#uses=1 type=i32]
  %118 = lshr i32 %117, %67                       ; [#uses=1 type=i32]
  br label %FT_Vector_NormLen.exit

119:                                              ; preds = %102
  %120 = sub nsw i32 0, %67                       ; [#uses=1 type=i32]
  %121 = shl i32 %113, %120                       ; [#uses=1 type=i32]
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %54, %55, %114, %119
  %.sroa.11.1175 = phi i64 [ %48, %55 ], [ %108, %114 ], [ %108, %119 ], [ %.0.i, %54 ] ; [#uses=1 type=i64]
  %.sroa.0.1173 = phi i64 [ %spec.select103.i, %55 ], [ %105, %114 ], [ %105, %119 ], [ %43, %54 ] ; [#uses=1 type=i64]
  %.086.i = phi i32 [ %spec.select.i, %55 ], [ %118, %114 ], [ %121, %119 ], [ %.087.i, %54 ] ; [#uses=2 type=i32]
  %122 = zext i32 %.086.i to i64                  ; [#uses=1 type=i64]
  %123 = icmp eq i32 %.086.i, 0                   ; [#uses=1 type=i1]
  br i1 %123, label %FT_Vector_NormLen.exit.thread, label %124

124:                                              ; preds = %.lr.ph195, %FT_Vector_NormLen.exit
  %.sroa.11.0174 = phi i64 [ %.sroa.11.1175, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %.lr.ph195 ] ; [#uses=5 type=i64]
  %.sroa.0.0172 = phi i64 [ %.sroa.0.1173, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %.lr.ph195 ] ; [#uses=5 type=i64]
  %.0108 = phi i64 [ %122, %FT_Vector_NormLen.exit ], [ %.0104189, %.lr.ph195 ] ; [#uses=4 type=i64]
  %.not119 = icmp eq i64 %.0109188, 0             ; [#uses=1 type=i1]
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %125

125:                                              ; preds = %124
  %126 = icmp slt i32 %.0193, 0                   ; [#uses=1 type=i1]
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %125
  %.sroa.5.1 = phi i64 [ %.sroa.8.0182, %127 ], [ %.sroa.5.0184, %125 ] ; [#uses=2 type=i64]
  %.sroa.052.1 = phi i64 [ %.sroa.056.0183, %127 ], [ %.sroa.052.0186, %125 ] ; [#uses=2 type=i64]
  %.1105 = phi i64 [ %.0109188, %127 ], [ %.0104189, %125 ] ; [#uses=2 type=i64]
  %.1 = phi i32 [ %.098191, %127 ], [ %.0193, %125 ] ; [#uses=2 type=i32]
  %sext.i = shl i64 %.sroa.056.0183, 32           ; [#uses=1 type=i64]
  %129 = ashr exact i64 %sext.i, 32               ; [#uses=2 type=i64]
  %sext2.i = shl i64 %.sroa.0.0172, 32            ; [#uses=1 type=i64]
  %130 = ashr exact i64 %sext2.i, 32              ; [#uses=2 type=i64]
  %131 = mul nsw i64 %130, %129                   ; [#uses=2 type=i64]
  %132 = ashr i64 %131, 63                        ; [#uses=1 type=i64]
  %133 = add nsw i64 %131, 32768                  ; [#uses=1 type=i64]
  %134 = add nsw i64 %133, %132                   ; [#uses=1 type=i64]
  %135 = shl i64 %134, 16                         ; [#uses=1 type=i64]
  %136 = ashr i64 %135, 32                        ; [#uses=1 type=i64]
  %sext.i124 = shl i64 %.sroa.8.0182, 32          ; [#uses=1 type=i64]
  %137 = ashr exact i64 %sext.i124, 32            ; [#uses=2 type=i64]
  %sext2.i125 = shl i64 %.sroa.11.0174, 32        ; [#uses=1 type=i64]
  %138 = ashr exact i64 %sext2.i125, 32           ; [#uses=2 type=i64]
  %139 = mul nsw i64 %138, %137                   ; [#uses=2 type=i64]
  %140 = ashr i64 %139, 63                        ; [#uses=1 type=i64]
  %141 = add nsw i64 %139, 32768                  ; [#uses=1 type=i64]
  %142 = add nsw i64 %141, %140                   ; [#uses=1 type=i64]
  %143 = shl i64 %142, 16                         ; [#uses=1 type=i64]
  %144 = ashr i64 %143, 32                        ; [#uses=1 type=i64]
  %145 = add nsw i64 %136, %144                   ; [#uses=2 type=i64]
  %146 = icmp sgt i64 %145, -61440                ; [#uses=1 type=i1]
  br i1 %146, label %147, label %228

147:                                              ; preds = %128
  %148 = add nsw i64 %145, 65536                  ; [#uses=5 type=i64]
  %149 = add nsw i64 %.sroa.11.0174, %.sroa.8.0182 ; [#uses=4 type=i64]
  %150 = add nsw i64 %.sroa.0.0172, %.sroa.056.0183 ; [#uses=4 type=i64]
  %151 = sub nsw i64 0, %149                      ; [#uses=1 type=i64]
  %152 = sub nsw i64 0, %150                      ; [#uses=1 type=i64]
  %.sroa.11.0 = select i1 %21, i64 %150, i64 %152 ; [#uses=2 type=i64]
  %.sroa.0.0 = select i1 %21, i64 %151, i64 %149  ; [#uses=2 type=i64]
  %153 = mul nsw i64 %130, %137                   ; [#uses=2 type=i64]
  %154 = ashr i64 %153, 63                        ; [#uses=1 type=i64]
  %155 = add nsw i64 %153, 32768                  ; [#uses=1 type=i64]
  %156 = add nsw i64 %155, %154                   ; [#uses=1 type=i64]
  %157 = shl i64 %156, 16                         ; [#uses=1 type=i64]
  %158 = ashr i64 %157, 32                        ; [#uses=1 type=i64]
  %159 = mul nsw i64 %138, %129                   ; [#uses=2 type=i64]
  %160 = ashr i64 %159, 63                        ; [#uses=1 type=i64]
  %161 = add nsw i64 %159, 32768                  ; [#uses=1 type=i64]
  %162 = add nsw i64 %161, %160                   ; [#uses=1 type=i64]
  %163 = shl i64 %162, 16                         ; [#uses=1 type=i64]
  %164 = ashr i64 %163, 32                        ; [#uses=1 type=i64]
  %165 = sub nsw i64 %158, %164                   ; [#uses=4 type=i64]
  %166 = sub nsw i64 0, %165                      ; [#uses=1 type=i64]
  %.0102 = select i1 %21, i64 %166, i64 %165      ; [#uses=5 type=i64]
  %167 = tail call i64 @llvm.smin.i64(i64 %.0109188, i64 %.0108) ; [#uses=3 type=i64]
  %sext2.i131 = shl i64 %.0102, 32                ; [#uses=1 type=i64]
  %168 = ashr exact i64 %sext2.i131, 32           ; [#uses=2 type=i64]
  %169 = mul nsw i64 %168, %22                    ; [#uses=2 type=i64]
  %170 = ashr i64 %169, 63                        ; [#uses=1 type=i64]
  %171 = add nsw i64 %169, 32768                  ; [#uses=1 type=i64]
  %172 = add nsw i64 %171, %170                   ; [#uses=1 type=i64]
  %173 = shl i64 %172, 16                         ; [#uses=1 type=i64]
  %174 = ashr i64 %173, 32                        ; [#uses=1 type=i64]
  %sext.i132 = shl nuw i64 %167, 32               ; [#uses=1 type=i64]
  %175 = ashr exact i64 %sext.i132, 32            ; [#uses=1 type=i64]
  %sext2.i133 = shl i64 %148, 32                  ; [#uses=1 type=i64]
  %176 = ashr exact i64 %sext2.i133, 32           ; [#uses=1 type=i64]
  %177 = mul nsw i64 %176, %175                   ; [#uses=2 type=i64]
  %178 = ashr i64 %177, 63                        ; [#uses=1 type=i64]
  %179 = add nsw i64 %177, 32768                  ; [#uses=1 type=i64]
  %180 = add nsw i64 %179, %178                   ; [#uses=1 type=i64]
  %181 = shl i64 %180, 16                         ; [#uses=1 type=i64]
  %182 = ashr i64 %181, 32                        ; [#uses=2 type=i64]
  %.not120 = icmp sgt i64 %174, %182              ; [#uses=1 type=i1]
  br i1 %.not120, label %191, label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %147
  %spec.select.i135 = tail call i64 @llvm.abs.i64(i64 %149, i1 false) ; [#uses=1 type=i64]
  %183 = mul i64 %spec.select.i135, %.023.i       ; [#uses=1 type=i64]
  %184 = lshr i64 %148, 1                         ; [#uses=1 type=i64]
  %185 = add i64 %184, %183                       ; [#uses=1 type=i64]
  %186 = udiv i64 %185, %148                      ; [#uses=2 type=i64]
  %187 = icmp slt i64 %.sroa.0.0, 0               ; [#uses=1 type=i1]
  %188 = xor i1 %23, %187                         ; [#uses=1 type=i1]
  %189 = sub nsw i64 0, %186                      ; [#uses=1 type=i64]
  %190 = select i1 %188, i64 %189, i64 %186       ; [#uses=1 type=i64]
  br label %202

191:                                              ; preds = %147
  %.not.i136 = icmp eq i64 %.0102, 0              ; [#uses=1 type=i1]
  br i1 %.not.i136, label %FT_MulDiv.exit143, label %192

192:                                              ; preds = %191
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %165, i1 true) ; [#uses=2 type=i64]
  %.023.i138 = tail call i64 @llvm.abs.i64(i64 %167, i1 false) ; [#uses=1 type=i64]
  %spec.select.i139 = tail call i64 @llvm.abs.i64(i64 %149, i1 false) ; [#uses=1 type=i64]
  %193 = mul i64 %.023.i138, %spec.select.i139    ; [#uses=1 type=i64]
  %194 = lshr i64 %.022.i137, 1                   ; [#uses=1 type=i64]
  %195 = add i64 %194, %193                       ; [#uses=1 type=i64]
  %196 = udiv i64 %195, %.022.i137                ; [#uses=1 type=i64]
  br label %FT_MulDiv.exit143

FT_MulDiv.exit143:                                ; preds = %191, %192
  %197 = phi i64 [ %196, %192 ], [ 2147483647, %191 ] ; [#uses=2 type=i64]
  %198 = xor i64 %.sroa.0.0, %.0102               ; [#uses=1 type=i64]
  %199 = icmp slt i64 %198, 0                     ; [#uses=1 type=i1]
  %200 = sub i64 0, %197                          ; [#uses=1 type=i64]
  %201 = select i1 %199, i64 %200, i64 %197       ; [#uses=1 type=i64]
  br label %202

202:                                              ; preds = %FT_MulDiv.exit143, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %190, %FT_MulDiv.exit ], [ %201, %FT_MulDiv.exit143 ] ; [#uses=2 type=i64]
  %203 = mul nsw i64 %168, %24                    ; [#uses=2 type=i64]
  %204 = ashr i64 %203, 63                        ; [#uses=1 type=i64]
  %205 = add nsw i64 %203, 32768                  ; [#uses=1 type=i64]
  %206 = add nsw i64 %205, %204                   ; [#uses=1 type=i64]
  %207 = shl i64 %206, 16                         ; [#uses=1 type=i64]
  %208 = ashr i64 %207, 32                        ; [#uses=1 type=i64]
  %.not121 = icmp sgt i64 %208, %182              ; [#uses=1 type=i1]
  br i1 %.not121, label %217, label %FT_MulDiv.exit155

FT_MulDiv.exit155:                                ; preds = %202
  %spec.select.i151 = tail call i64 @llvm.abs.i64(i64 %150, i1 false) ; [#uses=1 type=i64]
  %209 = mul i64 %spec.select.i151, %.023.i150    ; [#uses=1 type=i64]
  %210 = lshr i64 %148, 1                         ; [#uses=1 type=i64]
  %211 = add i64 %210, %209                       ; [#uses=1 type=i64]
  %212 = udiv i64 %211, %148                      ; [#uses=2 type=i64]
  %213 = icmp slt i64 %.sroa.11.0, 0              ; [#uses=1 type=i1]
  %214 = xor i1 %25, %213                         ; [#uses=1 type=i1]
  %215 = sub nsw i64 0, %212                      ; [#uses=1 type=i64]
  %216 = select i1 %214, i64 %215, i64 %212       ; [#uses=1 type=i64]
  br label %228

217:                                              ; preds = %202
  %.not.i156 = icmp eq i64 %.0102, 0              ; [#uses=1 type=i1]
  br i1 %.not.i156, label %FT_MulDiv.exit163, label %218

218:                                              ; preds = %217
  %.022.i157 = tail call i64 @llvm.abs.i64(i64 %165, i1 true) ; [#uses=2 type=i64]
  %.023.i158 = tail call i64 @llvm.abs.i64(i64 %167, i1 false) ; [#uses=1 type=i64]
  %spec.select.i159 = tail call i64 @llvm.abs.i64(i64 %150, i1 false) ; [#uses=1 type=i64]
  %219 = mul i64 %.023.i158, %spec.select.i159    ; [#uses=1 type=i64]
  %220 = lshr i64 %.022.i157, 1                   ; [#uses=1 type=i64]
  %221 = add i64 %220, %219                       ; [#uses=1 type=i64]
  %222 = udiv i64 %221, %.022.i157                ; [#uses=1 type=i64]
  br label %FT_MulDiv.exit163

FT_MulDiv.exit163:                                ; preds = %217, %218
  %223 = phi i64 [ %222, %218 ], [ 2147483647, %217 ] ; [#uses=2 type=i64]
  %224 = xor i64 %.sroa.11.0, %.0102              ; [#uses=1 type=i64]
  %225 = icmp slt i64 %224, 0                     ; [#uses=1 type=i1]
  %226 = sub i64 0, %223                          ; [#uses=1 type=i64]
  %227 = select i1 %225, i64 %226, i64 %223       ; [#uses=1 type=i64]
  br label %228

228:                                              ; preds = %128, %FT_MulDiv.exit155, %FT_MulDiv.exit163
  %.sroa.11.1 = phi i64 [ %216, %FT_MulDiv.exit155 ], [ %227, %FT_MulDiv.exit163 ], [ 0, %128 ] ; [#uses=1 type=i64]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit155 ], [ %.sroa.0.1, %FT_MulDiv.exit163 ], [ 0, %128 ] ; [#uses=1 type=i64]
  %.not122180 = icmp eq i32 %.098191, %.097192    ; [#uses=1 type=i1]
  br i1 %.not122180, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %228
  %229 = insertelement <2 x i64> poison, i64 %.sroa.0.2, i64 0 ; [#uses=1 type=<2 x i64>]
  %230 = insertelement <2 x i64> %229, i64 %.sroa.11.1, i64 1 ; [#uses=1 type=<2 x i64>]
  %231 = add nsw <2 x i64> %230, %27              ; [#uses=1 type=<2 x i64>]
  br label %232

232:                                              ; preds = %.lr.ph, %232
  %.199181 = phi i32 [ %.098191, %.lr.ph ], [ %239, %232 ] ; [#uses=3 type=i32]
  %233 = sext i32 %.199181 to i64                 ; [#uses=1 type=i64]
  %234 = getelementptr inbounds [16 x i8], ptr %16, i64 %233 ; [#uses=2 type=ptr]
  %235 = load <2 x i64>, ptr %234, align 8, !tbaa !39 ; [#uses=1 type=<2 x i64>]
  %236 = add nsw <2 x i64> %231, %235             ; [#uses=1 type=<2 x i64>]
  store <2 x i64> %236, ptr %234, align 8, !tbaa !39
  %237 = icmp slt i32 %.199181, %32               ; [#uses=1 type=i1]
  %238 = add nsw i32 %.199181, 1                  ; [#uses=1 type=i32]
  %239 = select i1 %237, i32 %238, i32 %29        ; [#uses=2 type=i32]
  %.not122 = icmp eq i32 %239, %.097192           ; [#uses=1 type=i1]
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %232, !llvm.loop !502

FT_Vector_NormLen.exit.thread:                    ; preds = %232, %228, %54, %124, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0182, %FT_Vector_NormLen.exit ], [ %.sroa.8.0182, %54 ], [ %.sroa.11.0174, %124 ], [ %.sroa.11.0174, %228 ], [ %.sroa.11.0174, %232 ] ; [#uses=1 type=i64]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0183, %FT_Vector_NormLen.exit ], [ %.sroa.056.0183, %54 ], [ %.sroa.0.0172, %124 ], [ %.sroa.0.0172, %228 ], [ %.sroa.0.0172, %232 ] ; [#uses=1 type=i64]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0184, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %54 ], [ %.sroa.5.0184, %124 ], [ %.sroa.5.1, %228 ], [ %.sroa.5.1, %232 ] ; [#uses=1 type=i64]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0186, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %54 ], [ %.sroa.052.0186, %124 ], [ %.sroa.052.1, %228 ], [ %.sroa.052.1, %232 ] ; [#uses=1 type=i64]
  %.1110 = phi i64 [ %.0109188, %FT_Vector_NormLen.exit ], [ %.0109188, %54 ], [ %.0108, %124 ], [ %.0108, %228 ], [ %.0108, %232 ] ; [#uses=1 type=i64]
  %.3107 = phi i64 [ %.0104189, %FT_Vector_NormLen.exit ], [ %.0104189, %54 ], [ %.0104189, %124 ], [ %.1105, %228 ], [ %.1105, %232 ] ; [#uses=1 type=i64]
  %.3101 = phi i32 [ %.098191, %FT_Vector_NormLen.exit ], [ %.098191, %54 ], [ %.097192, %124 ], [ %.097192, %228 ], [ %.097192, %232 ] ; [#uses=3 type=i32]
  %.3 = phi i32 [ %.0193, %FT_Vector_NormLen.exit ], [ %.0193, %54 ], [ %.0193, %124 ], [ %.1, %228 ], [ %.1, %232 ] ; [#uses=2 type=i32]
  %240 = icmp slt i32 %.097192, %32               ; [#uses=1 type=i1]
  %241 = add nsw i32 %.097192, 1                  ; [#uses=1 type=i32]
  %242 = select i1 %240, i32 %241, i32 %29        ; [#uses=2 type=i32]
  %243 = icmp ne i32 %242, %.3101                 ; [#uses=1 type=i1]
  %244 = icmp ne i32 %.3101, %.3                  ; [#uses=1 type=i1]
  %245 = and i1 %243, %244                        ; [#uses=1 type=i1]
  br i1 %245, label %.lr.ph195, label %._crit_edge, !llvm.loop !503

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %.loopexit, label %28, !llvm.loop !504

.loopexit:                                        ; preds = %._crit_edge, %14, %12, %4, %3
  %.0103 = phi i32 [ 20, %3 ], [ %., %12 ], [ 0, %4 ], [ 0, %14 ], [ 0, %._crit_edge ] ; [#uses=1 type=i32]
end_hunk_1
begin_hunk_2
48:                                               ; preds = %..thread_crit_edge.i, %44
  %.pre.i = phi i64 [ %30, %44 ], [ %.pre.pre.i, %..thread_crit_edge.i ] ; [#uses=1 type=i64]
  %.01926.i = phi ptr [ %46, %44 ], [ %6, %..thread_crit_edge.i ] ; [#uses=2 type=ptr]
  %49 = load i8, ptr %.01926.i, align 1, !tbaa !227 ; [#uses=1 type=i8]
  %50 = load i32, ptr %.01926.i, align 1, !tbaa !227 ; [#uses=1 type=i32]
  %51 = call i32 @llvm.bswap.i32(i32 %50)         ; [#uses=1 type=i32]
  %52 = zext i32 %51 to i64                       ; [#uses=1 type=i64]
  %53 = add i64 %.pre.i, 4                        ; [#uses=1 type=i64]
  store i64 %53, ptr %27, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.not93 = icmp eq i8 %49, 0                     ; [#uses=1 type=i1]
  br i1 %.not93, label %54, label %Mac_Read_POST_Resource.exit.thread

54:                                               ; preds = %.thread, %48
end_hunk_2
