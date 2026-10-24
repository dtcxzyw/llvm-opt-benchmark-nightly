Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 308
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 324
begin_hunk_0_@_ZN2c417decode_code_pointENS_15basic_substringIcEENS0_IKcEE:bb.a
  %i.u = icmp ult i32 %i.i, 65536
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i32 %i.i, 12
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -32
  store i8 %i.x, ptr %0, align 1, !tbaa !87, !alias.scope !376
  %i.y = lshr i32 %i.i, 6
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !87, !alias.scope !376
  %i.ad = trunc i32 %i.i to i8
  %i.ae = and i8 %i.ad, 63
  %i.af = or disjoint i8 %i.ae, -128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !87, !alias.scope !376
  br label %_ZN2c417decode_code_pointEPhmj.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ult i32 %i.i, 1114112
  br i1 %i.ah, label %bb.i, label %_ZN2c417decode_code_pointEPhmj.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = lshr i32 %i.i, 18
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = lshr i32 %i.i, 12
  %i.al = trunc i32 %i.ak to i8
  %i.am = lshr i32 %i.i, 6
  %i.an = trunc i32 %i.am to i8
  %i.ao = trunc i32 %i.i to i8
  %i.ap = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.al, i64 1
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 2
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 3
  %i.at = and <4 x i8> %i.as, <i8 -1, i8 63, i8 63, i8 63>
  %i.au = or disjoint <4 x i8> %i.at, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.au, ptr %0, align 1, !tbaa !87, !alias.scope !376
  br label %_ZN2c417decode_code_pointEPhmj.exit

