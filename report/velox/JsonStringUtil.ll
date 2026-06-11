inline.NumInlined: 158
inline.NumDeleted: 41
begin_hunk_0_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  %i.dn = lshr i32 %i.bi, 8
  %i.do = trunc nuw i32 %i.dn to i8
  %i.dp = and i8 %i.do, 15                        ; 2 uses
  %i.dq = icmp samesign ult i8 %i.dp, 10
  %i.dr = trunc i32 %i.bi to i8                   ; 3 uses
  %i.ds = lshr i8 %i.dr, 4
  %i.dt = icmp ult i8 %i.dr, -96
  %i.du = and i8 %i.dr, 15                        ; 2 uses
  %i.dv = icmp samesign ult i8 %i.du, 10
  %i.dw = getelementptr inbounds nuw i8, ptr %.060, i64 6
  %i.dx = insertelement <4 x i8> poison, i8 %i.dl, i64 0
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.dp, i64 1
  %i.dz = insertelement <4 x i8> %i.dy, i8 %i.ds, i64 2
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.du, i64 3 ; 2 uses
  %i.eb = or disjoint <4 x i8> %i.ea, splat (i8 48)
  %i.ec = add nuw nsw <4 x i8> %i.ea, splat (i8 55)
  %i.ed = insertelement <4 x i1> poison, i1 %i.dm, i64 0
  %i.ee = insertelement <4 x i1> %i.ed, i1 %i.dq, i64 1
  %i.ef = insertelement <4 x i1> %i.ee, i1 %i.dt, i64 2
  %i.eg = insertelement <4 x i1> %i.ef, i1 %i.dv, i64 3
  %i.eh = select <4 x i1> %i.eg, <4 x i8> %i.eb, <4 x i8> %i.ec
  store <4 x i8> %i.eh, ptr %i.dj, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.y:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store <4 x i8> <i8 92, i8 117, i8 70, i8 70>, ptr %.060, align 1, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %.060, i64 5
  store i8 70, ptr %i.ei, align 1, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %.060, i64 6
  store i8 68, ptr %i.ej, align 1, !tbaa !10
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.y, %bb.t, %bb.s, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit
  %.1 = phi ptr [ %i.ek, %bb.y ], [ %.3, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit ], [ %i.bc, %bb.s ], [ %i.bf, %bb.t ], [ %i.bm, %bb.u ], [ %i.df, %bb.w ], [ %i.dw, %bb.x ]
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.b
  br i1 %i.eo, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox25normalizedSizeForJsonCastEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %i.c = phi ptr [ %i.au, %bb.q ], [ %0, %bb.a ]  ; 10 uses
  %.022 = phi i64 [ %.1, %bb.q ], [ 0, %bb.a ]    ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i8 %i.d, -32
  %i.g = icmp eq i8 %i.f, -64
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !10
  %i.k = icmp slt i8 %i.j, -64
  br i1 %i.k, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = and i8 %i.d, -16
  %i.m = icmp eq i8 %i.l, -32
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.b
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.n, align 1, !tbaa !10
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.u = and i8 %i.d, -8
  %i.v = icmp eq i8 %i.u, -16
  br i1 %i.v, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.b
  br i1 %i.x, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = icmp slt i8 %i.z, -64
  br i1 %i.aa, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = icmp slt i8 %i.ac, -64
  br i1 %i.ad, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !10
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.ag = zext nneg i8 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox12_GLOBAL__N_117encodedAsciiSizesE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = sext i8 %i.ai to i64
  %i.ak = add i64 %.022, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.o:                                             ; preds = %bb.d, %bb.h
  %.0.i.ph = phi i64 [ 3, %bb.h ], [ 2, %bb.d ]   ; 2 uses
  %i.am = add i64 %.0.i.ph, %.022
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.i.ph ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit: ; preds = %bb.m
  %i.ao = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true)
  %i.ap = icmp ult i32 %i.ao, 65536
  %i.aq = select i1 %i.ap, i64 6, i64 12
  %i.ar = add i64 %i.aq, %.022
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.as = add i64 %.022, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit, %bb.o, %bb.n
  %i.au = phi ptr [ %i.at, %bb.p ], [ %i.al, %bb.n ], [ %i.an, %bb.o ], [ %.pre, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit ] ; 2 uses
  %.1 = phi i64 [ %i.as, %bb.p ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.ar, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit ] ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.b
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit, %bb.a
  %2 = load i64, ptr %i.c, align 8, !tbaa !17     ; 3 uses
  %3 = icmp uge i64 %2, %.sroa.speculated
  %4 = load i64, ptr %i.d, align 8                ; 5 uses
  %i.h = icmp uge i64 %4, %.sroa.speculated
  %.not16 = select i1 %3, i1 true, i1 %i.h        ; 2 uses
  br i1 %.not16, label %.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %.val17 = load ptr, ptr %i.g, align 8, !tbaa !18 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val17, i64 %2 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 2 uses
  %.not.i = icmp sgt i8 %i.j, -1
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %.not34.i = icmp sgt i8 %i.m, -1
  br i1 %.not34.i, label %bb.e, label %.thread.i, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.n = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_114getEscapedCharESt17basic_string_viewIcSt11char_traitsIcEERm(i64 %.val, ptr nonnull %.val17, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !17
  %.sroa.2.0.copyload.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !7
  %i.o = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_114getEscapedCharESt17basic_string_viewIcSt11char_traitsIcEERm(i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.p = sub nsw i32 %i.n, %i.o
  br label %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit

.thread.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.q = zext nneg i8 %i.j to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.val17, i64 %.val
  %i.s = call fastcc noundef i32 @_ZL18utf8proc_codepointPKcS0_Ri(ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %4
  %.pre3.i = load i8, ptr %.phi.trans.insert2.i, align 1, !tbaa !10 ; 2 uses
  %.not36.i = icmp sgt i8 %.pre3.i, -1
  br i1 %.not36.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.03211.i = phi i32 [ %i.q, %.thread.i ], [ %i.s, %bb.f ]
  %i.t = phi ptr [ %i.k, %.thread.i ], [ %.pre1.i, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %4
  %i.v = load i64, ptr %1, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = call fastcc noundef i32 @_ZL18utf8proc_codepointPKcS0_Ri(ptr noundef nonnull %i.u, ptr noundef %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pre4.i = load i32, ptr %i.b, align 4, !tbaa !3
  %i.y = tail call i32 @llvm.smax.i32(i32 %.pre4.i, i32 1)
  %i.z = zext nneg i32 %i.y to i64
  %.pre.a = load i64, ptr %i.c, align 8, !tbaa !17
  %.pre29 = load i64, ptr %i.d, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = zext nneg i8 %.pre3.i to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %.pre29, %bb.g ], [ %4, %bb.h ]
  %i.ac = phi i64 [ %.pre.a, %bb.g ], [ %2, %bb.h ]
  %.03210.i = phi i32 [ %.03211.i, %bb.g ], [ %i.s, %bb.h ]
  %i.ad = phi i64 [ %i.z, %bb.g ], [ 1, %bb.h ]
  %.0.i = phi i32 [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !3
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add i64 %i.ac, %i.ag
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !17
  %i.ai = add i64 %i.ab, %i.ad
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !17
  %i.aj = sub nsw i32 %.03210.i, %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit

_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit: ; preds = %bb.e, %bb.i
  %.033.i = phi i32 [ %i.p, %bb.e ], [ %i.aj, %bb.i ] ; 2 uses
  %.not = icmp eq i32 %.033.i, 0
  br i1 %.not, label %bb.b, label %.split.loop.exit24, !llvm.loop !20

.split.loop.exit24:                               ; preds = %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit
  %i.ak = icmp slt i32 %.033.i, 0
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit24
  %.2 = phi i1 [ %i.ak, %.split.loop.exit24 ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.al = icmp ult i64 %i.e, %i.f
  %.3 = select i1 %.not16, i1 %i.al, i1 %.2
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox21normalizeForJsonParseEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not117 = icmp eq i64 %1, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0116 = phi ptr [ %0, %.lr.ph ], [ %.0.be, %.backedge ] ; 19 uses
  %.0103115 = phi ptr [ %2, %.lr.ph ], [ %.0103.be, %.backedge ] ; 43 uses
  %i.d = load i8, ptr %.0116, align 1, !tbaa !10  ; 3 uses
  %i.e = icmp eq i8 %i.d, 92
  br i1 %i.e, label %bb.c, label %bb.x, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0116, i64 1 ; 3 uses
  %.not56 = icmp eq ptr %i.f, %i.b
  br i1 %.not56, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs, ptr noundef nonnull @.str.4) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10
  switch i8 %i.g, label %bb.w [
    i8 47, label %bb.f
    i8 117, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 47, ptr %.0103115, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.0116, i64 2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.v, %bb.f, %bb.w, %bb.y, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit
  %.0103.be = phi ptr [ %i.bz, %bb.w ], [ %i.h, %bb.f ], [ %.4, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %i.cc, %bb.y ], [ %i.bw, %bb.v ], [ %i.bu, %.backedge.loopexit ] ; 2 uses
  %.0.be = phi ptr [ %i.ca, %bb.w ], [ %i.i, %bb.f ], [ %i.fs, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %i.cb, %bb.y ], [ %i.k, %bb.v ], [ %i.k, %.backedge.loopexit ] ; 2 uses
  %i.j = icmp ult ptr %.0.be, %i.b
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !22

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.0116, i64 6 ; 3 uses
  %.not57 = icmp ugt ptr %i.k, %i.b
  br i1 %.not57, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.4) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %.ptr106 = getelementptr inbounds nuw i8, ptr %.0116, i64 2 ; 2 uses
  %i.l = load i8, ptr %.ptr106, align 1, !tbaa !10 ; 5 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add i8 %i.l, -48
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = add i8 %i.l, -65
  %or.cond5.i = icmp ult i8 %i.o, 6
  br i1 %or.cond5.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = add i8 %i.l, -97
  %or.cond8.i = icmp ult i8 %i.p, 6
  br i1 %or.cond8.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.l

bb.l:                                             ; preds = %bb.t, %bb.r, %bb.p, %bb.k
  %.lcssa = phi i8 [ %i.l, %bb.k ], [ %i.x, %bb.p ], [ %i.ad, %bb.r ], [ %i.an, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !23
  %.sroa.03.0.insert.ext.i = zext i8 %.lcssa to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !23
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.11, i64 24, i64 8, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !23
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_110digitToHexEcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.11) #14
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.u = load i64, ptr %i.s, align 8, !tbaa !10
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.q

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit: ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi i32 [ -55, %bb.j ], [ -48, %bb.i ], [ -87, %bb.k ]
  %i.w = add nsw i32 %.sink, %i.m
  %.08.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.0116, i64 3
  %i.x = load i8, ptr %.08.i.ptr.1, align 1, !tbaa !10 ; 5 uses
  %i.y = sext i8 %i.x to i32
  %i.z = add i8 %i.x, -48
  %or.cond.i.1 = icmp ult i8 %i.z, 10
  br i1 %or.cond.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit
  %i.aa = add i8 %i.x, -65
  %or.cond5.i.1 = icmp ult i8 %i.aa, 6
  br i1 %or.cond5.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = add i8 %i.x, -97
  %or.cond8.i.1 = icmp ult i8 %i.ab, 6
  br i1 %or.cond8.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, %bb.o, %bb.p
  %.sink129 = phi i32 [ -55, %bb.o ], [ -87, %bb.p ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit ]
  %i.ac = add nsw i32 %.sink129, %i.y
  %.08.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.0116, i64 4
  %i.ad = load i8, ptr %.08.i.ptr.2, align 1, !tbaa !10 ; 5 uses
  %i.ae = shl nuw nsw i32 %i.w, 8
  %i.af = shl nuw nsw i32 %i.ac, 4
  %i.ag = add nuw nsw i32 %i.ae, %i.af
  %i.ah = sext i8 %i.ad to i32
  %i.ai = add i8 %i.ad, -48
  %or.cond.i.2 = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1
  %i.aj = add i8 %i.ad, -65
  %or.cond5.i.2 = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = add i8 %i.ad, -97
  %or.cond8.i.2 = icmp ult i8 %i.ak, 6
  br i1 %or.cond8.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, %bb.q, %bb.r
  %.sink130 = phi i32 [ -55, %bb.q ], [ -87, %bb.r ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1 ]
  %i.al = add nsw i32 %.sink130, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.ag
  %.08.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.0116, i64 5
  %i.an = load i8, ptr %.08.i.ptr.3, align 1, !tbaa !10 ; 5 uses
  %i.ao = shl nuw nsw i32 %i.am, 4
  %i.ap = sext i8 %i.an to i32
  %i.aq = add i8 %i.an, -48
  %or.cond.i.3 = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2
  %i.ar = add i8 %i.an, -65
  %or.cond5.i.3 = icmp ult i8 %i.ar, 6
  br i1 %or.cond5.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = add i8 %i.an, -97
  %or.cond8.i.3 = icmp ult i8 %i.as, 6
  br i1 %or.cond8.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, %bb.s, %bb.t
  %.sink131 = phi i32 [ -55, %bb.s ], [ -87, %bb.t ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2 ]
  %i.at = add nsw i32 %.sink131, %i.ap
  %i.au = add nuw nsw i32 %i.at, %i.ao            ; 3 uses
  %i.av = and i32 %i.au, -1024
  switch i32 %i.av, label %bb.u [
    i32 55296, label %.backedge.loopexit
    i32 56320, label %.backedge.loopexit
  ]

end_hunk_0
