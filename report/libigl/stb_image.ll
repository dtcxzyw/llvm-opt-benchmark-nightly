inline.NumInlined: 824
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL14stbi__pnm_testP13stbi__context:bb.a
bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ai, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 %i.ao
  %.pre.i10 = load i8, ptr %i.ai, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

_ZL19stbi__refill_bufferP13stbi__context.exit.i11: ; preds = %bb.k, %bb.j
  %i.aq = phi i8 [ 0, %bb.j ], [ %.pre.i10, %bb.k ]
  %.sink.i.i12 = phi ptr [ %i.an, %bb.j ], [ %i.ap, %bb.k ]
  store ptr %.sink.i.i12, ptr %i.c, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit14

_ZL10stbi__get8P13stbi__context.exit14:           ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11
  %.0.i13 = phi i8 [ %i.ab, %bb.g ], [ %i.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11 ]
  %.not = icmp ne i8 %.0.i, 80
  %i.as = add i8 %.0.i13, -55
  %or.cond = icmp ult i8 %i.as, -2
  %or.cond8 = or i1 %.not, %or.cond
  br i1 %or.cond8, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.l

_ZL10stbi__get8P13stbi__context.exit14.thread:    ; preds = %bb.h, %_ZL10stbi__get8P13stbi__context.exit14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !9
  store <2 x ptr> %i.au, ptr %i.a, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit14, %_ZL10stbi__get8P13stbi__context.exit14.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit14.thread ], [ 1, %_ZL10stbi__get8P13stbi__context.exit14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !96
  store i32 %i.d, ptr %1, align 4, !tbaa !12
  %i.e = load i32, ptr %i.a, align 4, !tbaa !97   ; 2 uses
  store i32 %i.e, ptr %2, align 4, !tbaa !12
  %.not40 = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !98  ; 5 uses
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.pre, ptr %3, align 4, !tbaa !12
  %.pre4 = load i32, ptr %i.a, align 4, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ %.pre4, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.h = or i32 %i.g, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.j = udiv i32 2147483647, %i.g
  %.not23.i = icmp sgt i32 %.pre, %i.j
  br i1 %.not23.i, label %bb.g, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.k = mul i32 %i.g, %.pre                      ; 4 uses
  %i.l = or i32 %i.f, %i.k
  %or.cond.not.i10.i = icmp sgt i32 %i.l, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.m = icmp eq i32 %i.f, 0                      ; 2 uses
  br i1 %i.m, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.n = udiv i32 2147483647, %i.f
  %.not.i = icmp sgt i32 %i.k, %i.n
  br i1 %.not.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.n

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  br i1 %i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.o = udiv i32 2147483647, %i.g
  %.not23.i.i = icmp sgt i32 %.pre, %i.o
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mad3sizes_validiiii.exit, %_ZL21stbi__mul2sizes_validii.exit.i.i
  br i1 %i.m, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.p = udiv i32 2147483647, %i.f
  %.not.i.i = icmp sgt i32 %i.k, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.q = mul i32 %i.k, %i.f                       ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.r) #34 ; 7 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.h

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.n

bb.h:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %.not.i45 = icmp eq ptr %i.u, null
  br i1 %.not.i45, label %..thread_crit_edge.i, label %bb.i