_ZN2c417decode_code_pointEPhmj.exit:              ; preds = %._crit_edge.thread, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i8 = phi i64 [ 1, %._crit_edge.thread ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.i ], [ 0, %bb.h ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.0.i8, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 5) i64 @_ZN2c413first_non_bomENS_15basic_substringIKcEE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 2                       ; 3 uses
  %.pr.pre = load i8, ptr %0, align 1, !tbaa !87  ; 7 uses
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i8 %.pr.pre, -17
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !87
  %i.e = icmp eq i8 %i.d, -69
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !87
  %i.h = icmp eq i8 %i.g, -65
  br i1 %i.h, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.i = icmp ugt i64 %1, 3
  br i1 %i.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  switch i8 %.pr.pre, label %.critedge [
    i8 0, label %bb.h
    i8 -1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !87
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.i, label %.critedge50.thread

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, -2
  br i1 %i.o, label %bb.j, label %.critedge50.thread

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.ae, label %.critedge50.thread

bb.k:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.l, label %.critedge.thread60

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %.critedge.thread60

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.ae, label %.critedge.thread60

.critedge:                                        ; preds = %bb.f, %bb.b, %bb.g
  %i.ab = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 3 uses
  switch i8 %.pr.pre, label %.thread52 [
    i8 -2, label %bb.n
    i8 -1, label %.critedge.thread60
  ]

bb.n:                                             ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %bb.ae, label %.thread52

.critedge.thread60:                               ; preds = %bb.m, %bb.l, %bb.k, %.critedge
  %i.af = phi i1 [ %i.ab, %.critedge ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !87
  %i.ai = icmp eq i8 %i.ah, -2
  br i1 %i.ai, label %bb.ae, label %.thread52

.thread52:                                        ; preds = %.critedge, %bb.n, %.critedge.thread60
  %i.aj = phi i1 [ %i.af, %.critedge.thread60 ], [ %i.ab, %.critedge ], [ %i.ab, %bb.n ] ; 2 uses
  br i1 %.not, label %.critedge48, label %bb.o

bb.o:                                             ; preds = %.thread52
  switch i8 %.pr.pre, label %.critedge48 [
    i8 43, label %bb.p
    i8 -9, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %bb.q, label %.critedge50.thread

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  %i.ap = icmp eq i8 %i.ao, 118
  br i1 %i.ap, label %bb.ae, label %.critedge50.thread

bb.r:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !87
  %i.as = icmp eq i8 %i.ar, 100
  br i1 %i.as, label %bb.s, label %.critedge50.thread

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87
  %i.av = icmp eq i8 %i.au, 76
  br i1 %i.av, label %bb.ae, label %.critedge50.thread

.critedge48:                                      ; preds = %bb.o, %.thread52
  %i.aw = icmp eq i8 %.pr.pre, -35
  %or.cond = and i1 %i.aj, %i.aw
  br i1 %or.cond, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.critedge48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !87
  %i.az = icmp eq i8 %i.ay, 115
  br i1 %i.az, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !87
  %i.bc = icmp eq i8 %i.bb, 102
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  %i.bf = icmp eq i8 %i.be, 115
  br i1 %i.bf, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %.critedge48
  br i1 %.not, label %.critedge50, label %.thread62

.thread62:                                        ; preds = %bb.w
  switch i8 %.pr.pre, label %.critedge50 [
    i8 14, label %bb.x
    i8 -5, label %bb.z
  ]

bb.x:                                             ; preds = %.thread62
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !87
  %i.bi = icmp eq i8 %i.bh, -2
  br i1 %i.bi, label %bb.y, label %.critedge50.thread

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !87
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.ae, label %.critedge50.thread

bb.z:                                             ; preds = %.thread62
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !87
  %i.bo = icmp eq i8 %i.bn, -18
  br i1 %i.bo, label %bb.aa, label %.critedge50.thread

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87
  %i.br = icmp eq i8 %i.bq, 40
  br i1 %i.br, label %bb.ae, label %.critedge50.thread

.critedge50:                                      ; preds = %.thread62, %bb.w
  %i.bs = icmp eq i8 %.pr.pre, -124
  %or.cond57 = and i1 %i.aj, %i.bs
  br i1 %or.cond57, label %bb.ab, label %.critedge50.thread

bb.ab:                                            ; preds = %.critedge50
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !87
  %i.bv = icmp eq i8 %i.bu, 49
  br i1 %i.bv, label %bb.ac, label %.critedge50.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !87
  %i.by = icmp eq i8 %i.bx, -107
  br i1 %i.by, label %bb.ad, label %.critedge50.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !87
  %i.cb = icmp eq i8 %i.ca, 51
  br i1 %i.cb, label %bb.ae, label %.critedge50.thread

.critedge50.thread:                               ; preds = %bb.q, %bb.p, %bb.s, %bb.r, %bb.h, %bb.i, %bb.j, %bb.z, %bb.aa, %bb.x, %bb.y, %.critedge50, %bb.ab, %bb.ac, %bb.ad
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %bb.y, %bb.v, %bb.s, %bb.q, %.critedge.thread60, %bb.n, %bb.m, %bb.j, %bb.e, %bb.a, %.critedge50.thread
  %.0 = phi i64 [ 0, %.critedge50.thread ], [ 0, %bb.a ], [ 3, %bb.e ], [ 4, %bb.j ], [ 4, %bb.m ], [ 2, %bb.n ], [ 2, %.critedge.thread60 ], [ 3, %bb.q ], [ 3, %bb.s ], [ 4, %bb.v ], [ 3, %bb.y ], [ 3, %bb.aa ], [ 4, %bb.ad ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN2c47get_bomENS_15basic_substringIcEE(ptr %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2c413first_non_bomENS_15basic_substringIKcEE(ptr %0, i64 %1)
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN2c47get_bomENS_15basic_substringIKcEE(ptr %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2c413first_non_bomENS_15basic_substringIKcEE(ptr %0, i64 %1)
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN2c48skip_bomENS_15basic_substringIcEE(ptr %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2c413first_non_bomENS_15basic_substringIKcEE(ptr %0, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = sub i64 %1, %i.a
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN2c48skip_bomENS_15basic_substringIKcEE(ptr %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2c413first_non_bomENS_15basic_substringIKcEE(ptr %0, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = sub i64 %1, %i.a
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN2c412base64_validENS_15basic_substringIKcEE(ptr nofree readonly captures(address) %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %1, 3
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not1518 = icmp samesign eq i64 %1, 0
  br i1 %.not1518, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.01119 = phi ptr [ %i.r, %bb.g ], [ %0, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.01119, align 1, !tbaa !87 ; 3 uses
  %i.d = icmp slt i8 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.e = icmp eq i8 %i.c, 61
  br i1 %i.e, label %.lr.ph.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i8 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.01119, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !87    ; 3 uses
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  %i.m = icmp eq i8 %i.k, 61
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext nneg i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.01119, i64 2 ; 2 uses
  %.not15.1 = icmp eq ptr %i.r, %i.b
  br i1 %.not15.1, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.d, %.lr.ph, %.lr.ph.1, %bb.f, %bb.g, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %.lr.ph ], [ false, %bb.d ], [ true, %bb.g ], [ false, %.lr.ph.1 ], [ false, %bb.f ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_ZN2c413base64_encodeENS_15basic_substringIcEENS_5blob_IKcEE(ptr nofree writeonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %3, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.092 = phi ptr [ %i.as, %bb.i ], [ %2, %bb.a ] ; 4 uses
  %.07991 = phi i64 [ %i.aq, %bb.i ], [ 0, %bb.a ] ; 6 uses
  %.08090 = phi i64 [ %i.ar, %bb.i ], [ %3, %bb.a ]
  %i.b = load i8, ptr %.092, align 1, !tbaa !87
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 16
  %i.e = getelementptr inbounds nuw i8, ptr %.092, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !87
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = or disjoint i32 %i.h, %i.k
  %i.m = or disjoint i32 %i.h, %i.d
  %i.n = icmp ult i64 %.07991, %1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = lshr i32 %i.c, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.07991
  store i8 %i.r, ptr %i.s, align 1, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = or disjoint i64 %.07991, 1               ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i32 %i.m, 12
  %i.w = and i32 %i.v, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = or disjoint i64 %.07991, 2              ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr i32 %i.l, 6
  %i.ae = and i32 %i.ad, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = or disjoint i64 %.07991, 3              ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i32 %i.k, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !87
end_hunk_0
begin_hunk_1_@_ZN2c43yml4Tree17_next_node_modifyEPNS1_13lookup_resultEPNS1_18_lookup_path_tokenE:bb.a
  %i.gw = getelementptr inbounds nuw [144 x i8], ptr %i.gq, i64 %i.gu
  br i1 %i.gv, label %.thread73.i110, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw [144 x i8], ptr %i.gk, i64 %i.fo
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 128
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !128 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, -1
  %i.hb = getelementptr inbounds nuw [144 x i8], ptr %i.gq, i64 %i.gz
  %.0.i46.i104 = select i1 %i.ha, ptr null, ptr %i.hb ; 2 uses
  %.not41.i105 = icmp eq ptr %i.gq, null
  br i1 %.not41.i105, label %bb.ag, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i106

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i106: ; preds = %bb.af
  %i.hc = getelementptr inbounds nuw [144 x i8], ptr %i.gq, i64 %i.fo
  store i64 %i.fo, ptr %i.gn, align 8, !tbaa !127
  %i.hd = ptrtoint ptr %i.gl to i64
  %i.he = ptrtoint ptr %i.gq to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sdiv exact i64 %i.hf, 144
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i106, %bb.af, %.thread.i114
  %.0.i4672.i107 = phi ptr [ %i.gw, %.thread.i114 ], [ %.0.i46.i104, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i106 ], [ %.0.i46.i104, %bb.af ] ; 3 uses
  %i.hi = phi ptr [ %i.gq, %.thread.i114 ], [ %i.gq, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i106 ], [ null, %bb.af ] ; 3 uses
  %.not42.i108 = icmp eq ptr %.0.i4672.i107, null
  br i1 %.not42.i108, label %.thread73.i110, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i109

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i109: ; preds = %bb.ag
  %i.hj = ptrtoint ptr %.0.i4672.i107 to i64
  %i.hk = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = sdiv exact i64 %i.hl, 144
  store i64 %i.hm, ptr %i.go, align 8, !tbaa !128
  %i.hn = ptrtoint ptr %i.gl to i64
  %i.ho = sub i64 %i.hn, %i.hk
  %i.hp = sdiv exact i64 %i.ho, 144
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i4672.i107, i64 136
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !127
  br label %.thread73.i110

.thread73.i110:                                   ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i109, %bb.ag, %.thread.i114
  %i.hr = phi ptr [ %i.hi, %bb.ag ], [ %i.hi, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i109 ], [ %i.gq, %.thread.i114 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gr, i64 112 ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !119 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, -1
  br i1 %i.hu, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i113, label %bb.ah

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i113: ; preds = %.thread73.i110
  %i.hv = ptrtoint ptr %i.gl to i64
  %i.hw = ptrtoint ptr %i.hr to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = sdiv exact i64 %i.hx, 144               ; 2 uses
  store i64 %i.hy, ptr %i.hs, align 8, !tbaa !119
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 120
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115

bb.ah:                                            ; preds = %.thread73.i110
  %i.ia = load i64, ptr %i.go, align 8, !tbaa !128
  %i.ib = icmp eq i64 %i.ia, %i.ht
  br i1 %i.ib, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i112, label %bb.ai

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i112: ; preds = %bb.ah
  %i.ic = ptrtoint ptr %i.gl to i64
  %i.id = ptrtoint ptr %i.hr to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = sdiv exact i64 %i.ie, 144
  store i64 %i.if, ptr %i.hs, align 8, !tbaa !119
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i112, %bb.ah
  %i.ig = load i64, ptr %i.gn, align 8, !tbaa !127
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gr, i64 120 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !141
  %i.ij = icmp eq i64 %i.ig, %i.ii
  br i1 %i.ij, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i111, label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i111: ; preds = %bb.ai
  %i.ik = ptrtoint ptr %i.gl to i64
  %i.il = ptrtoint ptr %i.hr to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = sdiv exact i64 %i.im, 144
  store i64 %i.in, ptr %i.ih, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115

_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115:      ; preds = %bb.z, %._crit_edge.i.i90, %.lr.ph.split.us.i92, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i111, %bb.ai, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i113, %_ZN2c43yml4Tree6_claimEv.exit102, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit97.thread
  %.161 = phi i64 [ %i.fl, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit97.thread ], [ %.0918.us.i93, %.lr.ph.split.us.i92 ], [ %i.fz, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i111 ], [ %i.fz, %_ZN2c43yml4Tree6_claimEv.exit102 ], [ %i.fz, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i113 ], [ %i.fz, %bb.ai ], [ %.0918.i77, %._crit_edge.i.i90 ], [ %.0918.i77, %bb.z ] ; 2 uses
  %i.io = load ptr, ptr %0, align 8, !tbaa !120
  %i.ip = getelementptr inbounds nuw [144 x i8], ptr %i.io, i64 %.161 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !136
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  store ptr @.str.117, ptr %i.ir, align 8, !tbaa !99
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  store i64 0, ptr %i.is, align 8, !tbaa !92
  %i.it = load i32, ptr %i.ip, align 8, !tbaa !144
  %i.iu = or i32 %i.it, 3
  store i32 %i.iu, ptr %i.ip, align 8, !tbaa !144
  br label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168

bb.aj:                                            ; preds = %bb.a
  %i.iv = load ptr, ptr %4, align 8, !tbaa !99
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !92
  %i.iz = add i64 %i.iy, -2                       ; 3 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %_ZNK2c415basic_substringIKcE4trimEc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %bb.ak
  %.0710.i.i.i = phi i64 [ %i.jd, %bb.ak ], [ 0, %bb.aj ] ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.0710.i.i.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !87
  %.not.i.i.i = icmp eq i8 %i.jc, 32
  br i1 %.not.i.i.i, label %bb.ak, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.jd = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jd, %i.iz
  br i1 %exitcond.not.i.i.i, label %_ZNK2c415basic_substringIKcE4trimEc.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit.i:      ; preds = %.lr.ph.i.i.i
  %.not.not.i.i = icmp eq i64 %.0710.i.i.i, -1    ; 2 uses
  %i.je = sub nuw i64 %i.iz, %.0710.i.i.i         ; 3 uses
  %spec.select.idx.i.i = select i1 %.not.not.i.i, i64 0, i64 %.0710.i.i.i
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 %spec.select.idx.i.i ; 4 uses
  %.not.i10.i.i275 = icmp eq i64 %i.je, 0
  %or.cond = select i1 %.not.not.i.i, i1 true, i1 %.not.i10.i.i275
  br i1 %or.cond, label %_ZNK2c415basic_substringIKcE4trimEc.exit, label %.lr.ph277

.preheader.i.i:                                   ; preds = %.lr.ph277
  %.not.i10.i.i = icmp eq i64 %.09.i.i.i, 0
  br i1 %.not.i10.i.i, label %_ZNK2c415basic_substringIKcE4trimEc.exit, label %.lr.ph277, !llvm.loop !18

.lr.ph277:                                        ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit.i, %.preheader.i.i
  %.09.in.i.i.i276 = phi i64 [ %.09.i.i.i, %.preheader.i.i ], [ %i.je, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i ] ; 3 uses
  %.09.i.i.i = add i64 %.09.in.i.i.i276, -1       ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.09.i.i.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !87
  %.not13.i.i.i = icmp eq i8 %i.jg, 32
  br i1 %.not13.i.i.i, label %.preheader.i.i, label %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i, !llvm.loop !18

_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i: ; preds = %.lr.ph277
  %.not.i.i2.i = icmp eq i64 %.09.in.i.i.i276, -1
  %i.jh = select i1 %.not.i.i2.i, i64 %i.je, i64 %.09.in.i.i.i276
  br label %_ZNK2c415basic_substringIKcE4trimEc.exit

_ZNK2c415basic_substringIKcE4trimEc.exit:         ; preds = %bb.ak, %.preheader.i.i, %bb.aj, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i, %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i
  %spec.select.i.pn.i = phi ptr [ %spec.select.i.i, %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i ], [ %spec.select.i.i, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i ], [ %i.iw, %bb.aj ], [ %spec.select.i.i, %.preheader.i.i ], [ %i.iw, %bb.ak ] ; 2 uses
  %.sroa.3.1.i3.i = phi i64 [ %i.jh, %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i ], [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i ], [ 0, %bb.aj ], [ 0, %.preheader.i.i ], [ 0, %bb.ak ] ; 2 uses
  store ptr %spec.select.i.pn.i, ptr %4, align 8, !tbaa !101
  store i64 %.sroa.3.1.i3.i, ptr %i.ix, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.ji = call noundef zeroext i1 @_ZN2c44atouImEEbNS_15basic_substringIKcEEPT_(ptr %spec.select.i.pn.i, i64 %.sroa.3.1.i3.i, ptr noundef nonnull %i.c) #59
  br i1 %i.ji, label %bb.al, label %.critedge

bb.al:                                            ; preds = %_ZNK2c415basic_substringIKcE4trimEc.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !158 ; 2 uses
  %i.jl = load ptr, ptr %0, align 8, !tbaa !120
  %i.jm = getelementptr inbounds nuw [144 x i8], ptr %i.jl, i64 %i.jk ; 5 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !144 ; 2 uses
  %i.jo = and i32 %i.jn, 44
  %.not175 = icmp eq i32 %i.jo, 0
  br i1 %.not175, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.jp = and i32 %i.jn, 1
  %.not176 = icmp eq i32 %i.jp, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  br i1 %.not176, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 9, ptr %i.jm, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i116, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.ao:                                            ; preds = %bb.am
  store i32 8, ptr %i.jm, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jq, i8 0, i64 48, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %bb.an
  %i.jr = load ptr, ptr %0, align 8, !tbaa !120
  %i.js = getelementptr inbounds nuw [144 x i8], ptr %i.jr, i64 %i.jk
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jt, i8 0, i64 48, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.al
  %i.ju = load i64, ptr %i.jj, align 8, !tbaa !158
  %i.jv = load i64, ptr %i.c, align 8, !tbaa !102 ; 3 uses
  %i.jw = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  %i.jx = getelementptr inbounds nuw [144 x i8], ptr %i.jw, i64 %i.ju
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  %.0811.i119 = load i64, ptr %i.jy, align 8, !tbaa !102 ; 4 uses
  %.not12.i120 = icmp eq i64 %.0811.i119, -1      ; 2 uses
  %i.jz = icmp eq i64 %i.jv, 0
  %or.cond13.i121 = or i1 %i.jz, %.not12.i120
  br i1 %or.cond13.i121, label %_ZNK2c43yml4Tree5childEmm.exit129, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ap, %.lr.ph.i122
  %.0815.i123 = phi i64 [ %.08.i125, %.lr.ph.i122 ], [ %.0811.i119, %bb.ap ]
  %.0914.i124 = phi i64 [ %i.ka, %.lr.ph.i122 ], [ 0, %bb.ap ]
  %i.ka = add nuw i64 %.0914.i124, 1              ; 2 uses
  %i.kb = getelementptr inbounds nuw [144 x i8], ptr %i.jw, i64 %.0815.i123
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %.08.i125 = load i64, ptr %i.kc, align 8, !tbaa !102 ; 3 uses
  %.not.i126 = icmp eq i64 %.08.i125, -1
  %i.kd = icmp eq i64 %i.ka, %i.jv
  %or.cond.i127 = select i1 %.not.i126, i1 true, i1 %i.kd
  br i1 %or.cond.i127, label %_ZNK2c43yml4Tree5childEmm.exit129, label %.lr.ph.i122, !llvm.loop !11

_ZNK2c43yml4Tree5childEmm.exit129:                ; preds = %.lr.ph.i122, %bb.ap
  %.08.lcssa.i128 = phi i64 [ %.0811.i119, %bb.ap ], [ %.08.i125, %.lr.ph.i122 ] ; 2 uses
  %i.ke = icmp eq i64 %.08.lcssa.i128, -1
  br i1 %i.ke, label %bb.aq, label %.thread.a

.thread.a:                                        ; preds = %_ZNK2c43yml4Tree5childEmm.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168

bb.aq:                                            ; preds = %_ZNK2c43yml4Tree5childEmm.exit129
  br i1 %.not12.i120, label %.lr.ph, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %bb.aq, %.lr.ph.i130
  %.09.i131 = phi i64 [ %.0.i, %.lr.ph.i130 ], [ %.0811.i119, %bb.aq ]
  %.058.i = phi i64 [ %i.kf, %.lr.ph.i130 ], [ 0, %bb.aq ]
  %i.kf = add i64 %.058.i, 1                      ; 3 uses
  %i.kg = getelementptr inbounds nuw [144 x i8], ptr %i.jw, i64 %.09.i131
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 128
  %.0.i = load i64, ptr %i.kh, align 8, !tbaa !102 ; 2 uses
  %.not.i132 = icmp eq i64 %.0.i, -1
  br i1 %.not.i132, label %_ZNK2c43yml4Tree12num_childrenEm.exit, label %.lr.ph.i130, !llvm.loop !17

_ZNK2c43yml4Tree12num_childrenEm.exit:            ; preds = %.lr.ph.i130
  %.not196 = icmp ugt i64 %i.kf, %i.jv
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aq, %_ZNK2c43yml4Tree12num_childrenEm.exit
  %.05.lcssa.i242 = phi i64 [ %i.kf, %_ZNK2c43yml4Tree12num_childrenEm.exit ], [ 0, %bb.aq ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.bc
  %.059197 = phi i64 [ %.05.lcssa.i242, %.lr.ph ], [ %i.ny, %bb.bc ] ; 2 uses
  %i.km = load i64, ptr %i.jj, align 8, !tbaa !158 ; 5 uses
  %i.kn = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  %i.ko = getelementptr inbounds nuw [144 x i8], ptr %i.kn, i64 %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !141 ; 4 uses
  %i.kr = load i64, ptr %i.ki, align 8, !tbaa !129 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, -1
  %i.kt = icmp eq ptr %i.kn, null
  %or.cond.i133 = or i1 %i.kt, %i.ks
  br i1 %or.cond.i133, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ku = load i64, ptr %i.kj, align 8, !tbaa !109
  %i.kv = shl i64 %i.ku, 1                        ; 2 uses
  %.not.i134 = icmp eq i64 %i.kv, 0
  %i.kw = select i1 %.not.i134, i64 16, i64 %i.kv
  call void @_ZN2c43yml4Tree7reserveEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.kw), !inline_history !140
  %.pre.i135 = load i64, ptr %i.ki, align 8, !tbaa !129
  %.pre8.i136 = load ptr, ptr %0, align 8, !tbaa !120
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.kx = phi ptr [ %i.kn, %bb.ar ], [ %.pre8.i136, %bb.as ]
  %i.ky = phi i64 [ %i.kr, %bb.ar ], [ %.pre.i135, %bb.as ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [144 x i8], ptr %i.kx, i64 %i.ky ; 4 uses
  %i.la = load i64, ptr %i.kk, align 8, !tbaa !131
  %i.lb = add i64 %i.la, 1
  store i64 %i.lb, ptr %i.kk, align 8, !tbaa !131
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !128 ; 2 uses
  store i64 %i.ld, ptr %i.ki, align 8, !tbaa !129
  %i.le = icmp eq i64 %i.ld, -1
  br i1 %i.le, label %bb.au, label %_ZN2c43yml4Tree6_claimEv.exit137

bb.au:                                            ; preds = %bb.at
  store i64 -1, ptr %i.kl, align 8, !tbaa !130
  br label %_ZN2c43yml4Tree6_claimEv.exit137

_ZN2c43yml4Tree6_claimEv.exit137:                 ; preds = %bb.at, %bb.au
  store i32 0, ptr %i.kz, align 8, !tbaa !126
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.lf, i8 0, i64 96, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i8 -1, i64 24, i1 false)
  %i.lh = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  %i.li = getelementptr inbounds nuw [144 x i8], ptr %i.lh, i64 %i.ky ; 8 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 104
  store i64 %i.km, ptr %i.lj, align 8, !tbaa !132
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 136 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 128 ; 3 uses
  %i.lm = icmp eq i64 %i.km, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, i8 -1, i64 16, i1 false)
  br i1 %i.lm, label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150, label %bb.av

bb.av:                                            ; preds = %_ZN2c43yml4Tree6_claimEv.exit137
  %.not.i138 = icmp eq i64 %i.kq, -1
  %i.ln = load ptr, ptr %0, align 8               ; 9 uses
  %i.lo = getelementptr inbounds nuw [144 x i8], ptr %i.ln, i64 %i.km ; 3 uses
  br i1 %.not.i138, label %.thread.i149, label %bb.aw

.thread.i149:                                     ; preds = %bb.av
  %i.lp = getelementptr inbounds nuw [144 x i8], ptr %i.lh, i64 %i.km
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 112
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !119 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, -1
  %i.lt = getelementptr inbounds nuw [144 x i8], ptr %i.ln, i64 %i.lr
  br i1 %i.ls, label %.thread73.i145, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lu = getelementptr inbounds nuw [144 x i8], ptr %i.lh, i64 %i.kq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 128
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !128 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, -1
  %i.ly = getelementptr inbounds nuw [144 x i8], ptr %i.ln, i64 %i.lw
  %.0.i46.i139 = select i1 %i.lx, ptr null, ptr %i.ly ; 2 uses
  %.not41.i140 = icmp eq ptr %i.ln, null
  br i1 %.not41.i140, label %bb.ax, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i141

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i141: ; preds = %bb.aw
  %i.lz = getelementptr inbounds nuw [144 x i8], ptr %i.ln, i64 %i.kq
  store i64 %i.kq, ptr %i.lk, align 8, !tbaa !127
  %i.ma = ptrtoint ptr %i.li to i64
  %i.mb = ptrtoint ptr %i.ln to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = sdiv exact i64 %i.mc, 144
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 128
  store i64 %i.md, ptr %i.me, align 8, !tbaa !128
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i141, %bb.aw, %.thread.i149
  %.0.i4672.i142 = phi ptr [ %i.lt, %.thread.i149 ], [ %.0.i46.i139, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i141 ], [ %.0.i46.i139, %bb.aw ] ; 3 uses
  %i.mf = phi ptr [ %i.ln, %.thread.i149 ], [ %i.ln, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i141 ], [ null, %bb.aw ] ; 3 uses
  %.not42.i143 = icmp eq ptr %.0.i4672.i142, null
  br i1 %.not42.i143, label %.thread73.i145, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i144

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i144: ; preds = %bb.ax
  %i.mg = ptrtoint ptr %.0.i4672.i142 to i64
  %i.mh = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = sdiv exact i64 %i.mi, 144
  store i64 %i.mj, ptr %i.ll, align 8, !tbaa !128
  %i.mk = ptrtoint ptr %i.li to i64
  %i.ml = sub i64 %i.mk, %i.mh
  %i.mm = sdiv exact i64 %i.ml, 144
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i4672.i142, i64 136
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !127
  br label %.thread73.i145

.thread73.i145:                                   ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i144, %bb.ax, %.thread.i149
  %i.mo = phi ptr [ %i.mf, %bb.ax ], [ %i.mf, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i144 ], [ %i.ln, %.thread.i149 ] ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lo, i64 112 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !119 ; 2 uses
  %i.mr = icmp eq i64 %i.mq, -1
  br i1 %i.mr, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i148, label %bb.ay

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i148: ; preds = %.thread73.i145
  %i.ms = ptrtoint ptr %i.li to i64
  %i.mt = ptrtoint ptr %i.mo to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = sdiv exact i64 %i.mu, 144               ; 2 uses
  store i64 %i.mv, ptr %i.mp, align 8, !tbaa !119
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lo, i64 120
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150

bb.ay:                                            ; preds = %.thread73.i145
  %i.mx = load i64, ptr %i.ll, align 8, !tbaa !128
  %i.my = icmp eq i64 %i.mx, %i.mq
  br i1 %i.my, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i147, label %bb.az

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i147: ; preds = %bb.ay
  %i.mz = ptrtoint ptr %i.li to i64
  %i.na = ptrtoint ptr %i.mo to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = sdiv exact i64 %i.nb, 144
  store i64 %i.nc, ptr %i.mp, align 8, !tbaa !119
  br label %bb.az

bb.az:                                            ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i147, %bb.ay
  %i.nd = load i64, ptr %i.lk, align 8, !tbaa !127
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lo, i64 120 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !141
  %i.ng = icmp eq i64 %i.nd, %i.nf
  br i1 %i.ng, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i146, label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i146: ; preds = %bb.az
  %i.nh = ptrtoint ptr %i.li to i64
  %i.ni = ptrtoint ptr %i.mo to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = sdiv exact i64 %i.nj, 144
  store i64 %i.nk, ptr %i.ne, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150

_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150:      ; preds = %_ZN2c43yml4Tree6_claimEv.exit137, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i148, %bb.az, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i146
  %i.nl = load i64, ptr %i.c, align 8, !tbaa !102
  %i.nm = icmp ult i64 %.059197, %i.nl
  br i1 %i.nm, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150
  %i.nn = load i64, ptr %i.jj, align 8, !tbaa !158
  %i.no = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.np = getelementptr inbounds nuw [144 x i8], ptr %i.no, i64 %i.nn
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !144 ; 2 uses
  %i.nr = and i32 %i.nq, 4
  %.not177 = icmp eq i32 %i.nr, 0
  br i1 %.not177, label %bb.bb, label %.sink.split258

bb.bb:                                            ; preds = %bb.ba
  %i.ns = and i32 %i.nq, 8
  %.not178 = icmp eq i32 %i.ns, 0
  br i1 %.not178, label %bb.bc, label %.sink.split258

.sink.split258:                                   ; preds = %bb.bb, %bb.ba
  %.sink = phi i32 [ 3, %bb.ba ], [ 2, %bb.bb ]
  %i.nt = getelementptr inbounds nuw [144 x i8], ptr %i.no, i64 %i.ky ; 2 uses
  store i32 %.sink, ptr %i.nt, align 8, !tbaa !126
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, i8 0, i64 48, i1 false)
  %i.nv = load ptr, ptr %0, align 8, !tbaa !120
  %i.nw = getelementptr inbounds nuw [144 x i8], ptr %i.nv, i64 %i.ky
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nx, i8 0, i64 48, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split258, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit150, %bb.bb
  %i.ny = add i64 %.059197, 1                     ; 2 uses
  %i.nz = load i64, ptr %i.c, align 8, !tbaa !102
  %.not = icmp ugt i64 %i.ny, %i.nz
  br i1 %.not, label %._crit_edge, label %bb.ar, !llvm.loop !507

._crit_edge:                                      ; preds = %bb.bc, %_ZNK2c43yml4Tree12num_childrenEm.exit
  %.262.lcssa = phi i64 [ -1, %_ZNK2c43yml4Tree12num_childrenEm.exit ], [ %i.ky, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168

bb.bd:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 42843, ptr noundef nonnull @.str.139) #58
  unreachable

_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168: ; preds = %bb.j, %.lr.ph.split.us.i, %._crit_edge, %.thread.a, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit
  %.5 = phi i64 [ %i.bp, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit ], [ %.060, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit ], [ %.161, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit115 ], [ %.262.lcssa, %._crit_edge ], [ %.08.lcssa.i128, %.thread.a ], [ %.0918.us.i, %.lr.ph.split.us.i ], [ %.0918.i, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !159
  br label %bb.be

.critedge:                                        ; preds = %_ZNK2c415basic_substringIKcE4trimEc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.be

bb.be:                                            ; preds = %bb.a, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168, %.critedge
  %.2 = phi i64 [ -1, %bb.a ], [ %.5, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread168 ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK2c43yml4Tree11_next_tokenEPNS1_13lookup_resultERKNS1_18_lookup_path_tokenE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.c4::yml::Tree::_lookup_path_token") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %3) local_unnamed_addr #33 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !156  ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !99   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !92   ; 6 uses
  %i.h = sub i64 %i.g, %i.c                       ; 4 uses
  %i.i = icmp eq i64 %i.g, %i.c
  %i.j = icmp eq ptr %i.d, null
  %i.k = select i1 %i.i, i1 true, i1 %i.j
  br i1 %i.k, label %bb.b, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.l

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.a
  %i.l = load i8, ptr %i.e, align 1, !tbaa !87
  %i.m = icmp eq i8 %i.l, 91
  br i1 %i.m, label %.lr.ph.i.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit, %bb.c
  %.0811.i.i = phi i64 [ %i.q, %bb.c ], [ 0, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0811.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87
  %i.p = icmp eq i8 %i.o, 93
  br i1 %i.p, label %_ZNK2c415basic_substringIKcE4findEcm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = add nuw i64 %.0811.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE4findEcm.exit.thread, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit:        ; preds = %.lr.ph.i.i
  %i.r = icmp eq i64 %.0811.i.i, -1
  br i1 %i.r, label %_ZNK2c415basic_substringIKcE4findEcm.exit.thread, label %bb.d

_ZNK2c415basic_substringIKcE4findEcm.exit.thread: ; preds = %bb.c, %_ZNK2c415basic_substringIKcE4findEcm.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.l

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit
  %i.s = add nuw i64 %.0811.i.i, 1                ; 3 uses
  %.not.i31 = icmp eq i64 %i.s, -1
  %i.t = select i1 %.not.i31, i64 %i.h, i64 %i.s
  %i.u = add i64 %i.s, %i.c                       ; 4 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !156
  %.not.i.i = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.i, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i

_ZNK2c415basic_substringIKcE11begins_withEc.exit.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.e, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit

bb.e:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !156
  br label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit

_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit: ; preds = %bb.d, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i, %bb.e
  store ptr %i.e, ptr %0, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.z, align 8, !tbaa !126
  br label %bb.l

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit, %._crit_edge.i
  %.01224.i = phi i64 [ %i.ac, %._crit_edge.i ], [ 0, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01224.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !87
  switch i8 %i.ab, label %._crit_edge.i [
    i8 46, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 91, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.ac = add nuw i64 %.01224.i, 1                ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond27.not.i, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40, label %.preheader.i, !llvm.loop !3

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit:  ; preds = %.preheader.i
  %i.ad = icmp eq i64 %.01224.i, -1
  br i1 %i.ad, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40, label %bb.h

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread: ; preds = %.preheader.i
  %i.ae = icmp eq i64 %.01224.i, -1
  br i1 %i.ae, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40, label %bb.j

_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40: ; preds = %._crit_edge.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  store i64 %i.g, ptr %i.b, align 8, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !126 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i32 %i.ag, 8
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond = or i1 %i.ah, %i.aj
  store ptr %i.e, ptr %0, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i41, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40
  store i32 2, ptr %i.ak, align 8, !tbaa !126
  br label %bb.l

bb.g:                                             ; preds = %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit40
  store i32 3, ptr %i.ak, align 8, !tbaa !126
  br label %bb.l

bb.h:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %i.al = add i64 %i.c, 1
  %i.am = add i64 %i.al, %.01224.i                ; 4 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !156
  %.not.i.i43 = icmp eq i64 %i.g, %i.am
  br i1 %.not.i.i43, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit45, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i44

_ZNK2c415basic_substringIKcE11begins_withEc.exit.i44: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  %i.ap = icmp eq i8 %i.ao, 46
  br i1 %i.ap, label %bb.i, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit45

bb.i:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i44
  %i.aq = add i64 %i.am, 1
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !156
  br label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit45

_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit45: ; preds = %bb.h, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i44, %bb.i
  store ptr %i.e, ptr %0, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.01224.i, ptr %.sroa.2.0..sroa_idx.i46, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.ar, align 8, !tbaa !126
  br label %bb.l

bb.j:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread
  %i.as = add i64 %.01224.i, %i.c                 ; 4 uses
  store i64 %i.as, ptr %i.b, align 8, !tbaa !156
  %.not.i.i47 = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.i47, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit49, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i48

_ZNK2c415basic_substringIKcE11begins_withEc.exit.i48: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87
  %i.av = icmp eq i8 %i.au, 46
  br i1 %i.av, label %bb.k, label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit49

bb.k:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i48
  %i.aw = add i64 %i.as, 1
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !156
  br label %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit49

_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit49: ; preds = %bb.j, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i48, %bb.k
  store ptr %i.e, ptr %0, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.01224.i, ptr %.sroa.2.0..sroa_idx.i50, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.ax, align 8, !tbaa !126
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit45, %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit49, %_ZNK2c415basic_substringIKcE4findEcm.exit.thread, %_ZN2c43yml4Tree8_advanceEPNS1_13lookup_resultEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK2c43yml4Tree8locationERKNS0_11ParseEngineINS0_16EventHandlerTreeEEEm(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::Location") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = call noundef zeroext i1 @_ZNK2c43yml4Tree19_location_from_nodeERKNS0_11ParseEngineINS0_16EventHandlerTreeEEEmPNS0_8LocationEm(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef 0)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !160
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_1
