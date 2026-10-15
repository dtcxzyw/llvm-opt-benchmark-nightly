Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z8RGBtoHSLhhhPhS_S_:bb.a
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
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = zext i8 %0 to i32
  %i.c = mul nuw nsw i32 %i.a, %i.b
  %.lhs.trunc = trunc nuw i32 %i.c to i16
  %i.d = udiv i16 %.lhs.trunc, 255
  %i.e = trunc nuw i16 %i.d to i8
  %i.f = zext i8 %1 to i32
  %i.g = mul nuw nsw i32 %i.a, %i.f
  %.lhs.trunc104 = trunc nuw i32 %i.g to i16
  %i.h = udiv i16 %.lhs.trunc104, 255
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = zext i8 %2 to i32
  %i.k = mul nuw nsw i32 %i.a, %i.j
  %.lhs.trunc106 = trunc nuw i32 %i.k to i16
  %i.l = udiv i16 %.lhs.trunc106, 255
  %i.m = trunc nuw i16 %i.l to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0103 = phi i8 [ %0, %bb.a ], [ %i.e, %bb.b ]  ; 9 uses
  %.0102 = phi i8 [ %1, %bb.a ], [ %i.i, %bb.b ]  ; 8 uses
  %.0101 = phi i8 [ %2, %bb.a ], [ %i.m, %bb.b ]  ; 6 uses
  %i.n = zext i8 %.0103 to i32                    ; 4 uses
  %i.o = zext i8 %.0102 to i32                    ; 4 uses
  %i.p = zext i8 %.0101 to i32                    ; 4 uses
  %i.q = tail call i8 @llvm.umax.i8(i8 %.0102, i8 %.0101) ; 3 uses
  %i.r = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %i.q) ; 6 uses
  br i1 %6, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated29.i = zext i8 %i.r to i32
  %8 = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 %.0103) ; 2 uses
  %.sroa.speculated.i = zext i8 %9 to i32
  %10 = icmp eq i8 %9, %i.r
  %.pre.i = sub nuw nsw i32 %.sroa.speculated29.i, %.sroa.speculated.i ; 4 uses
  br i1 %10, label %_Z8RGBtoHSLhhhPhS_S_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ult i8 %.0103, %i.q
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub nsw i32 %i.o, %i.p
  %i.t = mul nsw i32 %i.s, 255
  %i.u = sdiv i32 %i.t, %.pre.i
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.r, %.0102
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = sub nsw i32 %i.p, %i.n
  %i.x = mul nsw i32 %i.w, 255
  %i.y = sdiv i32 %i.x, %.pre.i
  %i.z = add nsw i32 %i.y, 512
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = sub nsw i32 %i.n, %i.o
  %i.ab = mul nsw i32 %i.aa, 255
  %i.ac = sdiv i32 %i.ab, %.pre.i
  %i.ad = add nsw i32 %i.ac, 1024
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.ae = phi i32 [ %i.u, %bb.f ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ]
  %i.af = sdiv i32 %i.ae, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i

_Z8RGBtoHSLhhhPhS_S_.exit.i:                      ; preds = %bb.d, %bb.j
  %.0100 = phi i32 [ %i.af, %bb.j ], [ 0, %bb.d ]
  %.sroa.speculated77 = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %.0102)
  %.sroa.speculated62 = tail call i8 @llvm.umax.i8(i8 %.sroa.speculated77, i8 %.0101)
  %i.ag = zext i8 %.sroa.speculated62 to i32
  %.sroa.speculated74 = tail call i8 @llvm.umin.i8(i8 %.0102, i8 %.0103)
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.sroa.speculated74)
  %i.ah = zext i8 %.sroa.speculated to i32
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = xor i32 %i.aj, 255
  %spec.select108 = select i1 %7, i32 %i.ak, i32 %i.aj ; 2 uses
  %i.al = and i32 %4, 3
  %i.am = shl i32 %5, 2
  %i.an = and i32 %i.am, 12
  %i.ao = or disjoint i32 %i.an, %i.al            ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !106
  %i.as = mul nsw i32 %i.ar, 17
  %i.at = add nsw i32 %i.as, -128                 ; 3 uses
  %i.au = mul nsw i32 %i.at, 127
  %i.av = sdiv i32 %i.au, 128
  %i.aw = add nsw i32 %i.av, %.pre.i
  %i.ax = icmp sgt i32 %i.aw, 127
  br i1 %i.ax, label %bb.k, label %bb.v

