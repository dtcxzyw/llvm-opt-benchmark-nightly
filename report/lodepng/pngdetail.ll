Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z8RGBtoHSLhhhPhS_S_:bb.a
  %i.y = add nsw i32 %i.x, 512
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = sub nsw i32 %i.a, %i.b
  %i.aa = mul nsw i32 %i.z, 255
  %i.ab = sdiv i32 %i.aa, %i.j
  %i.ac = add nsw i32 %i.ab, 1024
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.ad = phi i32 [ %i.t, %bb.d ], [ %i.y, %bb.f ], [ %i.ac, %bb.g ]
  %i.ae = sdiv i32 %i.ad, 6
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %3, align 1, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z8RGBtoHCThhhPhS_S_(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = zext i8 %2 to i32                        ; 2 uses
  %i.d = tail call i8 @llvm.umax.i8(i8 %1, i8 %2) ; 2 uses
  %i.e = tail call i8 @llvm.umax.i8(i8 %0, i8 %i.d) ; 3 uses
  %.sroa.speculated29 = zext i8 %i.e to i32       ; 3 uses
  %i.f = tail call i8 @llvm.umin.i8(i8 %2, i8 %1)
  %i.g = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %0) ; 3 uses
  %.sroa.speculated = zext i8 %i.g to i32         ; 3 uses
  %i.h = icmp eq i8 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !42
  %.pre = sub nuw nsw i32 %.sroa.speculated29, %.sroa.speculated
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i32 %.sroa.speculated29, %.sroa.speculated ; 4 uses
  %.not.i = icmp ult i8 %0, %i.d
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nsw i32 %i.b, %i.c
  %i.k = mul nsw i32 %i.j, 255
  %i.l = sdiv i32 %i.k, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.e, %1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = sub nsw i32 %i.c, %i.a
  %i.o = mul nsw i32 %i.n, 255
  %i.p = sdiv i32 %i.o, %i.i
  %i.q = add nsw i32 %i.p, 512
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = sub nsw i32 %i.a, %i.b
  %i.s = mul nsw i32 %i.r, 255
  %i.t = sdiv i32 %i.s, %i.i
  %i.u = add nsw i32 %i.t, 1024
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.v = phi i32 [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.w = sdiv i32 %i.v, 6
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %3, align 1, !tbaa !42
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.b, %bb.h
  %.pre-phi = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.h ] ; 2 uses
  %i.y = trunc nuw i32 %.pre-phi to i8
  store i8 %i.y, ptr %4, align 1, !tbaa !42
  %i.z = icmp eq i32 %.pre-phi, 255
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.aa = add nuw nsw i32 %.sroa.speculated, 255
  %i.ab = sub nuw nsw i32 %i.aa, %.sroa.speculated29
  %i.ac = zext i8 %i.g to i16
  %.lhs.trunc = mul nuw i16 %i.ac, 255
  %.rhs.trunc = trunc nuw nsw i32 %i.ab to i16
  %i.ad = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.ae = trunc i16 %i.ad to i8
  br label %bb.j

