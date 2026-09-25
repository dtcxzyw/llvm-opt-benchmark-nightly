Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/a_utf8?download=true
begin_hunk_0_@UTF8_getc:bb.a
  br i1 %.not85, label %bb.y, label %bb.am

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8   ; 2 uses
  %.not86 = icmp slt i8 %i.bq, -64
  br i1 %.not86, label %bb.z, label %bb.am

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8   ; 2 uses
  %.not87 = icmp slt i8 %i.bs, -64
  br i1 %.not87, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.bt = shl nuw i32 %i.c, 24
  %i.bu = and i32 %i.bt, 50331648
  %i.bv = shl nuw nsw i32 %i.bl, 18
  %i.bw = and i32 %i.bv, 16515072
  %i.bx = or disjoint i32 %i.bw, %i.bu            ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, 2097152
  br i1 %i.by, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = and i8 %i.bo, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 12
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = and i8 %i.bq, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 6
  %i.cg = and i8 %i.bs, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.cc
  br label %bb.al

bb.ac:                                            ; preds = %bb.u
  %i.ck = and i32 %i.c, 254
  %i.cl = icmp eq i32 %i.ck, 252
  br i1 %i.cl, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cm = icmp samesign ult i32 %1, 6
  br i1 %i.cm, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = and i32 %i.cp, 192
  %.not = icmp eq i32 %i.cq, 128
  br i1 %.not, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8   ; 2 uses
  %.not80 = icmp slt i8 %i.cs, -64
  br i1 %.not80, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8   ; 2 uses
  %.not81 = icmp slt i8 %i.cu, -64
  br i1 %.not81, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8   ; 2 uses
  %.not82 = icmp slt i8 %i.cw, -64
  br i1 %.not82, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8   ; 2 uses
  %.not83 = icmp slt i8 %i.cy, -64
  br i1 %.not83, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cz = shl i32 %i.c, 30
  %i.da = shl nuw i32 %i.cp, 24
  %i.db = and i32 %i.da, 1056964608
  %i.dc = or disjoint i32 %i.db, %i.cz            ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 67108864
  br i1 %i.dd, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = and i8 %i.cs, 63
  %i.df = zext nneg i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 18
  %i.dh = and i8 %i.cu, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 12
  %i.dk = or disjoint i32 %i.dj, %i.dg
  %i.dl = or disjoint i32 %i.dk, %i.dc
  %i.dm = and i8 %i.cw, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 6
  %i.dp = and i8 %i.cy, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq
  %i.ds = or disjoint i32 %i.dr, %i.dl
  br label %bb.al