bb.k:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.ay = mul nsw i32 %i.at, 21
  %i.az = sdiv i32 %i.ay, 256
  %i.ba = add nsw i32 %i.az, %.0100
  %i.bb = and i32 %i.ba, 255                      ; 11 uses
  %i.bc = add nsw i32 %i.bb, -244
  %or.cond.i = icmp ult i32 %i.bc, -233
  br i1 %or.cond.i, label %_Z11HueToLetteri.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp samesign ult i32 %i.bb, 32
  br i1 %i.bd, label %_Z11HueToLetteri.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = icmp samesign ult i32 %i.bb, 53
  br i1 %i.be, label %_Z11HueToLetteri.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp samesign ult i32 %i.bb, 74
  br i1 %i.bf, label %_Z11HueToLetteri.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp samesign ult i32 %i.bb, 96
  br i1 %i.bg, label %_Z11HueToLetteri.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp samesign ult i32 %i.bb, 117
  br i1 %i.bh, label %_Z11HueToLetteri.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp samesign ult i32 %i.bb, 138
  br i1 %i.bi, label %_Z11HueToLetteri.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = icmp samesign ult i32 %i.bb, 159
  br i1 %i.bj, label %_Z11HueToLetteri.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp samesign ult i32 %i.bb, 181
  br i1 %i.bk, label %_Z11HueToLetteri.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp samesign ult i32 %i.bb, 202
  br i1 %i.bl, label %_Z11HueToLetteri.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp samesign ult i32 %i.bb, 223
  %spec.select.i = select i1 %i.bm, i8 77, i8 70
  br label %_Z11HueToLetteri.exit

_Z11HueToLetteri.exit:                            ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i8 [ %spec.select.i, %bb.u ], [ 82, %bb.k ], [ 79, %bb.l ], [ 89, %bb.m ], [ 76, %bb.n ], [ 71, %bb.o ], [ 84, %bb.p ], [ 67, %bb.q ], [ 65, %bb.r ], [ 66, %bb.s ], [ 86, %bb.t ]
  %i.bn = xor i32 %i.ao, 10
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = mul i32 %i.bq, 1088
  %i.bs = add i32 %i.br, -8192
  %i.bt = sdiv i32 %i.bs, 256
  %i.bu = add nsw i32 %i.bt, %spec.select108
  %i.bv = icmp slt i32 %i.bu, 80
  %i.bw = select i1 %i.bv, i8 32, i8 0
  %i.bx = or disjoint i8 %i.bw, %.0.i
  br label %_Z17lightnessToLetteri.exit

bb.v:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.by = mul nsw i32 %i.at, 31
  %i.bz = sdiv i32 %i.by, 256
  %i.ca = add nsw i32 %i.bz, %spec.select108      ; 8 uses
  %i.cb = icmp slt i32 %i.ca, 16
  br i1 %i.cb, label %_Z17lightnessToLetteri.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = icmp samesign ult i32 %i.ca, 48
  br i1 %i.cc, label %_Z17lightnessToLetteri.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = icmp samesign ult i32 %i.ca, 80
  br i1 %i.cd, label %_Z17lightnessToLetteri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp samesign ult i32 %i.ca, 112
  br i1 %i.ce, label %_Z17lightnessToLetteri.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = icmp samesign ult i32 %i.ca, 144
  br i1 %i.cf, label %_Z17lightnessToLetteri.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp samesign ult i32 %i.ca, 176
  br i1 %i.cg, label %_Z17lightnessToLetteri.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = icmp samesign ult i32 %i.ca, 208
  br i1 %i.ch, label %_Z17lightnessToLetteri.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp samesign ult i32 %i.ca, 240
  %..i38 = select i1 %i.ci, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.ad:                                            ; preds = %bb.c
  %11 = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 %.0103) ; 2 uses
  %13 = icmp eq i8 %12, %i.r
  br i1 %13, label %_Z11HueToLetteri.exit46.thread, label %bb.ae