bb.j:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.i
  %i.af = phi i8 [ %i.ae, %bb.i ], [ 0, %_Z8RGBtoHSLhhhPhS_S_.exit ]
  store i8 %i.af, ptr %5, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 65, 90) i8 @_Z11HueToLetteri(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -244
  %or.cond = icmp ult i32 %i.a, -233
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 32
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 53
  br i1 %i.c, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 74
  br i1 %i.d, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 96
  br i1 %i.e, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %0, 117
  br i1 %i.f, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 138
  br i1 %i.g, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ult i32 %0, 159
  br i1 %i.h, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 181
  br i1 %i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 202
  br i1 %i.j, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = icmp samesign ult i32 %0, 223
  %spec.select = select i1 %i.k, i8 77, i8 70
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ %spec.select, %bb.k ], [ 82, %bb.a ], [ 79, %bb.b ], [ 89, %bb.c ], [ 76, %bb.d ], [ 71, %bb.e ], [ 84, %bb.f ], [ 67, %bb.g ], [ 65, %bb.h ], [ 66, %bb.i ], [ 86, %bb.j ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 32, 62) i8 @_Z17lightnessToLetteri(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 16
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 48
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 80
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 112
  br i1 %i.d, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 144
  br i1 %i.e, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %0, 176
  br i1 %i.f, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 208
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ult i32 %0, 240
  %. = select i1 %i.h, i8 61, i8 35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 43, %bb.g ], [ 32, %bb.a ], [ 46, %bb.b ], [ 58, %bb.c ], [ 45, %bb.d ], [ 33, %bb.e ], [ 42, %bb.f ], [ %., %bb.h ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 32, 122) i8 @_Z11RGBtoLetterhhhhjjbb(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i8 %3, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = zext i8 %3 to i32                          ; 3 uses
  %9 = zext i8 %0 to i32
  %10 = mul nuw nsw i32 %8, %9
  %.lhs.trunc = trunc nuw i32 %10 to i16
  %i.a = udiv i16 %.lhs.trunc, 255
  %i.b = trunc nuw i16 %i.a to i8
  %11 = zext i8 %1 to i32
  %12 = mul nuw nsw i32 %8, %11
  %.lhs.trunc104 = trunc nuw i32 %12 to i16
  %i.c = udiv i16 %.lhs.trunc104, 255
  %i.d = trunc nuw i16 %i.c to i8
  %13 = zext i8 %2 to i32
  %14 = mul nuw nsw i32 %8, %13
  %.lhs.trunc106 = trunc nuw i32 %14 to i16
  %i.e = udiv i16 %.lhs.trunc106, 255
  %i.f = trunc nuw i16 %i.e to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0103 = phi i8 [ %0, %bb.a ], [ %i.b, %bb.b ]  ; 9 uses
  %.0102 = phi i8 [ %1, %bb.a ], [ %i.d, %bb.b ]  ; 8 uses
  %.0101 = phi i8 [ %2, %bb.a ], [ %i.f, %bb.b ]  ; 6 uses
  %i.g = zext i8 %.0103 to i32                    ; 4 uses
  %i.h = zext i8 %.0102 to i32                    ; 4 uses
  %i.i = zext i8 %.0101 to i32                    ; 4 uses
  %i.j = tail call i8 @llvm.umax.i8(i8 %.0102, i8 %.0101) ; 3 uses
  %i.k = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %i.j) ; 6 uses
  br i1 %6, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated29.i = zext i8 %i.k to i32
  %i.l = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %i.m = tail call i8 @llvm.umin.i8(i8 %i.l, i8 %.0103) ; 2 uses
  %.sroa.speculated.i = zext i8 %i.m to i32
  %i.n = icmp eq i8 %i.m, %i.k
  %.pre.i = sub nuw nsw i32 %.sroa.speculated29.i, %.sroa.speculated.i ; 4 uses
  br i1 %i.n, label %_Z8RGBtoHSLhhhPhS_S_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ult i8 %.0103, %i.j
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sub nsw i32 %i.h, %i.i
  %i.p = mul nsw i32 %i.o, 255
  %i.q = sdiv i32 %i.p, %.pre.i
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.k, %.0102
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = sub nsw i32 %i.i, %i.g
  %i.t = mul nsw i32 %i.s, 255
  %i.u = sdiv i32 %i.t, %.pre.i
  %i.v = add nsw i32 %i.u, 512
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = sub nsw i32 %i.g, %i.h
  %i.x = mul nsw i32 %i.w, 255
  %i.y = sdiv i32 %i.x, %.pre.i
  %i.z = add nsw i32 %i.y, 1024
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.aa = phi i32 [ %i.q, %bb.f ], [ %i.v, %bb.h ], [ %i.z, %bb.i ]
  %i.ab = sdiv i32 %i.aa, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i

_Z8RGBtoHSLhhhPhS_S_.exit.i:                      ; preds = %bb.d, %bb.j
  %.0100 = phi i32 [ %i.ab, %bb.j ], [ 0, %bb.d ]
  %.sroa.speculated77 = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %.0102)
  %.sroa.speculated62 = tail call i8 @llvm.umax.i8(i8 %.sroa.speculated77, i8 %.0101)
  %i.ac = zext i8 %.sroa.speculated62 to i32
  %.sroa.speculated74 = tail call i8 @llvm.umin.i8(i8 %.0102, i8 %.0103)
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.sroa.speculated74)
  %i.ad = zext i8 %.sroa.speculated to i32
  %i.ae = add nuw nsw i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = xor i32 %i.af, 255
  %spec.select108 = select i1 %7, i32 %i.ag, i32 %i.af ; 2 uses
  %i.ah = and i32 %4, 3
  %i.ai = shl i32 %5, 2
  %i.aj = and i32 %i.ai, 12
  %i.ak = or disjoint i32 %i.aj, %i.ah            ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !106
  %i.ao = mul nsw i32 %i.an, 17
  %i.ap = add nsw i32 %i.ao, -128                 ; 3 uses
  %i.aq = mul nsw i32 %i.ap, 127
  %i.ar = sdiv i32 %i.aq, 128
  %i.as = add nsw i32 %i.ar, %.pre.i
  %i.at = icmp sgt i32 %i.as, 127
  br i1 %i.at, label %bb.k, label %bb.v

