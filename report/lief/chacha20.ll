Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/chacha20?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_chacha20_free:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @mbedtls_chacha20_setkey(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %0, align 8, !tbaa !11
  %.0.copyload.i26 = load i32, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.copyload.i26, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i25 = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.copyload.i25, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i24 = load i32, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.copyload.i24, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.copyload.i23 = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.copyload.i23, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i22 = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.copyload.i22, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0.copyload.i21 = load i32, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.copyload.i21, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i20 = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.copyload.i20, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0.copyload.i = load i32, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.copyload.i, ptr %i.o, align 4, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_starts(ptr noundef initializes((48, 64)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.a, align 8, !tbaa !11
  %.0.copyload.i10 = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0.copyload.i10, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i9 = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0.copyload.i9, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i = load i32, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.copyload.i, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef 64) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.h, align 8, !tbaa !10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_update(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %i.d, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 5 uses
  %.03346 = phi i64 [ %1, %.lr.ph ], [ %i.q, %bb.c ] ; 4 uses
  %i.g = icmp ult i64 %i.f, 64
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.047
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = xor i8 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %.047
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = load i64, ptr %i.d, align 8, !tbaa !10
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !tbaa !10
  %i.p = add nuw i64 %.047, 1
  %i.q = add i64 %.03346, -1                      ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !13

.critedge:                                        ; preds = %bb.b
  %i.r = icmp ugt i64 %.03346, 63
  br i1 %i.r, label %.lr.ph57, label %._crit_edge.thread77

.lr.ph57:                                         ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.preheader44

.preheader44:                                     ; preds = %.lr.ph57, %.preheader44
  %.156 = phi i64 [ %.047, %.lr.ph57 ], [ %i.bb, %.preheader44 ] ; 3 uses
  %.13455 = phi i64 [ %.03346, %.lr.ph57 ], [ %i.bc, %.preheader44 ]
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !11
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.t, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %.156 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.156 ; 8 uses
  %.0.copyload.i41 = load i64, ptr %i.ae, align 1
  %.0.copyload.i = load i64, ptr %i.s, align 8
  %i.af = xor i64 %.0.copyload.i, %.0.copyload.i41
  store i64 %i.af, ptr %i.ad, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i41.1 = load i64, ptr %i.ag, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 8
  %i.ah = xor i64 %.0.copyload.i.1, %.0.copyload.i41.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.0.copyload.i41.2 = load i64, ptr %i.aj, align 1
  %.0.copyload.i.2 = load i64, ptr %i.v, align 8
  %i.ak = xor i64 %.0.copyload.i.2, %.0.copyload.i41.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.0.copyload.i41.3 = load i64, ptr %i.am, align 1
  %.0.copyload.i.3 = load i64, ptr %i.w, align 8
  %i.an = xor i64 %.0.copyload.i.3, %.0.copyload.i41.3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.0.copyload.i41.4 = load i64, ptr %i.ap, align 1
  %.0.copyload.i.4 = load i64, ptr %i.x, align 8
  %i.aq = xor i64 %.0.copyload.i.4, %.0.copyload.i41.4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.0.copyload.i41.5 = load i64, ptr %i.as, align 1
  %.0.copyload.i.5 = load i64, ptr %i.y, align 8
  %i.at = xor i64 %.0.copyload.i.5, %.0.copyload.i41.5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.at, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.0.copyload.i41.6 = load i64, ptr %i.av, align 1
  %.0.copyload.i.6 = load i64, ptr %i.z, align 8
  %i.aw = xor i64 %.0.copyload.i.6, %.0.copyload.i41.6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.0.copyload.i41.7 = load i64, ptr %i.ay, align 1
  %.0.copyload.i.7 = load i64, ptr %i.aa, align 8
  %i.az = xor i64 %.0.copyload.i.7, %.0.copyload.i41.7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 %i.az, ptr %i.ba, align 1
  %i.bb = add i64 %.156, 64                       ; 2 uses
  %i.bc = add i64 %.13455, -64                    ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 63
  br i1 %i.bd, label %.preheader44, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.preheader44
  %.not36 = icmp eq i64 %i.bc, 0
  br i1 %.not36, label %._crit_edge.thread, label %._crit_edge.thread77

._crit_edge.thread77:                             ; preds = %.critedge, %._crit_edge
  %.1.lcssa82 = phi i64 [ %i.bb, %._crit_edge ], [ %.047, %.critedge ] ; 4 uses
  %.134.lcssa81 = phi i64 [ %i.bc, %._crit_edge ], [ %.03346, %.critedge ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !11
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %.1.lcssa82 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %.1.lcssa82 ; 9 uses
  %.not.i60 = icmp samesign ult i64 %.134.lcssa81, 8
  br i1 %.not.i60, label %.preheader, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %._crit_edge.thread77
  %i.bk = add nsw i64 %.134.lcssa81, -8           ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 120
  br i1 %min.iters.check, label %.lr.ph63.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63.preheader
  %i.bn = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.bn, -32
  %i.bo = add i64 %.1.lcssa82, %i.c
  %i.bp = sub i64 %i.bo, %i.a
  %i.bq = add i64 %i.bp, -65
  %diff.check91 = icmp ult i64 %i.bq, 31
  %conflict.rdx = or i1 %diff.check, %diff.check91
  br i1 %conflict.rdx, label %.lr.ph63.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 3 uses
  %i.bs = or disjoint i64 %i.br, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 1
  %wide.load92 = load <2 x i64>, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.bw, align 1
  %wide.load94 = load <2 x i64>, ptr %i.bx, align 1
  %i.by = xor <2 x i64> %wide.load93, %wide.load
  %i.bz = xor <2 x i64> %wide.load94, %wide.load92
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x i64> %i.by, ptr %i.ca, align 1
  store <2 x i64> %i.bz, ptr %i.cb, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph63.preheader122

.lr.ph63.preheader122:                            ; preds = %vector.memcheck, %.lr.ph63.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph63.preheader ], [ %i.bs, %middle.block ]
  %.0.i61.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph63.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph63

.preheader:                                       ; preds = %.lr.ph63, %middle.block, %._crit_edge.thread77
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge.thread77 ], [ %i.br, %middle.block ], [ %i.dm, %.lr.ph63 ] ; 8 uses
  %i.cd = icmp samesign ult i64 %.0.i.lcssa, %.134.lcssa81
  br i1 %i.cd, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.ce = sub nuw i64 %.134.lcssa81, %.0.i.lcssa  ; 7 uses
  %min.iters.check101 = icmp ult i64 %i.ce, 8
  br i1 %min.iters.check101, label %.lr.ph66.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check
  %i.cf = sub i64 %i.b, %i.c
  %diff.check97 = icmp ugt i64 %i.cf, -32
  %i.cg = add i64 %.1.lcssa82, %i.c
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = add i64 %i.ch, -65
  %diff.check98 = icmp ult i64 %i.ci, 31
  %conflict.rdx99 = or i1 %diff.check97, %diff.check98
  br i1 %conflict.rdx99, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck96
  %min.iters.check102 = icmp ult i64 %i.ce, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.ce, 24
  %n.vec104 = and i64 %i.ce, 32                   ; 4 uses
  %i.ck = add i64 %.0.i.lcssa, %n.vec104
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cl = add nuw i64 %.0.i.lcssa, %index106      ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load107 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !21
  %wide.load108 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.co, align 1, !tbaa !21
  %wide.load110 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !21
  %i.cq = xor <16 x i8> %wide.load109, %wide.load107
  %i.cr = xor <16 x i8> %wide.load110, %wide.load108
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cl ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <16 x i8> %i.cq, ptr %i.cs, align 1, !tbaa !21
  store <16 x i8> %i.cr, ptr %i.ct, align 1, !tbaa !21
  %index.next111 = add nuw i64 %index106, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cu, label %middle.block112, label %vector.body105, !llvm.loop !16

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.ce, %n.vec104
  br i1 %cmp.n113, label %mbedtls_xor.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec104, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.ce, 56                   ; 3 uses
  %i.cv = add i64 %.0.i.lcssa, %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.cw = add nuw i64 %.0.i.lcssa, %index116      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %wide.load117 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cw
  %wide.load118 = load <8 x i8>, ptr %i.cy, align 1, !tbaa !21
  %i.cz = xor <8 x i8> %wide.load118, %wide.load117
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cw
  store <8 x i8> %i.cz, ptr %i.da, align 1, !tbaa !21
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ce, %n.vec115
  br i1 %cmp.n120, label %mbedtls_xor.exit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %vector.memcheck96, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i65.ph = phi i64 [ %.0.i.lcssa, %iter.check ], [ %.0.i.lcssa, %vector.memcheck96 ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ] ; 4 uses
  %i.dc = sub i64 %.134.lcssa81, %.1.i65.ph
  %xtraiter = and i64 %i.dc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.1.i65.prol = phi i64 [ %i.dj, %.lr.ph66.prol ], [ %.1.i65.ph, %.lr.ph66.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.1.i65.prol
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i65.prol
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  %i.dh = xor i8 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.1.i65.prol
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !21
  %i.dj = add nuw nsw i64 %.1.i65.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !18

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.1.i65.unr = phi i64 [ %.1.i65.ph, %.lr.ph66.preheader ], [ %i.dj, %.lr.ph66.prol ]
  %i.dk = sub i64 %.1.i65.ph, %.134.lcssa81
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %mbedtls_xor.exit, label %.lr.ph66

.lr.ph63:                                         ; preds = %.lr.ph63.preheader122, %.lr.ph63
  %i.dm = phi i64 [ %i.dr, %.lr.ph63 ], [ %.ph, %.lr.ph63.preheader122 ] ; 3 uses
  %.0.i61 = phi i64 [ %i.dm, %.lr.ph63 ], [ %.0.i61.ph, %.lr.ph63.preheader122 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0.i61
  %.0.copyload.i43 = load i64, ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i61
  %.0.copyload.i42 = load i64, ptr %i.do, align 1
  %i.dp = xor i64 %.0.copyload.i42, %.0.copyload.i43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.i61
  store i64 %i.dp, ptr %i.dq, align 1
  %i.dr = add nuw nsw i64 %i.dm, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.dr, %.134.lcssa81
  br i1 %.not.i, label %.preheader, label %.lr.ph63, !llvm.loop !19

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.1.i65 = phi i64 [ %i.et, %.lr.ph66 ], [ %.1.i65.unr, %.lr.ph66.prol.loopexit ] ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.1.i65
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i65
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !21
  %i.dw = xor i8 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.1.i65
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !21
  %i.dy = add nuw nsw i64 %.1.i65, 1              ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dy
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = xor i8 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dy
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !21
  %i.ef = add nuw nsw i64 %.1.i65, 2              ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ef
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !21
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ef
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !21
  %i.em = add nuw nsw i64 %.1.i65, 3              ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !21
  %i.er = xor i8 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.em
  store i8 %i.er, ptr %i.es, align 1, !tbaa !21
  %i.et = add nuw nsw i64 %.1.i65, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.et, %.134.lcssa81
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph66, !llvm.loop !20

mbedtls_xor.exit:                                 ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block112, %vec.epilog.middle.block, %.preheader
  store i64 %.134.lcssa81, ptr %i.d, align 8, !tbaa !10
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.a, %mbedtls_xor.exit, %._crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @chacha20_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.promoted = load i32, ptr %i.b, align 16, !tbaa !11
  %.promoted24 = load i32, ptr %i.a, align 16, !tbaa !11
  %.promoted26 = load i32, ptr %i.c, align 16, !tbaa !11
  %.promoted28 = load i32, ptr %i.d, align 16, !tbaa !11
  %.promoted30 = load i32, ptr %i.e, align 4, !tbaa !11
  %.promoted32 = load i32, ptr %i.f, align 4, !tbaa !11
  %.promoted34 = load i32, ptr %i.g, align 4, !tbaa !11
  %.promoted36 = load i32, ptr %i.h, align 4, !tbaa !11
  %.promoted38 = load i32, ptr %i.i, align 8, !tbaa !11
  %.promoted40 = load i32, ptr %i.j, align 8, !tbaa !11
  %.promoted42 = load i32, ptr %i.k, align 8, !tbaa !11
  %.promoted44 = load i32, ptr %i.l, align 8, !tbaa !11
  %.promoted46 = load i32, ptr %i.m, align 4, !tbaa !11
  %.promoted48 = load i32, ptr %i.n, align 4, !tbaa !11
  %.promoted50 = load i32, ptr %i.o, align 4, !tbaa !11
  %.promoted52 = load i32, ptr %i.p, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.054 = phi i64 [ 0, %bb.a ], [ %i.dy, %bb.b ]
  %i.q = phi i32 [ %.promoted, %bb.a ], [ %i.dx, %bb.b ] ; 2 uses
  %i.r = phi i32 [ %.promoted24, %bb.a ], [ %i.ci, %bb.b ]
  %i.s = phi i32 [ %.promoted26, %bb.a ], [ %i.dr, %bb.b ]
  %i.t = phi i32 [ %.promoted28, %bb.a ], [ %i.di, %bb.b ]
  %i.u = phi i32 [ %.promoted30, %bb.a ], [ %i.dq, %bb.b ] ; 2 uses
  %i.v = phi i32 [ %.promoted32, %bb.a ], [ %i.dd, %bb.b ]
  %i.w = phi i32 [ %.promoted34, %bb.a ], [ %i.dh, %bb.b ]
  %i.x = phi i32 [ %.promoted36, %bb.a ], [ %i.dv, %bb.b ]
  %i.y = phi i32 [ %.promoted38, %bb.a ], [ %i.du, %bb.b ] ; 2 uses
  %i.z = phi i32 [ %.promoted40, %bb.a ], [ %i.df, %bb.b ]
  %i.aa = phi i32 [ %.promoted42, %bb.a ], [ %i.dn, %bb.b ]
  %i.ab = phi i32 [ %.promoted44, %bb.a ], [ %i.do, %bb.b ]
  %i.ac = phi i32 [ %.promoted46, %bb.a ], [ %i.dk, %bb.b ] ; 2 uses
  %i.ad = phi i32 [ %.promoted48, %bb.a ], [ %i.dl, %bb.b ]
  %i.ae = phi i32 [ %.promoted50, %bb.a ], [ %i.ck, %bb.b ]
  %i.af = phi i32 [ %.promoted52, %bb.a ], [ %i.ds, %bb.b ]
  %i.ag = add i32 %i.r, %i.q                      ; 2 uses
  %i.ah = xor i32 %i.s, %i.ag                     ; 2 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 16) ; 2 uses
  %i.aj = add i32 %i.ai, %i.t                     ; 2 uses
  %i.ak = xor i32 %i.aj, %i.q                     ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 12) ; 2 uses
  %i.am = add i32 %i.al, %i.ag                    ; 2 uses
  %i.an = xor i32 %i.am, %i.ai                    ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 8) ; 2 uses
  %i.ap = add i32 %i.ao, %i.aj                    ; 2 uses
  %i.aq = xor i32 %i.ap, %i.al                    ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 7) ; 2 uses
  %i.as = add i32 %i.v, %i.u                      ; 2 uses
  %i.at = xor i32 %i.w, %i.as                     ; 2 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 16) ; 2 uses
  %i.av = add i32 %i.au, %i.x                     ; 2 uses
  %i.aw = xor i32 %i.av, %i.u                     ; 2 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 12) ; 2 uses
  %i.ay = add i32 %i.ax, %i.as                    ; 2 uses
  %i.az = xor i32 %i.ay, %i.au                    ; 2 uses
  %i.ba = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 8) ; 2 uses
  %i.bb = add i32 %i.ba, %i.av                    ; 2 uses
  %i.bc = xor i32 %i.bb, %i.ax                    ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 7) ; 2 uses
  %i.be = add i32 %i.z, %i.y                      ; 2 uses
  %i.bf = xor i32 %i.aa, %i.be                    ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 16) ; 2 uses
  %i.bh = add i32 %i.bg, %i.ab                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.y                     ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 12) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 8) ; 2 uses
  %i.bn = add i32 %i.bm, %i.bh                    ; 2 uses
  %i.bo = xor i32 %i.bn, %i.bj                    ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 7) ; 2 uses
  %i.bq = add i32 %i.ad, %i.ac                    ; 2 uses
  %i.br = xor i32 %i.ae, %i.bq                    ; 2 uses
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 16) ; 2 uses
  %i.bt = add i32 %i.bs, %i.af                    ; 2 uses
  %i.bu = xor i32 %i.bt, %i.ac                    ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 12) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 8) ; 2 uses
  %i.bz = add i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = xor i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 7) ; 2 uses
  %i.cc = add i32 %i.bd, %i.am                    ; 2 uses
  %i.cd = xor i32 %i.by, %i.cc                    ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 16) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bn                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.bd                    ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 12) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 3 uses
  %i.cj = xor i32 %i.ci, %i.ce                    ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 8) ; 3 uses
  %i.cl = add i32 %i.bp, %i.ay                    ; 2 uses
  %i.cm = xor i32 %i.cl, %i.ao                    ; 2 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 16) ; 2 uses
  %i.co = add i32 %i.cn, %i.bz                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.bp                    ; 2 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 12) ; 2 uses
  %i.cr = add i32 %i.cb, %i.bk                    ; 2 uses
  %i.cs = xor i32 %i.cr, %i.ba                    ; 2 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 16) ; 2 uses
  %i.cu = add i32 %i.ct, %i.ap                    ; 2 uses
  %i.cv = xor i32 %i.cu, %i.cb                    ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 12) ; 2 uses
  %i.cx = add i32 %i.bw, %i.ar                    ; 2 uses
  %i.cy = xor i32 %i.cx, %i.bm                    ; 2 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 16) ; 2 uses
  %i.da = add i32 %i.cz, %i.bb                    ; 2 uses
  %i.db = xor i32 %i.da, %i.ar                    ; 2 uses
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 12) ; 2 uses
  %i.dd = add i32 %i.cq, %i.cl                    ; 3 uses
  %i.de = xor i32 %i.dd, %i.cn                    ; 2 uses
  %i.df = add i32 %i.cw, %i.cr                    ; 3 uses
  %i.dg = xor i32 %i.df, %i.ct                    ; 2 uses
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 8) ; 3 uses
  %i.di = add i32 %i.dh, %i.cu                    ; 3 uses
  %i.dj = xor i32 %i.di, %i.cw                    ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 7) ; 2 uses
  %i.dl = add i32 %i.dc, %i.cx                    ; 3 uses
  %i.dm = xor i32 %i.dl, %i.cz                    ; 2 uses
  %i.dn = tail call i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 8) ; 3 uses
  %i.do = add i32 %i.ck, %i.cf                    ; 3 uses
  %i.dp = xor i32 %i.do, %i.ch                    ; 2 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 7) ; 2 uses
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 8) ; 3 uses
end_hunk_0
