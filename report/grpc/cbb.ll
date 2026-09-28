Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/cbb?download=true
inline.NumInlined: 76
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CBB_add_asn1_oid_from_text:bb.a

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ne i64 %i.t, 2
  %i.w = load i64, ptr %i.g, align 8              ; 3 uses
  %i.x = icmp ugt i64 %i.w, 39
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  %i.y = icmp ugt i64 %i.w, -81
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.y
  br i1 %or.cond3, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = mul nuw nsw i64 %i.t, 40
  %i.aa = add nuw i64 %i.w, %i.z                  ; 3 uses
  %.not31.i = icmp eq i64 %i.aa, 0
  br i1 %.not31.i, label %.lr.ph39.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.02033.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.aa, %bb.j ]
  %.02132.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ab = add nuw nsw i32 %.02132.i, 1            ; 2 uses
  %i.ac = lshr i64 %.02033.i, 7                   ; 2 uses
  %.not.i20 = icmp eq i64 %i.ac, 0
  br i1 %.not.i20, label %.lr.ph39.preheader.i, label %.lr.ph.i, !llvm.loop !37

.lr.ph39.preheader.i:                             ; preds = %.lr.ph.i, %bb.j
  %.021.lcssa.i = phi i32 [ 1, %bb.j ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.01934.i = add i32 %.021.lcssa.i, -1
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %CBB_add_u8.exit.i, %.lr.ph39.preheader.i
  %.01936.i = phi i32 [ %.019.i, %CBB_add_u8.exit.i ], [ %.01934.i, %.lr.ph39.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ad = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZL19add_base128_integerP6cbb_stm.exit.thread, label %CBB_add_u8.exit.i

_ZL19add_base128_integerP6cbb_stm.exit.thread:    ; preds = %.lr.ph39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread

CBB_add_u8.exit.i:                                ; preds = %.lr.ph39.i
  %.not24.i = icmp eq i32 %.01936.i, 0
  %i.ae = mul i32 %.01936.i, 7
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.aa, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 127
  %masksel.i = select i1 %.not24.i, i8 0, i8 -128
  %.0.i21 = or disjoint i8 %i.ai, %masksel.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !19
  store i8 %.0.i21, ptr %i.aj, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %.019.i = add nsw i32 %.01936.i, -1             ; 2 uses
  %.not26.not.i = icmp ult i32 %.019.i, %.021.lcssa.i
  br i1 %.not26.not.i, label %.lr.ph39.i, label %_ZL19add_base128_integerP6cbb_stm.exit.preheader, !llvm.loop !0

_ZL19add_base128_integerP6cbb_stm.exit.preheader: ; preds = %CBB_add_u8.exit.i
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !29
  %.not1372 = icmp eq i64 %i.ak, 0
  br i1 %.not1372, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL19add_base128_integerP6cbb_stm.exit.preheader, %_ZL19add_base128_integerP6cbb_stm.exit45
  %i.al = call i32 @CBS_get_u64_decimal(ptr noundef nonnull %3, ptr noundef nonnull %i.f) #11
  %.not.i22 = icmp eq i32 %i.al, 0
  br i1 %.not.i22, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.am = call i32 @CBS_get_u8(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #11
  %.not4.i23 = icmp eq i32 %i.am, 0
  br i1 %.not4.i23, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread64, label %bb.l

_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread64: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load i8, ptr %i.b, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit25, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread62

_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread62: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread

_ZL20parse_dotted_decimalP6cbs_stPm.exit25:       ; preds = %bb.l
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !29
  %.not70 = icmp eq i64 %i.ap, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %.not70, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread64, %_ZL20parse_dotted_decimalP6cbs_stPm.exit25
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %.not31.i26 = icmp eq i64 %i.aq, 0
  br i1 %.not31.i26, label %.lr.ph39.preheader.i31, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.m, %.lr.ph.i27
  %.02033.i28 = phi i64 [ %i.as, %.lr.ph.i27 ], [ %i.aq, %bb.m ]
  %.02132.i29 = phi i32 [ %i.ar, %.lr.ph.i27 ], [ 0, %bb.m ]
  %i.ar = add nuw nsw i32 %.02132.i29, 1          ; 2 uses
  %i.as = lshr i64 %.02033.i28, 7                 ; 2 uses
  %.not.i30 = icmp eq i64 %i.as, 0
  br i1 %.not.i30, label %.lr.ph39.preheader.i31, label %.lr.ph.i27, !llvm.loop !37

.lr.ph39.preheader.i31:                           ; preds = %.lr.ph.i27, %bb.m
  %.021.lcssa.i32 = phi i32 [ 1, %bb.m ], [ %i.ar, %.lr.ph.i27 ] ; 2 uses
  %.01934.i33 = add i32 %.021.lcssa.i32, -1
  br label %.lr.ph39.i34

.lr.ph39.i34:                                     ; preds = %CBB_add_u8.exit.i37, %.lr.ph39.preheader.i31
  %.01936.i35 = phi i32 [ %.019.i41, %CBB_add_u8.exit.i37 ], [ %.01934.i33, %.lr.ph39.preheader.i31 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.at = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not.i.i.i36 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i36, label %_ZL19add_base128_integerP6cbb_stm.exit45.thread, label %CBB_add_u8.exit.i37

_ZL19add_base128_integerP6cbb_stm.exit45.thread:  ; preds = %.lr.ph39.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread

CBB_add_u8.exit.i37:                              ; preds = %.lr.ph39.i34
  %.not24.i38 = icmp eq i32 %.01936.i35, 0
  %i.au = mul i32 %.01936.i35, 7
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 %i.aq, %i.av
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = and i8 %i.ax, 127
  %masksel.i39 = select i1 %.not24.i38, i8 0, i8 -128
  %.0.i40 = or disjoint i8 %i.ay, %masksel.i39
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !19
  store i8 %.0.i40, ptr %i.az, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.019.i41 = add nsw i32 %.01936.i35, -1         ; 2 uses
  %.not26.not.i42 = icmp ult i32 %.019.i41, %.021.lcssa.i32
  br i1 %.not26.not.i42, label %.lr.ph39.i34, label %_ZL19add_base128_integerP6cbb_stm.exit45, !llvm.loop !0

_ZL19add_base128_integerP6cbb_stm.exit45:         ; preds = %CBB_add_u8.exit.i37
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !29
  %.not13 = icmp eq i64 %i.ba, 0
  br i1 %.not13, label %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread, label %.lr.ph, !llvm.loop !38

_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread:  ; preds = %_ZL20parse_dotted_decimalP6cbs_stPm.exit25, %_ZL19add_base128_integerP6cbb_stm.exit45, %.lr.ph, %_ZL19add_base128_integerP6cbb_stm.exit.preheader, %bb.e, %bb.b, %_ZL19add_base128_integerP6cbb_stm.exit45.thread, %_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread62, %_ZL19add_base128_integerP6cbb_stm.exit.thread, %_ZL20parse_dotted_decimalP6cbs_stPm.exit19.thread54, %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread48, %bb.h, %bb.i, %_ZL20parse_dotted_decimalP6cbs_stPm.exit, %_ZL20parse_dotted_decimalP6cbs_stPm.exit19
  %.0 = phi i32 [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit ], [ 0, %bb.h ], [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit19.thread54 ], [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit19 ], [ 0, %bb.i ], [ 0, %_ZL19add_base128_integerP6cbb_stm.exit.thread ], [ 0, %_ZL19add_base128_integerP6cbb_stm.exit45.thread ], [ 0, %bb.e ], [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit25.thread62 ], [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread48 ], [ 0, %bb.b ], [ 1, %_ZL19add_base128_integerP6cbb_stm.exit.preheader ], [ 1, %_ZL19add_base128_integerP6cbb_stm.exit45 ], [ 0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit25 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread
  %.1 = phi i32 [ %.0, %_ZL20parse_dotted_decimalP6cbs_stPm.exit.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CBB_flush_asn1_set_of(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.a = tail call i32 @CBB_flush(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15
  %.not.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !17
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  %i.p = add i64 %i.h, %i.l
  %i.q = sub i64 %i.o, %i.p
  br label %CBB_len.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  br label %CBB_len.exit

CBB_len.exit:                                     ; preds = %bb.c, %bb.d
  %.0.i61 = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.d ]
  %.0.i50 = phi i64 [ %i.q, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  store ptr %.0.i61, ptr %1, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %.0.i50, ptr %i.t, align 8, !tbaa !29
  %.not4673 = icmp eq i64 %.0.i50, 0
  br i1 %.not4673, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %CBB_len.exit, %bb.f
  %.04274 = phi i64 [ %i.v, %bb.f ], [ 0, %CBB_len.exit ] ; 4 uses
  %i.u = call i32 @CBS_get_any_asn1_element(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str, i32 noundef 657) #11
  br label %._crit_edge.thread

bb.f:                                             ; preds = %.lr.ph
  %i.v = add i64 %.04274, 1                       ; 6 uses
  %.pr = load i64, ptr %i.t, align 8, !tbaa !29
  %.not46 = icmp eq i64 %.pr, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.f
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.x = load i8, ptr %i.b, align 8, !tbaa !15
  %.not.i51 = icmp eq i8 %i.x, 0
  br i1 %.not.i51, label %CBB_len.exit53.thread, label %bb.h

CBB_len.exit53.thread:                            ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %CBB_data.exit56

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !17
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  br label %CBB_data.exit56

CBB_data.exit56:                                  ; preds = %CBB_len.exit53.thread, %bb.h
  %.0.i5264 = phi i64 [ %i.ak, %bb.h ], [ %i.z, %CBB_len.exit53.thread ] ; 2 uses
  %.0.i55 = phi ptr [ %i.an, %bb.h ], [ %i.aa, %CBB_len.exit53.thread ]
  %i.ao = call ptr @OPENSSL_memdup(ptr noundef %.0.i55, i64 noundef %.0.i5264) #11 ; 3 uses
  %i.ap = call ptr @OPENSSL_calloc(i64 noundef %i.v, i64 noundef 16) #11 ; 7 uses
  %i.aq = icmp eq ptr %i.ao, null
  %i.ar = icmp eq ptr %i.ap, null
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %CBB_data.exit56
  store ptr %i.ao, ptr %1, align 8, !tbaa !28
  store i64 %.0.i5264, ptr %i.t, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.as = add nuw i64 %.03875, 1
  %exitcond.not = icmp eq i64 %.03875, %.04274
  br i1 %exitcond.not, label %bb.l, label %bb.k, !llvm.loop !40

bb.k:                                             ; preds = %bb.i, %bb.j
  %.03875 = phi i64 [ 0, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.03875
  %i.au = call i32 @CBS_get_any_asn1_element(ptr noundef nonnull %1, ptr noundef %i.at, ptr noundef null, ptr noundef null) #11
  %.not47 = icmp eq i32 %i.au, 0
  br i1 %.not47, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.j
  call void @qsort(ptr noundef %i.ap, i64 noundef %i.v, i64 noundef 16, ptr noundef nonnull @_ZL22compare_set_of_elementPKvS0_) #11
  %i.av = load i8, ptr %i.b, align 8, !tbaa !15
  %.not.i57 = icmp eq i8 %i.av, 0
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  br i1 %.not.i57, label %CBB_data.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !17
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  br label %CBB_data.exit59

CBB_data.exit59:                                  ; preds = %bb.l, %bb.m
  %.0.i58 = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ] ; 3 uses
  %2 = icmp eq i64 %.04274, 0
  br i1 %2, label %.epil.preheader, label %CBB_data.exit59.new

CBB_data.exit59.new:                              ; preds = %CBB_data.exit59
  %unroll_iter = and i64 %i.v, -2
  br label %bb.n

bb.n:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.1, %CBB_data.exit59.new
  %.077 = phi i64 [ 0, %CBB_data.exit59.new ], [ %i.bw, %_ZL14OPENSSL_memcpyPvPKvm.exit.1 ] ; 3 uses
  %.03976 = phi i64 [ 0, %CBB_data.exit59.new ], [ %i.bv, %_ZL14OPENSSL_memcpyPvPKvm.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %CBB_data.exit59.new ], [ %niter.next.1, %_ZL14OPENSSL_memcpyPvPKvm.exit.1 ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.077 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %.03976
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr readonly align 1 %i.bj, i64 %i.bh, i1 false)
  %.pre = load i64, ptr %i.bg, align 8, !tbaa !29
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.n, %bb.o
  %i.bl = phi i64 [ 0, %bb.n ], [ %.pre, %bb.o ]
  %i.bm = add i64 %i.bl, %.03976                  ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.077 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !29 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZL14OPENSSL_memcpyPvPKvm.exit.1, label %bb.p

bb.p:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr readonly align 1 %i.bs, i64 %i.bp, i1 false)
  %.pre.1 = load i64, ptr %i.bo, align 8, !tbaa !29
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.1

_ZL14OPENSSL_memcpyPvPKvm.exit.1:                 ; preds = %bb.p, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.bu = phi i64 [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %.pre.1, %bb.p ]
  %i.bv = add i64 %i.bu, %i.bm                    ; 2 uses
  %i.bw = add nuw i64 %.077, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !41

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.1
  %i.bx = and i64 %.04274, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %CBB_data.exit59
  %.077.epil.init = phi i64 [ 0, %CBB_data.exit59 ], [ %i.bw, %.loopexit.loopexit.unr-lcssa ]
  %.03976.epil.init = phi i64 [ 0, %CBB_data.exit59 ], [ %i.bv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i64 %i.v to i1
  call void @llvm.assume(i1 %lcmp.mod90)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.077.epil.init ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !29 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %.03976.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr readonly align 1 %i.cc, i64 %i.ca, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.loopexit.loopexit.unr-lcssa, %bb.q, %.epil.preheader, %CBB_data.exit56
  %.040 = phi i32 [ 0, %CBB_data.exit56 ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 1, %.epil.preheader ], [ 1, %bb.q ], [ 0, %bb.k ]
  call void @OPENSSL_free(ptr noundef %i.ao) #11
  call void @OPENSSL_free(ptr noundef %i.ap) #11
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %CBB_len.exit, %._crit_edge, %.loopexit, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ %.040, %.loopexit ], [ 1, %._crit_edge ], [ 1, %CBB_len.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge.thread
  %.2 = phi i32 [ %.1, %._crit_edge.thread ], [ 0, %bb.a ]
  ret i32 %.2
}

declare i32 @CBS_get_any_asn1_element(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_memdup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @OPENSSL_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL22compare_set_of_elementPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit

_ZL14OPENSSL_memcmpPKvS0_m.exit.thread:           ; preds = %bb.a
  %spec.select20 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  br label %bb.b

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !28
  %i.h = load ptr, ptr %0, align 8, !tbaa !28
  %i.i = tail call i32 @memcmp(ptr noundef readonly %i.h, ptr noundef readonly %i.g, i64 noundef %i.e) #12
  %.fr = freeze i32 %i.i                          ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  %spec.select = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  %spec.select23 = select i1 %.not, i32 %spec.select, i32 %.fr
  br label %bb.b

bb.b:                                             ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  %i.j = phi i32 [ %spec.select23, %_ZL14OPENSSL_memcmpPKvS0_m.exit ], [ %spec.select20, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread ]
  ret i32 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare ptr @OPENSSL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

declare i32 @CBS_get_u64_decimal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS6cbb_st", !12, i64 0}
!14 = !{!"_ZTS6cbb_st", !13, i64 0, !8, i64 8, !8, i64 16}
!15 = !{!14, !8, i64 8}
!16 = !{!14, !13, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTS13cbb_buffer_st", !18, i64 0, !20, i64 8, !20, i64 16, !9, i64 24, !9, i64 24}
!23 = !{!22, !20, i64 8}
!24 = !{!22, !18, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!22, !20, i64 16}
!27 = !{!"_ZTS6cbs_st", !18, i64 0, !20, i64 8}
!28 = !{!27, !18, i64 0}
!29 = !{!27, !20, i64 8}
!30 = distinct !{!30, !25}
!31 = !{!"p1 _ZTS13cbb_buffer_st", !12, i64 0}
!32 = !{!"_ZTS12cbb_child_st", !31, i64 0, !20, i64 8, !8, i64 16, !9, i64 17}
!33 = !{!32, !20, i64 8}
!34 = !{!32, !8, i64 16}
!35 = !{!32, !31, i64 0}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
end_hunk_0