..thread_crit_edge.i:                             ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !25
  br label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp sgt i32 %i.q, %i.ac
  br i1 %i.ad, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %sext.i = shl i64 %i.ab, 32
  %i.ae = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.y, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %i.ae
  %i.ai = sub nsw i32 %i.q, %i.ac
  %i.aj = tail call noundef i32 %i.u(ptr noundef %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ai), !inline_history !373 ; 0 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !25
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.i, %..thread_crit_edge.i
  %i.al = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.w, %bb.i ]
  %i.am = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.r ; 2 uses
  %.not32.i = icmp ugt ptr %i.an, %i.al
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.am, i64 %i.r, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.j, %.thread.i, %bb.k
  %.not43 = icmp eq i32 %4, 0
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %.not44 = icmp eq i32 %4, %i.ap
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %0, align 8, !tbaa !96
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !97
  %i.as = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.s, i32 noundef %i.ap, i32 noundef %4, i32 noundef %i.aq, i32 noundef %i.ar)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.l, %bb.a, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.g
  %.034 = phi ptr [ null, %bb.a ], [ %i.as, %bb.m ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.034
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not135 = icmp eq i32 %i.u, 0
  br i1 %.not135, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.87, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.w = load i8, ptr %i.a, align 16, !tbaa !23
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.011437 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.y = load i128, ptr %i.a, align 16
  %i.z = xor i128 %i.y, 144150481438637697380701673535474650950
  %i.aa = getelementptr i8, ptr %i.a, i64 7
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 526417854750532455411190335003243059
  %i.ad = or i128 %i.z, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 1, i32 %.011437 ; 2 uses
  %i.ah = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !23
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %.lr.ph
  %i.ak = icmp eq i32 %spec.select, 0
  br i1 %i.ak, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store ptr @.str.89, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.al = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.am = load i16, ptr %i.a, align 16
  %i.an = xor i16 %i.am, 22829
  %i.ao = getelementptr i8, ptr %i.a, i64 2
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 32
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not137 = icmp eq i32 %i.au, 0
  br i1 %.not137, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !9
  %i.aw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, i32 noundef 10) #33 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32                  ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.ay = load i8, ptr %.promoted, align 1, !tbaa !23 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %.lr.ph39, label %sub_0

.lr.ph39:                                         ; preds = %bb.g, %.lr.ph39
  %i.ba = phi ptr [ %i.bb, %.lr.ph39 ], [ %.promoted, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 4 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %.lr.ph39, label %sub_0, !llvm.loop !375

sub_0:                                            ; preds = %.lr.ph39, %bb.g
  %i.be = phi i8 [ %i.ay, %bb.g ], [ %i.bc, %.lr.ph39 ]
  %.lcssa = phi ptr [ %.promoted, %bb.g ], [ %i.bb, %.lr.ph39 ] ; 3 uses
  %.not60 = icmp eq i8 %i.be, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not61 = icmp eq i8 %i.bg, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 32
  br i1 %i.bj, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3 ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !9
  %i.bl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bk, ptr noundef null, i32 noundef 10) #33 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 11 uses
  store i32 %i.bm, ptr %1, align 4, !tbaa !12
  store i32 %i.ax, ptr %2, align 4, !tbaa !12
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bn = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bn, i32 3, i32 %4 ; 12 uses
  %i.bo = or i32 %i.bm, %i.ax
  %or.cond.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %or.cond.not.i.i, label %bb.k, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %i.ax, 0                    ; 2 uses
  br i1 %i.bp, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.k
  %i.bq = udiv i32 2147483647, %i.ax
  %.not34.i = icmp slt i32 %i.bq, %i.bm
  br i1 %.not34.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.k
  %i.br = mul nsw i32 %i.bm, %i.ax                ; 4 uses
  %i.bs = or i32 %i.br, %spec.store.select
  %or.cond.not.i16.i = icmp sgt i32 %i.bs, -1
  br i1 %or.cond.not.i16.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.bt = udiv i32 2147483647, %spec.store.select
  %.not.i = icmp sle i32 %i.br, %i.bt
  %i.bu = mul nsw i32 %i.br, %spec.store.select
  %or.cond13.not = icmp ult i32 %i.bu, 536870912
  %or.cond180 = select i1 %.not.i, i1 %or.cond13.not, i1 false
  br i1 %or.cond180, label %bb.m, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %bb.j, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.l
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.bp, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.m
  %i.bv = udiv i32 2147483647, %i.ax
  %.not34.i.i = icmp slt i32 %i.bv, %i.bm
  br i1 %.not34.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.m
  %i.bw = shl i32 %spec.store.select, 2
  %i.bx = mul i32 %i.bw, %i.br
  %i.by = sext i32 %i.bx to i64
  %i.bz = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.by) #34 ; 11 uses
  %.not141 = icmp eq ptr %i.bz, null
  br i1 %.not141, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ca = add i32 %i.bm, -32768
  %or.cond = icmp ult i32 %i.ca, -32760
  br i1 %or.cond, label %bb.o, label %.preheader18

