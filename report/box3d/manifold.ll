Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/manifold?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 256) i32 @b3FindIncidentFace(ptr noundef %0, <2 x float> %1, float %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sext i32 %i.b to i64
  %i.e = add nsw i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = sext i32 %i.h to i64
  %i.k = add nsw i64 %i.j, %i.c
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %.0.i82 = select i1 %i.i, ptr null, ptr %i.l    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = sext i32 %i.p to i64
  %i.s = add nsw i64 %i.r, %i.c
  %i.t = inttoptr i64 %i.s to ptr
  %.0.i84 = select i1 %i.q, ptr null, ptr %i.t    ; 2 uses
  %i.u = sext i32 %3 to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 3 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %.0.i84, i64 %i.ab ; 2 uses
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.ac, align 4, !tbaa !9
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.443.0.copyload = load float, ptr %.sroa.443.0..sroa_idx, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %b3Normalize.exit, %bb.a
  %i.ad = phi i64 [ %i.x, %bb.a ], [ %i.bi, %b3Normalize.exit ]
  %.078.in = phi i8 [ %i.w, %bb.a ], [ %i.bh, %b3Normalize.exit ]
  %.076 = phi float [ f0x7F7FFFFF, %bb.a ], [ %.177, %b3Normalize.exit ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.a ], [ %.1, %b3Normalize.exit ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !25
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0.i82, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %.0.i84, i64 %i.al ; 2 uses
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.am, align 4, !tbaa !9
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.439.0.copyload = load float, ptr %.sroa.439.0..sroa_idx, align 4, !tbaa !9
  %i.an = fsub <2 x float> %.sroa.038.0.copyload, %.sroa.042.0.copyload ; 3 uses
  %i.ao = fsub float %.sroa.439.0.copyload, %.sroa.443.0.copyload ; 3 uses
  %i.ap = fmul <2 x float> %i.an, %i.an           ; 2 uses
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ap, %shift
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ar = fmul float %i.ao, %i.ao
  %i.as = fadd float %i.ar, %i.aq                 ; 2 uses
  %i.at = fcmp ogt float %i.as, f0x057A0000
  br i1 %i.at, label %bb.c, label %b3Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt = tail call float @llvm.sqrt.f32(float %i.as)
  %i.au = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.an, %i.aw
  %i.ay = fmul float %i.ao, %i.au
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.b, %bb.c
  %.sroa.018.0.i = phi <2 x float> [ %i.ax, %bb.c ], [ zeroinitializer, %bb.b ]
  %.sroa.5.0.i = phi float [ %i.ay, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.az = fmul <2 x float> %1, %.sroa.018.0.i     ; 2 uses
  %shift98 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop99 = fadd <2 x float> %i.az, %shift98
  %i.ba = extractelement <2 x float> %foldExtExtBinop99, i64 0
  %i.bb = fmul float %2, %.sroa.5.0.i
  %i.bc = fadd float %i.bb, %i.ba                 ; 3 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %i.be = fneg float %i.bc
  %i.bf = select i1 %i.bd, float %i.be, float %i.bc ; 2 uses
  %i.bg = fcmp olt float %i.bf, %.076             ; 2 uses
  %.078 = zext i8 %.078.in to i32
  %.177 = select i1 %i.bg, float %i.bf, float %.076
  %.1 = select i1 %i.bg, i32 %.078, i32 %.0       ; 2 uses
  %i.bh = load i8, ptr %i.ai, align 1, !tbaa !26  ; 3 uses
  %i.bi = zext i8 %i.bh to i64
  %.not = icmp eq i8 %i.bh, %i.w
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !11

bb.d:                                             ; preds = %b3Normalize.exit
  %i.bj = icmp eq i32 %i.n, 0
  %i.bk = sext i32 %i.n to i64
  %i.bl = add nsw i64 %i.bk, %i.c
  %i.bm = inttoptr i64 %i.bl to ptr
  %.0.i83 = select i1 %i.bj, ptr null, ptr %i.bm  ; 2 uses
  %i.bn = sext i32 %.1 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0.i82, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !27  ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.0.i83, i64 %i.br ; 2 uses
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.bs, align 4, !tbaa !9
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.410.0.copyload = load float, ptr %.sroa.410.0..sroa_idx, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !27  ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.0.i83, i64 %i.bz ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ca, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.cb = fmul <2 x float> %1, %.sroa.09.0.copyload ; 2 uses
  %shift101 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fadd <2 x float> %i.cb, %shift101
  %i.cc = extractelement <2 x float> %foldExtExtBinop102, i64 0
  %i.cd = fmul float %2, %.sroa.410.0.copyload
  %i.ce = fadd float %i.cd, %i.cc
  %i.cf = fmul <2 x float> %1, %.sroa.07.0.copyload ; 2 uses
  %shift104 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop105 = fadd <2 x float> %i.cf, %shift104
  %i.cg = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.ch = fmul float %2, %.sroa.4.0.copyload
  %i.ci = fadd float %i.ch, %i.cg
  %i.cj = fcmp olt float %i.ce, %i.ci
  %.v = select i1 %i.cj, i8 %i.bq, i8 %i.by
  %i.ck = zext i8 %.v to i32
  ret i32 %i.ck
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @b3MakeFeaturePair(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.4.0.insert.ext = shl i32 %3, 24
  %.sroa.3.0.insert.ext = shl i32 %2, 16
  %.sroa.3.0.insert.shift = and i32 %.sroa.3.0.insert.ext, 16711680
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.ext, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = shl i32 %1, 8
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 65280
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %0, 255
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @b3FlipPair(i32 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.8.0.extract.shift = lshr i32 %0, 16      ; 2 uses
  %i.a = sub nsw i32 1, %.sroa.8.0.extract.shift
  %i.b = shl i32 %0, 16                           ; 2 uses
  %.sroa.4.0.insert.ext = and i32 %i.b, -16777216
  %.sroa.3.0.insert.ext = sub i32 65536, %i.b
  %.sroa.3.0.insert.shift = and i32 %.sroa.3.0.insert.ext, 16711680
  %.sroa.2.0.insert.shift = and i32 %.sroa.8.0.extract.shift, 65280
  %.sroa.011.0.insert.ext = and i32 %i.a, 255
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.4.0.insert.ext
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.3.0.insert.shift
  %.sroa.011.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.011.0.insert.ext
  ret i32 %.sroa.011.0.insert.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @b3ClipPolygon(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i32 noundef %5, <2 x float> %6, <2 x float> %7) local_unnamed_addr #2 {
bb.a:
  %.sroa.28.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 2 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.8.vec.extract.i = extractelement <2 x float> %4, i64 0
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr [20 x i8], ptr %1, i64 %i.b ; 4 uses
  %.sroa.9112.0..sroa_idx = getelementptr i8, ptr %i.c, i64 -12
  %.sroa.9112.0.copyload = load float, ptr %.sroa.9112.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.d = fmul float %.sroa.28.8.vec.extract.i, %.sroa.9112.0.copyload
  %i.e = getelementptr i8, ptr %i.c, i64 -20
  %.sroa.0107.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !9 ; 2 uses
  %i.f = fmul <2 x float> %3, %.sroa.0107.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = fadd float %i.d, %i.g
  %i.i = fsub float %i.h, %.sroa.28.12.vec.extract.i
  %.sroa.20.0..sroa_idx = getelementptr i8, ptr %i.c, i64 -1
  %.sroa.20.0.copyload = load i8, ptr %.sroa.20.0..sroa_idx, align 1, !tbaa !29
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %i.c, i64 -2
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !29
  %.sroa.28.8.vec.extract.i170 = extractelement <2 x float> %7, i64 0 ; 2 uses
  %.sroa.28.12.vec.extract.i175 = extractelement <2 x float> %7, i64 1 ; 2 uses
  %i.j = trunc i32 %5 to i8                       ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0136.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.h ]
  ret i32 %.0136.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.20.0182 = phi i8 [ %.sroa.20.0.copyload, %.lr.ph ], [ %.sroa.14.0.copyload, %bb.h ]
  %.sroa.18.0181 = phi i8 [ %.sroa.18.0.copyload, %.lr.ph ], [ %.sroa.13.0.copyload, %bb.h ]
  %.sroa.9112.0180 = phi float [ %.sroa.9112.0.copyload, %.lr.ph ], [ %i.m, %bb.h ] ; 4 uses
  %.sroa.0107.0179 = phi <2 x float> [ %.sroa.0107.0.copyload, %.lr.ph ], [ %.sroa.060.0.copyload, %bb.h ] ; 4 uses
  %.0178 = phi float [ %i.i, %.lr.ph ], [ %i.p, %bb.h ] ; 6 uses
  %.0136177 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 7 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %.sroa.060.0.copyload = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.l = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !9 ; 4 uses
  %i.m = extractelement <2 x float> %i.l, i64 0   ; 3 uses
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.12.sroa.6.0.copyload = load i8, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx, align 4, !tbaa !29 ; 3 uses
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %.sroa.12.sroa.8.0.copyload = load i8, ptr %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx, align 1, !tbaa !29 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !29 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 19
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 1, !tbaa !29 ; 3 uses
  %i.n = fmul <2 x float> %3, %.sroa.060.0.copyload ; 2 uses
  %shift186 = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fadd <2 x float> %i.n, %shift186
  %foldExtExtBinop189 = fmul <2 x float> %4, %i.l
  %foldExtExtBinop191 = fadd <2 x float> %foldExtExtBinop189, %foldExtExtBinop187
  %i.o = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.p = fsub float %i.o, %.sroa.28.12.vec.extract.i ; 5 uses
  %i.q = fcmp ole float %.0178, 0.000000e+00      ; 2 uses
  %i.r = fcmp ole float %i.p, 0.000000e+00        ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %.0136177 to i64
  %i.t = getelementptr inbounds [20 x i8], ptr %0, i64 %i.s ; 6 uses
  store <2 x float> %.sroa.060.0.copyload, ptr %i.t, align 4, !tbaa !9
  %.sroa.9.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x float> %i.l, ptr %.sroa.9.0..sroa_idx66, align 4, !tbaa !9
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 %.sroa.12.sroa.6.0.copyload, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx72.sroa_idx, align 4, !tbaa !29
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 17
  store i8 %.sroa.12.sroa.8.0.copyload, ptr %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx72.sroa_idx, align 1, !tbaa !29
  %.sroa.13.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  store i8 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx75, align 2, !tbaa !29
  %.sroa.14.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.t, i64 19
  store i8 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx81, align 1, !tbaa !29
  %i.u = add nsw i32 %.0136177, 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp ogt float %i.p, 0.000000e+00
  %or.cond3 = select i1 %i.q, i1 %i.v, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = fsub float %.0178, %i.p
  %i.x = fdiv float %.0178, %i.w                  ; 2 uses
  %i.y = fsub float %i.m, %.sroa.9112.0180
  %i.z = fsub <2 x float> %.sroa.060.0.copyload, %.sroa.0107.0179
  %i.aa = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %.sroa.0107.0179, %i.ac ; 3 uses
  %i.ae = fmul float %i.y, %i.x
  %i.af = fadd float %.sroa.9112.0180, %i.ae      ; 2 uses
  %foldExtExtBinop193 = fmul <2 x float> %6, %i.ad
  %foldExtExtBinop195 = fmul <2 x float> %6, %i.ad
  %shift197 = shufflevector <2 x float> %foldExtExtBinop195, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop198 = fadd <2 x float> %foldExtExtBinop193, %shift197
  %i.ag = extractelement <2 x float> %foldExtExtBinop198, i64 0
  %i.ah = fmul float %.sroa.28.8.vec.extract.i170, %i.af
  %i.ai = fadd float %i.ah, %i.ag
  %i.aj = fsub float %i.ai, %.sroa.28.12.vec.extract.i175
  %i.ak = sext i32 %.0136177 to i64
  %i.al = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ak ; 7 uses
  store <2 x float> %i.ad, ptr %i.al, align 4, !tbaa !9
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float %i.af, ptr %.sroa.027.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store float %i.aj, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !9
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i8 %.sroa.12.sroa.6.0.copyload, ptr %.sroa.529.0..sroa_idx, align 4, !tbaa !29
  %.sroa.529.sroa.4.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 17
  store i8 %.sroa.12.sroa.8.0.copyload, ptr %.sroa.529.sroa.4.0..sroa.529.0..sroa_idx.sroa_idx, align 1, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !29
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 19
  store i8 %i.j, ptr %.sroa.730.0..sroa_idx, align 1, !tbaa !29
  %i.am = add nsw i32 %.0136177, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.an = fcmp ogt float %.0178, 0.000000e+00
  %or.cond5 = and i1 %i.r, %i.an
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = fsub float %.0178, %i.p
  %i.ap = fdiv float %.0178, %i.ao                ; 2 uses
  %i.aq = fsub float %i.m, %.sroa.9112.0180
  %i.ar = fsub <2 x float> %.sroa.060.0.copyload, %.sroa.0107.0179
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.ar, %i.at
  %i.av = fadd <2 x float> %.sroa.0107.0179, %i.au ; 3 uses
  %i.aw = fmul float %i.aq, %i.ap
  %i.ax = fadd float %.sroa.9112.0180, %i.aw      ; 2 uses
  %foldExtExtBinop200 = fmul <2 x float> %6, %i.av
  %foldExtExtBinop202 = fmul <2 x float> %6, %i.av
  %shift204 = shufflevector <2 x float> %foldExtExtBinop202, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop205 = fadd <2 x float> %foldExtExtBinop200, %shift204
  %i.ay = extractelement <2 x float> %foldExtExtBinop205, i64 0
  %i.az = fmul float %.sroa.28.8.vec.extract.i170, %i.ax
  %i.ba = fadd float %i.az, %i.ay
  %i.bb = fsub float %i.ba, %.sroa.28.12.vec.extract.i175
  %i.bc = sext i32 %.0136177 to i64
  %i.bd = getelementptr [20 x i8], ptr %0, i64 %i.bc ; 13 uses
  store <2 x float> %i.av, ptr %i.bd, align 4, !tbaa !9
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float %i.ax, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store float %i.bb, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 17
  store i8 %i.j, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !29
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 18
  store i8 %.sroa.18.0181, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !29
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 19
  store i8 %.sroa.20.0182, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 1, !tbaa !29
  %i.be = getelementptr i8, ptr %i.bd, i64 20
  store <2 x float> %.sroa.060.0.copyload, ptr %i.be, align 4, !tbaa !9
  %.sroa.9.0..sroa_idx68 = getelementptr i8, ptr %i.bd, i64 28
  store <2 x float> %i.l, ptr %.sroa.9.0..sroa_idx68, align 4, !tbaa !9
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx73.sroa_idx = getelementptr i8, ptr %i.bd, i64 36
  store i8 %.sroa.12.sroa.6.0.copyload, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx73.sroa_idx, align 4, !tbaa !29
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx73.sroa_idx = getelementptr i8, ptr %i.bd, i64 37
  store i8 %.sroa.12.sroa.8.0.copyload, ptr %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx73.sroa_idx, align 1, !tbaa !29
  %.sroa.13.0..sroa_idx77 = getelementptr i8, ptr %i.bd, i64 38
  store i8 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx77, align 2, !tbaa !29
  %.sroa.14.0..sroa_idx83 = getelementptr i8, ptr %i.bd, i64 39
  store i8 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx83, align 1, !tbaa !29
  %i.bf = add nsw i32 %.0136177, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c
  %.1 = phi i32 [ %i.u, %bb.c ], [ %i.am, %bb.e ], [ %i.bf, %bb.g ], [ %.0136177, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!"long", !4, i64 0}
!13 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!14 = !{!"b3AABB", !13, i64 0, !13, i64 12}
!15 = !{!"b3Matrix3", !13, i64 0, !13, i64 12, !13, i64 24}
!16 = !{!"b3HullData", !12, i64 0, !12, i64 8, !14, i64 16, !8, i64 40, !8, i64 44, !8, i64 48, !13, i64 52, !15, i64 64, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140}
!17 = !{!16, !5, i64 104}
!18 = !{!16, !5, i64 116}
!19 = !{!16, !5, i64 124}
!20 = !{!16, !5, i64 108}
!21 = !{!"b3HullVertex", !4, i64 0}
!22 = !{!21, !4, i64 0}
!23 = !{!"b3HullHalfEdge", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!24 = !{!23, !4, i64 2}
!25 = !{!23, !4, i64 1}
!26 = !{!23, !4, i64 0}
!27 = !{!23, !4, i64 3}
!28 = distinct !{!28, !10}
!29 = !{!4, !4, i64 0}
end_hunk_0
