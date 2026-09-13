Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/trees?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@init_block:bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @133, i64 %i.p) #5, !nosanitize !13
  br label %.critedge, !nosanitize !13

.critedge:                                        ; preds = %bb.d, %bb.e
  store i16 0, ptr %i.m, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 286
  br i1 %exitcond.not, label %.preheader30, label %.split, !llvm.loop !48

.preheader:                                       ; preds = %.critedge22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2796 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  br label %bb.l

bb.f:                                             ; preds = %.preheader30, %.critedge22
  %indvars.iv40 = phi i64 [ 0, %.preheader30 ], [ %indvars.iv.next41, %.critedge22 ] ; 3 uses
  br i1 %i.e, label %bb.h, label %bb.g, !prof !14, !nosanitize !13

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @134, i64 %i.b) #5, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv40 ; 2 uses
  %i.v = shl nuw nsw i64 %indvars.iv40, 2
  %i.w = add i64 %i.v, %i.l, !nosanitize !13      ; 2 uses
  %.not28 = icmp ult i64 %i.w, %i.l, !nosanitize !13
  br i1 %.not28, label %bb.i, label %bb.j, !prof !30, !nosanitize !13

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @135, i64 %i.l, i64 %i.w) #5, !nosanitize !13
  br label %bb.j, !nosanitize !13

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = ptrtoint ptr %i.u to i64, !nosanitize !13 ; 4 uses
  %i.y = and i64 %i.x, 3, !nosanitize !13
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !13
  br i1 %i.z, label %.critedge22, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @136, i64 %i.x) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @137, i64 %i.x) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.x) #5, !nosanitize !13
  br label %.critedge22, !nosanitize !13

.critedge22:                                      ; preds = %bb.j, %bb.k
  store i16 0, ptr %i.u, align 4, !tbaa !31
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, 30
  br i1 %exitcond43.not, label %.preheader, label %bb.f, !llvm.loop !49

bb.l:                                             ; preds = %.preheader, %.critedge24
  %indvars.iv44 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next45, %.critedge24 ] ; 3 uses
  br i1 %i.e, label %bb.n, label %bb.m, !prof !14, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @139, i64 %i.b) #5, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv44 ; 2 uses
  %i.ab = shl nuw nsw i64 %indvars.iv44, 2
  %i.ac = add i64 %i.ab, %i.t, !nosanitize !13    ; 2 uses
  %.not27 = icmp ult i64 %i.ac, %i.t, !nosanitize !13
  br i1 %.not27, label %bb.o, label %bb.p, !prof !30, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @141, i64 %i.t, i64 %i.ac) #5, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 4 uses
  %i.ae = and i64 %i.ad, 3, !nosanitize !13
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !13
  br i1 %i.af, label %.critedge24, label %bb.q, !prof !14, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @142, i64 %i.ad) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @143, i64 %i.ad) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @144, i64 %i.ad) #5, !nosanitize !13
  br label %.critedge24, !nosanitize !13

.critedge24:                                      ; preds = %bb.p, %bb.q
  store i16 0, ptr %i.aa, align 4, !tbaa !31
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 19
  br i1 %exitcond47.not, label %bb.r, label %bb.l, !llvm.loop !50

bb.r:                                             ; preds = %.critedge24
  br i1 %i.e, label %bb.t, label %bb.s, !prof !14, !nosanitize !13

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @145, i64 %i.b) #5, !nosanitize !13
  br label %bb.t, !nosanitize !13

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1284 ; 2 uses
  %.not = icmp ugt ptr %i.f, inttoptr (i64 -1025 to ptr)
  br i1 %.not, label %bb.u, label %bb.v, !prof !30, !nosanitize !13

bb.u:                                             ; preds = %bb.t
  %i.ah = add i64 %i.g, 1024, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @146, i64 %i.g, i64 %i.ah) #5, !nosanitize !13
  br label %bb.v, !nosanitize !13

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ai = ptrtoint ptr %i.ag to i64, !nosanitize !13 ; 4 uses
  %i.aj = and i64 %i.ai, 3, !nosanitize !13
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !13
  br i1 %i.ak, label %.critedge26, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.ai) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.ai) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.ai) #5, !nosanitize !13
  br label %.critedge26, !nosanitize !13

.critedge26:                                      ; preds = %bb.v, %bb.w
  store i16 1, ptr %i.ag, align 4, !tbaa !31
  br i1 %i.e, label %bb.y, label %bb.x, !prof !14, !nosanitize !13