_Z11HueToLetteri.exit46.thread:                   ; preds = %bb.ad
  %i.cj = sext i1 %7 to i8
  %spec.select109118 = xor i8 %.0103, %i.cj
  br label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated50.i = zext i8 %i.r to i32     ; 2 uses
  %.sroa.speculated.i40 = zext i8 %12 to i32      ; 2 uses
  %i.ck = add nuw nsw i32 %.sroa.speculated.i40, %.sroa.speculated50.i ; 4 uses
  %i.cl = sub nuw nsw i32 %.sroa.speculated50.i, %.sroa.speculated.i40 ; 4 uses
  %i.cm = lshr i32 %i.ck, 1
  %i.cn = trunc nuw i32 %i.cm to i8
  %.not.not.i = icmp samesign ult i32 %i.ck, 256
  %i.co = sub nuw nsw i32 512, %i.ck
  %i.cp = select i1 %.not.not.i, i32 %i.ck, i32 %i.co
  %i.cq = trunc nuw nsw i32 %i.cl to i16
  %.lhs.trunc.i41 = mul nuw i16 %i.cq, 255
  %.rhs.trunc.i42 = trunc nuw nsw i32 %i.cp to i16
  %i.cr = udiv i16 %.lhs.trunc.i41, %.rhs.trunc.i42
  %.not.i = icmp ult i8 %.0103, %i.q
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = sub nsw i32 %i.o, %i.p
  %i.ct = mul nsw i32 %i.cs, 255
  %i.cu = sdiv i32 %i.ct, %i.cl
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cv = icmp eq i8 %i.r, %.0102
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cw = sub nsw i32 %i.p, %i.n
  %i.cx = mul nsw i32 %i.cw, 255
  %i.cy = sdiv i32 %i.cx, %i.cl
  %i.cz = add nsw i32 %i.cy, 512
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.da = sub nsw i32 %i.n, %i.o
  %i.db = mul nsw i32 %i.da, 255
  %i.dc = sdiv i32 %i.db, %i.cl
  %i.dd = add nsw i32 %i.dc, 1024
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.af, %bb.ah, %bb.ai
  %i.de = phi i32 [ %i.cu, %bb.af ], [ %i.cz, %bb.ah ], [ %i.dd, %bb.ai ]
  %i.df = sdiv i32 %i.de, 6
  %i.dg = and i32 %i.df, 255                      ; 11 uses
  %i.dh = and i16 %i.cr, 192
  %i.di = icmp eq i16 %i.dh, 0
  %i.dj = sext i1 %7 to i8
  %spec.select109 = xor i8 %i.cn, %i.dj           ; 3 uses
  %i.dk = add nsw i32 %i.dg, -244
  %or.cond.i43 = icmp ult i32 %i.dk, -233
  br i1 %or.cond.i43, label %_Z11HueToLetteri.exit46, label %bb.aj

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.dl = icmp samesign ult i32 %i.dg, 32
  br i1 %i.dl, label %_Z11HueToLetteri.exit46, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = icmp samesign ult i32 %i.dg, 53
  br i1 %i.dm, label %_Z11HueToLetteri.exit46, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = icmp samesign ult i32 %i.dg, 74
  br i1 %i.dn, label %_Z11HueToLetteri.exit46, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = icmp samesign ult i32 %i.dg, 96
  br i1 %i.do, label %_Z11HueToLetteri.exit46, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = icmp samesign ult i32 %i.dg, 117
  br i1 %i.dp, label %_Z11HueToLetteri.exit46, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dq = icmp samesign ult i32 %i.dg, 138
  br i1 %i.dq, label %_Z11HueToLetteri.exit46, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = icmp samesign ult i32 %i.dg, 159
  br i1 %i.dr, label %_Z11HueToLetteri.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = icmp samesign ult i32 %i.dg, 181
  br i1 %i.ds, label %_Z11HueToLetteri.exit46, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = icmp samesign ult i32 %i.dg, 202
  br i1 %i.dt, label %_Z11HueToLetteri.exit46, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = icmp samesign ult i32 %i.dg, 223
  %spec.select.i44 = select i1 %i.du, i8 77, i8 70
  br label %_Z11HueToLetteri.exit46

