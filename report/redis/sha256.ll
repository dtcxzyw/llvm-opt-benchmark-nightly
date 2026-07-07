loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = alloca [64 x i32], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %2 = load i8, ptr %1, align 1, !tbaa !13
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  store i32 %18, ptr %i.a, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 %21, 24
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or disjoint i32 %27, %31
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %32, %35
  %37 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %36, ptr %37, align 4, !tbaa !9
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 %40, 24
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = or disjoint i32 %46, %50
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = or disjoint i32 %51, %54
  %56 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %55, ptr %56, align 8, !tbaa !9
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i32
  %60 = shl nuw i32 %59, 24
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %62 = load i8, ptr %61, align 1, !tbaa !13
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 16
  %65 = or disjoint i32 %64, %60
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 8
  %70 = or disjoint i32 %65, %69
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = zext i8 %72 to i32
  %74 = or disjoint i32 %70, %73
  %75 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %74, ptr %75, align 4, !tbaa !9
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or disjoint i32 %83, %79
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = or disjoint i32 %84, %88
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = zext i8 %91 to i32
  %93 = or disjoint i32 %89, %92
  %94 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %93, ptr %94, align 16, !tbaa !9
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 21
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or disjoint i32 %102, %98
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %105 = load i8, ptr %104, align 1, !tbaa !13
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or disjoint i32 %103, %107
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 23
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = zext i8 %110 to i32
  %112 = or disjoint i32 %108, %111
  %113 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %112, ptr %113, align 4, !tbaa !9
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %115 = load i8, ptr %114, align 1, !tbaa !13
  %116 = zext i8 %115 to i32
  %117 = shl nuw i32 %116, 24
  %118 = getelementptr inbounds nuw i8, ptr %1, i64 25
  %119 = load i8, ptr %118, align 1, !tbaa !13
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 16
  %122 = or disjoint i32 %121, %117
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %124 = load i8, ptr %123, align 1, !tbaa !13
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 8
  %127 = or disjoint i32 %122, %126
  %128 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %129 = load i8, ptr %128, align 1, !tbaa !13
  %130 = zext i8 %129 to i32
  %131 = or disjoint i32 %127, %130
  %132 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %131, ptr %132, align 8, !tbaa !9
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = zext i8 %134 to i32
  %136 = shl nuw i32 %135, 24
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 29
  %138 = load i8, ptr %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 16
  %141 = or disjoint i32 %140, %136
  %142 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %143 = load i8, ptr %142, align 1, !tbaa !13
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 8
  %146 = or disjoint i32 %141, %145
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 31
  %148 = load i8, ptr %147, align 1, !tbaa !13
  %149 = zext i8 %148 to i32
  %150 = or disjoint i32 %146, %149
  %151 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %150, ptr %151, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %152 = load i8, ptr %i.b, align 1, !tbaa !13
  %153 = zext i8 %152 to i32
  %154 = shl nuw i32 %153, 24
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %156 = load i8, ptr %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 16
  %159 = or disjoint i32 %158, %154
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 34
  %161 = load i8, ptr %160, align 1, !tbaa !13
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 8
  %164 = or disjoint i32 %159, %163
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %166 = load i8, ptr %165, align 1, !tbaa !13
  %167 = zext i8 %166 to i32
  %168 = or disjoint i32 %164, %167
  %169 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %168, ptr %169, align 16, !tbaa !9
  %170 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %171 = load i8, ptr %170, align 1, !tbaa !13
  %172 = zext i8 %171 to i32
  %173 = shl nuw i32 %172, 24
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 37
  %175 = load i8, ptr %174, align 1, !tbaa !13
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 16
  %178 = or disjoint i32 %177, %173
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 38
  %180 = load i8, ptr %179, align 1, !tbaa !13
  %181 = zext i8 %180 to i32
  %182 = shl nuw nsw i32 %181, 8
  %183 = or disjoint i32 %178, %182
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %185 = load i8, ptr %184, align 1, !tbaa !13
  %186 = zext i8 %185 to i32
  %187 = or disjoint i32 %183, %186
  %188 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %187, ptr %188, align 4, !tbaa !9
  %189 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %190 = load i8, ptr %189, align 1, !tbaa !13
  %191 = zext i8 %190 to i32
  %192 = shl nuw i32 %191, 24
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 41
  %194 = load i8, ptr %193, align 1, !tbaa !13
  %195 = zext i8 %194 to i32
  %196 = shl nuw nsw i32 %195, 16
  %197 = or disjoint i32 %196, %192
  %198 = getelementptr inbounds nuw i8, ptr %1, i64 42
  %199 = load i8, ptr %198, align 1, !tbaa !13
  %200 = zext i8 %199 to i32
  %201 = shl nuw nsw i32 %200, 8
  %202 = or disjoint i32 %197, %201
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %204 = load i8, ptr %203, align 1, !tbaa !13
  %205 = zext i8 %204 to i32
  %206 = or disjoint i32 %202, %205
  %207 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %206, ptr %207, align 8, !tbaa !9
  %208 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %209 = load i8, ptr %208, align 1, !tbaa !13
  %210 = zext i8 %209 to i32
  %211 = shl nuw i32 %210, 24
  %212 = getelementptr inbounds nuw i8, ptr %1, i64 45
  %213 = load i8, ptr %212, align 1, !tbaa !13
  %214 = zext i8 %213 to i32
  %215 = shl nuw nsw i32 %214, 16
  %216 = or disjoint i32 %215, %211
  %217 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %218 = load i8, ptr %217, align 1, !tbaa !13
  %219 = zext i8 %218 to i32
  %220 = shl nuw nsw i32 %219, 8
  %221 = or disjoint i32 %216, %220
  %222 = getelementptr inbounds nuw i8, ptr %1, i64 47
  %223 = load i8, ptr %222, align 1, !tbaa !13
  %224 = zext i8 %223 to i32
  %225 = or disjoint i32 %221, %224
  %226 = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %225, ptr %226, align 4, !tbaa !9
  %227 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %228 = load i8, ptr %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i32
  %230 = shl nuw i32 %229, 24
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 49
  %232 = load i8, ptr %231, align 1, !tbaa !13
  %233 = zext i8 %232 to i32
  %234 = shl nuw nsw i32 %233, 16
  %235 = or disjoint i32 %234, %230
  %236 = getelementptr inbounds nuw i8, ptr %1, i64 50
  %237 = load i8, ptr %236, align 1, !tbaa !13
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 8
  %240 = or disjoint i32 %235, %239
  %241 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = zext i8 %242 to i32
  %244 = or disjoint i32 %240, %243
  %245 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %244, ptr %245, align 16, !tbaa !9
  %246 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %247 = load i8, ptr %246, align 1, !tbaa !13
  %248 = zext i8 %247 to i32
  %249 = shl nuw i32 %248, 24
  %250 = getelementptr inbounds nuw i8, ptr %1, i64 53
  %251 = load i8, ptr %250, align 1, !tbaa !13
  %252 = zext i8 %251 to i32
  %253 = shl nuw nsw i32 %252, 16
  %254 = or disjoint i32 %253, %249
  %255 = getelementptr inbounds nuw i8, ptr %1, i64 54
  %256 = load i8, ptr %255, align 1, !tbaa !13
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 8
  %259 = or disjoint i32 %254, %258
  %260 = getelementptr inbounds nuw i8, ptr %1, i64 55
  %261 = load i8, ptr %260, align 1, !tbaa !13
  %262 = zext i8 %261 to i32
  %263 = or disjoint i32 %259, %262
  %264 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %263, ptr %264, align 4, !tbaa !9
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = zext i8 %266 to i32
  %268 = shl nuw i32 %267, 24
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %270 = load i8, ptr %269, align 1, !tbaa !13
  %271 = zext i8 %270 to i32
  %272 = shl nuw nsw i32 %271, 16
  %273 = or disjoint i32 %272, %268
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %275 = load i8, ptr %274, align 1, !tbaa !13
  %276 = zext i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 8
  %278 = or disjoint i32 %273, %277
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %280 = load i8, ptr %279, align 1, !tbaa !13
  %281 = zext i8 %280 to i32
  %282 = or disjoint i32 %278, %281
  %283 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %282, ptr %283, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %284 = load i8, ptr %i.c, align 1, !tbaa !13
  %285 = zext i8 %284 to i32
  %286 = shl nuw i32 %285, 24
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 61
  %288 = load i8, ptr %287, align 1, !tbaa !13
  %289 = zext i8 %288 to i32
  %290 = shl nuw nsw i32 %289, 16
  %291 = or disjoint i32 %290, %286
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 62
  %293 = load i8, ptr %292, align 1, !tbaa !13
  %294 = zext i8 %293 to i32
  %295 = shl nuw nsw i32 %294, 8
  %296 = or disjoint i32 %291, %295
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 63
  %298 = load i8, ptr %297, align 1, !tbaa !13
  %299 = zext i8 %298 to i32
  %300 = or disjoint i32 %296, %299
  %301 = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %300, ptr %301, align 4, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 5 uses
  %i.g = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 15)
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 13)
  %i.i = xor i32 %i.g, %i.h
  %i.j = lshr i32 %i.f, 10
  %i.k = xor i32 %i.i, %i.j
  %i.l = getelementptr i8, ptr %i.d, i64 -28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = add i32 %i.k, %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 -60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 5 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 25)
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 14)
  %i.s = xor i32 %i.q, %i.r
  %i.t = lshr i32 %i.p, 3
  %i.u = xor i32 %i.s, %i.t
  %i.v = getelementptr i8, ptr %i.d, i64 -64
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = add i32 %i.n, %i.w
  %i.y = add i32 %i.x, %i.u
  store i32 %i.y, ptr %i.d, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !9   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !9  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.a
  %indvars.iv116 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next117, %bb.a ] ; 3 uses
  %.0107 = phi i32 [ %i.aa, %._crit_edge ], [ %i.br, %bb.a ] ; 9 uses
  %.087106 = phi i32 [ %i.ac, %._crit_edge ], [ %.0107, %bb.a ] ; 4 uses
  %.090104 = phi i32 [ %i.ao, %._crit_edge ], [ %.091103, %bb.a ]
  %.091103 = phi i32 [ %i.am, %._crit_edge ], [ %.092102, %bb.a ] ; 3 uses
  %.092102 = phi i32 [ %i.ak, %._crit_edge ], [ %.093101, %bb.a ] ; 3 uses
  %.093101 = phi i32 [ %i.ai, %._crit_edge ], [ %i.bq, %bb.a ] ; 10 uses
  %.094100 = phi i32 [ %i.ag, %._crit_edge ], [ %.09599, %bb.a ]
  %.09599 = phi i32 [ %i.ae, %._crit_edge ], [ %.087106, %bb.a ] ; 4 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 26)
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 21)
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 7)
  %i.at = xor i32 %i.ar, %i.as
  %i.au = add i32 %.090104, %i.at
  %i.av = and i32 %.092102, %.093101
  %i.aw = xor i32 %.093101, -1
  %i.ax = and i32 %.091103, %i.aw
  %i.ay = or i32 %i.ax, %i.av
  %i.az = add i32 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @k, i64 %indvars.iv116
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = add i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 30)
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 19)
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 10)
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = xor i32 %.087106, %.09599
  %i.bm = and i32 %.0107, %i.bl
  %i.bn = and i32 %.087106, %.09599
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = add i32 %i.bf, %.094100                 ; 2 uses
  %i.br = add i32 %i.bp, %i.bf                    ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 64
  br i1 %exitcond119.not, label %bb.b, label %bb.a, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  %i.bs = add i32 %i.br, %i.aa
  store i32 %i.bs, ptr %i.z, align 8, !tbaa !9
  %i.bt = add i32 %.0107, %i.ac
  store i32 %i.bt, ptr %i.ab, align 4, !tbaa !9
  %i.bu = add i32 %.087106, %i.ae
  store i32 %i.bu, ptr %i.ad, align 8, !tbaa !9
  %i.bv = add i32 %.09599, %i.ag
  store i32 %i.bv, ptr %i.af, align 4, !tbaa !9
  %i.bw = add i32 %i.bq, %i.ai
  store i32 %i.bw, ptr %i.ah, align 8, !tbaa !9
  %i.bx = add i32 %.093101, %i.ak
  store i32 %i.bx, ptr %i.aj, align 4, !tbaa !9
  %i.by = add i32 %.092102, %i.am
  store i32 %i.by, ptr %i.al, align 8, !tbaa !9
  %i.bz = add i32 %.091103, %i.ao
  store i32 %i.bz, ptr %i.an, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nofree noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.d, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.n, %bb.d ]
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !13
  %i.i = load i32, ptr %i.a, align 8, !tbaa !17
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !20
  %i.m = add i64 %i.l, 512
  store i64 %i.m, ptr %i.b, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %i.o = add i32 %.013, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = icmp ult i32 %i.b, 56
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 55
  br i1 %.not, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %scevgep77 = getelementptr i8, ptr %i.f, i64 1
  %narrow = sub nuw nsw i32 55, %i.b
  %i.g = zext nneg i32 %narrow to i64
end_hunk_0
