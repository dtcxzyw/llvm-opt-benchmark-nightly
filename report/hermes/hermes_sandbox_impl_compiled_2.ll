Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x29

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ARegex0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef %0, i32 noundef returned %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 109 uses
  %i.b = zext i32 %1 to i64                       ; 35 uses
  %.val873 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val873, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 -1, ptr %i.d, align 1
  %.val918 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.b
  store i64 1, ptr %i.e, align 1
  %.val872 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val872, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 -1, ptr %i.g, align 1
  %.val871 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val871, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 -1, ptr %i.i, align 1
  %.val870 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val870, i64 %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i32 -1, ptr %i.k, align 1
  %.val869 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val869, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 -1, ptr %i.m, align 1
  %.val868 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val868, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i32 -1, ptr %i.o, align 1
  %.val867 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 -1, ptr %i.q, align 1
  %.val866 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i32 -1, ptr %i.s, align 1
  %.val865 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i32 -1, ptr %i.u, align 1
  %i.v = add i32 %1, 64
  %i.w = zext i32 %i.v to i64
  %.val864 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.w
  store i32 -1, ptr %i.x, align 1
  %.val863 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i32 -1, ptr %i.z, align 1
  %.val862 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 -1, ptr %i.ab, align 1
  %.val861 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 -1, ptr %i.ad, align 1
  %.val860 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val860, i64 %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 -1, ptr %i.af, align 1
  %.val859 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 -1, ptr %i.ah, align 1
  %.val858 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val858, i64 %i.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 -1, ptr %i.aj, align 1
  %i.ak = add nuw nsw i64 %i.b, 136               ; 5 uses
  %.val849 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val849, i64 %i.ak
  %.0.copyload.i = load i8, ptr %i.al, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !20
  %.val857 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val857, i64 %i.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 228
  store i32 0, ptr %i.an, align 1
  %.val917 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 220
  store i64 0, ptr %i.ap, align 1
  %i.aq = and i8 %.0.copyload.i, -128
  %.val832 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val832, i64 %i.ak
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = add nuw nsw i64 %i.b, 138               ; 3 uses
  %.val916 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.as
  store i64 0, ptr %i.at, align 1
  %.val915 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 146
  store i64 0, ptr %i.av, align 1
  %.val914 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 154
  store i64 0, ptr %i.ax, align 1
  %.val913 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 162
  store i64 0, ptr %i.az, align 1
  %.val856 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val856, i64 %i.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 169
  store i32 0, ptr %i.bb, align 1
  %.val912 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val912, i64 %i.b
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  store i64 0, ptr %i.bd, align 1
  %.val911 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  store i64 0, ptr %i.bf, align 1
  %.val910 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val910, i64 %i.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  store i64 0, ptr %i.bh, align 1
  %.val909 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  store i64 0, ptr %i.bj, align 1
  %i.bk = add nuw nsw i64 %i.b, 208               ; 2 uses
  %.val908 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.bk
  store i64 0, ptr %i.bl, align 1
  %i.bm = add nuw nsw i64 %i.b, 216               ; 2 uses
  %.val831 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val831, i64 %i.bm
  store i8 0, ptr %i.bn, align 1
  %i.bo = zext i32 %3 to i64
  %.val875 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.bo
  %.0.copyload.i921 = load i64, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i921) #7, !srcloc !22
  %i.bq = lshr i64 %.0.copyload.i921, 32          ; 2 uses
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %.loopexit948, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = trunc i64 %.0.copyload.i921 to i32      ; 2 uses
  %i.bt = shl i32 %i.br, 1
  %i.bu = add i32 %i.bt, %i.bs
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.0791 = phi i32 [ %i.bs, %bb.b ], [ %i.ce, %bb.k ] ; 2 uses
  %.0790 = phi i32 [ 0, %bb.b ], [ %i.cd, %bb.k ] ; 8 uses
  %i.bv = zext i32 %.0791 to i64
  %.val920 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val920, i64 %i.bv
  %.0.copyload.i922 = load i16, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i922) #7, !srcloc !23
  switch i16 %.0.copyload.i922, label %.loopexit947 [
    i16 100, label %bb.j
    i16 121, label %bb.h
    i16 117, label %bb.g
    i16 103, label %bb.f
    i16 115, label %bb.i
    i16 105, label %bb.d
    i16 109, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bx = and i32 %.0790, 1
  %.not804 = icmp eq i32 %i.bx, 0
  br i1 %.not804, label %bb.k, label %.loopexit947

bb.e:                                             ; preds = %bb.c
  %i.by = and i32 %.0790, 4
  %.not803 = icmp eq i32 %i.by, 0
  br i1 %.not803, label %bb.k, label %.loopexit947

bb.f:                                             ; preds = %bb.c
  %i.bz = and i32 %.0790, 2
  %.not806 = icmp eq i32 %i.bz, 0
  br i1 %.not806, label %bb.k, label %.loopexit947

bb.g:                                             ; preds = %bb.c
  %i.ca = and i32 %.0790, 8
  %.not807 = icmp eq i32 %i.ca, 0
  br i1 %.not807, label %bb.k, label %.loopexit947

bb.h:                                             ; preds = %bb.c
  %i.cb = and i32 %.0790, 32
  %.not808 = icmp eq i32 %i.cb, 0
  br i1 %.not808, label %bb.k, label %.loopexit947

bb.i:                                             ; preds = %bb.c
  %i.cc = and i32 %.0790, 16
  %.not805 = icmp eq i32 %i.cc, 0
  br i1 %.not805, label %bb.k, label %.loopexit947

bb.j:                                             ; preds = %bb.c
  %.not809 = icmp samesign ult i32 %.0790, 64
  br i1 %.not809, label %bb.k, label %.loopexit947

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0788 = phi i32 [ 64, %bb.j ], [ 32, %bb.h ], [ 8, %bb.g ], [ 2, %bb.f ], [ 16, %bb.i ], [ 1, %bb.d ], [ 4, %bb.e ]
  %i.cd = or i32 %.0788, %.0790                   ; 2 uses
  %i.ce = add i32 %.0791, 2                       ; 2 uses
  %.not810 = icmp eq i32 %i.ce, %i.bu
  br i1 %.not810, label %.loopexit948.loopexit, label %bb.c

.loopexit948.loopexit:                            ; preds = %bb.k
  %i.cf = trunc nuw nsw i32 %i.cd to i8
  br label %.loopexit948

.loopexit948:                                     ; preds = %.loopexit948.loopexit, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.cf, %.loopexit948.loopexit ]
  %.val830 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val830, i64 %i.ak
  store i8 %.1, ptr %i.cg, align 1
  %i.ch = zext i32 %2 to i64                      ; 2 uses
  %.val845 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val845, i64 %i.ch
  %.0.copyload.i923 = load i32, ptr %i.ci, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #7, !srcloc !19
  %.val844 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val844, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.0.copyload.i924 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i924) #7, !srcloc !19
  %i.cl = shl i32 %.0.copyload.i924, 1
  %i.cm = add i32 %i.cl, %.0.copyload.i923        ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !17 ; 4 uses
  %i.cp = add i32 %i.co, -16                      ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !17
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 12               ; 2 uses
  %.val855 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val855, i64 %i.cr
  store i32 0, ptr %i.cs, align 1
  %.val848 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val848, i64 %i.ak
  %.0.copyload.i925 = load i8, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i925) #7, !srcloc !20
  %i.cu = and i8 %.0.copyload.i925, 8
  %i.cv = zext nneg i8 %i.cu to i32               ; 2 uses
  %i.cw = lshr exact i32 %i.cv, 3
  %i.cx = add i32 %i.co, -4
  %i.cy = tail call i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3Aconstants0x3A0x3AErrorType0x20hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3AparseWithBackRefLimit0x3Cchar16_t0x20const0x2A0x3E0x28char16_t0x20const0x2A0x2C0x20char16_t0x20const0x2A0x2C0x20unsigned0x20int0x2C0x20bool0x2C0x20unsigned0x20int0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i923, i32 noundef %i.cm, i32 noundef 65535, i32 noundef %i.cw, i32 noundef %i.cx) ; 3 uses
  %i.cz = add nuw nsw i64 %i.b, 140               ; 2 uses
  %.val843 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val843, i64 %i.cz
  %.0.copyload.i926 = load i32, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #7, !srcloc !19
  %i.db = icmp ugt i32 %.0.copyload.i926, 65535
  br i1 %i.db, label %bb.ah, label %bb.l