_Z11HueToLetteri.exit46:                          ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i45 = phi i8 [ %spec.select.i44, %bb.as ], [ 82, %_Z8RGBtoHSLhhhPhS_S_.exit ], [ 79, %bb.aj ], [ 89, %bb.ak ], [ 76, %bb.al ], [ 71, %bb.am ], [ 84, %bb.an ], [ 67, %bb.ao ], [ 65, %bb.ap ], [ 66, %bb.aq ], [ 86, %bb.ar ] ; 2 uses
  %i.dv = add i8 %spec.select109, 23
  %or.cond = icmp ult i8 %i.dv, 47
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.di
  br i1 %or.cond5, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_Z11HueToLetteri.exit46.thread, %_Z11HueToLetteri.exit46
  %spec.select109121127 = phi i8 [ %spec.select109118, %_Z11HueToLetteri.exit46.thread ], [ %spec.select109, %_Z11HueToLetteri.exit46 ] ; 8 uses
  %i.dw = icmp ult i8 %spec.select109121127, 16
  br i1 %i.dw, label %_Z17lightnessToLetteri.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = icmp ult i8 %spec.select109121127, 48
  br i1 %i.dx, label %_Z17lightnessToLetteri.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dy = icmp ult i8 %spec.select109121127, 80
  br i1 %i.dy, label %_Z17lightnessToLetteri.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dz = icmp ult i8 %spec.select109121127, 112
  br i1 %i.dz, label %_Z17lightnessToLetteri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ea = icmp ult i8 %spec.select109121127, -112
  br i1 %i.ea, label %_Z17lightnessToLetteri.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eb = icmp samesign ult i8 %spec.select109121127, -80
  br i1 %i.eb, label %_Z17lightnessToLetteri.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ec = icmp samesign ult i8 %spec.select109121127, -48
  br i1 %i.ec, label %_Z17lightnessToLetteri.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ed = icmp samesign ult i8 %spec.select109121127, -16
  %..i47 = select i1 %i.ed, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.bb:                                            ; preds = %_Z11HueToLetteri.exit46
  %i.ee = or disjoint i8 %.0.i45, 32
  %i.ef = icmp slt i8 %spec.select109, 0
  %spec.select = select i1 %i.ef, i8 %.0.i45, i8 %i.ee
  br label %_Z17lightnessToLetteri.exit

_Z17lightnessToLetteri.exit:                      ; preds = %bb.bb, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_Z11HueToLetteri.exit, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1 = phi i8 [ %..i38, %bb.ac ], [ %i.bx, %_Z11HueToLetteri.exit ], [ 43, %bb.ab ], [ 32, %bb.v ], [ 46, %bb.w ], [ 58, %bb.x ], [ 45, %bb.y ], [ 33, %bb.z ], [ 42, %bb.aa ], [ %spec.select, %bb.bb ], [ 43, %bb.az ], [ 32, %bb.at ], [ 46, %bb.au ], [ 58, %bb.av ], [ 45, %bb.aw ], [ 33, %bb.ax ], [ 42, %bb.ay ], [ %..i47, %bb.ba ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = load ptr, ptr %1, align 8, !tbaa !100
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = mul nsw i32 %3, %2
  %i.h = sext i32 %i.g to i64
  %i.i = udiv i64 %i.f, %i.h                      ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 17 uses
  %i.k = mul i32 %4, %i.j                         ; 2 uses
  %i.l = mul i32 %i.k, %5                         ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc175

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc175:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !100
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !107
  store i8 0, ptr %i.o, align 1, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = add nsw i64 %i.m, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc175
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc175, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc175 ], [ %i.p, %bb.b ]
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc175 ], [ %i.o, %bb.b ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc175 ], [ %i.p, %bb.b ]
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !99
  br i1 %6, label %bb.d, label %.preheader191