bb.al:                                            ; preds = %bb.b, %bb.g, %bb.t, %bb.ak, %bb.ab, %bb.m
  %.072 = phi i32 [ %i.ds, %bb.ak ], [ %i.p, %bb.g ], [ %i.ah, %bb.m ], [ %i.bf, %bb.t ], [ %i.cj, %bb.ab ], [ %i.c, %bb.b ]
  %.0 = phi i32 [ 6, %bb.ak ], [ 2, %bb.g ], [ 3, %bb.m ], [ 4, %bb.t ], [ 5, %bb.ab ], [ 1, %bb.b ]
  store i32 %.072, ptr %2, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.ac, %bb.aj, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ad, %bb.aa, %bb.w, %bb.x, %bb.y, %bb.z, %bb.v, %bb.s, %bb.p, %bb.q, %bb.r, %bb.o, %bb.l, %bb.j, %bb.k, %bb.i, %bb.f, %bb.e, %bb.d, %bb.a, %bb.al
  %.073 = phi i32 [ -4, %bb.aj ], [ %.0, %bb.al ], [ 0, %bb.a ], [ -1, %bb.d ], [ -3, %bb.e ], [ -4, %bb.f ], [ -1, %bb.i ], [ -3, %bb.j ], [ -4, %bb.l ], [ -1, %bb.o ], [ -3, %bb.p ], [ -4, %bb.s ], [ -1, %bb.v ], [ -3, %bb.w ], [ -4, %bb.aa ], [ -1, %bb.ad ], [ -3, %bb.ae ], [ -3, %bb.k ], [ -3, %bb.r ], [ -3, %bb.q ], [ -3, %bb.z ], [ -3, %bb.y ], [ -3, %bb.x ], [ -3, %bb.ai ], [ -3, %bb.ah ], [ -3, %bb.ag ], [ -3, %bb.af ], [ -2, %bb.ac ]
  ret i32 %.073
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -1, 7) i32 @UTF8_putc(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.s, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 128
  br i1 %i.b, label %bb.s, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.c = icmp ult i32 %2, 128
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.d = trunc nuw nsw i32 %2 to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !8
  br label %bb.s

bb.e:                                             ; preds = %.thread, %bb.c
  %.06074 = phi i32 [ %1, %.thread ], [ 6, %bb.c ] ; 5 uses
  %i.e = icmp ult i32 %2, 2048
  br i1 %i.e, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %.06074, 2         ; 2 uses
  %brmerge = or i1 %.not, %i.f
  %.mux = select i1 %i.f, i32 -1, i32 2
  br i1 %brmerge, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = lshr i32 %2, 6
  %i.h = trunc nuw nsw i32 %i.g to i8
  %i.i = or disjoint i8 %i.h, -64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %0, align 1, !tbaa !8
  %i.k = trunc i32 %2 to i8
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  store i8 %i.m, ptr %i.j, align 1, !tbaa !8
  br label %bb.s

bb.h:                                             ; preds = %bb.e
  %i.n = icmp ult i32 %2, 65536
  br i1 %i.n, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i32 %.06074, 3         ; 2 uses
  %brmerge65 = or i1 %.not, %i.o
  %.mux66 = select i1 %i.o, i32 -1, i32 3
  br i1 %brmerge65, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = lshr i32 %2, 12
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %0, align 1, !tbaa !8
  %i.t = lshr i32 %2, 6
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %i.s, align 1, !tbaa !8
  %i.y = trunc i32 %2 to i8
  %i.z = and i8 %i.y, 63
  %i.aa = or disjoint i8 %i.z, -128
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !8
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.ab = icmp ult i32 %2, 2097152
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp samesign ult i32 %.06074, 4        ; 2 uses
  %brmerge67 = or i1 %.not, %i.ac
  %.mux68 = select i1 %i.ac, i32 -1, i32 4
  br i1 %brmerge67, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = lshr i32 %2, 6
  %3 = lshr i32 %2, 12
  %i.ae = lshr i32 %2, 18
  %i.af = trunc i32 %2 to i8
  %4 = trunc i32 %i.ad to i8
  %i.ag = trunc i32 %3 to i8
  %i.ah = trunc nuw nsw i32 %i.ae to i8
  %i.ai = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.ag, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %4, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.af, i64 3
  %i.am = and <4 x i8> %i.al, <i8 -1, i8 63, i8 63, i8 63>
  %i.an = or disjoint <4 x i8> %i.am, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.an, ptr %0, align 1, !tbaa !8
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.ao = icmp ult i32 %2, 67108864
  br i1 %i.ao, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ap = icmp samesign ult i32 %.06074, 5        ; 2 uses
  %brmerge69 = or i1 %.not, %i.ap
  %.mux70 = select i1 %i.ap, i32 -1, i32 5
  br i1 %brmerge69, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i32 %2, 24
  %i.ar = lshr i32 %2, 18
  %i.as = lshr i32 %2, 12
  %i.at = lshr i32 %2, 6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = trunc i32 %i.at to i8
  %i.aw = trunc i32 %i.as to i8
  %i.ax = trunc nuw i32 %i.ar to i8
  %i.ay = trunc nuw nsw i32 %i.aq to i8
  %i.az = insertelement <4 x i8> poison, i8 %i.ay, i64 0
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.ax, i64 1
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.aw, i64 2
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.av, i64 3
  %i.bd = and <4 x i8> %i.bc, <i8 -1, i8 63, i8 63, i8 63>
  %i.be = or disjoint <4 x i8> %i.bd, <i8 -8, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.be, ptr %0, align 1, !tbaa !8
  %i.bf = trunc i32 %2 to i8
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  store i8 %i.bh, ptr %i.au, align 1, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.bi = icmp samesign ult i32 %.06074, 6        ; 2 uses
  %brmerge71 = or i1 %.not, %i.bi
  %.mux72 = select i1 %i.bi, i32 -1, i32 6
  br i1 %brmerge71, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = lshr i32 %2, 30
  %i.bk = lshr i32 %2, 24
  %i.bl = lshr i32 %2, 18
  %i.bm = lshr i32 %2, 12
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = trunc i32 %i.bm to i8
  %i.bp = trunc i32 %i.bl to i8
  %i.bq = trunc nuw i32 %i.bk to i8
  %i.br = trunc nuw nsw i32 %i.bj to i8
  %i.bs = insertelement <4 x i8> poison, i8 %i.br, i64 0
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.bq, i64 1
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bp, i64 2
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.bo, i64 3
  %i.bw = and <4 x i8> %i.bv, <i8 1, i8 63, i8 63, i8 63>
  %i.bx = or disjoint <4 x i8> %i.bw, <i8 -4, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bx, ptr %0, align 1, !tbaa !8
  %i.by = lshr i32 %2, 6
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 63
  %i.cb = or disjoint i8 %i.ca, -128
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cb, ptr %i.bn, align 1, !tbaa !8
  %i.cd = trunc i32 %2 to i8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.ce, -128
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.q, %bb.o, %bb.l, %bb.i, %bb.f, %bb.r, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ %.mux72, %bb.q ], [ -1, %bb.b ], [ 2, %bb.g ], [ %.mux, %bb.f ], [ 3, %bb.j ], [ %.mux66, %bb.i ], [ 6, %bb.r ], [ %.mux68, %bb.l ], [ 5, %bb.p ], [ %.mux70, %bb.o ], [ 4, %bb.m ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
