Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie2?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@utrie2_internalU8NextIndex_78:bb.a
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !16
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = and i32 %i.g, 31
  %i.bg = add nuw nsw i32 %i.be, %i.bf
  br label %_ZL7u8IndexPK6UTrie2ii.exit

_ZL7u8IndexPK6UTrie2ii.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j
  %i.bh = phi i32 [ %i.r, %bb.b ], [ %i.ae, %bb.d ], [ %i.bg, %bb.j ], [ %i.ap, %bb.i ], [ %i.al, %bb.g ], [ 128, %bb.f ]
  %i.bi = shl i32 %i.bh, 3
  %i.bj = or i32 %i.bi, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.bj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @utf8_nextCharSafeBody_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define i32 @utrie2_internalU8PrevIndex_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp slt i64 %i.d, 8                     ; 2 uses
  %i.f = trunc i64 %i.d to i32
  %i.g = getelementptr inbounds i8, ptr %3, i64 -7
  %.sink = select i1 %i.e, i32 %i.f, i32 7        ; 2 uses
  %.09 = select i1 %i.e, ptr %2, ptr %i.g
  store i32 %.sink, ptr %i.a, align 4, !tbaa !21
  %i.h = call i32 @utf8_prevCharSafeBody_78(ptr noundef %.09, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %1, i8 noundef signext -1) ; 12 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !21
  %i.j = icmp ult i32 %i.h, 55296
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = lshr i32 %i.h, 5
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = zext i16 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 2
  %i.r = and i32 %i.h, 31
  %i.s = add nuw nsw i32 %i.q, %i.r
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i32 %i.h, 65536
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = icmp samesign ult i32 %i.h, 56320
  %i.w = select i1 %i.v, i32 320, i32 0
  %i.x = lshr i32 %i.h, 5
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !16
  %i.ac = zext i16 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 2
  %i.ae = and i32 %i.h, 31
  %i.af = add nuw nsw i32 %i.ad, %i.ae
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ugt i32 %i.h, 1114111
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %_ZL7u8IndexPK6UTrie2ii.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17
  %i.am = add nsw i32 %i.al, 128
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.h:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %.not.i = icmp slt i32 %i.h, %i.ao
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !19
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.as = lshr i32 %i.h, 11
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4160
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = lshr i32 %i.h, 5
  %i.az = and i32 %i.ay, 63
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !16
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = and i32 %i.h, 31
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  br label %_ZL7u8IndexPK6UTrie2ii.exit