.preheader191:                                    ; preds = %bb.c
  %i.y = icmp sgt i32 %5, 0
  br i1 %i.y, label %.lr.ph198, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph198:                                        ; preds = %.preheader191
  %i.z = sitofp i32 %3 to double
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = icmp slt i32 %4, 1
  %i.ac = sitofp i32 %2 to double
  %i.ad = sitofp i32 %4 to double
  %i.ae = icmp slt i32 %i.j, 1
  %brmerge = or i1 %i.ab, %i.ae
  br i1 %brmerge, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.lr.ph198
  %i.af = and i64 %i.i, 2147483647                ; 6 uses
  %i.ag = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !100 ; 2 uses
  %.pre.pre.pre313 = ptrtoaddr ptr %.pre.pre.pre to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  %min.iters.check314 = icmp samesign ult i64 %i.af, 32
end_hunk_0
begin_hunk_1_@_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj:bb.a
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
  br i1 %exitcond.not, label %bb.i, label %bb.n, !llvm.loop !188

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
  %.058169 = phi i32 [ %i.ht, %_ZNSolsEPFRSoS_E.exit107 ], [ 0, %_ZNSolsEPFRSoS_E.exit89.preheader.preheader ] ; 4 uses
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
  %i.dm = zext i8 %i.dl to i32                    ; 3 uses
  %i.dn = zext i8 %i.cz to i32
  %i.do = mul nuw nsw i32 %i.dm, %i.dn
  %.lhs.trunc.i = trunc nuw i32 %i.do to i16
  %i.dp = udiv i16 %.lhs.trunc.i, 255
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = zext i8 %i.dd to i32
  %i.ds = mul nuw nsw i32 %i.dm, %i.dr
  %.lhs.trunc104.i = trunc nuw i32 %i.ds to i16
  %i.dt = udiv i16 %.lhs.trunc104.i, 255
  %i.du = trunc nuw i16 %i.dt to i8
  %i.dv = zext i8 %i.dh to i32
  %i.dw = mul nuw nsw i32 %i.dm, %i.dv
  %.lhs.trunc106.i = trunc nuw i32 %i.dw to i16
  %i.dx = udiv i16 %.lhs.trunc106.i, 255
  %i.dy = trunc nuw i16 %i.dx to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0103.i = phi i8 [ %i.cz, %bb.aa ], [ %i.dq, %bb.ab ] ; 6 uses
  %.0102.i = phi i8 [ %i.dd, %bb.aa ], [ %i.du, %bb.ab ] ; 6 uses
  %.0101.i = phi i8 [ %i.dh, %bb.aa ], [ %i.dy, %bb.ab ] ; 5 uses
  %i.dz = zext i8 %.0103.i to i32                 ; 2 uses
  %i.ea = zext i8 %.0102.i to i32                 ; 2 uses
  %i.eb = zext i8 %.0101.i to i32                 ; 2 uses
  %i.ec = call i8 @llvm.umax.i8(i8 %.0102.i, i8 %.0101.i) ; 2 uses
  %i.ed = call i8 @llvm.umax.i8(i8 %.0103.i, i8 %i.ec) ; 3 uses
  %.sroa.speculated29.i.i = zext i8 %i.ed to i32
  %i.ee = call i8 @llvm.umin.i8(i8 %.0101.i, i8 %.0102.i)
  %i.ef = call i8 @llvm.umin.i8(i8 %i.ee, i8 %.0103.i) ; 2 uses
  %.sroa.speculated.i.i = zext i8 %i.ef to i32
  %5 = icmp eq i8 %i.ef, %i.ed
  %.pre.i.i = sub nuw nsw i32 %.sroa.speculated29.i.i, %.sroa.speculated.i.i ; 4 uses
  br i1 %5, label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i100 = icmp ult i8 %.0103.i, %i.ec
  br i1 %.not.i.i.i100, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = sub nsw i32 %i.ea, %i.eb
  %i.eh = mul nsw i32 %i.eg, 255
  %i.ei = sdiv i32 %i.eh, %.pre.i.i
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.ej = icmp eq i8 %i.ed, %.0102.i
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ek = sub nsw i32 %i.eb, %i.dz
  %i.el = mul nsw i32 %i.ek, 255
  %i.em = sdiv i32 %i.el, %.pre.i.i
  %i.en = add nsw i32 %i.em, 512
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eo = sub nsw i32 %i.dz, %i.ea
  %i.ep = mul nsw i32 %i.eo, 255
  %i.eq = sdiv i32 %i.ep, %.pre.i.i
  %i.er = add nsw i32 %i.eq, 1024
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.es = phi i32 [ %i.ei, %bb.ae ], [ %i.en, %bb.ag ], [ %i.er, %bb.ah ]
  %i.et = sdiv i32 %i.es, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i