bb.k:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.au = mul nsw i32 %i.ap, 21
  %i.av = sdiv i32 %i.au, 256
  %i.aw = add nsw i32 %i.av, %.0100
  %i.ax = and i32 %i.aw, 255                      ; 11 uses
  %i.ay = add nsw i32 %i.ax, -244
  %or.cond.i = icmp ult i32 %i.ay, -233
  br i1 %or.cond.i, label %_Z11HueToLetteri.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp samesign ult i32 %i.ax, 32
  br i1 %i.az, label %_Z11HueToLetteri.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp samesign ult i32 %i.ax, 53
  br i1 %i.ba, label %_Z11HueToLetteri.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp samesign ult i32 %i.ax, 74
  br i1 %i.bb, label %_Z11HueToLetteri.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp samesign ult i32 %i.ax, 96
  br i1 %i.bc, label %_Z11HueToLetteri.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = icmp samesign ult i32 %i.ax, 117
  br i1 %i.bd, label %_Z11HueToLetteri.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = icmp samesign ult i32 %i.ax, 138
  br i1 %i.be, label %_Z11HueToLetteri.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp samesign ult i32 %i.ax, 159
  br i1 %i.bf, label %_Z11HueToLetteri.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp samesign ult i32 %i.ax, 181
  br i1 %i.bg, label %_Z11HueToLetteri.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp samesign ult i32 %i.ax, 202
  br i1 %i.bh, label %_Z11HueToLetteri.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp samesign ult i32 %i.ax, 223
  %spec.select.i = select i1 %i.bi, i8 77, i8 70
  br label %_Z11HueToLetteri.exit

_Z11HueToLetteri.exit:                            ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i8 [ %spec.select.i, %bb.u ], [ 82, %bb.k ], [ 79, %bb.l ], [ 89, %bb.m ], [ 76, %bb.n ], [ 71, %bb.o ], [ 84, %bb.p ], [ 67, %bb.q ], [ 65, %bb.r ], [ 66, %bb.s ], [ 86, %bb.t ]
  %i.bj = xor i32 %i.ak, 10
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !106
  %i.bn = mul i32 %i.bm, 1088
  %i.bo = add i32 %i.bn, -8192
  %i.bp = sdiv i32 %i.bo, 256
  %i.bq = add nsw i32 %i.bp, %spec.select108
  %i.br = icmp slt i32 %i.bq, 80
  %i.bs = select i1 %i.br, i8 32, i8 0
  %i.bt = or disjoint i8 %i.bs, %.0.i
  br label %_Z17lightnessToLetteri.exit

bb.v:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.bu = mul nsw i32 %i.ap, 31
  %i.bv = sdiv i32 %i.bu, 256
  %i.bw = add nsw i32 %i.bv, %spec.select108      ; 8 uses
  %i.bx = icmp slt i32 %i.bw, 16
  br i1 %i.bx, label %_Z17lightnessToLetteri.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = icmp samesign ult i32 %i.bw, 48
  br i1 %i.by, label %_Z17lightnessToLetteri.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = icmp samesign ult i32 %i.bw, 80
  br i1 %i.bz, label %_Z17lightnessToLetteri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp samesign ult i32 %i.bw, 112
  br i1 %i.ca, label %_Z17lightnessToLetteri.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp samesign ult i32 %i.bw, 144
  br i1 %i.cb, label %_Z17lightnessToLetteri.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = icmp samesign ult i32 %i.bw, 176
  br i1 %i.cc, label %_Z17lightnessToLetteri.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = icmp samesign ult i32 %i.bw, 208
  br i1 %i.cd, label %_Z17lightnessToLetteri.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = icmp samesign ult i32 %i.bw, 240
  %..i38 = select i1 %i.ce, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.ad:                                            ; preds = %bb.c
  %i.cf = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %i.cg = tail call i8 @llvm.umin.i8(i8 %i.cf, i8 %.0103) ; 2 uses
  %i.ch = icmp eq i8 %i.cg, %i.k
  br i1 %i.ch, label %_Z11HueToLetteri.exit46.thread, label %bb.ae

