inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@adler32_impl = internal global ptr @dispatch_adler32, align 8
@libdeflate_x86_cpu_features = external global i32, align 4

; Function Attrs: nounwind uwtable
define hidden i32 @libdeflate_adler32(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @adler32_impl, align 8, !tbaa !7
  %i.c = tail call i32 %i.b(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_adler32(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %arch_select_adler32_func.exit

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features() #6
  br label %arch_select_adler32_func.exit

arch_select_adler32_func.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !3
  %i.d = and i32 %i.c, 8
  %.not.i = icmp eq i32 %i.d, 0
  %adler32_sse2.adler32_avx2.i = select i1 %.not.i, ptr @adler32_sse2, ptr @adler32_avx2 ; 2 uses
  store volatile ptr %adler32_sse2.adler32_avx2.i, ptr @adler32_impl, align 8, !tbaa !7
  %i.e = tail call i32 %adler32_sse2.adler32_avx2.i(i32 noundef %0, ptr noundef %1, i64 noundef %2) #6, !callees !9
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @adler32_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %.not = icmp samesign eq i64 %2, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = and i64 %i.d, 31
  %.not34 = icmp eq i64 %i.e, 0
  %or.cond = or i1 %.not, %.not34
  br i1 %or.cond, label %bb.c, label %.preheader148

.preheader148:                                    ; preds = %bb.a, %.preheader148
  %.0143 = phi i32 [ %i.i, %.preheader148 ], [ %i.a, %bb.a ]
  %.0139 = phi i32 [ %i.j, %.preheader148 ], [ %i.b, %bb.a ]
  %.0 = phi ptr [ %i.f, %.preheader148 ], [ %1, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 4 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %.0143, %i.h                     ; 3 uses
  %i.j = add i32 %i.i, %.0139                     ; 2 uses
  %i.k = icmp ne ptr %i.f, %i.c
  %i.l = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.k, %i.n
  br i1 %i.o, label %.preheader148, label %bb.b, !llvm.loop !11

bb.b:                                             ; preds = %.preheader148
  %i.p = urem i32 %i.i, 65521
  %i.q = urem i32 %i.j, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.1144 = phi i32 [ %i.p, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1140 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.r = ptrtoint ptr %i.c to i64
  %i.s = sub i64 %i.r, %.pre-phi
  %i.t = and i64 %i.s, 63
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.c, i64 %i.u ; 4 uses
  %.not35159 = icmp eq ptr %.1, %i.v
  br i1 %.not35159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %adler32_avx2_chunk.exit
  %.2162 = phi ptr [ %.1, %.lr.ph ], [ %i.aa, %adler32_avx2_chunk.exit ] ; 3 uses
  %.2141161 = phi i32 [ %.1140, %.lr.ph ], [ %i.bt, %adler32_avx2_chunk.exit ]
  %.2145160 = phi i32 [ %.1144, %.lr.ph ], [ %i.bs, %adler32_avx2_chunk.exit ] ; 2 uses
  %i.x = ptrtoint ptr %.2162 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 5504) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.2162, i64 %i.z ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi <16 x i16> [ zeroinitializer, %bb.d ], [ %i.bd, %bb.e ]
  %i.ac = phi <16 x i16> [ zeroinitializer, %bb.d ], [ %i.ba, %bb.e ]
  %i.ad = phi <16 x i16> [ zeroinitializer, %bb.d ], [ %i.ax, %bb.e ]
  %i.ae = phi <16 x i16> [ zeroinitializer, %bb.d ], [ %i.au, %bb.e ]
  %i.af = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.al, %bb.e ]
  %i.ag = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %.2162, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ai = load <32 x i8>, ptr %.0.i, align 32, !tbaa !10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.ak = load <32 x i8>, ptr %i.ah, align 32, !tbaa !10 ; 3 uses
  %i.al = add <8 x i32> %i.ag, %i.af              ; 2 uses
  %i.am = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ai, <32 x i8> zeroinitializer)
  %i.an = bitcast <4 x i64> %i.am to <8 x i32>
  %i.ao = add <8 x i32> %i.ag, %i.an
  %i.ap = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ak, <32 x i8> zeroinitializer)
  %i.aq = bitcast <4 x i64> %i.ap to <8 x i32>
  %i.ar = add <8 x i32> %i.ao, %i.aq              ; 3 uses
  %i.as = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.at = bitcast <32 x i8> %i.as to <16 x i16>
  %i.au = add <16 x i16> %i.ae, %i.at             ; 2 uses
  %i.av = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = add <16 x i16> %i.ad, %i.aw             ; 2 uses
  %i.ay = shufflevector <32 x i8> %i.ak, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.az = bitcast <32 x i8> %i.ay to <16 x i16>
  %i.ba = add <16 x i16> %i.ac, %i.az             ; 2 uses
  %i.bb = shufflevector <32 x i8> %i.ak, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.bc = bitcast <32 x i8> %i.bb to <16 x i16>
  %i.bd = add <16 x i16> %i.ab, %i.bc             ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.aa
  br i1 %.not.i, label %adler32_avx2_chunk.exit, label %bb.e, !llvm.loop !13

adler32_avx2_chunk.exit:                          ; preds = %bb.e
  %i.be = trunc nuw nsw i64 %i.z to i32
  %i.bf = mul nuw nsw i32 %.2145160, %i.be
  %i.bg = add nuw nsw i32 %i.bf, %.2141161
  %i.bh = shl <8 x i32> %i.al, splat (i32 6)
  %i.bi = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.au, <16 x i16> <i16 64, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 48, i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41>)
  %i.bj = add <8 x i32> %i.bi, %i.bh
  %i.bk = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ax, <16 x i16> <i16 56, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 40, i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33>)
  %i.bl = add <8 x i32> %i.bj, %i.bk
  %i.bm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ba, <16 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bn = add <8 x i32> %i.bl, %i.bm
  %i.bo = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bd, <16 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bp = add <8 x i32> %i.bn, %i.bo              ; 2 uses
  %3 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %5 = add <4 x i32> %3, %4                       ; 2 uses
  %6 = shufflevector <8 x i32> %i.bp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <8 x i32> %i.bp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %8 = add <4 x i32> %6, %7                       ; 2 uses
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %10 = add <4 x i32> %9, %8                      ; 2 uses
  %11 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %12 = add <4 x i32> %11, %5
  %13 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %14 = add <4 x i32> %13, %10
  %15 = extractelement <4 x i32> %12, i64 0
  %i.bq = add i32 %15, %.2145160
  %16 = extractelement <4 x i32> %14, i64 0
  %i.br = add i32 %i.bg, %16
  %i.bs = urem i32 %i.bq, 65521                   ; 2 uses
  %i.bt = urem i32 %i.br, 65521                   ; 2 uses
  %.not35 = icmp eq ptr %i.aa, %i.v
  br i1 %.not35, label %._crit_edge, label %bb.d, !llvm.loop !14