.preheader18:                                     ; preds = %bb.n
  %i.cb = icmp sgt i32 %i.ax, 0
  br i1 %i.cb, label %.lr.ph57, label %._crit_edge58.thread

.lr.ph57:                                         ; preds = %.preheader18
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 17 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 28 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 18 uses
  %i.ck = shl i64 %i.bl, 2
  %i.cl = and i64 %i.ck, 4294967292
  %i.cm = icmp slt i32 %spec.store.select, 3
  %i.cn = sext i32 %spec.store.select to i64
  %i.co = and i64 %i.bl, 4294967295
  %wide.trip.count106 = and i64 %i.aw, 2147483647
  %wide.trip.count = and i64 %i.bl, 2147483647
  br label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.r
  %.0119 = phi i32 [ %i.cr, %bb.r ], [ 0, %bb.n ] ; 2 uses
  %i.cp = icmp slt i32 %.0119, %i.ax
  br i1 %i.cp, label %bb.p, label %._crit_edge58.thread

bb.p:                                             ; preds = %bb.o, %_ZL17stbi__hdr_convertPfPhi.exit
  %.0123 = phi i32 [ %82, %_ZL17stbi__hdr_convertPfPhi.exit ], [ 0, %bb.o ] ; 2 uses
  %.1120 = phi i32 [ %.2121, %_ZL17stbi__hdr_convertPfPhi.exit ], [ %.0119, %bb.o ] ; 2 uses
  %i.cq = icmp slt i32 %.0123, %i.bm
  br i1 %i.cq, label %5, label %bb.r

5:                                                ; preds = %bb.p, %bb.ai
  %.1124 = phi i32 [ %.0123, %bb.p ], [ 1, %bb.ai ] ; 2 uses
  %.2121 = phi i32 [ %.1120, %bb.p ], [ 0, %bb.ai ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !21       ; 2 uses
  %.not.i147 = icmp eq ptr %7, null
  br i1 %.not.i147, label %..thread_crit_edge.i, label %8

..thread_crit_edge.i:                             ; preds = %5
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !25
  br label %.thread.i

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %10 = load ptr, ptr %9, align 8, !tbaa !25      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %12 = load ptr, ptr %11, align 8, !tbaa !24     ; 3 uses
  %13 = ptrtoint ptr %10 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14                          ; 2 uses
  %16 = trunc i64 %15 to i32                      ; 2 uses
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %.thread.i

18:                                               ; preds = %8
  %sext.i = shl i64 %15, 32
  %19 = ashr exact i64 %sext.i, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 1 %12, i64 %19, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = getelementptr inbounds i8, ptr %i.c, i64 %19
  %23 = sub nsw i32 4, %16
  %24 = call noundef i32 %7(ptr noundef %21, ptr noundef nonnull %22, i32 noundef %23), !inline_history !373 ; 0 uses
  %25 = load ptr, ptr %9, align 8, !tbaa !25
  store ptr %25, ptr %11, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %8, %..thread_crit_edge.i
  %26 = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %10, %8 ]
  %27 = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %12, %8 ] ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  %.not32.i = icmp ugt ptr %28, %26
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %29

29:                                               ; preds = %.thread.i
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %31 = load i32, ptr %27, align 1
  store i32 %31, ptr %i.c, align 4
  store ptr %28, ptr %30, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %18, %.thread.i, %29
  %32 = mul i32 %spec.store.select, %i.bm
  %33 = mul i32 %32, %.2121
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %34
  %36 = mul nsw i32 %.1124, %spec.store.select
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %35, i64 %37 ; 9 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !23      ; 2 uses
  %.not.i148 = icmp eq i8 %40, 0
  br i1 %.not.i148, label %74, label %41

