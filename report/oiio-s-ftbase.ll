begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/data/oiio/optimized/ftbase.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %24 = ashr exact i64 %sext.i144, 32             ; [#uses=1 type=i64]
  %.023.i150 = tail call i64 @llvm.abs.i64(i64 %6, i1 true) ; [#uses=1 type=i64]
  %25 = icmp slt i64 %2, -1                       ; [#uses=1 type=i1]
  br label %26

26:                                               ; preds = %.lr.ph199, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next, %._crit_edge ] ; [#uses=2 type=i64]
  %.0111197 = phi i32 [ -1, %.lr.ph199 ], [ %30, %._crit_edge ] ; [#uses=1 type=i32]
  %27 = add nsw i32 %.0111197, 1                  ; [#uses=4 type=i32]
  %28 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %indvars.iv ; [#uses=1 type=ptr]
  %29 = load i16, ptr %28, align 2, !tbaa !138    ; [#uses=2 type=i16]
  %30 = sext i16 %29 to i32                       ; [#uses=5 type=i32]
  %31 = icmp ne i32 %27, %30                      ; [#uses=1 type=i1]
  %32 = icmp ne i16 %29, -1                       ; [#uses=1 type=i1]
  %33 = and i1 %31, %32                           ; [#uses=1 type=i1]
  br i1 %33, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %26, %FT_Vector_NormLen.exit.thread
  %.0193 = phi i32 [ %.3, %FT_Vector_NormLen.exit.thread ], [ -1, %26 ] ; [#uses=6 type=i32]
  %.097192 = phi i32 [ %242, %FT_Vector_NormLen.exit.thread ], [ %27, %26 ] ; [#uses=9 type=i32]
  %.098191 = phi i32 [ %.3101, %FT_Vector_NormLen.exit.thread ], [ %30, %26 ] ; [#uses=6 type=i32]
  %.0104189 = phi i64 [ %.3107, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.0109188 = phi i64 [ %.1110, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.sroa.052.0186 = phi i64 [ %.sroa.052.3, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.sroa.5.0184 = phi i64 [ %.sroa.5.3, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.sroa.056.0183 = phi i64 [ %.sroa.056.1, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.sroa.8.0182 = phi i64 [ %.sroa.8.1, %FT_Vector_NormLen.exit.thread ], [ 0, %26 ] ; [#uses=5 type=i64]
  %.not118 = icmp eq i32 %.097192, %.0193         ; [#uses=1 type=i1]
  br i1 %.not118, label %122, label %34

34:                                               ; preds = %.lr.ph195
  %35 = sext i32 %.097192 to i64                  ; [#uses=1 type=i64]
  %36 = getelementptr inbounds [16 x i8], ptr %16, i64 %35 ; [#uses=2 type=ptr]
  %37 = load i64, ptr %36, align 8, !tbaa !163    ; [#uses=1 type=i64]
  %38 = sext i32 %.098191 to i64                  ; [#uses=1 type=i64]
  %39 = getelementptr inbounds [16 x i8], ptr %16, i64 %38 ; [#uses=2 type=ptr]
  %40 = load i64, ptr %39, align 8, !tbaa !163    ; [#uses=1 type=i64]
  %41 = sub nsw i64 %37, %40                      ; [#uses=2 type=i64]
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 8 ; [#uses=1 type=ptr]
  %43 = load i64, ptr %42, align 8, !tbaa !165    ; [#uses=1 type=i64]
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 8 ; [#uses=1 type=ptr]
  %45 = load i64, ptr %44, align 8, !tbaa !165    ; [#uses=1 type=i64]
  %46 = sub nsw i64 %43, %45                      ; [#uses=2 type=i64]
  %47 = trunc i64 %41 to i32                      ; [#uses=3 type=i32]
  %48 = trunc i64 %46 to i32                      ; [#uses=3 type=i32]
  %49 = icmp slt i32 %47, 0                       ; [#uses=2 type=i1]
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %47, i1 false) ; [#uses=6 type=i32]
  %50 = icmp slt i32 %48, 0                       ; [#uses=2 type=i1]
  %.087.i = tail call i32 @llvm.abs.i32(i32 %48, i1 false) ; [#uses=6 type=i32]
  %51 = icmp eq i32 %47, 0                        ; [#uses=1 type=i1]
  %.not102.i = icmp eq i32 %48, 0                 ; [#uses=2 type=i1]
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  %.0.i = select i1 %50, i64 -65536, i64 65536    ; [#uses=1 type=i64]
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

53:                                               ; preds = %34
  %spec.select103.i = select i1 %49, i64 -65536, i64 65536 ; [#uses=1 type=i64]
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %54

54:                                               ; preds = %53
  %55 = icmp ugt i32 %spec.select.i, %.087.i      ; [#uses=1 type=i1]
  %56 = lshr i32 %.087.i, 1                       ; [#uses=1 type=i32]
  %57 = add nuw i32 %56, %spec.select.i           ; [#uses=1 type=i32]
  %58 = lshr i32 %spec.select.i, 1                ; [#uses=1 type=i32]
  %59 = add nuw i32 %.087.i, %58                  ; [#uses=1 type=i32]
  %60 = select i1 %55, i32 %57, i32 %59           ; [#uses=3 type=i32]
  %61 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %60, i1 true) ; [#uses=2 type=i32]
  %62 = zext i32 %60 to i64                       ; [#uses=1 type=i64]
  %63 = zext nneg i32 %61 to i64                  ; [#uses=1 type=i64]
  %64 = lshr i64 2863311530, %63                  ; [#uses=1 type=i64]
  %.not.i = icmp samesign ugt i64 %64, %62        ; [#uses=1 type=i1]
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16   ; [#uses=1 type=i32]
  %65 = add nsw i32 %.neg.i, %61                  ; [#uses=7 type=i32]
  %66 = icmp sgt i32 %65, 0                       ; [#uses=2 type=i1]
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = shl i32 %spec.select.i, %65               ; [#uses=4 type=i32]
  %69 = shl i32 %.087.i, %65                      ; [#uses=4 type=i32]
  %70 = icmp ugt i32 %68, %69                     ; [#uses=1 type=i1]
  %71 = lshr i32 %69, 1                           ; [#uses=1 type=i32]
  %72 = add i32 %71, %68                          ; [#uses=1 type=i32]
  %73 = lshr i32 %68, 1                           ; [#uses=1 type=i32]
  %74 = add i32 %73, %69                          ; [#uses=1 type=i32]
  %75 = select i1 %70, i32 %72, i32 %74           ; [#uses=1 type=i32]
  br label %81

76:                                               ; preds = %54
  %77 = sub nsw i32 0, %65                        ; [#uses=3 type=i32]
  %78 = lshr i32 %spec.select.i, %77              ; [#uses=1 type=i32]
  %79 = lshr i32 %.087.i, %77                     ; [#uses=1 type=i32]
  %80 = lshr i32 %60, %77                         ; [#uses=1 type=i32]
  br label %81

81:                                               ; preds = %76, %67
  %.190.i = phi i32 [ %68, %67 ], [ %78, %76 ]    ; [#uses=3 type=i32]
  %.188.i = phi i32 [ %69, %67 ], [ %79, %76 ]    ; [#uses=3 type=i32]
  %.085.i = phi i32 [ %75, %67 ], [ %80, %76 ]    ; [#uses=1 type=i32]
  %82 = sub nsw i32 65536, %.085.i                ; [#uses=1 type=i32]
  br label %83

83:                                               ; preds = %83, %81
  %.091.i = phi i32 [ %82, %81 ], [ %98, %83 ]    ; [#uses=4 type=i32]
  %84 = mul nsw i32 %.091.i, %.190.i              ; [#uses=1 type=i32]
  %85 = ashr i32 %84, 16                          ; [#uses=1 type=i32]
  %86 = add nsw i32 %85, %.190.i                  ; [#uses=4 type=i32]
  %87 = mul nsw i32 %.091.i, %.188.i              ; [#uses=1 type=i32]
  %88 = ashr i32 %87, 16                          ; [#uses=1 type=i32]
  %89 = add nsw i32 %88, %.188.i                  ; [#uses=4 type=i32]
  %90 = mul i32 %86, %86                          ; [#uses=1 type=i32]
  %91 = mul i32 %89, %89                          ; [#uses=1 type=i32]
  %92 = add i32 %90, %91                          ; [#uses=1 type=i32]
  %93 = sdiv i32 %92, -512                        ; [#uses=1 type=i32]
  %94 = add nsw i32 %.091.i, 65536                ; [#uses=1 type=i32]
  %95 = ashr i32 %94, 8                           ; [#uses=1 type=i32]
  %96 = mul nsw i32 %93, %95                      ; [#uses=2 type=i32]
  %97 = lshr i32 %96, 16                          ; [#uses=1 type=i32]
  %98 = add nsw i32 %97, %.091.i                  ; [#uses=1 type=i32]
  %99 = icmp sgt i32 %96, 65535                   ; [#uses=1 type=i1]
  br i1 %99, label %83, label %100, !llvm.loop !170

100:                                              ; preds = %83
  %101 = zext i32 %86 to i64                      ; [#uses=2 type=i64]
  %102 = sub nsw i64 0, %101                      ; [#uses=1 type=i64]
  %103 = select i1 %49, i64 %102, i64 %101        ; [#uses=2 type=i64]
  %104 = zext i32 %89 to i64                      ; [#uses=2 type=i64]
  %105 = sub nsw i64 0, %104                      ; [#uses=1 type=i64]
  %106 = select i1 %50, i64 %105, i64 %104        ; [#uses=2 type=i64]
  %107 = mul i32 %86, %.190.i                     ; [#uses=1 type=i32]
  %108 = mul i32 %89, %.188.i                     ; [#uses=1 type=i32]
  %109 = add i32 %107, %108                       ; [#uses=1 type=i32]
  %110 = sdiv i32 %109, 65536                     ; [#uses=1 type=i32]
  %111 = add nsw i32 %110, 65536                  ; [#uses=2 type=i32]
  br i1 %66, label %112, label %117

112:                                              ; preds = %100
  %113 = add nsw i32 %65, -1                      ; [#uses=1 type=i32]
  %114 = shl nuw nsw i32 1, %113                  ; [#uses=1 type=i32]
  %115 = add nuw nsw i32 %111, %114               ; [#uses=1 type=i32]
  %116 = lshr i32 %115, %65                       ; [#uses=1 type=i32]
  br label %FT_Vector_NormLen.exit

117:                                              ; preds = %100
  %118 = sub nsw i32 0, %65                       ; [#uses=1 type=i32]
  %119 = shl i32 %111, %118                       ; [#uses=1 type=i32]
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %52, %53, %112, %117
  %.sroa.11.1175 = phi i64 [ %46, %53 ], [ %106, %112 ], [ %106, %117 ], [ %.0.i, %52 ] ; [#uses=1 type=i64]
  %.sroa.0.1173 = phi i64 [ %spec.select103.i, %53 ], [ %103, %112 ], [ %103, %117 ], [ %41, %52 ] ; [#uses=1 type=i64]
  %.086.i = phi i32 [ %spec.select.i, %53 ], [ %116, %112 ], [ %119, %117 ], [ %.087.i, %52 ] ; [#uses=2 type=i32]
  %120 = zext i32 %.086.i to i64                  ; [#uses=1 type=i64]
  %121 = icmp eq i32 %.086.i, 0                   ; [#uses=1 type=i1]
  br i1 %121, label %FT_Vector_NormLen.exit.thread, label %122

122:                                              ; preds = %.lr.ph195, %FT_Vector_NormLen.exit
  %.sroa.11.0174 = phi i64 [ %.sroa.11.1175, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %.lr.ph195 ] ; [#uses=5 type=i64]
  %.sroa.0.0172 = phi i64 [ %.sroa.0.1173, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %.lr.ph195 ] ; [#uses=5 type=i64]
  %.0108 = phi i64 [ %120, %FT_Vector_NormLen.exit ], [ %.0104189, %.lr.ph195 ] ; [#uses=4 type=i64]
  %.not119 = icmp eq i64 %.0109188, 0             ; [#uses=1 type=i1]
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %123

123:                                              ; preds = %122
  %124 = icmp slt i32 %.0193, 0                   ; [#uses=1 type=i1]
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %123
  %.sroa.5.1 = phi i64 [ %.sroa.8.0182, %125 ], [ %.sroa.5.0184, %123 ] ; [#uses=2 type=i64]
  %.sroa.052.1 = phi i64 [ %.sroa.056.0183, %125 ], [ %.sroa.052.0186, %123 ] ; [#uses=2 type=i64]
  %.1105 = phi i64 [ %.0109188, %125 ], [ %.0104189, %123 ] ; [#uses=2 type=i64]
  %.1 = phi i32 [ %.098191, %125 ], [ %.0193, %123 ] ; [#uses=2 type=i32]
  %sext.i = shl i64 %.sroa.056.0183, 32           ; [#uses=1 type=i64]
  %127 = ashr exact i64 %sext.i, 32               ; [#uses=2 type=i64]
  %sext2.i = shl i64 %.sroa.0.0172, 32            ; [#uses=1 type=i64]
  %128 = ashr exact i64 %sext2.i, 32              ; [#uses=2 type=i64]
  %129 = mul nsw i64 %128, %127                   ; [#uses=2 type=i64]
  %130 = ashr i64 %129, 63                        ; [#uses=1 type=i64]
  %131 = add nsw i64 %129, 32768                  ; [#uses=1 type=i64]
  %132 = add nsw i64 %131, %130                   ; [#uses=1 type=i64]
  %133 = shl i64 %132, 16                         ; [#uses=1 type=i64]
  %134 = ashr i64 %133, 32                        ; [#uses=1 type=i64]
  %sext.i124 = shl i64 %.sroa.8.0182, 32          ; [#uses=1 type=i64]
  %135 = ashr exact i64 %sext.i124, 32            ; [#uses=2 type=i64]
  %sext2.i125 = shl i64 %.sroa.11.0174, 32        ; [#uses=1 type=i64]
  %136 = ashr exact i64 %sext2.i125, 32           ; [#uses=2 type=i64]
  %137 = mul nsw i64 %136, %135                   ; [#uses=2 type=i64]
  %138 = ashr i64 %137, 63                        ; [#uses=1 type=i64]
  %139 = add nsw i64 %137, 32768                  ; [#uses=1 type=i64]
  %140 = add nsw i64 %139, %138                   ; [#uses=1 type=i64]
  %141 = shl i64 %140, 16                         ; [#uses=1 type=i64]
  %142 = ashr i64 %141, 32                        ; [#uses=1 type=i64]
  %143 = add nsw i64 %134, %142                   ; [#uses=2 type=i64]
  %144 = icmp sgt i64 %143, -61440                ; [#uses=1 type=i1]
  br i1 %144, label %145, label %226

145:                                              ; preds = %126
  %146 = add nsw i64 %143, 65536                  ; [#uses=5 type=i64]
  %147 = add nsw i64 %.sroa.11.0174, %.sroa.8.0182 ; [#uses=4 type=i64]
  %148 = add nsw i64 %.sroa.0.0172, %.sroa.056.0183 ; [#uses=4 type=i64]
  %149 = sub nsw i64 0, %147                      ; [#uses=1 type=i64]
  %150 = sub nsw i64 0, %148                      ; [#uses=1 type=i64]
  %.sroa.11.0 = select i1 %21, i64 %148, i64 %150 ; [#uses=2 type=i64]
  %.sroa.0.0 = select i1 %21, i64 %149, i64 %147  ; [#uses=2 type=i64]
  %151 = mul nsw i64 %128, %135                   ; [#uses=2 type=i64]
  %152 = ashr i64 %151, 63                        ; [#uses=1 type=i64]
  %153 = add nsw i64 %151, 32768                  ; [#uses=1 type=i64]
  %154 = add nsw i64 %153, %152                   ; [#uses=1 type=i64]
  %155 = shl i64 %154, 16                         ; [#uses=1 type=i64]
  %156 = ashr i64 %155, 32                        ; [#uses=1 type=i64]
  %157 = mul nsw i64 %136, %127                   ; [#uses=2 type=i64]
  %158 = ashr i64 %157, 63                        ; [#uses=1 type=i64]
  %159 = add nsw i64 %157, 32768                  ; [#uses=1 type=i64]
  %160 = add nsw i64 %159, %158                   ; [#uses=1 type=i64]
  %161 = shl i64 %160, 16                         ; [#uses=1 type=i64]
  %162 = ashr i64 %161, 32                        ; [#uses=1 type=i64]
  %163 = sub nsw i64 %156, %162                   ; [#uses=4 type=i64]
  %164 = sub nsw i64 0, %163                      ; [#uses=1 type=i64]
  %.0102 = select i1 %21, i64 %164, i64 %163      ; [#uses=5 type=i64]
  %165 = tail call i64 @llvm.smin.i64(i64 %.0109188, i64 %.0108) ; [#uses=3 type=i64]
  %sext2.i131 = shl i64 %.0102, 32                ; [#uses=1 type=i64]
  %166 = ashr exact i64 %sext2.i131, 32           ; [#uses=2 type=i64]
  %167 = mul nsw i64 %166, %22                    ; [#uses=2 type=i64]
  %168 = ashr i64 %167, 63                        ; [#uses=1 type=i64]
  %169 = add nsw i64 %167, 32768                  ; [#uses=1 type=i64]
  %170 = add nsw i64 %169, %168                   ; [#uses=1 type=i64]
  %171 = shl i64 %170, 16                         ; [#uses=1 type=i64]
  %172 = ashr i64 %171, 32                        ; [#uses=1 type=i64]
  %sext.i132 = shl nuw i64 %165, 32               ; [#uses=1 type=i64]
  %173 = ashr exact i64 %sext.i132, 32            ; [#uses=1 type=i64]
  %sext2.i133 = shl i64 %146, 32                  ; [#uses=1 type=i64]
  %174 = ashr exact i64 %sext2.i133, 32           ; [#uses=1 type=i64]
  %175 = mul nsw i64 %174, %173                   ; [#uses=2 type=i64]
  %176 = ashr i64 %175, 63                        ; [#uses=1 type=i64]
  %177 = add nsw i64 %175, 32768                  ; [#uses=1 type=i64]
  %178 = add nsw i64 %177, %176                   ; [#uses=1 type=i64]
  %179 = shl i64 %178, 16                         ; [#uses=1 type=i64]
  %180 = ashr i64 %179, 32                        ; [#uses=2 type=i64]
  %.not120 = icmp sgt i64 %172, %180              ; [#uses=1 type=i1]
  br i1 %.not120, label %189, label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %145
  %spec.select.i135 = tail call i64 @llvm.abs.i64(i64 %147, i1 false) ; [#uses=1 type=i64]
  %181 = mul i64 %spec.select.i135, %.023.i       ; [#uses=1 type=i64]
  %182 = lshr i64 %146, 1                         ; [#uses=1 type=i64]
  %183 = add i64 %182, %181                       ; [#uses=1 type=i64]
  %184 = udiv i64 %183, %146                      ; [#uses=2 type=i64]
  %185 = icmp slt i64 %.sroa.0.0, 0               ; [#uses=1 type=i1]
  %186 = xor i1 %23, %185                         ; [#uses=1 type=i1]
  %187 = sub nsw i64 0, %184                      ; [#uses=1 type=i64]
  %188 = select i1 %186, i64 %187, i64 %184       ; [#uses=1 type=i64]
  br label %200

189:                                              ; preds = %145
  %.not.i136 = icmp eq i64 %.0102, 0              ; [#uses=1 type=i1]
  br i1 %.not.i136, label %FT_MulDiv.exit143, label %190

190:                                              ; preds = %189
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %163, i1 true) ; [#uses=2 type=i64]
  %.023.i138 = tail call i64 @llvm.abs.i64(i64 %165, i1 false) ; [#uses=1 type=i64]
  %spec.select.i139 = tail call i64 @llvm.abs.i64(i64 %147, i1 false) ; [#uses=1 type=i64]
  %191 = mul i64 %.023.i138, %spec.select.i139    ; [#uses=1 type=i64]
  %192 = lshr i64 %.022.i137, 1                   ; [#uses=1 type=i64]
  %193 = add i64 %192, %191                       ; [#uses=1 type=i64]
  %194 = udiv i64 %193, %.022.i137                ; [#uses=1 type=i64]
  br label %FT_MulDiv.exit143

FT_MulDiv.exit143:                                ; preds = %189, %190
  %195 = phi i64 [ %194, %190 ], [ 2147483647, %189 ] ; [#uses=2 type=i64]
  %196 = xor i64 %.sroa.0.0, %.0102               ; [#uses=1 type=i64]
  %197 = icmp slt i64 %196, 0                     ; [#uses=1 type=i1]
  %198 = sub i64 0, %195                          ; [#uses=1 type=i64]
  %199 = select i1 %197, i64 %198, i64 %195       ; [#uses=1 type=i64]
  br label %200

200:                                              ; preds = %FT_MulDiv.exit143, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %188, %FT_MulDiv.exit ], [ %199, %FT_MulDiv.exit143 ] ; [#uses=2 type=i64]
  %201 = mul nsw i64 %166, %24                    ; [#uses=2 type=i64]
  %202 = ashr i64 %201, 63                        ; [#uses=1 type=i64]
  %203 = add nsw i64 %201, 32768                  ; [#uses=1 type=i64]
  %204 = add nsw i64 %203, %202                   ; [#uses=1 type=i64]
  %205 = shl i64 %204, 16                         ; [#uses=1 type=i64]
  %206 = ashr i64 %205, 32                        ; [#uses=1 type=i64]
  %.not121 = icmp sgt i64 %206, %180              ; [#uses=1 type=i1]
  br i1 %.not121, label %215, label %FT_MulDiv.exit155

FT_MulDiv.exit155:                                ; preds = %200
  %spec.select.i151 = tail call i64 @llvm.abs.i64(i64 %148, i1 false) ; [#uses=1 type=i64]
  %207 = mul i64 %spec.select.i151, %.023.i150    ; [#uses=1 type=i64]
  %208 = lshr i64 %146, 1                         ; [#uses=1 type=i64]
  %209 = add i64 %208, %207                       ; [#uses=1 type=i64]
  %210 = udiv i64 %209, %146                      ; [#uses=2 type=i64]
  %211 = icmp slt i64 %.sroa.11.0, 0              ; [#uses=1 type=i1]
  %212 = xor i1 %25, %211                         ; [#uses=1 type=i1]
  %213 = sub nsw i64 0, %210                      ; [#uses=1 type=i64]
  %214 = select i1 %212, i64 %213, i64 %210       ; [#uses=1 type=i64]
  br label %226

215:                                              ; preds = %200
  %.not.i156 = icmp eq i64 %.0102, 0              ; [#uses=1 type=i1]
  br i1 %.not.i156, label %FT_MulDiv.exit163, label %216

216:                                              ; preds = %215
  %.022.i157 = tail call i64 @llvm.abs.i64(i64 %163, i1 true) ; [#uses=2 type=i64]
  %.023.i158 = tail call i64 @llvm.abs.i64(i64 %165, i1 false) ; [#uses=1 type=i64]
  %spec.select.i159 = tail call i64 @llvm.abs.i64(i64 %148, i1 false) ; [#uses=1 type=i64]
  %217 = mul i64 %.023.i158, %spec.select.i159    ; [#uses=1 type=i64]
  %218 = lshr i64 %.022.i157, 1                   ; [#uses=1 type=i64]
  %219 = add i64 %218, %217                       ; [#uses=1 type=i64]
  %220 = udiv i64 %219, %.022.i157                ; [#uses=1 type=i64]
  br label %FT_MulDiv.exit163

FT_MulDiv.exit163:                                ; preds = %215, %216
  %221 = phi i64 [ %220, %216 ], [ 2147483647, %215 ] ; [#uses=2 type=i64]
  %222 = xor i64 %.sroa.11.0, %.0102              ; [#uses=1 type=i64]
  %223 = icmp slt i64 %222, 0                     ; [#uses=1 type=i1]
  %224 = sub i64 0, %221                          ; [#uses=1 type=i64]
  %225 = select i1 %223, i64 %224, i64 %221       ; [#uses=1 type=i64]
  br label %226

226:                                              ; preds = %126, %FT_MulDiv.exit155, %FT_MulDiv.exit163
  %.sroa.11.1 = phi i64 [ %214, %FT_MulDiv.exit155 ], [ %225, %FT_MulDiv.exit163 ], [ 0, %126 ] ; [#uses=1 type=i64]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit155 ], [ %.sroa.0.1, %FT_MulDiv.exit163 ], [ 0, %126 ] ; [#uses=1 type=i64]
  %.not122180 = icmp eq i32 %.098191, %.097192    ; [#uses=1 type=i1]
  br i1 %.not122180, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %226
  %227 = add nsw i64 %.sroa.0.2, %5               ; [#uses=1 type=i64]
  %228 = add nsw i64 %.sroa.11.1, %6              ; [#uses=1 type=i64]
  br label %229

229:                                              ; preds = %.lr.ph, %229
  %.199181 = phi i32 [ %.098191, %.lr.ph ], [ %239, %229 ] ; [#uses=3 type=i32]
  %230 = sext i32 %.199181 to i64                 ; [#uses=1 type=i64]
  %231 = getelementptr inbounds [16 x i8], ptr %16, i64 %230 ; [#uses=3 type=ptr]
  %232 = load i64, ptr %231, align 8, !tbaa !163  ; [#uses=1 type=i64]
  %233 = add nsw i64 %227, %232                   ; [#uses=1 type=i64]
  store i64 %233, ptr %231, align 8, !tbaa !163
  %234 = getelementptr inbounds nuw i8, ptr %231, i64 8 ; [#uses=2 type=ptr]
  %235 = load i64, ptr %234, align 8, !tbaa !165  ; [#uses=1 type=i64]
  %236 = add nsw i64 %228, %235                   ; [#uses=1 type=i64]
  store i64 %236, ptr %234, align 8, !tbaa !165
  %237 = icmp slt i32 %.199181, %30               ; [#uses=1 type=i1]
  %238 = add nsw i32 %.199181, 1                  ; [#uses=1 type=i32]
  %239 = select i1 %237, i32 %238, i32 %27        ; [#uses=2 type=i32]
  %.not122 = icmp eq i32 %239, %.097192           ; [#uses=1 type=i1]
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %229, !llvm.loop !502

FT_Vector_NormLen.exit.thread:                    ; preds = %229, %226, %52, %122, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0182, %FT_Vector_NormLen.exit ], [ %.sroa.8.0182, %52 ], [ %.sroa.11.0174, %122 ], [ %.sroa.11.0174, %226 ], [ %.sroa.11.0174, %229 ] ; [#uses=1 type=i64]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0183, %FT_Vector_NormLen.exit ], [ %.sroa.056.0183, %52 ], [ %.sroa.0.0172, %122 ], [ %.sroa.0.0172, %226 ], [ %.sroa.0.0172, %229 ] ; [#uses=1 type=i64]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0184, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %52 ], [ %.sroa.5.0184, %122 ], [ %.sroa.5.1, %226 ], [ %.sroa.5.1, %229 ] ; [#uses=1 type=i64]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0186, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %52 ], [ %.sroa.052.0186, %122 ], [ %.sroa.052.1, %226 ], [ %.sroa.052.1, %229 ] ; [#uses=1 type=i64]
  %.1110 = phi i64 [ %.0109188, %FT_Vector_NormLen.exit ], [ %.0109188, %52 ], [ %.0108, %122 ], [ %.0108, %226 ], [ %.0108, %229 ] ; [#uses=1 type=i64]
  %.3107 = phi i64 [ %.0104189, %FT_Vector_NormLen.exit ], [ %.0104189, %52 ], [ %.0104189, %122 ], [ %.1105, %226 ], [ %.1105, %229 ] ; [#uses=1 type=i64]
  %.3101 = phi i32 [ %.098191, %FT_Vector_NormLen.exit ], [ %.098191, %52 ], [ %.097192, %122 ], [ %.097192, %226 ], [ %.097192, %229 ] ; [#uses=3 type=i32]
  %.3 = phi i32 [ %.0193, %FT_Vector_NormLen.exit ], [ %.0193, %52 ], [ %.0193, %122 ], [ %.1, %226 ], [ %.1, %229 ] ; [#uses=2 type=i32]
  %240 = icmp slt i32 %.097192, %30               ; [#uses=1 type=i1]
  %241 = add nsw i32 %.097192, 1                  ; [#uses=1 type=i32]
  %242 = select i1 %240, i32 %241, i32 %27        ; [#uses=2 type=i32]
  %243 = icmp ne i32 %242, %.3101                 ; [#uses=1 type=i1]
  %244 = icmp ne i32 %.3101, %.3                  ; [#uses=1 type=i1]
  %245 = and i1 %243, %244                        ; [#uses=1 type=i1]
  br i1 %245, label %.lr.ph195, label %._crit_edge, !llvm.loop !503

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %.loopexit, label %26, !llvm.loop !504

.loopexit:                                        ; preds = %._crit_edge, %14, %12, %4, %3
  %.0103 = phi i32 [ 20, %3 ], [ %., %12 ], [ 0, %4 ], [ 0, %14 ], [ 0, %._crit_edge ] ; [#uses=1 type=i32]
end_hunk_1
begin_hunk_2
48:                                               ; preds = %..thread_crit_edge.i, %44
  %.pre.i = phi i64 [ %30, %44 ], [ %.pre.pre.i, %..thread_crit_edge.i ] ; [#uses=1 type=i64]
  %.01926.i = phi ptr [ %46, %44 ], [ %6, %..thread_crit_edge.i ] ; [#uses=2 type=ptr]
  %49 = load i32, ptr %.01926.i, align 1, !tbaa !227 ; [#uses=1 type=i32]
  %50 = load i8, ptr %.01926.i, align 1, !tbaa !227 ; [#uses=1 type=i8]
  %51 = call i32 @llvm.bswap.i32(i32 %49)         ; [#uses=1 type=i32]
  %52 = zext i32 %51 to i64                       ; [#uses=1 type=i64]
  %53 = add i64 %.pre.i, 4                        ; [#uses=1 type=i64]
  store i64 %53, ptr %27, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.not93 = icmp eq i8 %50, 0                     ; [#uses=1 type=i1]
  br i1 %.not93, label %54, label %Mac_Read_POST_Resource.exit.thread

54:                                               ; preds = %.thread, %48
end_hunk_2