._crit_edge:                                      ; preds = %adler32_avx2_chunk.exit, %bb.c
  %.2145.lcssa = phi i32 [ %.1144, %bb.c ], [ %i.bs, %adler32_avx2_chunk.exit ] ; 3 uses
  %.2141.lcssa = phi i32 [ %.1140, %bb.c ], [ %i.bt, %adler32_avx2_chunk.exit ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.v, %adler32_avx2_chunk.exit ] ; 4 uses
  %.not36 = icmp eq ptr %.2.lcssa, %i.c
  br i1 %.not36, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %.2.lcssa220 = ptrtoint ptr %.2.lcssa to i64    ; 2 uses
  %i.bu = add i64 %2, %i.d                        ; 2 uses
  %i.bv = sub i64 %i.bu, %.2.lcssa220
  %xtraiter = and i64 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.3146.prol = phi i32 [ %i.bz, %.preheader.prol ], [ %.2145.lcssa, %.preheader.preheader ]
  %.3142.prol = phi i32 [ %i.ca, %.preheader.prol ], [ %.2141.lcssa, %.preheader.preheader ]
  %.3.prol = phi ptr [ %i.bw, %.preheader.prol ], [ %.2.lcssa, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.bx = load i8, ptr %.3.prol, align 1, !tbaa !10
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %.3146.prol, %i.by              ; 4 uses
  %i.ca = add i32 %i.bz, %.3142.prol              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !15

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa207.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.bz, %.preheader.prol ]
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.3146.unr = phi i32 [ %.2145.lcssa, %.preheader.preheader ], [ %i.bz, %.preheader.prol ]
  %.3142.unr = phi i32 [ %.2141.lcssa, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.3.unr = phi ptr [ %.2.lcssa, %.preheader.preheader ], [ %i.bw, %.preheader.prol ]
  %i.cb = sub i64 %.2.lcssa220, %i.bu
  %i.cc = icmp ugt i64 %i.cb, -8
  br i1 %i.cc, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.3146 = phi i32 [ %i.dp, %.preheader ], [ %.3146.unr, %.preheader.prol.loopexit ]
  %.3142 = phi i32 [ %i.dq, %.preheader ], [ %.3142.unr, %.preheader.prol.loopexit ]
  %.3 = phi ptr [ %i.dm, %.preheader ], [ %.3.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ce = load i8, ptr %.3, align 1, !tbaa !10
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add i32 %.3146, %i.cf                   ; 2 uses
  %i.ch = add i32 %i.cg, %.3142
  %i.ci = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add i32 %i.cg, %i.ck                    ; 2 uses
  %i.cm = add i32 %i.cl, %i.ch
  %i.cn = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %i.cl, %i.cp                    ; 2 uses
  %i.cr = add i32 %i.cq, %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ct = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add i32 %i.cq, %i.cu                    ; 2 uses
  %i.cw = add i32 %i.cv, %i.cr
  %i.cx = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %i.cv, %i.cz                    ; 2 uses
  %i.db = add i32 %i.da, %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.de = zext i8 %i.dd to i32
  %i.df = add i32 %i.da, %i.de                    ; 2 uses
  %i.dg = add i32 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.di = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.dj = zext i8 %i.di to i32
  %i.dk = add i32 %i.df, %i.dj                    ; 2 uses
  %i.dl = add i32 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.dn = load i8, ptr %i.dh, align 1, !tbaa !10
  %i.do = zext i8 %i.dn to i32
  %i.dp = add i32 %i.dk, %i.do                    ; 3 uses
  %i.dq = add i32 %i.dp, %i.dl                    ; 2 uses
  %.not37.7 = icmp eq ptr %i.dm, %i.c
  br i1 %.not37.7, label %.unr-lcssa, label %.preheader, !llvm.loop !17

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa207 = phi i32 [ %.lcssa207.unr, %.preheader.prol.loopexit ], [ %i.dp, %.preheader ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.dq, %.preheader ]
  %i.dr = urem i32 %.lcssa207, 65521
  %i.ds = urem i32 %.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %._crit_edge
  %.4147 = phi i32 [ %.2145.lcssa, %._crit_edge ], [ %i.dr, %.unr-lcssa ]
  %.4 = phi i32 [ %.2141.lcssa, %._crit_edge ], [ %i.ds, %.unr-lcssa ]
  %i.dt = shl nuw i32 %.4, 16
  %i.du = or i32 %i.dt, %.4147
  ret i32 %i.du
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @adler32_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %.not = icmp samesign eq i64 %2, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = and i64 %i.d, 15
  %.not34 = icmp eq i64 %i.e, 0
  %or.cond = or i1 %.not, %.not34
  br i1 %or.cond, label %bb.c, label %.preheader63

.preheader63:                                     ; preds = %bb.a, %.preheader63
  %.058 = phi i32 [ %i.i, %.preheader63 ], [ %i.a, %bb.a ]
  %.054 = phi i32 [ %i.j, %.preheader63 ], [ %i.b, %bb.a ]
  %.0 = phi ptr [ %i.f, %.preheader63 ], [ %1, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 4 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %.058, %i.h                      ; 3 uses
  %i.j = add i32 %i.i, %.054                      ; 2 uses
  %i.k = icmp ne ptr %i.f, %i.c
  %i.l = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.m = and i64 %i.l, 15
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.k, %i.n
  br i1 %i.o, label %.preheader63, label %bb.b, !llvm.loop !18

bb.b:                                             ; preds = %.preheader63
  %i.p = urem i32 %i.i, 65521
  %i.q = urem i32 %i.j, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.159 = phi i32 [ %i.p, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.155 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.r = ptrtoint ptr %i.c to i64
  %i.s = sub i64 %i.r, %.pre-phi
  %i.t = and i64 %i.s, 31
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.c, i64 %i.u ; 4 uses
  %.not3574 = icmp eq ptr %.1, %i.v
  br i1 %.not3574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %adler32_sse2_chunk.exit
  %.277 = phi ptr [ %.1, %.lr.ph ], [ %i.aa, %adler32_sse2_chunk.exit ] ; 3 uses
  %.25676 = phi i32 [ %.155, %.lr.ph ], [ %i.bw, %adler32_sse2_chunk.exit ]
  %.26075 = phi i32 [ %.159, %.lr.ph ], [ %i.bv, %adler32_sse2_chunk.exit ] ; 2 uses
  %i.x = ptrtoint ptr %.277 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 4096) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.277, i64 %i.z ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.ax, %bb.e ]
  %i.ac = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.ba, %bb.e ]
  %i.ad = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.bd, %bb.e ]
  %i.ae = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.au, %bb.e ]
  %i.af = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.al, %bb.e ]
  %i.ag = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %.277, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ai = load <16 x i8>, ptr %.0.i, align 16, !tbaa !10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.ak = load <16 x i8>, ptr %i.ah, align 16, !tbaa !10 ; 3 uses
  %i.al = add <4 x i32> %i.ag, %i.af              ; 2 uses
  %i.am = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ai, <16 x i8> zeroinitializer)
  %i.an = bitcast <2 x i64> %i.am to <4 x i32>
  %i.ao = add <4 x i32> %i.ag, %i.an
  %i.ap = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ak, <16 x i8> zeroinitializer)
  %i.aq = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.ar = add <4 x i32> %i.ao, %i.aq              ; 3 uses
  %i.as = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.at = bitcast <16 x i8> %i.as to <8 x i16>
  %i.au = add <8 x i16> %i.ae, %i.at              ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aw = bitcast <16 x i8> %i.av to <8 x i16>
  %i.ax = add <8 x i16> %i.ab, %i.aw              ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.az = bitcast <16 x i8> %i.ay to <8 x i16>
  %i.ba = add <8 x i16> %i.ac, %i.az              ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bc = bitcast <16 x i8> %i.bb to <8 x i16>
  %i.bd = add <8 x i16> %i.ad, %i.bc              ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.aa
  br i1 %.not.i, label %adler32_sse2_chunk.exit, label %bb.e, !llvm.loop !19