41:                                               ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %42 = zext i8 %40 to i32
  %43 = add nsw i32 %42, -136
  %44 = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %43) #33 ; 3 uses
  %45 = icmp slt i32 %spec.store.select, 3
  %46 = load i8, ptr %i.c, align 4, !tbaa !23     ; 2 uses
  br i1 %45, label %bb.q, label %59

bb.q:                                             ; preds = %41
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, %47
  %52 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %53 = load i8, ptr %52, align 2, !tbaa !23
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %51, %54
  %56 = uitofp nneg i32 %55 to float
  %57 = fmul float %44, %56
  %58 = fdiv float %57, 3.000000e+00
  br label %69

59:                                               ; preds = %41
  %60 = uitofp i8 %46 to float
  %61 = fmul float %44, %60
  %62 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %63 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %64 = load <2 x i8>, ptr %62, align 1, !tbaa !23
  %65 = uitofp <2 x i8> %64 to <2 x float>
  %66 = insertelement <2 x float> poison, float %44, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = fmul <2 x float> %67, %65
  store <2 x float> %68, ptr %63, align 4, !tbaa !58
  br label %69

69:                                               ; preds = %59, %bb.q
  %.sink = phi float [ %58, %bb.q ], [ %61, %59 ]
  store float %.sink, ptr %38, align 4, !tbaa !58
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %70
    i32 4, label %72
  ]

70:                                               ; preds = %69
  %71 = getelementptr inbounds nuw i8, ptr %38, i64 4
  store float 1.000000e+00, ptr %71, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %38, i64 12
  store float 1.000000e+00, ptr %73, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

74:                                               ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %75
    i32 3, label %77
    i32 2, label %79
    i32 1, label %81
  ]

75:                                               ; preds = %74
  %76 = getelementptr inbounds nuw i8, ptr %38, i64 12
  store float 1.000000e+00, ptr %76, align 4, !tbaa !58
  br label %77

77:                                               ; preds = %75, %74
  %78 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store float 0.000000e+00, ptr %78, align 4, !tbaa !58
  store <2 x float> zeroinitializer, ptr %38, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %38, i64 4
  store float 1.000000e+00, ptr %80, align 4, !tbaa !58
  br label %81

81:                                               ; preds = %79, %74
  store float 0.000000e+00, ptr %38, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %69, %70, %72, %74, %77, %81
  %82 = add nsw i32 %.1124, 1
  br label %bb.p, !llvm.loop !376

bb.r:                                             ; preds = %bb.p
  %i.cr = add nsw i32 %.1120, 1
  br label %bb.o, !llvm.loop !377