_Z11HueToLetteri.exit46.thread:                   ; preds = %bb.ad
  %i.ci = sext i1 %7 to i8
  %spec.select109118 = xor i8 %.0103, %i.ci
  br label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated50.i = zext i8 %i.k to i32     ; 2 uses
  %.sroa.speculated.i40 = zext i8 %i.cg to i32    ; 2 uses
  %i.cj = add nuw nsw i32 %.sroa.speculated.i40, %.sroa.speculated50.i ; 4 uses
end_hunk_0
begin_hunk_1_@_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj:bb.a
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !109
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

bb.h:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.i:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 43, ptr %i.f, align 1, !tbaa !42
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !109
  %.not.i78 = icmp eq i64 %i.ay, 0
  br i1 %.not.i78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.s unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.noexc128, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc126, %bb.f, %bb.d, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.m:                                             ; preds = %.invoke, %.noexc160, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155, %.noexc158, %bb.bt, %.noexc138, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133, %.noexc136, %bb.u, %bb.bl, %bb.bk, %bb.x, %bb.w, %bb.k, %bb.j, %bb.h, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.q
  %.059167 = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.bl, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !42
  %i.bd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !109
  %.not.i83 = icmp eq i64 %i.bi, 0
  br i1 %.not.i83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 45)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bl = add nuw i32 %.059167, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.066
  br i1 %exitcond.not, label %bb.i, label %bb.n, !llvm.loop !189

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.s:                                             ; preds = %bb.j, %bb.k
  %.0.i79 = phi ptr [ %i.az, %bb.j ], [ @_ZSt4cout, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = load ptr, ptr %.0.i79, align 8, !tbaa !17
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %.0.i79, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i130 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i130, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !41
  %.not.i1.i.i132 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i132, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bs)
          to label %.noexc136 unwind label %bb.m

.noexc136:                                        ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133 unwind label %bb.m, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133: ; preds = %.noexc136, %bb.t
  %.0.i.i.i134 = phi i8 [ %i.bw, %bb.t ], [ %i.ca, %.noexc136 ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i79, i8 noundef signext %.0.i.i.i134)
          to label %.noexc138 unwind label %bb.m

.noexc138:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZNSolsEPFRSoS_E.exit89.preheader.preheader unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit89.preheader.preheader:      ; preds = %.noexc138
  %wide.trip.count = zext i32 %.066 to i64
  br label %_ZNSolsEPFRSoS_E.exit89.preheader

bb.v:                                             ; preds = %_ZNSolsEPFRSoS_E.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 43, ptr %i.d, align 1, !tbaa !42
  %i.cd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !109
  %.not.i90 = icmp eq i64 %i.ci, 0
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bm

_ZNSolsEPFRSoS_E.exit89.preheader:                ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader.preheader, %_ZNSolsEPFRSoS_E.exit107
  %.058169 = phi i32 [ %i.hn, %_ZNSolsEPFRSoS_E.exit107 ], [ 0, %_ZNSolsEPFRSoS_E.exit89.preheader.preheader ] ; 4 uses
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cm = mul i32 %.058169, %.067
  %i.cn = udiv i32 %i.cm, %i.ak
  %i.co = mul i32 %i.cn, %.066
  %i.cp = shl nuw i32 %.058169, 2
  %i.cq = and i32 %i.cp, 12
  br label %bb.aa

bb.y:                                             ; preds = %bb.be
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %.loopexit ; 0 uses