adler32_sse2_chunk.exit:                          ; preds = %bb.e
  %i.be = trunc nuw nsw i64 %i.z to i32
  %i.bf = mul nuw nsw i32 %.26075, %i.be
  %i.bg = add nuw nsw i32 %i.bf, %.25676
  %i.bh = shl <4 x i32> %i.al, splat (i32 5)
  %i.bi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25>)
  %i.bj = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17>)
  %i.bl = add <4 x i32> %i.bj, %i.bk
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ba, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bn = add <4 x i32> %i.bl, %i.bm
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bd, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %3 = add <4 x i32> %i.bn, %i.bo                 ; 2 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bp = add <4 x i32> %4, %3                    ; 2 uses
  %i.bq = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %5 = add <4 x i32> %i.bq, %i.ar
  %6 = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.br = add <4 x i32> %6, %i.bp
  %i.bs = extractelement <4 x i32> %5, i64 0
  %i.bt = add i32 %i.bs, %.26075
  %7 = extractelement <4 x i32> %i.br, i64 0
  %i.bu = add i32 %i.bg, %7
  %i.bv = urem i32 %i.bt, 65521                   ; 2 uses
  %i.bw = urem i32 %i.bu, 65521                   ; 2 uses
  %.not35 = icmp eq ptr %i.aa, %i.v
  br i1 %.not35, label %._crit_edge, label %bb.d, !llvm.loop !20