bb.s:                                             ; preds = %.lr.ph57, %._crit_edge54
  %indvars.iv103 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next104, %._crit_edge54 ] ; 2 uses
  %.011656 = phi ptr [ null, %.lr.ph57 ], [ %.1117, %._crit_edge54 ] ; 4 uses
  %i.cs = load ptr, ptr %i.cc, align 8, !tbaa !24 ; 4 uses
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !25 ; 3 uses
  %i.cu = icmp ult ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 2 uses
  store ptr %i.cv, ptr %i.cc, align 8, !tbaa !24
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.u:                                             ; preds = %bb.s
  %i.cx = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i149.a = icmp eq i32 %i.cx, 0
  br i1 %.not.i149.a, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.da = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.db = call noundef i32 %i.cy(ptr noundef %i.cz, ptr noundef nonnull %i.ch, i32 noundef %i.da), !inline_history !346 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds i8, ptr %i.ch, i64 %i.dd
  %.pre.i150.a = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.x, %bb.w
  %i.df = phi i8 [ 0, %bb.w ], [ %.pre.i150.a, %bb.x ]
  %.sink.i.i = phi ptr [ %i.cj, %bb.w ], [ %i.de, %bb.x ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.t, %bb.u, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.dg = phi ptr [ %i.ct, %bb.t ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.ct, %bb.u ] ; 3 uses
  %i.dh = phi ptr [ %i.cv, %bb.t ], [ %i.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.cs, %bb.u ] ; 4 uses
  %.0.i151 = phi i8 [ %i.cw, %bb.t ], [ %i.df, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.u ] ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.dg
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  store ptr %i.dj, ptr %i.cc, align 8, !tbaa !24
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit157

bb.z:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.dl = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i152 = icmp eq i32 %i.dl, 0
  br i1 %.not.i152, label %_ZL10stbi__get8P13stbi__context.exit157, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.dn = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.do = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.dp = call noundef i32 %i.dm(ptr noundef %i.dn, ptr noundef nonnull %i.ch, i32 noundef %i.do), !inline_history !346 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i154

bb.ac:                                            ; preds = %bb.aa
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds i8, ptr %i.ch, i64 %i.dr
  %.pre.i153 = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i154

_ZL19stbi__refill_bufferP13stbi__context.exit.i154: ; preds = %bb.ac, %bb.ab
  %i.dt = phi i8 [ 0, %bb.ab ], [ %.pre.i153, %bb.ac ]
  %.sink.i.i155 = phi ptr [ %i.cj, %bb.ab ], [ %i.ds, %bb.ac ] ; 2 uses
  store ptr %.sink.i.i155, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit157

_ZL10stbi__get8P13stbi__context.exit157:          ; preds = %bb.y, %bb.z, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154
  %i.du = phi ptr [ %i.dg, %bb.y ], [ %.sink.i.i155, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ %i.dg, %bb.z ] ; 3 uses
  %i.dv = phi ptr [ %i.dj, %bb.y ], [ %i.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ %i.dh, %bb.z ] ; 4 uses
  %.0.i156 = phi i8 [ %i.dk, %bb.y ], [ %i.dt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ 0, %bb.z ] ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.du
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit157
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  store ptr %i.dx, ptr %i.cc, align 8, !tbaa !24
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit163

bb.ae:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit157
  %i.dz = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i158 = icmp eq i32 %i.dz, 0
  br i1 %.not.i158, label %_ZL10stbi__get8P13stbi__context.exit163, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.eb = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.ec = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ed = call noundef i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %i.ch, i32 noundef %i.ec), !inline_history !346 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i160

bb.ah:                                            ; preds = %bb.af
  %i.ef = sext i32 %i.ed to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ch, i64 %i.ef
  %.pre.i159 = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i160

_ZL19stbi__refill_bufferP13stbi__context.exit.i160: ; preds = %bb.ah, %bb.ag
  %i.eh = phi i8 [ 0, %bb.ag ], [ %.pre.i159, %bb.ah ]
  %.sink.i.i161 = phi ptr [ %i.cj, %bb.ag ], [ %i.eg, %bb.ah ] ; 2 uses
  store ptr %.sink.i.i161, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit163

_ZL10stbi__get8P13stbi__context.exit163:          ; preds = %bb.ad, %bb.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160
  %i.ei = phi ptr [ %i.du, %bb.ad ], [ %.sink.i.i161, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ %i.du, %bb.ae ]
  %i.ej = phi ptr [ %i.dx, %bb.ad ], [ %i.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ %i.dv, %bb.ae ] ; 3 uses
  %.0.i162 = phi i8 [ %i.dy, %bb.ad ], [ %i.eh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ 0, %bb.ae ] ; 3 uses
  %i.ek = icmp eq i8 %.0.i151, 2
  %i.el = icmp eq i8 %.0.i156, 2
  %or.cond3.not12 = and i1 %i.ek, %i.el
  %.not143 = icmp sgt i8 %.0.i162, -1
  %or.cond146 = and i1 %or.cond3.not12, %.not143
  br i1 %or.cond146, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 %.0.i151, ptr %i.d, align 1, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.0.i156, ptr %i.em, align 1, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.0.i162, ptr %i.en, align 1, !tbaa !23
  %i.eo = call fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef nonnull %0)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !23
  call fastcc void @_ZL17stbi__hdr_convertPfPhi(ptr noundef %i.bz, ptr noundef %i.d, i32 noundef %spec.store.select)
  call void @free(ptr noundef %.011656) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %5

bb.aj:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit163
  %i.eq = zext nneg i8 %.0.i162 to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = icmp ult ptr %i.ej, %i.ei
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.et, ptr %i.cc, align 8, !tbaa !24
  %i.eu = load i8, ptr %i.ej, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit169