bb.z:                                             ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.be
  %indvars.iv = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ], [ %indvars.iv.next, %bb.be ] ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cu = add i32 %i.co, %i.ct
  %i.cv = shl i32 %i.cu, 3                        ; 4 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %.065, align 8, !tbaa !100 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !42  ; 2 uses
  %i.da = or disjoint i32 %i.cv, 2
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !42  ; 2 uses
  %i.de = or disjoint i32 %i.cv, 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !42  ; 2 uses
  %i.di = or disjoint i32 %i.cv, 6
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !42  ; 2 uses
  %.not.i99 = icmp eq i8 %i.dl, -1
  br i1 %.not.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %5 = zext i8 %i.dl to i32                       ; 3 uses
  %6 = zext i8 %i.cz to i32
  %7 = mul nuw nsw i32 %5, %6
  %.lhs.trunc.i = trunc nuw i32 %7 to i16
  %i.dm = udiv i16 %.lhs.trunc.i, 255
  %i.dn = trunc nuw i16 %i.dm to i8
  %8 = zext i8 %i.dd to i32
  %9 = mul nuw nsw i32 %5, %8
  %.lhs.trunc104.i = trunc nuw i32 %9 to i16
  %i.do = udiv i16 %.lhs.trunc104.i, 255
  %i.dp = trunc nuw i16 %i.do to i8
  %10 = zext i8 %i.dh to i32
  %11 = mul nuw nsw i32 %5, %10
  %.lhs.trunc106.i = trunc nuw i32 %11 to i16
  %i.dq = udiv i16 %.lhs.trunc106.i, 255
  %i.dr = trunc nuw i16 %i.dq to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0103.i = phi i8 [ %i.cz, %bb.aa ], [ %i.dn, %bb.ab ] ; 6 uses
  %.0102.i = phi i8 [ %i.dd, %bb.aa ], [ %i.dp, %bb.ab ] ; 6 uses
  %.0101.i = phi i8 [ %i.dh, %bb.aa ], [ %i.dr, %bb.ab ] ; 5 uses
  %i.ds = zext i8 %.0103.i to i32                 ; 2 uses
  %i.dt = zext i8 %.0102.i to i32                 ; 2 uses
  %i.du = zext i8 %.0101.i to i32                 ; 2 uses
  %i.dv = call i8 @llvm.umax.i8(i8 %.0102.i, i8 %.0101.i) ; 2 uses
  %i.dw = call i8 @llvm.umax.i8(i8 %.0103.i, i8 %i.dv) ; 3 uses
  %.sroa.speculated29.i.i = zext i8 %i.dw to i32
  %i.dx = call i8 @llvm.umin.i8(i8 %.0101.i, i8 %.0102.i)
  %i.dy = call i8 @llvm.umin.i8(i8 %i.dx, i8 %.0103.i) ; 2 uses
  %.sroa.speculated.i.i = zext i8 %i.dy to i32
  %i.dz = icmp eq i8 %i.dy, %i.dw
  %.pre.i.i = sub nuw nsw i32 %.sroa.speculated29.i.i, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.dz, label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i100 = icmp ult i8 %.0103.i, %i.dv
  br i1 %.not.i.i.i100, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = sub nsw i32 %i.dt, %i.du
  %i.eb = mul nsw i32 %i.ea, 255
  %i.ec = sdiv i32 %i.eb, %.pre.i.i
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.ed = icmp eq i8 %i.dw, %.0102.i
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = sub nsw i32 %i.du, %i.ds
  %i.ef = mul nsw i32 %i.ee, 255
  %i.eg = sdiv i32 %i.ef, %.pre.i.i
  %i.eh = add nsw i32 %i.eg, 512
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ei = sub nsw i32 %i.ds, %i.dt
  %i.ej = mul nsw i32 %i.ei, 255
  %i.ek = sdiv i32 %i.ej, %.pre.i.i
  %i.el = add nsw i32 %i.ek, 1024
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.em = phi i32 [ %i.ec, %bb.ae ], [ %i.eh, %bb.ag ], [ %i.el, %bb.ah ]
  %i.en = sdiv i32 %i.em, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i

