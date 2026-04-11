inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %.1183286.lcssa = phi i64 [ %.0.copyload.i161, %.preheader ], [ %i.ab, %bb.d ], [ %i.ao, %bb.e ], [ %i.bb, %bb.f ], [ %.0.copyload.i163, %.preheader.1 ], [ %i.cb, %bb.g ], [ %i.co, %bb.h ], [ %i.db, %bb.i ], [ %.0.copyload.i163.1, %.preheader.2 ], [ %i.eb, %bb.j ], [ %i.eo, %bb.k ], [ %i.fb, %bb.l ], [ %.0.copyload.i163.2, %.preheader.3 ], [ %i.gb, %bb.m ], [ %i.go, %bb.n ], [ %i.hb, %bb.o ]
  %.lcssa302.wide = phi i64 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %.preheader.1 ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %.preheader.2 ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %.preheader.3 ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ] ; 3 uses
  %.lcssa300 = phi i64 [ %i.y, %.preheader ], [ %i.ak, %bb.d ], [ %i.ax, %bb.e ], [ %i.bk, %bb.f ], [ %i.bx, %.preheader.1 ], [ %i.ck, %bb.g ], [ %i.cx, %bb.h ], [ %i.dk, %bb.i ], [ %i.dx, %.preheader.2 ], [ %i.ek, %bb.j ], [ %i.ex, %bb.k ], [ %i.fk, %bb.l ], [ %i.fx, %.preheader.3 ], [ %i.gk, %bb.m ], [ %i.gx, %bb.n ], [ %i.hk, %bb.o ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa300
  %.tr = trunc nuw nsw i64 %.lcssa302.wide to i8
  %i.hq = shl nuw nsw i8 %.tr, 2
  store i8 %i.hq, ptr %.0117, align 1, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.ie = add i64 %i.id, %i.i
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !20
  %i.ih = zext i16 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %i.ih
  %i.ij = ptrtoint ptr %.8126292 to i64           ; 2 uses
  %i.ik = sub i64 %i.ij, %i.h
end_hunk_1
begin_hunk_2_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.is, label %.thread254, label %.lr.ph, !prof !24

bb.s:                                             ; preds = %.lr.ph
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ih ; 2 uses
  %i.it = ptrtoint ptr %.0118 to i64
  %i.iu = sub i64 %i.ij, %i.it                    ; 3 uses
  %i.iv = trunc i64 %i.iu to i32                  ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9191.ph = phi i64 [ %.1183286.lcssa, %bb.p ], [ %.6188291, %bb.t ], [ %.6188291, %bb.y ]
  %.9145.ph = phi ptr [ %5, %bb.p ], [ %6, %bb.t ], [ %6, %bb.y ]
  %.11129.ph = phi ptr [ %i.hs, %bb.p ], [ %.8126292, %bb.t ], [ %.8126292, %bb.y ]
  %.8.ph = phi ptr [ %i.hu, %bb.p ], [ %i.jb, %bb.t ], [ %i.jn, %bb.y ]
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit: ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.al
  %.9191 = phi i64 [ %.11193237, %bb.al ], [ %.9191.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.9145 = phi ptr [ %i.oz, %bb.al ], [ %.9145.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 6 uses
  %.11129 = phi ptr [ %i.oe, %bb.al ], [ %.11129.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.al ], [ %.8.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.9145, i64 4 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.js, %i.k
end_hunk_3
begin_hunk_4_@_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkE:bb.a
; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 21 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_4
begin_hunk_5_@_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = icmp ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.f to i8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.a, align 1, !tbaa !7
  br label %_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit

end_hunk_5
begin_hunk_6_@_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.f to i8
  %i.l = or i8 %i.k, -128
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.a, align 1, !tbaa !7
  %i.m = lshr i64 %i.f, 7
  %i.n = trunc i64 %i.m to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.n, ptr %4, align 1, !tbaa !7
  br label %_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit

bb.e:                                             ; preds = %bb.c
end_hunk_6
begin_hunk_7_@_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.p = trunc i64 %i.f to i8
  %i.q = or i8 %i.p, -128
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.a, align 1, !tbaa !7
  %i.r = lshr i64 %i.f, 7
  %i.s = trunc i64 %i.r to i8
  %i.t = or i8 %i.s, -128
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.t, ptr %6, align 1, !tbaa !7
  %i.u = lshr i64 %i.f, 14
  %i.v = trunc i64 %i.u to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.v, ptr %7, align 1, !tbaa !7
  br label %_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %i.g, 268435456
  %i.x = trunc i64 %i.f to i8
  %i.y = or i8 %i.x, -128
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.y, ptr %i.a, align 1, !tbaa !7
  %i.z = lshr i64 %i.f, 7
  %i.aa = trunc i64 %i.z to i8
  %i.ab = or i8 %i.aa, -128
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ab, ptr %9, align 1, !tbaa !7
  %i.ac = lshr i64 %i.f, 14
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = or i8 %i.ad, -128
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.ae, ptr %10, align 1, !tbaa !7
  %i.af = lshr i64 %i.f, 21
  %i.ag = trunc i64 %i.af to i8                   ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ag, ptr %11, align 1, !tbaa !7
  br label %_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = or i8 %i.ag, -128
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ah, ptr %11, align 1, !tbaa !7
  %i.ai = lshr i32 %i.g, 28
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.aj, ptr %13, align 1, !tbaa !7
  br label %_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit

_ZN13duckdb_snappy6Bignum8Encode32EPcj.exit:      ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %3, %bb.b ], [ %5, %bb.d ], [ %8, %bb.f ], [ %12, %bb.h ], [ %14, %bb.i ]
  %i.ak = ptrtoint ptr %.0.i to i64
  %i.al = ptrtoint ptr %i.a to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
end_hunk_7