_Z8RGBtoHSLhhhPhS_S_.exit.i.i:                    ; preds = %bb.ai, %bb.ac
  %.0100.i = phi i32 [ %i.et, %bb.ai ], [ 0, %bb.ac ]
  %.sroa.speculated77.i = call i8 @llvm.umax.i8(i8 %.0103.i, i8 %.0102.i)
  %.sroa.speculated62.i = call i8 @llvm.umax.i8(i8 %.sroa.speculated77.i, i8 %.0101.i)
  %i.eu = zext i8 %.sroa.speculated62.i to i32
  %.sroa.speculated74.i = call i8 @llvm.umin.i8(i8 %.0102.i, i8 %.0103.i)
  %.sroa.speculated.i = call i8 @llvm.umin.i8(i8 %.0101.i, i8 %.sroa.speculated74.i)
  %i.ev = zext i8 %.sroa.speculated.i to i32
  %i.ew = add nuw nsw i32 %i.eu, %i.ev
  %i.ex = lshr i32 %i.ew, 1                       ; 2 uses
  %i.ey = and i32 %i.ct, 3
  %i.ez = or disjoint i32 %i.ey, %i.cq            ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !106
  %i.fd = mul nsw i32 %i.fc, 17
  %i.fe = add nsw i32 %i.fd, -128                 ; 3 uses
  %i.ff = mul nsw i32 %i.fe, 127
  %i.fg = sdiv i32 %i.ff, 128
  %i.fh = add nsw i32 %i.fg, %.pre.i.i
  %i.fi = icmp sgt i32 %i.fh, 127
  br i1 %i.fi, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.fj = mul nsw i32 %i.fe, 21
  %i.fk = sdiv i32 %i.fj, 256
  %i.fl = add nsw i32 %i.fk, %.0100.i
  %i.fm = and i32 %i.fl, 255                      ; 11 uses
  %i.fn = add nsw i32 %i.fm, -244
  %or.cond.i.i = icmp ult i32 %i.fn, -233
  br i1 %or.cond.i.i, label %_Z11HueToLetteri.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = icmp samesign ult i32 %i.fm, 32
  br i1 %i.fo, label %_Z11HueToLetteri.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = icmp samesign ult i32 %i.fm, 53
  br i1 %i.fp, label %_Z11HueToLetteri.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fq = icmp samesign ult i32 %i.fm, 74
  br i1 %i.fq, label %_Z11HueToLetteri.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = icmp samesign ult i32 %i.fm, 96
  br i1 %i.fr, label %_Z11HueToLetteri.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = icmp samesign ult i32 %i.fm, 117
  br i1 %i.fs, label %_Z11HueToLetteri.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = icmp samesign ult i32 %i.fm, 138
  br i1 %i.ft, label %_Z11HueToLetteri.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = icmp samesign ult i32 %i.fm, 159
  br i1 %i.fu, label %_Z11HueToLetteri.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = icmp samesign ult i32 %i.fm, 181
  br i1 %i.fv, label %_Z11HueToLetteri.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = icmp samesign ult i32 %i.fm, 202
  br i1 %i.fw, label %_Z11HueToLetteri.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = icmp samesign ult i32 %i.fm, 223
  %spec.select.i.i = select i1 %i.fx, i8 77, i8 70
  br label %_Z11HueToLetteri.exit.i

