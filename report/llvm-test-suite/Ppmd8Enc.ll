Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Ppmd8Enc?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PPMD8_kExpEscape = external local_unnamed_addr constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd8_RangeEnc_FlushData(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %1 = load ptr, ptr %i.a, align 8, !tbaa !8      ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  %2 = load i32, ptr %i.b, align 8, !tbaa !17
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  tail call void %i.c(ptr noundef nonnull %1, i8 noundef zeroext %4) #4
  %i.d = load i32, ptr %i.b, align 8, !tbaa !17
  %i.e = shl i32 %i.d, 8                          ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = lshr i32 %i.e, 24
  %i.i = trunc nuw i32 %i.h to i8
  tail call void %i.g(ptr noundef nonnull %i.f, i8 noundef zeroext %i.i) #4
  %i.j = load i32, ptr %i.b, align 8, !tbaa !17
  %i.k = shl i32 %i.j, 8                          ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !17
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = lshr i32 %i.k, 24
  %i.o = trunc nuw i32 %i.n to i8
  tail call void %i.m(ptr noundef nonnull %i.l, i8 noundef zeroext %i.o) #4
  %i.p = load i32, ptr %i.b, align 8, !tbaa !17
  %i.q = shl i32 %i.p, 8                          ; 2 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !17
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = lshr i32 %i.q, 24
  %i.u = trunc nuw i32 %i.t to i8
  tail call void %i.s(ptr noundef nonnull %i.r, i8 noundef zeroext %i.u) #4
  %i.v = load i32, ptr %i.b, align 8, !tbaa !17
  %i.w = shl i32 %i.v, 8
  store i32 %i.w, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd8_EncodeSymbol(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 15 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 9 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !32    ; 3 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %1, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !38
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39
  %i.v = udiv i32 %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  %i.y = mul i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.y, ptr %i.t, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %bb.c
  %i.aa = phi i32 [ %i.an, %.critedge.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ab = phi i32 [ %i.ap, %.critedge.i.i ], [ %i.x, %bb.c ] ; 4 uses
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = icmp ult i32 %i.ad, 16777216
  br i1 %i.ae, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i32 %i.aa, 32768
  br i1 %i.af, label %bb.f, label %RangeEnc_Encode.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = sub i32 0, %i.ab
  %i.ah = and i32 %i.ag, 32767
  store i32 %i.ah, ptr %i.t, align 8, !tbaa !39
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.d
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = lshr i32 %i.ab, 24
  %i.al = trunc nuw i32 %i.ak to i8
  tail call void %i.aj(ptr noundef nonnull %i.ai, i8 noundef zeroext %i.al) #4, !inline_history !19
  %i.am = load i32, ptr %i.t, align 8, !tbaa !39
  %i.an = shl i32 %i.am, 8                        ; 2 uses
  store i32 %i.an, ptr %i.t, align 8, !tbaa !39
  %i.ao = load i32, ptr %i.w, align 8, !tbaa !17
  %i.ap = shl i32 %i.ao, 8                        ; 2 uses
  store i32 %i.ap, ptr %i.w, align 8, !tbaa !17
  br label %bb.d, !llvm.loop !20

RangeEnc_Encode.exit:                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.aq, align 8, !tbaa !41
  tail call void @Ppmd8_Update1_0(ptr noundef nonnull %0) #4
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ar, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = zext i8 %i.at to i32
  %i.av = zext i8 %i.d to i32                     ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  %.0151 = phi ptr [ %i.j, %bb.g ], [ %i.aw, %bb.m ] ; 2 uses
  %.0150 = phi i32 [ %i.au, %bb.g ], [ %i.cg, %bb.m ] ; 2 uses
  %.0148 = phi i32 [ %i.av, %bb.g ], [ %i.ch, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0151, i64 6 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !36  ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = icmp eq i32 %1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.0151, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !38
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !39
  %i.bi = udiv i32 %i.bh, %i.bf                   ; 2 uses
  %i.bj = mul i32 %i.bi, %.0150
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !17
  %i.bm = add i32 %i.bl, %i.bj                    ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !17
  %i.bn = mul i32 %i.bi, %i.bc                    ; 2 uses
  store i32 %i.bn, ptr %i.bg, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.i171, %bb.i
  %i.bp = phi i32 [ %i.cc, %.critedge.i.i171 ], [ %i.bn, %bb.i ] ; 2 uses
  %i.bq = phi i32 [ %i.ce, %.critedge.i.i171 ], [ %i.bm, %bb.i ] ; 4 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = xor i32 %i.br, %i.bq
  %i.bt = icmp ult i32 %i.bs, 16777216
  br i1 %i.bt, label %.critedge.i.i171, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp ult i32 %i.bp, 32768
  br i1 %i.bu, label %bb.l, label %RangeEnc_Encode.exit172

bb.l:                                             ; preds = %bb.k
  %i.bv = sub i32 0, %i.bq
  %i.bw = and i32 %i.bv, 32767
  store i32 %i.bw, ptr %i.bg, align 8, !tbaa !39
  br label %.critedge.i.i171

.critedge.i.i171:                                 ; preds = %bb.l, %bb.j
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !8  ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.bz = lshr i32 %i.bq, 24
  %i.ca = trunc nuw i32 %i.bz to i8
  tail call void %i.by(ptr noundef nonnull %i.bx, i8 noundef zeroext %i.ca) #4, !inline_history !19
  %i.cb = load i32, ptr %i.bg, align 8, !tbaa !39
  %i.cc = shl i32 %i.cb, 8                        ; 2 uses
  store i32 %i.cc, ptr %i.bg, align 8, !tbaa !39
  %i.cd = load i32, ptr %i.bk, align 8, !tbaa !17
  %i.ce = shl i32 %i.cd, 8                        ; 2 uses
  store i32 %i.ce, ptr %i.bk, align 8, !tbaa !17
  br label %bb.j, !llvm.loop !20

RangeEnc_Encode.exit172:                          ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.cf, align 8, !tbaa !41
  tail call void @Ppmd8_Update1(ptr noundef nonnull %0) #4
  br label %.critedge

bb.m:                                             ; preds = %bb.h
  %i.cg = add i32 %.0150, %i.bc                   ; 3 uses
  %i.ch = add nsw i32 %.0148, -1                  ; 2 uses
  %.not163 = icmp eq i32 %i.ch, 0
  br i1 %.not163, label %.preheader187, label %bb.h, !llvm.loop !21

.preheader187:                                    ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !tbaa !44
  %i.ci = zext i8 %i.ax to i64
end_hunk_0