bb.l:                                             ; preds = %.loopexit948
  %.not811 = icmp eq i32 %i.cy, 0
  %.val919 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.as
  %.0.copyload.i927 = load i16, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i927) #7, !srcloc !23
  %i.dd = zext i16 %.0.copyload.i927 to i32       ; 2 uses
  %.val842 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val842, i64 %i.cr
  %.0.copyload.i928 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #7, !srcloc !19
  %i.df = icmp ugt i32 %.0.copyload.i928, %i.dd
  %i.dg = and i1 %.not811, %i.df                  ; 2 uses
  %.val847 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val847, i64 %i.ak
  %.0.copyload.i929 = load i8, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i929) #7, !srcloc !20
  %i.di = and i8 %.0.copyload.i929, 8
  %.not812 = icmp eq i8 %i.di, 0
  br i1 %.not812, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.dj = add nuw nsw i64 %i.b, 204               ; 2 uses
  %.val841 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val841, i64 %i.dj
  %.0.copyload.i930 = load i32, ptr %i.dk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i930) #7, !srcloc !19
  %i.dl = icmp ne i32 %.0.copyload.i930, 0        ; 2 uses
  %.val846 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val846, i64 %i.bm
  %.0.copyload.i931 = load i8, ptr %i.dm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i931) #7, !srcloc !20
  %i.dn = icmp ne i8 %.0.copyload.i931, 0
  %i.do = and i1 %i.dl, %i.dn
  %i.dp = or i1 %i.dg, %i.do
  br i1 %i.dp, label %bb.n, label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.dq = zext i8 %.0.copyload.i931 to i32
  %i.dr = select i1 %i.dl, i32 %i.dq, i32 0
  %i.ds = or i32 %i.dr, %i.cv
  %.val854 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val854, i64 %i.cq
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 0, ptr %i.du, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 172
  store i8 0, ptr %i.dw, align 1
  %.val874 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val874, i64 %i.as
  store i16 0, ptr %i.dx, align 1
  %.val853 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val853, i64 %i.cz
  store i32 0, ptr %i.dy, align 1
  %.val840 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.bk
  %.0.copyload.i932 = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #7, !srcloc !19
  %i.ea = or i32 %.0.copyload.i932, %.0.copyload.i930
  %.not813 = icmp eq i32 %i.ea, 0
  br i1 %.not813, label %.loopexit941, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = add i32 %1, 200                         ; 2 uses
  %.val839 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val839, i64 %i.b
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 212
  %.0.copyload.i933 = load i32, ptr %i.ed, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #7, !srcloc !19
  %i.ee = shl i32 %.0.copyload.i930, 2
  %.not814 = icmp ule i32 %.0.copyload.i933, %i.ee
  %i.ef = icmp ult i32 %.0.copyload.i933, 65
  %or.cond = or i1 %.not814, %i.ef
  br i1 %or.cond, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = zext i32 %i.eb to i64                   ; 7 uses
  %i.eh = add nuw nsw i64 %i.eg, 4                ; 3 uses
  %.val838 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val838, i64 %i.eh
  %.0.copyload.i934 = load i32, ptr %i.ei, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #7, !srcloc !19
  %.not815 = icmp eq i32 %.0.copyload.i934, 0
  br i1 %.not815, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = add i32 %.0.copyload.i934, -1
  %i.ek = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ej, i1 false)
  %i.el = sub nsw i32 1, %i.ek
  %i.em = and i32 %i.el, 31
  %i.en = shl nuw i32 1, %i.em
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 64)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0 = phi i32 [ %i.eo, %bb.q ], [ 0, %bb.p ]    ; 5 uses
  %i.ep = add nuw nsw i64 %i.eg, 12               ; 3 uses
  %.val837 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val837, i64 %i.ep
  %.0.copyload.i935 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #7, !srcloc !19
  %i.er = icmp eq i32 %.0, %.0.copyload.i935
  %.val907 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %i.er, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %.val907, i64 %i.eh
  store i64 0, ptr %i.es, align 1
  %.not822 = icmp eq i32 %.0, 0
  br i1 %.not822, label %.loopexit941, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val836 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val836, i64 %i.eg
  %.0.copyload.i936 = load i32, ptr %i.et, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #7, !srcloc !19
  %i.eu = mul i32 %.0, 12                         ; 2 uses
  %i.ev = add i32 %i.eu, -12                      ; 2 uses
  %i.ew = udiv i32 %i.ev, 12
  %i.ex = add nuw nsw i32 %i.ew, 1
  %i.ey = and i32 %i.ex, 7                        ; 7 uses
  %.not823 = icmp eq i32 %i.ey, 0
  br i1 %.not823, label %.loopexit943, label %.preheader942