_Z8RGBtoHSLhhhPhS_S_.exit.i.i:                    ; preds = %bb.ai, %bb.ac
  %.0100.i = phi i32 [ %i.en, %bb.ai ], [ 0, %bb.ac ]
  %.sroa.speculated77.i = call i8 @llvm.umax.i8(i8 %.0103.i, i8 %.0102.i)
  %.sroa.speculated62.i = call i8 @llvm.umax.i8(i8 %.sroa.speculated77.i, i8 %.0101.i)
  %i.eo = zext i8 %.sroa.speculated62.i to i32
  %.sroa.speculated74.i = call i8 @llvm.umin.i8(i8 %.0102.i, i8 %.0103.i)
  %.sroa.speculated.i = call i8 @llvm.umin.i8(i8 %.0101.i, i8 %.sroa.speculated74.i)
  %i.ep = zext i8 %.sroa.speculated.i to i32
  %i.eq = add nuw nsw i32 %i.eo, %i.ep
  %i.er = lshr i32 %i.eq, 1                       ; 2 uses
  %i.es = and i32 %i.ct, 3
  %i.et = or disjoint i32 %i.es, %i.cq            ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !106
  %i.ex = mul nsw i32 %i.ew, 17
  %i.ey = add nsw i32 %i.ex, -128                 ; 3 uses
  %i.ez = mul nsw i32 %i.ey, 127
  %i.fa = sdiv i32 %i.ez, 128
  %i.fb = add nsw i32 %i.fa, %.pre.i.i
  %i.fc = icmp sgt i32 %i.fb, 127
  br i1 %i.fc, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.fd = mul nsw i32 %i.ey, 21
  %i.fe = sdiv i32 %i.fd, 256
  %i.ff = add nsw i32 %i.fe, %.0100.i
  %i.fg = and i32 %i.ff, 255                      ; 11 uses
  %i.fh = add nsw i32 %i.fg, -244
  %or.cond.i.i = icmp ult i32 %i.fh, -233
  br i1 %or.cond.i.i, label %_Z11HueToLetteri.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = icmp samesign ult i32 %i.fg, 32
  br i1 %i.fi, label %_Z11HueToLetteri.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = icmp samesign ult i32 %i.fg, 53
  br i1 %i.fj, label %_Z11HueToLetteri.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fk = icmp samesign ult i32 %i.fg, 74
  br i1 %i.fk, label %_Z11HueToLetteri.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = icmp samesign ult i32 %i.fg, 96
  br i1 %i.fl, label %_Z11HueToLetteri.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = icmp samesign ult i32 %i.fg, 117
  br i1 %i.fm, label %_Z11HueToLetteri.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = icmp samesign ult i32 %i.fg, 138
  br i1 %i.fn, label %_Z11HueToLetteri.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp samesign ult i32 %i.fg, 159
  br i1 %i.fo, label %_Z11HueToLetteri.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = icmp samesign ult i32 %i.fg, 181
  br i1 %i.fp, label %_Z11HueToLetteri.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = icmp samesign ult i32 %i.fg, 202
  br i1 %i.fq, label %_Z11HueToLetteri.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = icmp samesign ult i32 %i.fg, 223
  %spec.select.i.i = select i1 %i.fr, i8 77, i8 70
  br label %_Z11HueToLetteri.exit.i

_Z11HueToLetteri.exit.i:                          ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i.i = phi i8 [ %spec.select.i.i, %bb.at ], [ 82, %bb.aj ], [ 79, %bb.ak ], [ 89, %bb.al ], [ 76, %bb.am ], [ 71, %bb.an ], [ 84, %bb.ao ], [ 67, %bb.ap ], [ 65, %bb.aq ], [ 66, %bb.ar ], [ 86, %bb.as ]
  %i.fs = xor i32 %i.et, 10
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !106
  %i.fw = mul i32 %i.fv, 1088
  %i.fx = add i32 %i.fw, -8192
  %i.fy = sdiv i32 %i.fx, 256
  %i.fz = add nsw i32 %i.fy, %i.er
  %i.ga = icmp slt i32 %i.fz, 80
  %i.gb = select i1 %i.ga, i8 32, i8 0
  %i.gc = or disjoint i8 %i.gb, %.0.i.i
  br label %_Z11RGBtoLetterhhhhjjbb.exit

bb.au:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.gd = mul nsw i32 %i.ey, 31
  %i.ge = sdiv i32 %i.gd, 256
  %i.gf = add nsw i32 %i.ge, %i.er                ; 8 uses
  %i.gg = icmp slt i32 %i.gf, 16
  br i1 %i.gg, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gh = icmp samesign ult i32 %i.gf, 48
  br i1 %i.gh, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gi = icmp samesign ult i32 %i.gf, 80
  br i1 %i.gi, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gj = icmp samesign ult i32 %i.gf, 112
  br i1 %i.gj, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = icmp samesign ult i32 %i.gf, 144
  br i1 %i.gk, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gl = icmp samesign ult i32 %i.gf, 176
  br i1 %i.gl, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = icmp samesign ult i32 %i.gf, 208
  br i1 %i.gm, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = icmp samesign ult i32 %i.gf, 240
  %..i38.i = select i1 %i.gn, i8 61, i8 35
  br label %_Z11RGBtoLetterhhhhjjbb.exit

_Z11RGBtoLetterhhhhjjbb.exit:                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_Z11HueToLetteri.exit.i
  %.1.i = phi i8 [ %..i38.i, %bb.bb ], [ %i.gc, %_Z11HueToLetteri.exit.i ], [ 43, %bb.ba ], [ 32, %bb.au ], [ 46, %bb.av ], [ 58, %bb.aw ], [ 45, %bb.ax ], [ 33, %bb.ay ], [ 42, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !42
  %i.go = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.gp = getelementptr i8, ptr %i.go, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !109
  %.not.i101 = icmp eq i64 %i.gt, 0
  br i1 %.not.i101, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.1.i)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bc, %bb.bd
end_hunk_1