._crit_edge:                                      ; preds = %adler32_sse2_chunk.exit, %bb.c
  %.260.lcssa = phi i32 [ %.159, %bb.c ], [ %i.bv, %adler32_sse2_chunk.exit ] ; 3 uses
  %.256.lcssa = phi i32 [ %.155, %bb.c ], [ %i.bw, %adler32_sse2_chunk.exit ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.v, %adler32_sse2_chunk.exit ] ; 4 uses
  %.not36 = icmp eq ptr %.2.lcssa, %i.c
  br i1 %.not36, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %.2.lcssa135 = ptrtoint ptr %.2.lcssa to i64    ; 2 uses
  %i.bx = add i64 %2, %i.d                        ; 2 uses
  %i.by = sub i64 %i.bx, %.2.lcssa135
  %xtraiter = and i64 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.361.prol = phi i32 [ %i.cc, %.preheader.prol ], [ %.260.lcssa, %.preheader.preheader ]
  %.357.prol = phi i32 [ %i.cd, %.preheader.prol ], [ %.256.lcssa, %.preheader.preheader ]
  %.3.prol = phi ptr [ %i.bz, %.preheader.prol ], [ %.2.lcssa, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.ca = load i8, ptr %.3.prol, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add i32 %.361.prol, %i.cb               ; 4 uses
  %i.cd = add i32 %i.cc, %.357.prol               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !21

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa122.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.cc, %.preheader.prol ]
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %.361.unr = phi i32 [ %.260.lcssa, %.preheader.preheader ], [ %i.cc, %.preheader.prol ]
  %.357.unr = phi i32 [ %.256.lcssa, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %.3.unr = phi ptr [ %.2.lcssa, %.preheader.preheader ], [ %i.bz, %.preheader.prol ]
  %i.ce = sub i64 %.2.lcssa135, %i.bx
  %i.cf = icmp ugt i64 %i.ce, -8
  br i1 %i.cf, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.361 = phi i32 [ %i.ds, %.preheader ], [ %.361.unr, %.preheader.prol.loopexit ]
  %.357 = phi i32 [ %i.dt, %.preheader ], [ %.357.unr, %.preheader.prol.loopexit ]
  %.3 = phi ptr [ %i.dp, %.preheader ], [ %.3.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ch = load i8, ptr %.3, align 1, !tbaa !10
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add i32 %.361, %i.ci                    ; 2 uses
  %i.ck = add i32 %i.cj, %.357
  %i.cl = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i32
  %i.co = add i32 %i.cj, %i.cn                    ; 2 uses
  %i.cp = add i32 %i.co, %i.ck
  %i.cq = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add i32 %i.co, %i.cs                    ; 2 uses
  %i.cu = add i32 %i.ct, %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add i32 %i.ct, %i.cx                    ; 2 uses
  %i.cz = add i32 %i.cy, %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.dc = zext i8 %i.db to i32
  %i.dd = add i32 %i.cy, %i.dc                    ; 2 uses
  %i.de = add i32 %i.dd, %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dh = zext i8 %i.dg to i32
  %i.di = add i32 %i.dd, %i.dh                    ; 2 uses
  %i.dj = add i32 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add i32 %i.di, %i.dm                    ; 2 uses
  %i.do = add i32 %i.dn, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !10
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add i32 %i.dn, %i.dr                    ; 3 uses
  %i.dt = add i32 %i.ds, %i.do                    ; 2 uses
  %.not37.7 = icmp eq ptr %i.dp, %i.c
  br i1 %.not37.7, label %.unr-lcssa, label %.preheader, !llvm.loop !22

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa122 = phi i32 [ %.lcssa122.unr, %.preheader.prol.loopexit ], [ %i.ds, %.preheader ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.dt, %.preheader ]
  %i.du = urem i32 %.lcssa122, 65521
  %i.dv = urem i32 %.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %._crit_edge
  %.462 = phi i32 [ %.260.lcssa, %._crit_edge ], [ %i.du, %.unr-lcssa ]
  %.4 = phi i32 [ %.256.lcssa, %._crit_edge ], [ %i.dv, %.unr-lcssa ]
  %i.dw = shl nuw i32 %.4, 16
  %i.dx = or i32 %i.dw, %.462
  ret i32 %i.dx
}

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{ptr @adler32_avx2, null, ptr @adler32_sse2}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !12}
end_hunk_0