bb.al:                                            ; preds = %bb.aj
  %i.ev = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i164 = icmp eq i32 %i.ev, 0
  br i1 %.not.i164, label %_ZL10stbi__get8P13stbi__context.exit169, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.ex = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.ey = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ez = call noundef i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.ch, i32 noundef %i.ey), !inline_history !346 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i166

bb.ao:                                            ; preds = %bb.am
  %i.fb = sext i32 %i.ez to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ch, i64 %i.fb
  %.pre.i165 = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i166

_ZL19stbi__refill_bufferP13stbi__context.exit.i166: ; preds = %bb.ao, %bb.an
  %i.fd = phi i8 [ 0, %bb.an ], [ %.pre.i165, %bb.ao ]
  %.sink.i.i167 = phi ptr [ %i.cj, %bb.an ], [ %i.fc, %bb.ao ]
  store ptr %.sink.i.i167, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit169

_ZL10stbi__get8P13stbi__context.exit169:          ; preds = %bb.ak, %bb.al, %_ZL19stbi__refill_bufferP13stbi__context.exit.i166
  %.0.i168 = phi i8 [ %i.eu, %bb.ak ], [ %i.fd, %_ZL19stbi__refill_bufferP13stbi__context.exit.i166 ], [ 0, %bb.al ]
  %i.fe = zext i8 %.0.i168 to i32
  %i.ff = or disjoint i32 %i.er, %i.fe
  %.not144 = icmp eq i32 %i.ff, %i.bm
  br i1 %.not144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit169
  call void @free(ptr noundef %i.bz) #33
  call void @free(ptr noundef %.011656) #33
  store ptr @.str.93, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.aq:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit169
  %i.fg = icmp eq ptr %.011656, null
  br i1 %i.fg, label %_ZL17stbi__malloc_mad2iii.exit, label %.preheader16.preheader

_ZL17stbi__malloc_mad2iii.exit:                   ; preds = %bb.aq
  %i.fh = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.cl) #34 ; 2 uses
  %.not145 = icmp eq ptr %i.fh, null
  br i1 %.not145, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %.preheader16.preheader

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL17stbi__malloc_mad2iii.exit
  call void @free(ptr noundef %i.bz) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

.preheader16.preheader:                           ; preds = %bb.aq, %_ZL17stbi__malloc_mad2iii.exit
  %.1117 = phi ptr [ %i.fh, %_ZL17stbi__malloc_mad2iii.exit ], [ %.011656, %bb.aq ] ; 7 uses
  br label %.preheader16

.lr.ph53:                                         ; preds = %..critedge_crit_edge
  %i.fi = mul nuw nsw i64 %indvars.iv103, %i.co
  br label %bb.bk

.preheader16:                                     ; preds = %.preheader16.preheader, %..critedge_crit_edge
  %indvars.iv95 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next96, %..critedge_crit_edge ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %.1117, i64 %indvars.iv95
  %invariant.gep178 = getelementptr i8, ptr %.1117, i64 %indvars.iv95 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader16, %.loopexit
  %i.fj = phi i32 [ %i.bm, %.preheader16 ], [ %i.hs, %.loopexit ] ; 2 uses
  %.212549 = phi i32 [ 0, %.preheader16 ], [ %.5, %.loopexit ] ; 5 uses
  %i.fk = load ptr, ptr %i.cc, align 8, !tbaa !24 ; 3 uses
  %i.fl = load ptr, ptr %i.cd, align 8, !tbaa !25 ; 2 uses
  %i.fm = icmp ult ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 2 uses
  store ptr %i.fn, ptr %i.cc, align 8, !tbaa !24
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit178

bb.at:                                            ; preds = %bb.ar
  %i.fp = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i173 = icmp eq i32 %i.fp, 0
  br i1 %.not.i173, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.fr = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.fs = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ft = call noundef i32 %i.fq(ptr noundef %i.fr, ptr noundef nonnull %i.ch, i32 noundef %i.fs), !inline_history !346 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i175