_ZL7u8IndexPK6UTrie2ii.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j
  %i.bi = phi i32 [ %i.s, %bb.b ], [ %i.af, %bb.d ], [ %i.bh, %bb.j ], [ %i.aq, %bb.i ], [ %i.am, %bb.g ], [ 128, %bb.f ]
  %i.bj = sub nsw i32 %.sink, %i.i
  %i.bk = shl i32 %i.bi, 3
  %i.bl = or i32 %i.bk, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.bl
}

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @utrie2_openFromSerialized_78(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ugt i32 %0, 1
  %or.cond3 = or i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %2, 16
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 4, !tbaa !30
  %.not79 = icmp eq i32 %i.i, 1416784178
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 3, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !31
  %i.l = and i16 %i.k, 15
  %i.m = zext nneg i16 %i.l to i32
  %.not80 = icmp eq i32 %0, %i.m
  br i1 %.not80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !50   ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i16, ptr %i.q, align 4, !tbaa !51
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 2                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i16, ptr %i.v, align 4, !tbaa !52
  %i.x = load <2 x i16>, ptr %i.u, align 2, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.z = load i16, ptr %i.y, align 2, !tbaa !32
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 11
  %i.ac = icmp eq i32 %0, 0                       ; 2 uses
  %i.ad = add nsw i32 %i.p, -4
  %i.ae = select i1 %i.ac, i32 %i.ad, i32 -4
  %spec.select = add nsw i32 %i.ae, %i.t
  %i.af = shl nuw nsw i32 %i.p, 1
  %i.ag = add nuw nsw i32 %i.af, 16
  %.pn.v = select i1 %i.ac, i32 3, i32 4
  %.pn = shl nuw nsw i32 %i.s, %.pn.v
  %.0 = add nuw nsw i32 %i.ag, %.pn               ; 3 uses
  %i.ah = icmp samesign ult i32 %2, %.0
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 3, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ai = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #12 ; 16 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %4, align 4, !tbaa !28
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %.sroa.4.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %i.p, ptr %.sroa.4.0..0.4.sroa_idx, align 8
  %.sroa.7.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.t, ptr %.sroa.7.0..0.4.sroa_idx, align 4
  %.sroa.11.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store <2 x i16> %i.x, ptr %.sroa.11.0..0.4.sroa_idx, align 8
  %.sroa.13.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %.sroa.1328.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 %i.ab, ptr %.sroa.1328.0..0.4.sroa_idx, align 4
  %.sroa.14.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i32 %spec.select, ptr %.sroa.14.0..0.4.sroa_idx, align 8
  %.sroa.17.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.17.0..0.4.sroa_idx, i8 0, i64 28, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %1, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i32 %.0, ptr %i.al, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !15
  %i.an = zext i16 %i.o to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an ; 5 uses
  %trunc = trunc nuw i32 %0 to i1
  %i.ap = zext i16 %i.w to i64                    ; 2 uses
  br i1 %trunc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !16
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  %i.au = load i16, ptr %i.at, align 2, !tbaa !16
  %i.av = zext i16 %i.au to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink84 = phi ptr [ null, %bb.q ], [ %i.ao, %bb.p ]
  %.sink83 = phi ptr [ %i.ao, %bb.q ], [ null, %bb.p ]
  %.sink82 = phi i32 [ %i.ax, %bb.q ], [ %i.as, %bb.p ]
  %.sink = phi i32 [ %i.az, %bb.q ], [ %i.av, %bb.p ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sink84, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sink83, ptr %i.bb, align 8, !tbaa !20
  store i32 %.sink82, ptr %.sroa.13.0..0.4.sroa_idx, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 %.sink, ptr %i.bc, align 8, !tbaa !22
  %.not81 = icmp eq ptr %3, null
  br i1 %.not81, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.0, ptr %3, align 4, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.a, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.074 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ %i.ai, %bb.s ], [ %i.ai, %bb.r ]
  ret ptr %.074
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @utrie2_openDummy_78(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %0, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !28
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %. = select i1 %i.c, i32 4632, i32 5024         ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #12 ; 19 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %3, align 4, !tbaa !28
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  %i.f = zext nneg i32 %. to i64
  %i.g = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.f) #12 ; 84 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.g, ptr %i.h, align 8, !tbaa !33
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.g, label %vector.ph

bb.g:                                             ; preds = %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.d)
  store i32 7, ptr %3, align 4, !tbaa !28
  br label %.loopexit

vector.ph:                                        ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %., ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i8 1, ptr %i.k, align 4, !tbaa !36
  %.113 = select i1 %i.c, i32 2112, i32 0         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 2112, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 196, ptr %i.m, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i16 0, ptr %i.n, align 8, !tbaa !37
  %i.o = trunc nuw nsw i32 %.113 to i16           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store i16 %i.o, ptr %i.p, align 2, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %1, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %2, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !18
  %i.t = add nuw nsw i32 %.113, 192
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !19
  store i32 1416784178, ptr %i.g, align 4, !tbaa !30
  %i.v = trunc nuw nsw i32 %0 to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i16 %i.v, ptr %i.w, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.y = insertelement <4 x i16> <i16 2112, i16 49, i16 0, i16 poison>, i16 %i.o, i64 3
  store <4 x i16> %i.y, ptr %i.x, align 2, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i16 0, ptr %i.z, align 2, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !15
  %i.ab = lshr exact i32 %.113, 2
  %i.ac = trunc nuw nsw i32 %i.ab to i16
  %i.ad = getelementptr i8, ptr %i.g, i64 4176
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ac, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 10 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.4, %vector.body ] ; 6 uses
  %i.ae = shl nuw nsw i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.af, align 2, !tbaa !16
  %index.next = shl nuw i64 %index, 1
  %i.ag = getelementptr i8, ptr %i.aa, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.ag, i64 32
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  store <8 x i16> %broadcast.splat, ptr %next.gep.1, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 2, !tbaa !16
  %index.next.1 = shl nuw i64 %index, 1
  %i.ai = getelementptr i8, ptr %i.aa, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.ai, i64 64
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  store <8 x i16> %broadcast.splat, ptr %next.gep.2, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 2, !tbaa !16
  %index.next.2 = shl nuw i64 %index, 1
  %i.ak = getelementptr i8, ptr %i.aa, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.ak, i64 96
  %i.al = getelementptr i8, ptr %i.ak, i64 112
  store <8 x i16> %broadcast.splat, ptr %next.gep.3, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.al, align 2, !tbaa !16
end_hunk_0