bb.x:                                             ; preds = %.critedge26
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @150, i64 %i.b) #5, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.x, %.critedge26
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 5968 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64, !nosanitize !13 ; 2 uses
  %i.an = and i64 %i.am, 15, !nosanitize !13
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !13
  br i1 %i.ao, label %bb.aa, label %bb.z, !prof !14, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @151, i64 %i.am) #5, !nosanitize !13
  br label %bb.aa, !nosanitize !13

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i64 0, ptr %i.al, align 16, !tbaa !33
  br i1 %i.e, label %.critedge61, label %bb.ab, !prof !14, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @152, i64 %i.b) #5, !nosanitize !13
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i64 0, ptr %i.ap, align 8, !tbaa !34
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @153, i64 %i.b) #5, !nosanitize !13
  br label %bb.ac, !nosanitize !13

.critedge61:                                      ; preds = %bb.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i64 0, ptr %i.aq, align 8, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge61, %bb.ab
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5976
  store i32 0, ptr %i.ar, align 8, !tbaa !51
  br i1 %i.e, label %bb.ae, label %bb.ad, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.b) #5, !nosanitize !13
  br label %bb.ae, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64, !nosanitize !13 ; 2 uses
  %i.au = and i64 %i.at, 63, !nosanitize !13
  %i.av = icmp eq i64 %i.au, 0, !nosanitize !13
  br i1 %i.av, label %bb.ag, label %bb.af, !prof !14, !nosanitize !13

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @155, i64 %i.at) #5, !nosanitize !13
  br label %bb.ag, !nosanitize !13

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 0, ptr %i.as, align 64, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @gen_codes(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !54 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !13  ; 3 uses
  %i.c = icmp ne ptr %2, null, !nosanitize !13    ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 6 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.l
  %.not27 = icmp slt i32 %1, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = ptrtoint ptr %0 to i64, !nosanitize !13  ; 4 uses
  %i.f = icmp ne ptr %0, null, !nosanitize !13    ; 3 uses
  br label %bb.m

bb.b:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.01725 = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.l ] ; 2 uses
  %i.g = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = shl nuw nsw i64 %i.g, 1
  %i.j = add i64 %i.i, %i.b, !nosanitize !13      ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = xor i1 %i.c, %i.k
  %i.m = icmp uge i64 %i.j, %i.b, !nosanitize !13
  %i.n = and i1 %i.m, %i.l, !nosanitize !13
  br i1 %i.n, label %bb.d, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @24, i64 %i.b, i64 %i.j) #5, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = ptrtoint ptr %i.h to i64, !nosanitize !13 ; 2 uses
  %i.p = and i64 %i.o, 1, !nosanitize !13
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !13
  %i.r = and i1 %i.c, %i.q
  br i1 %i.r, label %bb.f, label %bb.e, !prof !14, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.o) #5, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load i16, ptr %i.h, align 2, !tbaa !36   ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01725, i32 %i.t), !nosanitize !13 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 0, !nosanitize !13 ; 3 uses
  %i.w = extractvalue { i32, i1 } %i.u, 1, !nosanitize !13
  br i1 %i.w, label %bb.g, label %bb.h, !prof !30, !nosanitize !13

bb.g:                                             ; preds = %bb.f
  %i.x = zext i32 %.01725 to i64, !nosanitize !13
  %i.y = zext i16 %i.s to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @28, i64 %i.x, i64 %i.y) #6, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = icmp sgt i32 %i.v, -1
  br i1 %i.z, label %bb.j, label %bb.i, !prof !14, !nosanitize !13

bb.i:                                             ; preds = %bb.h
  %i.aa = zext i32 %i.v to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @29, i64 %i.aa, i64 1) #6, !nosanitize !13
  br label %bb.j, !nosanitize !13

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = shl i32 %i.v, 1                         ; 2 uses
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ae = shl nuw nsw i64 %indvars.iv, 1
  %i.af = add i64 %i.ae, %i.d, !nosanitize !13    ; 2 uses
  %.not24 = icmp ult i64 %i.af, %i.d, !nosanitize !13
  br i1 %.not24, label %bb.k, label %bb.l, !prof !30, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.d, i64 %i.af) #5, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.j, %bb.k
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !52