bb.aw:                                            ; preds = %bb.au
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ch, i64 %i.fv
  %.pre.i174 = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i175

_ZL19stbi__refill_bufferP13stbi__context.exit.i175: ; preds = %bb.aw, %bb.av
  %i.fx = phi i8 [ 0, %bb.av ], [ %.pre.i174, %bb.aw ]
  %.sink.i.i176 = phi ptr [ %i.cj, %bb.av ], [ %i.fw, %bb.aw ] ; 2 uses
  store ptr %.sink.i.i176, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit178

_ZL10stbi__get8P13stbi__context.exit178:          ; preds = %bb.as, %_ZL19stbi__refill_bufferP13stbi__context.exit.i175
  %i.fy = phi ptr [ %i.fl, %bb.as ], [ %.sink.i.i176, %_ZL19stbi__refill_bufferP13stbi__context.exit.i175 ]
  %i.fz = phi ptr [ %i.fn, %bb.as ], [ %i.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i175 ] ; 3 uses
  %.0.i177 = phi i8 [ %i.fo, %bb.as ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i175 ] ; 4 uses
  %i.ga = zext i8 %.0.i177 to i32                 ; 2 uses
  %i.gb = icmp ugt i8 %.0.i177, -128
  br i1 %i.gb, label %bb.ax, label %_ZL10stbi__get8P13stbi__context.exit178.thread

bb.ax:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit178
  %i.gc = icmp ult ptr %i.fz, %i.fy
  br i1 %i.gc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store ptr %i.gd, ptr %i.cc, align 8, !tbaa !24
  %i.ge = load i8, ptr %i.fz, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit184

bb.az:                                            ; preds = %bb.ax
  %i.gf = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not.i179 = icmp eq i32 %i.gf, 0
  br i1 %.not.i179, label %_ZL10stbi__get8P13stbi__context.exit184, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.gh = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.gi = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.gj = call noundef i32 %i.gg(ptr noundef %i.gh, ptr noundef nonnull %i.ch, i32 noundef %i.gi), !inline_history !346 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i181

bb.bc:                                            ; preds = %bb.ba
  %i.gl = sext i32 %i.gj to i64
  %i.gm = getelementptr inbounds i8, ptr %i.ch, i64 %i.gl
  %.pre.i180 = load i8, ptr %i.ch, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i181

_ZL19stbi__refill_bufferP13stbi__context.exit.i181: ; preds = %bb.bc, %bb.bb
  %i.gn = phi i8 [ 0, %bb.bb ], [ %.pre.i180, %bb.bc ]
  %.sink.i.i182 = phi ptr [ %i.cj, %bb.bb ], [ %i.gm, %bb.bc ]
  store ptr %.sink.i.i182, ptr %i.cd, align 8, !tbaa !25
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit184

_ZL10stbi__get8P13stbi__context.exit184:          ; preds = %bb.ay, %bb.az, %_ZL19stbi__refill_bufferP13stbi__context.exit.i181
  %.0.i183 = phi i8 [ %i.ge, %bb.ay ], [ %i.gn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i181 ], [ 0, %bb.az ] ; 5 uses
  %i.go = and i8 %.0.i177, 127                    ; 3 uses
  %i.gp = zext nneg i8 %i.go to i32               ; 3 uses
  %i.gq = icmp samesign ult i32 %i.fj, %i.gp
  br i1 %i.gq, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZL10stbi__get8P13stbi__context.exit184
  %.not63 = icmp eq i8 %i.go, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader
  %i.gr = sext i32 %.212549 to i64                ; 2 uses
  %xtraiter = and i32 %i.gp, 3                    ; 3 uses
  %i.gs = icmp samesign ult i8 %i.go, 4
  br i1 %i.gs, label %.lr.ph47.epil.preheader, label %.lr.ph47.preheader.new

.lr.ph47.preheader.new:                           ; preds = %.lr.ph47.preheader
  %unroll_iter = and i32 %i.gp, 124
  br label %.lr.ph47

end_hunk_0