_Z11HueToLetteri.exit.i:                          ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i.i = phi i8 [ %spec.select.i.i, %bb.at ], [ 82, %bb.aj ], [ 79, %bb.ak ], [ 89, %bb.al ], [ 76, %bb.am ], [ 71, %bb.an ], [ 84, %bb.ao ], [ 67, %bb.ap ], [ 65, %bb.aq ], [ 66, %bb.ar ], [ 86, %bb.as ]
  %i.fy = xor i32 %i.ez, 10
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !106
  %i.gc = mul i32 %i.gb, 1088
  %i.gd = add i32 %i.gc, -8192
  %i.ge = sdiv i32 %i.gd, 256
  %i.gf = add nsw i32 %i.ge, %i.ex
  %i.gg = icmp slt i32 %i.gf, 80
  %i.gh = select i1 %i.gg, i8 32, i8 0
  %i.gi = or disjoint i8 %i.gh, %.0.i.i
  br label %_Z11RGBtoLetterhhhhjjbb.exit

bb.au:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.gj = mul nsw i32 %i.fe, 31
  %i.gk = sdiv i32 %i.gj, 256
  %i.gl = add nsw i32 %i.gk, %i.ex                ; 8 uses
  %i.gm = icmp slt i32 %i.gl, 16
  br i1 %i.gm, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = icmp samesign ult i32 %i.gl, 48
  br i1 %i.gn, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = icmp samesign ult i32 %i.gl, 80
  br i1 %i.go, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = icmp samesign ult i32 %i.gl, 112
  br i1 %i.gp, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gq = icmp samesign ult i32 %i.gl, 144
  br i1 %i.gq, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gr = icmp samesign ult i32 %i.gl, 176
  br i1 %i.gr, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gs = icmp samesign ult i32 %i.gl, 208
  br i1 %i.gs, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = icmp samesign ult i32 %i.gl, 240
  %..i38.i = select i1 %i.gt, i8 61, i8 35
  br label %_Z11RGBtoLetterhhhhjjbb.exit

_Z11RGBtoLetterhhhhjjbb.exit:                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_Z11HueToLetteri.exit.i
  %.1.i = phi i8 [ %..i38.i, %bb.bb ], [ %i.gi, %_Z11HueToLetteri.exit.i ], [ 43, %bb.ba ], [ 32, %bb.au ], [ 46, %bb.av ], [ 58, %bb.aw ], [ 45, %bb.ax ], [ 33, %bb.ay ], [ 42, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !42
  %i.gu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.gv = getelementptr i8, ptr %i.gu, i64 -24
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !109
  %.not.i101 = icmp eq i64 %i.gz, 0
  br i1 %.not.i101, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.1.i)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond173.not, label %bb.y, label %bb.aa, !llvm.loop !189

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.y
  %i.hd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.he = getelementptr i8, ptr %i.hd, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 240
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i141, label %bb.bg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142
end_hunk_1