bb.m:                                             ; preds = %.lr.ph, %bb.ah
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.ah ] ; 4 uses
  %i.ag = sext i32 %.028 to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag ; 3 uses
  %i.ai = shl nsw i64 %i.ag, 2
  %i.aj = add i64 %i.ai, %i.e, !nosanitize !13    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.f, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.e, !nosanitize !13
  %i.an = icmp slt i32 %.028, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !13    ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @32, i64 %i.e, i64 %i.aj) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = ptrtoint ptr %i.ah to i64, !nosanitize !13 ; 5 uses
  %i.ar = and i64 %i.aq, 1, !nosanitize !13
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !13   ; 2 uses
  %i.at = and i1 %i.f, %i.as, !nosanitize !13     ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @34, i64 %i.aq) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64, !nosanitize !13 ; 3 uses
  %i.aw = and i64 %i.av, 1, !nosanitize !13
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !13
  br i1 %i.ax, label %.critedge, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.av) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @37, i64 %i.av) #5, !nosanitize !13
  br label %.critedge, !nosanitize !13

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !31 ; 4 uses
  %i.az = zext i16 %i.ay to i32
  %i.ba = icmp eq i16 %i.ay, 0
  br i1 %i.ba, label %bb.af, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bb = zext i16 %i.ay to i64                   ; 3 uses
  %i.bc = icmp ult i16 %i.ay, 17
  br i1 %i.bc, label %bb.u, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @38, i64 %i.bb) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.be = shl nuw nsw i64 %i.bb, 1
  %i.bf = add i64 %i.be, %i.d, !nosanitize !13    ; 2 uses
  %.not21 = icmp ult i64 %i.bf, %i.d, !nosanitize !13
  br i1 %.not21, label %bb.v, label %bb.w, !prof !30, !nosanitize !13

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @39, i64 %i.d, i64 %i.bf) #5, !nosanitize !13
  br label %bb.w, !nosanitize !13

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = load i16, ptr %i.bd, align 2, !tbaa !36 ; 2 uses
  %i.bh = add i16 %i.bg, 1
  store i16 %i.bh, ptr %i.bd, align 2, !tbaa !36
  %i.bi = zext i16 %i.bg to i32                   ; 2 uses
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.bk, 2149582850
  %i.bm = and i64 %i.bl, 36578664720              ; 2 uses
  %i.bn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bm, i64 4311810305), !nosanitize !13 ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 0, !nosanitize !13
  %i.bp = extractvalue { i64, i1 } %i.bn, 1, !nosanitize !13
  br i1 %i.bp, label %bb.x, label %bb.y, !prof !30, !nosanitize !13

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_mul_overflow(ptr nonnull @157, i64 %i.bm, i64 4311810305) #6, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bq = lshr i64 %i.bo, 32
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 255
  %i.bt = and i32 %i.bi, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = mul nuw nsw i64 %i.bu, 2149582850
  %i.bw = and i64 %i.bv, 36578664720              ; 2 uses
  %i.bx = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bw, i64 4311810305), !nosanitize !13 ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 0, !nosanitize !13
  %i.bz = extractvalue { i64, i1 } %i.bx, 1, !nosanitize !13
  br i1 %i.bz, label %bb.z, label %bi_reverse.exit, !prof !30, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_mul_overflow(ptr nonnull @158, i64 %i.bw, i64 4311810305) #6, !nosanitize !13
  br label %bi_reverse.exit, !nosanitize !13

bi_reverse.exit:                                  ; preds = %bb.z, %bb.y
  %sh.diff.i = lshr i64 %i.by, 24
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ca = and i32 %tr.sh.diff.i, 65280
  %i.cb = or disjoint i32 %i.bs, %i.ca
  %i.cc = sub nuw nsw i32 16, %i.az
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = trunc nuw i32 %i.cd to i16
  br i1 %i.ap, label %bb.ab, label %bb.aa, !prof !14, !nosanitize !13

bb.aa:                                            ; preds = %bi_reverse.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @40, i64 %i.e, i64 %i.aj) #5, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bi_reverse.exit
  br i1 %i.at, label %bb.ad, label %bb.ac, !prof !14, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.aq) #5, !nosanitize !13
  br label %bb.ad, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cf = and i1 %i.f, %i.as, !nosanitize !13
  br i1 %i.cf, label %.critedge23, label %bb.ae, !prof !14, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @43, i64 %i.aq) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @44, i64 %i.aq) #5, !nosanitize !13
  br label %.critedge23, !nosanitize !13

.critedge23:                                      ; preds = %bb.ad, %bb.ae
  store i16 %i.ce, ptr %i.ah, align 2, !tbaa !31
  br label %bb.af
end_hunk_0