.preheader942:                                    ; preds = %bb.t
  %i.ez = zext i32 %.0.copyload.i936 to i64
  %.val906 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.ez
  store i64 4294967295, ptr %i.fa, align 1
  %i.fb = add i32 %.0.copyload.i936, 12           ; 2 uses
  %.not824 = icmp eq i32 %i.ey, 1
  br i1 %.not824, label %.loopexit943, label %.preheader942.1

.preheader942.1:                                  ; preds = %.preheader942
  %i.fc = zext i32 %i.fb to i64
  %.val906.1 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val906.1, i64 %i.fc
  store i64 4294967295, ptr %i.fd, align 1
  %i.fe = add i32 %.0.copyload.i936, 24           ; 2 uses
  %.not824.1 = icmp eq i32 %i.ey, 2
  br i1 %.not824.1, label %.loopexit943, label %.preheader942.2

.preheader942.2:                                  ; preds = %.preheader942.1
  %i.ff = zext i32 %i.fe to i64
  %.val906.2 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val906.2, i64 %i.ff
  store i64 4294967295, ptr %i.fg, align 1
  %i.fh = add i32 %.0.copyload.i936, 36           ; 2 uses
  %.not824.2 = icmp eq i32 %i.ey, 3
  br i1 %.not824.2, label %.loopexit943, label %.preheader942.3

.preheader942.3:                                  ; preds = %.preheader942.2
  %i.fi = zext i32 %i.fh to i64
  %.val906.3 = load ptr, ptr %i.a, align 8, !tbaa !18
end_hunk_0
