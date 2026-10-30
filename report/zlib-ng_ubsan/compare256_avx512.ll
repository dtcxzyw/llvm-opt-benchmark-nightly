Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/compare256_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
begin_hunk_0_@longest_match_avx512:bb.a
  %i.jf = icmp ult i16 %i.co, %i.je
  br i1 %i.jf, label %bb.bg, label %.thread164

.thread164:                                       ; preds = %bb.dl, %bb.dm, %bb.ds, %bb.dx, %bb.dq, %bb.bg, %bb.cx, %bb.dc, %bb.ch, %bb.cm, %bb.bq, %bb.bv
  %.4123 = phi i32 [ %.0101, %bb.ch ], [ %.0101, %bb.cx ], [ %.0101, %bb.bq ], [ %.0101, %bb.bv ], [ %.0101, %bb.cm ], [ %.0101, %bb.dc ], [ %.0101, %bb.bg ], [ %.2, %bb.dx ], [ %i.hz, %bb.dm ], [ %.0101, %bb.dq ], [ %.2, %bb.ds ], [ %i.ag, %bb.dl ]
  ret i32 %.4123
}

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @longest_match_slow_avx512(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !17 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 24 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 23 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @56, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !16, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @57, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 4, !tbaa !31   ; 6 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !16, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @58, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !16, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @59, i64 %i.l) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr %i.k, align 8, !tbaa !32   ; 5 uses
  br i1 %i.e, label %bb.k, label %bb.j, !prof !16, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @60, i64 %i.b) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 7 uses
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 12 uses
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !13 ; 14 uses
  %i.u = add i64 %i.t, %i.r, !nosanitize !13      ; 3 uses
  %i.v = icmp ne ptr %i.q, null                   ; 12 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !13
  %i.z = and i1 %i.y, %i.x, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !16, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @61, i64 %i.t, i64 %i.u) #5, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.e, label %bb.o, label %bb.n, !prof !16, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @62, i64 %i.b) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31, !nosanitize !13
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !13
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !16, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @63, i64 %i.ab) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr %i.aa, align 32, !tbaa !34 ; 7 uses
  br i1 %i.e, label %bb.s, label %bb.r, !prof !16, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @64, i64 %i.b) #5, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.t, !prof !16, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @65, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread290, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w, !prof !16, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @66, i64 %i.b) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !36 ; 8 uses
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aj, i32 1), !nosanitize !13 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !13 ; 4 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !13
  br i1 %i.am, label %.thread, label %bb.y, !prof !14, !nosanitize !13

.thread:                                          ; preds = %bb.x
  %i.an = zext nneg i32 %i.aj to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @67, i64 %i.an, i64 1) #6, !nosanitize !13
  br label %.thread290

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp ugt i32 %i.aj, 3
  br i1 %i.ao, label %bb.z, label %.thread290

bb.z:                                             ; preds = %bb.y
  %i.ap = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.al, i32 2), !nosanitize !13 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !13 ; 3 uses
  %i.ar = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !13
  br i1 %i.ar, label %bb.aa, label %bb.ab, !prof !14, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  %i.as = zext nneg i32 %i.al to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @68, i64 %i.as, i64 2) #6, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = icmp ugt i32 %i.aj, 7
  br i1 %i.at, label %bb.ac, label %.thread290

bb.ac:                                            ; preds = %bb.ab
  %i.au = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aq, i32 4), !nosanitize !13 ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 0, !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.au, 1, !nosanitize !13
  br i1 %i.aw, label %bb.ad, label %.thread290, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  %i.ax = zext nneg i32 %i.aq to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @69, i64 %i.ax, i64 4) #6, !nosanitize !13
  br label %.thread290, !nosanitize !13

.thread290:                                       ; preds = %bb.u, %.thread, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %i.ay = phi i32 [ %i.aj, %bb.y ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.aj, %bb.ac ], [ 0, %.thread ], [ 2, %bb.u ] ; 6 uses
  %.0186 = phi i32 [ %i.al, %bb.y ], [ %i.aq, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.al, %.thread ], [ 1, %bb.u ]
  %.pre = ptrtoint ptr %i.s to i64, !nosanitize !13 ; 20 uses
  br i1 %i.v, label %zng_memread_8.exit, label %bb.ae, !prof !16, !nosanitize !13

bb.ae:                                            ; preds = %.thread290
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %.pre) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %.pre) #5, !nosanitize !13
  br label %zng_memread_8.exit, !nosanitize !13

zng_memread_8.exit:                               ; preds = %.thread290, %bb.ae
  %i.az = load i64, ptr %i.s, align 1, !tbaa !15  ; 4 uses
  %.sroa.0.sroa.0433.0.extract.trunc = trunc i64 %i.az to i16
  %i.ba = zext i32 %.0186 to i64                  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ba
  %i.bc = add i64 %.pre, %i.ba, !nosanitize !13   ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %.pre, !nosanitize !13
  %i.be = and i1 %i.v, %i.bd
  br i1 %i.be, label %zng_memread_8.exit281, label %bb.af, !prof !16, !nosanitize !13

bb.af:                                            ; preds = %zng_memread_8.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @70, i64 %.pre, i64 %i.bc) #5, !nosanitize !13
  br label %zng_memread_8.exit281, !nosanitize !13

zng_memread_8.exit281:                            ; preds = %zng_memread_8.exit, %bb.af
  %i.bf = load i64, ptr %i.bb, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.bf to i16
  %.sroa.0.sroa.7.0.extract.shift465 = lshr i64 %i.bf, 16
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift465 to i16
  %.sroa.7.0.extract.shift = lshr i64 %i.bf, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba ; 3 uses
  %i.bh = add i64 %i.ba, %i.t, !nosanitize !13    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = xor i1 %i.v, %i.bi
  %i.bk = icmp uge i64 %i.bh, %i.t, !nosanitize !13
  %i.bl = and i1 %i.bk, %i.bj, !nosanitize !13
  br i1 %i.bl, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !13

bb.ag:                                            ; preds = %zng_memread_8.exit281
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @71, i64 %i.t, i64 %i.bh) #5, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %zng_memread_8.exit281
  br i1 %i.e, label %bb.aj, label %bb.ai, !prof !16, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @72, i64 %i.b) #5, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !37 ; 2 uses
  br i1 %i.e, label %bb.al, label %bb.ak, !prof !16, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #5, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !38
  %.not256 = icmp ult i32 %i.ay, %i.bp
  %i.bq = lshr i32 %i.bn, 2
  %spec.select = select i1 %.not256, i32 %i.bn, i32 %i.bq
  br i1 %i.e, label %bb.an, label %bb.am, !prof !16, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #5, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  br i1 %i.e, label %bb.ap, label %bb.ao, !prof !16, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #5, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64, !nosanitize !13 ; 3 uses
  %i.bv = and i64 %i.bu, 63, !nosanitize !13
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !13   ; 2 uses
  br i1 %i.bw, label %bb.ar, label %bb.aq, !prof !16, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.bx = load i32, ptr %i.bt, align 64, !tbaa !40 ; 2 uses
  %i.by = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 262), !nosanitize !13 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 0, !nosanitize !13
  %i.ca = extractvalue { i32, i1 } %i.by, 1, !nosanitize !13
  br i1 %i.ca, label %bb.as, label %bb.at, !prof !14, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  %i.cb = zext nneg i32 %i.bx to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @77, i64 %i.cb, i64 262) #6, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cc = icmp ugt i32 %i.j, %i.bz
  br i1 %i.cc, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  br i1 %i.e, label %bb.aw, label %bb.av, !prof !16, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.b) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %i.bw, label %bb.ay, label %bb.ax, !prof !16, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @79, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cd = load i32, ptr %i.bt, align 64, !tbaa !40 ; 2 uses
  %i.ce = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.cd, i32 262), !nosanitize !13 ; 2 uses
  %i.cf = extractvalue { i32, i1 } %i.ce, 0, !nosanitize !13 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.ce, 1, !nosanitize !13
  br i1 %i.cg, label %bb.az, label %bb.ba, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  %i.ch = zext nneg i32 %i.cd to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @80, i64 %i.ch, i64 262) #6, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ci = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.j, i32 %i.cf), !nosanitize !13 ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 0, !nosanitize !13
  %i.ck = extractvalue { i32, i1 } %i.ci, 1, !nosanitize !13
  br i1 %i.ck, label %bb.bb, label %bb.bc, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cl = zext i32 %i.cf to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @81, i64 %i.r, i64 %i.cl) #6, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cm = trunc i32 %i.cj to i16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %i.cn = phi i16 [ %i.cm, %bb.bc ], [ 0, %bb.at ] ; 5 uses
  %i.co = icmp ugt i32 %i.ay, 2
  br i1 %i.co, label %bb.be, label %.thread291

bb.be:                                            ; preds = %bb.bd
  br i1 %i.e, label %bb.bg, label %bb.bf, !prof !16, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @82, i64 %i.b) #5, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !nosanitize !13
  %i.ct = icmp eq i32 %i.cs, -1056584962, !nosanitize !13
  br i1 %i.ct, label %bb.bh, label %bb.bj, !nosanitize !13

bb.bh:                                            ; preds = %bb.bg
  %i.cu = getelementptr i8, ptr %i.cq, i64 -4
  %i.cv = load i32, ptr %i.cu, align 8, !nosanitize !13
  %i.cw = icmp eq i32 %i.cv, -455559067, !nosanitize !13
  br i1 %i.cw, label %bb.bj, label %bb.bi, !prof !16, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  %i.cx = ptrtoint ptr %i.cq to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @84, i64 %i.cx) #5, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cz = add i64 %.pre, 1, !nosanitize !13       ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = xor i1 %i.v, %i.da
  %i.dc = icmp ne ptr %i.s, inttoptr (i64 -1 to ptr)
  %i.dd = and i1 %i.dc, %i.db, !nosanitize !13
  br i1 %i.dd, label %bb.bl, label %bb.bk, !prof !16, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @85, i64 %.pre, i64 %i.cz) #5, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.df = zext i8 %i.de to i32
  %i.dg = call i32 %i.cq(i32 noundef 0, i32 noundef %i.df) #5
  br i1 %i.e, label %bb.bn, label %bb.bm, !prof !16, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.b) #5, !nosanitize !13
  br label %bb.bn, !nosanitize !13

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !nosanitize !13
  %i.dk = icmp eq i32 %i.dj, -1056584962, !nosanitize !13
  br i1 %i.dk, label %bb.bo, label %bb.bq, !nosanitize !13

bb.bo:                                            ; preds = %bb.bn
  %i.dl = getelementptr i8, ptr %i.dh, i64 -4
  %i.dm = load i32, ptr %i.dl, align 8, !nosanitize !13
  %i.dn = icmp eq i32 %i.dm, -455559067, !nosanitize !13
  br i1 %i.dn, label %bb.bq, label %bb.bp, !prof !16, !nosanitize !13

bb.bp:                                            ; preds = %bb.bo
  %i.do = ptrtoint ptr %i.dh to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @88, i64 %i.do) #5, !nosanitize !13
  br label %bb.bq, !nosanitize !13

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.dq = add i64 %.pre, 2, !nosanitize !13       ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = xor i1 %i.v, %i.dr
  %i.dt = icmp ult ptr %i.s, inttoptr (i64 -2 to ptr)
  %i.du = and i1 %i.dt, %i.ds, !nosanitize !13
  br i1 %i.du, label %.lr.ph, label %bb.br, !prof !16, !nosanitize !13

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @89, i64 %.pre, i64 %i.dq) #5, !nosanitize !13
  br label %.lr.ph, !nosanitize !13

.lr.ph:                                           ; preds = %bb.bq, %bb.br
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dw = zext i8 %i.dv to i32
  %i.dx = call i32 %i.dh(i32 noundef %i.dg, i32 noundef %i.dw) #5
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph, %bb.cn
  %.0180369 = phi i32 [ %i.dx, %.lr.ph ], [ %i.ep, %bb.cn ]
  %.0181368 = phi i32 [ 3, %.lr.ph ], [ %i.fm, %bb.cn ] ; 3 uses
  %.0182367 = phi i16 [ 0, %.lr.ph ], [ %.1183, %bb.cn ]
  %.0220366 = phi i16 [ %1, %.lr.ph ], [ %.1221, %bb.cn ] ; 2 uses
  br i1 %i.e, label %bb.bu, label %bb.bt, !prof !16, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @90, i64 %i.b) #5, !nosanitize !13
  br label %bb.bu, !nosanitize !13

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.dz = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !nosanitize !13
  %i.ec = icmp eq i32 %i.eb, -1056584962, !nosanitize !13
  br i1 %i.ec, label %bb.bv, label %bb.bx, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu
  %i.ed = getelementptr i8, ptr %i.dz, i64 -4
  %i.ee = load i32, ptr %i.ed, align 8, !nosanitize !13
  %i.ef = icmp eq i32 %i.ee, -455559067, !nosanitize !13
  br i1 %i.ef, label %bb.bx, label %bb.bw, !prof !16, !nosanitize !13

bb.bw:                                            ; preds = %bb.bv
  %i.eg = ptrtoint ptr %i.dz to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @91, i64 %i.eg) #5, !nosanitize !13
  br label %bb.bx, !nosanitize !13

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bu
  %i.eh = zext i32 %.0181368 to i64               ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.eh ; 2 uses
  %i.ej = add i64 %.pre, %i.eh, !nosanitize !13   ; 2 uses
  %i.ek = icmp uge i64 %i.ej, %.pre, !nosanitize !13
  %i.el = and i1 %i.v, %i.ek
  br i1 %i.el, label %bb.bz, label %bb.by, !prof !16, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %.pre, i64 %i.ej) #5, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.v, label %bb.cb, label %bb.ca, !prof !16, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  %i.em = ptrtoint ptr %i.ei to i64, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.em) #5, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i32
  %i.ep = call i32 %i.dz(i32 noundef %.0180369, i32 noundef %i.eo) #5 ; 2 uses
  br i1 %i.e, label %bb.cd, label %bb.cc, !prof !16, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.b) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !48 ; 3 uses
  %i.er = zext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.et = shl nuw nsw i64 %i.er, 1
  %i.eu = ptrtoint ptr %i.eq to i64, !nosanitize !13 ; 3 uses
  %i.ev = add i64 %i.et, %i.eu, !nosanitize !13   ; 3 uses
  %i.ew = icmp ne ptr %i.eq, null, !nosanitize !13 ; 2 uses
  %i.ex = icmp eq i64 %i.ev, 0
  %i.ey = xor i1 %i.ew, %i.ex
  %i.ez = icmp uge i64 %i.ev, %i.eu, !nosanitize !13
  %i.fa = and i1 %i.ez, %i.ey, !nosanitize !13
  br i1 %i.fa, label %bb.cf, label %bb.ce, !prof !16, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @95, i64 %i.eu, i64 %i.ev) #5, !nosanitize !13
  br label %bb.cf, !nosanitize !13

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.fb = ptrtoint ptr %i.es to i64, !nosanitize !13 ; 2 uses
  %i.fc = and i64 %i.fb, 1, !nosanitize !13
  %i.fd = icmp eq i64 %i.fc, 0, !nosanitize !13
  %i.fe = and i1 %i.ew, %i.fd
  br i1 %i.fe, label %bb.ch, label %bb.cg, !prof !16, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @97, i64 %i.fb) #5, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ff = load i16, ptr %i.es, align 2, !tbaa !41 ; 2 uses
  %i.fg = icmp ult i16 %i.ff, %.0220366
  br i1 %i.fg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.fh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0181368, i32 2), !nosanitize !13 ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 0, !nosanitize !13
  %i.fj = extractvalue { i32, i1 } %i.fh, 1, !nosanitize !13
  br i1 %i.fj, label %bb.cj, label %bb.ck, !prof !14, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_sub_overflow(ptr nonnull @98, i64 %i.eh, i64 2) #6, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fk = trunc i32 %i.fi to i16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck
  %.1221 = phi i16 [ %i.ff, %bb.ck ], [ %.0220366, %bb.ch ] ; 4 uses
  %.1183 = phi i16 [ %i.fk, %bb.ck ], [ %.0182367, %bb.ch ] ; 6 uses
  %i.fl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0181368, i32 1), !nosanitize !13 ; 2 uses
  %i.fm = extractvalue { i32, i1 } %i.fl, 0, !nosanitize !13 ; 2 uses
  %i.fn = extractvalue { i32, i1 } %i.fl, 1, !nosanitize !13
  br i1 %i.fn, label %bb.cm, label %bb.cn, !prof !14, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_add_overflow(ptr nonnull @99, i64 %i.eh, i64 1) #6, !nosanitize !13
  br label %bb.cn, !nosanitize !13

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.not259 = icmp ugt i32 %i.fm, %i.ay
  br i1 %.not259, label %._crit_edge, label %bb.bs, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.cn
  %i.fo = add i16 %.1183, %i.cn                   ; 3 uses
  %.not260 = icmp ugt i16 %.1221, %i.fo
  br i1 %.not260, label %bb.co, label %.thread296.thread327

bb.co:                                            ; preds = %._crit_edge
  %i.fp = zext i16 %.1183 to i64                  ; 5 uses
  %i.fq = sub nsw i64 0, %i.fp                    ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.q, i64 %i.fq ; 2 uses
  %i.fs = sub i64 %i.t, %i.fp                     ; 2 uses
  %i.ft = icmp eq i64 %i.t, %i.fp
  %i.fu = xor i1 %i.v, %i.ft
  %i.fv = icmp eq i16 %.1183, 0                   ; 2 uses
  %i.fw = icmp ult i64 %i.fs, %i.t, !nosanitize !13
  %i.fx = or i1 %i.fv, %i.fw
  %i.fy = and i1 %i.fu, %i.fx, !nosanitize !13
  br i1 %i.fy, label %bb.cq, label %bb.cp, !prof !16, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.t, i64 %i.fs) #5, !nosanitize !13
  br label %bb.cq, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.fz = getelementptr inbounds i8, ptr %i.bg, i64 %i.fq ; 2 uses
  %i.ga = ptrtoint ptr %i.bg to i64, !nosanitize !13 ; 4 uses
  %i.gb = sub i64 %i.ga, %i.fp                    ; 2 uses
  %i.gc = icmp eq i64 %i.ga, %i.fp
  %i.gd = xor i1 %i.v, %i.gc
  %i.ge = icmp ult i64 %i.gb, %i.ga, !nosanitize !13
  %i.gf = or i1 %i.fv, %i.ge
  %i.gg = and i1 %i.gd, %i.gf, !nosanitize !13
  br i1 %i.gg, label %.thread291, label %bb.cr, !prof !16, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @101, i64 %i.ga, i64 %i.gb) #5, !nosanitize !13
  br label %.thread291, !nosanitize !13

.thread291:                                       ; preds = %bb.cq, %bb.cr, %bb.bd
  %.2222 = phi i16 [ %1, %bb.bd ], [ %.1221, %bb.cr ], [ %.1221, %bb.cq ] ; 2 uses
  %.1214 = phi ptr [ %i.q, %bb.bd ], [ %i.fr, %bb.cr ], [ %i.fr, %bb.cq ]
  %.1207 = phi ptr [ %i.bg, %bb.bd ], [ %i.fz, %bb.cr ], [ %i.fz, %bb.cq ]
  %.0200 = phi i16 [ %i.cn, %bb.bd ], [ %i.fo, %bb.cr ], [ %i.fo, %bb.cq ]
  %.2184 = phi i16 [ 0, %bb.bd ], [ %.1183, %bb.cr ], [ %.1183, %bb.cq ]
  %i.gh = zext i16 %.2222 to i32
  %.not261374 = icmp ugt i32 %i.j, %i.gh
  br i1 %.not261374, label %.lr.ph382, label %.thread307

.lr.ph382:                                        ; preds = %.thread291
  %i.gi = ptrtoint ptr %i.ae to i64               ; 15 uses
  %i.gj = icmp ne ptr %i.ae, null                 ; 10 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.not265 = icmp ugt ptr %i.s, inttoptr (i64 -3 to ptr)
  %i.gl = add i64 %.pre, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gn = zext i16 %i.cn to i32                   ; 2 uses
  %i.go = zext i16 %i.cn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %2 = trunc i64 %i.az to i32
  %.sroa.0.sroa.6.0.insert.ext = and i32 %2, -65536
  %3 = trunc i64 %i.az to i32
  %.sroa.0.sroa.0433.0.insert.ext = and i32 %3, 65535
  %.sroa.0.sroa.0433.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.ext, %.sroa.0.sroa.0433.0.insert.ext
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph382, %.thread296
  %.sroa.0.sroa.7.0 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %.lr.ph382 ], [ %.sroa.0.sroa.7.2, %.thread296 ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %.lr.ph382 ], [ %.sroa.0.sroa.0.2, %.thread296 ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.extract.trunc, %.lr.ph382 ], [ %.sroa.7.2, %.thread296 ] ; 2 uses
  %.3185381 = phi i16 [ %.2184, %.lr.ph382 ], [ %.10, %.thread296 ] ; 3 uses
  %.0188380 = phi i32 [ %i.ay, %.lr.ph382 ], [ %.3191, %.thread296 ] ; 10 uses
  %.1194379 = phi i32 [ %spec.select, %.lr.ph382 ], [ %.6199, %.thread296 ] ; 3 uses
  %.1201378 = phi i16 [ %.0200, %.lr.ph382 ], [ %.5205, %.thread296 ] ; 5 uses
  %.2208377 = phi ptr [ %.1207, %.lr.ph382 ], [ %.6212, %.thread296 ] ; 8 uses
  %.2215376 = phi ptr [ %.1214, %.lr.ph382 ], [ %.6219, %.thread296 ] ; 13 uses
  %.3223375 = phi i16 [ %.2222, %.lr.ph382 ], [ %.13, %.thread296 ] ; 3 uses
  %i.gr = icmp ult i32 %.0188380, 4
  br i1 %i.gr, label %.preheader, label %bb.dj

.preheader:                                       ; preds = %bb.cs
  %i.gs = ptrtoint ptr %.2208377 to i64, !nosanitize !13 ; 3 uses
  %i.gt = icmp ne ptr %.2208377, null             ; 2 uses
  %i.gu = ptrtoint ptr %.2215376 to i64           ; 3 uses
  %i.gv = icmp ne ptr %.2215376, null             ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader, %bb.di
  %.4224 = phi i16 [ %i.if, %bb.di ], [ %.3223375, %.preheader ] ; 3 uses
  %.2195 = phi i32 [ %i.hp, %bb.di ], [ %.1194379, %.preheader ] ; 3 uses
  %i.gw = zext i16 %.4224 to i32
  %i.gx = zext i16 %.4224 to i64                  ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.2208377, i64 %i.gx ; 2 uses
  %i.gz = add i64 %i.gx, %i.gs, !nosanitize !13   ; 3 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = xor i1 %i.gt, %i.ha
  %i.hc = icmp uge i64 %i.gz, %i.gs, !nosanitize !13
  %i.hd = and i1 %i.hc, %i.hb, !nosanitize !13
  br i1 %i.hd, label %bb.cv, label %bb.cu, !prof !16, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.gs, i64 %i.gz) #5, !nosanitize !13
  br label %bb.cv, !nosanitize !13

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.gt, label %zng_memread_2.exit.i, label %bb.cw, !prof !16, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.he = ptrtoint ptr %i.gy to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.he) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.he) #5, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.cw, %bb.cv
  %i.hf = load i16, ptr %i.gy, align 1, !tbaa !15
  %.not341 = icmp eq i16 %i.hf, %.sroa.0.sroa.0.0
  br i1 %.not341, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %zng_memread_2.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.2215376, i64 %i.gx ; 2 uses
  %i.hh = add i64 %i.gx, %i.gu, !nosanitize !13   ; 3 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = xor i1 %i.gv, %i.hi
  %i.hk = icmp uge i64 %i.hh, %i.gu, !nosanitize !13
  %i.hl = and i1 %i.hk, %i.hj, !nosanitize !13
  br i1 %i.hl, label %bb.cz, label %bb.cy, !prof !16, !nosanitize !13

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.gu, i64 %i.hh) #5, !nosanitize !13
  br label %bb.cz, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.gv, label %zng_memread_2.exit.i282, label %bb.da, !prof !16, !nosanitize !13

bb.da:                                            ; preds = %bb.cz
  %i.hm = ptrtoint ptr %i.hg to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.hm) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.hm) #5, !nosanitize !13
  br label %zng_memread_2.exit.i282, !nosanitize !13

zng_memread_2.exit.i282:                          ; preds = %bb.da, %bb.cz
  %i.hn = load i16, ptr %i.hg, align 1, !tbaa !15
  %.not342 = icmp eq i16 %i.hn, %.sroa.0.sroa.0433.0.extract.trunc
  br i1 %.not342, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %zng_memread_2.exit.i282, %zng_memread_2.exit.i
  %i.ho = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2195, i32 1), !nosanitize !13 ; 2 uses
  %i.hp = extractvalue { i32, i1 } %i.ho, 0, !nosanitize !13 ; 2 uses
  %i.hq = extractvalue { i32, i1 } %i.ho, 1, !nosanitize !13
  br i1 %i.hq, label %bb.dc, label %bb.dd, !prof !14, !nosanitize !13

bb.dc:                                            ; preds = %bb.db
  %i.hr = zext nneg i32 %.2195 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @104, i64 %i.hr, i64 1) #6, !nosanitize !13
  br label %bb.dd, !nosanitize !13

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not264 = icmp eq i32 %i.hp, 0
  br i1 %.not264, label %.thread307, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hs = and i32 %i.o, %i.gw
  %i.ht = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ht ; 2 uses
  %i.hv = shl nuw nsw i64 %i.ht, 1
  %i.hw = add i64 %i.hv, %i.gi, !nosanitize !13   ; 3 uses
  %i.hx = icmp eq i64 %i.hw, 0
  %i.hy = xor i1 %i.gj, %i.hx
  %i.hz = icmp uge i64 %i.hw, %i.gi, !nosanitize !13
  %i.ia = and i1 %i.hz, %i.hy, !nosanitize !13
  br i1 %i.ia, label %bb.dg, label %bb.df, !prof !16, !nosanitize !13

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.gi, i64 %i.hw) #5, !nosanitize !13
  br label %bb.dg, !nosanitize !13

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ib = ptrtoint ptr %i.hu to i64, !nosanitize !13 ; 2 uses
  %i.ic = and i64 %i.ib, 1, !nosanitize !13
  %i.id = icmp eq i64 %i.ic, 0, !nosanitize !13
  %i.ie = and i1 %i.gj, %i.id
  br i1 %i.ie, label %bb.di, label %bb.dh, !prof !16, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @106, i64 %i.ib) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.if = load i16, ptr %i.hu, align 2, !tbaa !41 ; 2 uses
  %i.ig = icmp ugt i16 %i.if, %.1201378
  br i1 %i.ig, label %bb.ct, label %.thread307

bb.dj:                                            ; preds = %bb.cs
  %i.ih = icmp ugt i32 %.0188380, 7
  %i.ii = ptrtoint ptr %.2208377 to i64, !nosanitize !13 ; 6 uses
  %i.ij = icmp ne ptr %.2208377, null             ; 4 uses
  br i1 %i.ih, label %.preheader343, label %.preheader346

.preheader346:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %i.ik = ptrtoint ptr %.2215376 to i64           ; 3 uses
  %i.il = icmp ne ptr %.2215376, null             ; 2 uses
  br label %bb.ea

.preheader343:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext423 = zext i16 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift424 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext423, 16
  %.sroa.0.sroa.0.0.insert.ext418 = zext i16 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert420 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift424, %.sroa.0.sroa.0.0.insert.ext418
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert420
  %i.im = ptrtoint ptr %.2215376 to i64           ; 3 uses
  %i.in = icmp ne ptr %.2215376, null             ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %.preheader343, %bb.dz
  %.5225 = phi i16 [ %i.jx, %bb.dz ], [ %.3223375, %.preheader343 ] ; 3 uses
  %.3196 = phi i32 [ %i.jh, %bb.dz ], [ %.1194379, %.preheader343 ] ; 3 uses
  %i.io = zext i16 %.5225 to i32
  %i.ip = zext i16 %.5225 to i64                  ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2208377, i64 %i.ip ; 2 uses
  %i.ir = add i64 %i.ip, %i.ii, !nosanitize !13   ; 3 uses
  %i.is = icmp eq i64 %i.ir, 0
  %i.it = xor i1 %i.ij, %i.is
  %i.iu = icmp uge i64 %i.ir, %i.ii, !nosanitize !13
  %i.iv = and i1 %i.iu, %i.it, !nosanitize !13
  br i1 %i.iv, label %bb.dm, label %bb.dl, !prof !16, !nosanitize !13

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.ii, i64 %i.ir) #5, !nosanitize !13
  br label %bb.dm, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.ij, label %zng_memread_8.exit.i, label %bb.dn, !prof !16, !nosanitize !13

bb.dn:                                            ; preds = %bb.dm
  %i.iw = ptrtoint ptr %i.iq to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.iw) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.iw) #5, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.dn, %bb.dm
  %i.ix = load i64, ptr %i.iq, align 1, !tbaa !15
  %.not339 = icmp eq i64 %i.ix, %.sroa.0.0.insert.insert
  br i1 %.not339, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %zng_memread_8.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.2215376, i64 %i.ip ; 2 uses
  %i.iz = add i64 %i.ip, %i.im, !nosanitize !13   ; 3 uses
  %i.ja = icmp eq i64 %i.iz, 0
  %i.jb = xor i1 %i.in, %i.ja
  %i.jc = icmp uge i64 %i.iz, %i.im, !nosanitize !13
  %i.jd = and i1 %i.jc, %i.jb, !nosanitize !13
  br i1 %i.jd, label %bb.dq, label %bb.dp, !prof !16, !nosanitize !13

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @108, i64 %i.im, i64 %i.iz) #5, !nosanitize !13
  br label %bb.dq, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br i1 %i.in, label %zng_memread_8.exit.i284, label %bb.dr, !prof !16, !nosanitize !13

bb.dr:                                            ; preds = %bb.dq
  %i.je = ptrtoint ptr %i.iy to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.je) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.je) #5, !nosanitize !13
  br label %zng_memread_8.exit.i284, !nosanitize !13

zng_memread_8.exit.i284:                          ; preds = %bb.dr, %bb.dq
  %i.jf = load i64, ptr %i.iy, align 1, !tbaa !15
  %.not340 = icmp eq i64 %i.jf, %i.az
  br i1 %.not340, label %.loopexit, label %bb.ds

bb.ds:                                            ; preds = %zng_memread_8.exit.i284, %zng_memread_8.exit.i
  %i.jg = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3196, i32 1), !nosanitize !13 ; 2 uses
  %i.jh = extractvalue { i32, i1 } %i.jg, 0, !nosanitize !13 ; 2 uses
  %i.ji = extractvalue { i32, i1 } %i.jg, 1, !nosanitize !13
  br i1 %i.ji, label %bb.dt, label %bb.du, !prof !14, !nosanitize !13

bb.dt:                                            ; preds = %bb.ds
  %i.jj = zext nneg i32 %.3196 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @109, i64 %i.jj, i64 1) #6, !nosanitize !13
  br label %bb.du, !nosanitize !13

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.not263 = icmp eq i32 %i.jh, 0
  br i1 %.not263, label %.thread307, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.jk = and i32 %i.o, %i.io
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.jl ; 2 uses
  %i.jn = shl nuw nsw i64 %i.jl, 1
  %i.jo = add i64 %i.jn, %i.gi, !nosanitize !13   ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = xor i1 %i.gj, %i.jp
  %i.jr = icmp uge i64 %i.jo, %i.gi, !nosanitize !13
  %i.js = and i1 %i.jr, %i.jq, !nosanitize !13
  br i1 %i.js, label %bb.dx, label %bb.dw, !prof !16, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.gi, i64 %i.jo) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.jt = ptrtoint ptr %i.jm to i64, !nosanitize !13 ; 2 uses
  %i.ju = and i64 %i.jt, 1, !nosanitize !13
  %i.jv = icmp eq i64 %i.ju, 0, !nosanitize !13
  %i.jw = and i1 %i.gj, %i.jv
  br i1 %i.jw, label %bb.dz, label %bb.dy, !prof !16, !nosanitize !13

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @111, i64 %i.jt) #5, !nosanitize !13
  br label %bb.dz, !nosanitize !13

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.jx = load i16, ptr %i.jm, align 2, !tbaa !41 ; 2 uses
  %i.jy = icmp ugt i16 %i.jx, %.1201378
  br i1 %i.jy, label %bb.dk, label %.thread307

bb.ea:                                            ; preds = %.preheader346, %bb.ep
  %.6226 = phi i16 [ %i.li, %bb.ep ], [ %.3223375, %.preheader346 ] ; 3 uses
  %.4197 = phi i32 [ %i.ks, %bb.ep ], [ %.1194379, %.preheader346 ] ; 3 uses
  %i.jz = zext i16 %.6226 to i32
  %i.ka = zext i16 %.6226 to i64                  ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.2208377, i64 %i.ka ; 2 uses
  %i.kc = add i64 %i.ka, %i.ii, !nosanitize !13   ; 3 uses
  %i.kd = icmp eq i64 %i.kc, 0
  %i.ke = xor i1 %i.ij, %i.kd
  %i.kf = icmp uge i64 %i.kc, %i.ii, !nosanitize !13
  %i.kg = and i1 %i.kf, %i.ke, !nosanitize !13
  br i1 %i.kg, label %bb.ec, label %bb.eb, !prof !16, !nosanitize !13

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @112, i64 %i.ii, i64 %i.kc) #5, !nosanitize !13
  br label %bb.ec, !nosanitize !13

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  br i1 %i.ij, label %zng_memread_4.exit.i, label %bb.ed, !prof !16, !nosanitize !13

bb.ed:                                            ; preds = %bb.ec
  %i.kh = ptrtoint ptr %i.kb to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.kh) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.kh) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.ed, %bb.ec
  %i.ki = load i32, ptr %i.kb, align 1, !tbaa !15
  %.not337 = icmp eq i32 %i.ki, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not337, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %zng_memread_4.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.2215376, i64 %i.ka ; 2 uses
  %i.kk = add i64 %i.ka, %i.ik, !nosanitize !13   ; 3 uses
  %i.kl = icmp eq i64 %i.kk, 0
  %i.km = xor i1 %i.il, %i.kl
  %i.kn = icmp uge i64 %i.kk, %i.ik, !nosanitize !13
  %i.ko = and i1 %i.kn, %i.km, !nosanitize !13
  br i1 %i.ko, label %bb.eg, label %bb.ef, !prof !16, !nosanitize !13

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.ik, i64 %i.kk) #5, !nosanitize !13
  br label %bb.eg, !nosanitize !13

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  br i1 %i.il, label %zng_memread_4.exit.i286, label %bb.eh, !prof !16, !nosanitize !13

bb.eh:                                            ; preds = %bb.eg
  %i.kp = ptrtoint ptr %i.kj to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.kp) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.kp) #5, !nosanitize !13
  br label %zng_memread_4.exit.i286, !nosanitize !13

zng_memread_4.exit.i286:                          ; preds = %bb.eh, %bb.eg
  %i.kq = load i32, ptr %i.kj, align 1, !tbaa !15
  %.not338 = icmp eq i32 %i.kq, %.sroa.0.sroa.0433.0.insert.insert
  br i1 %.not338, label %.loopexit, label %bb.ei

bb.ei:                                            ; preds = %zng_memread_4.exit.i286, %zng_memread_4.exit.i
  %i.kr = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4197, i32 1), !nosanitize !13 ; 2 uses
  %i.ks = extractvalue { i32, i1 } %i.kr, 0, !nosanitize !13 ; 2 uses
  %i.kt = extractvalue { i32, i1 } %i.kr, 1, !nosanitize !13
  br i1 %i.kt, label %bb.ej, label %bb.ek, !prof !14, !nosanitize !13

bb.ej:                                            ; preds = %bb.ei
  %i.ku = zext nneg i32 %.4197 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @114, i64 %i.ku, i64 1) #6, !nosanitize !13
  br label %bb.ek, !nosanitize !13

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.not262 = icmp eq i32 %i.ks, 0
  br i1 %.not262, label %.thread307, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kv = and i32 %i.o, %i.jz
  %i.kw = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.kw ; 2 uses
  %i.ky = shl nuw nsw i64 %i.kw, 1
  %i.kz = add i64 %i.ky, %i.gi, !nosanitize !13   ; 3 uses
  %i.la = icmp eq i64 %i.kz, 0
  %i.lb = xor i1 %i.gj, %i.la
  %i.lc = icmp uge i64 %i.kz, %i.gi, !nosanitize !13
  %i.ld = and i1 %i.lc, %i.lb, !nosanitize !13
  br i1 %i.ld, label %bb.en, label %bb.em, !prof !16, !nosanitize !13

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.gi, i64 %i.kz) #5, !nosanitize !13
  br label %bb.en, !nosanitize !13

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.le = ptrtoint ptr %i.kx to i64, !nosanitize !13 ; 2 uses
  %i.lf = and i64 %i.le, 1, !nosanitize !13
  %i.lg = icmp eq i64 %i.lf, 0, !nosanitize !13
  %i.lh = and i1 %i.gj, %i.lg
  br i1 %i.lh, label %bb.ep, label %bb.eo, !prof !16, !nosanitize !13

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @116, i64 %i.le) #5, !nosanitize !13
  br label %bb.ep, !nosanitize !13

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.li = load i16, ptr %i.kx, align 2, !tbaa !41 ; 2 uses
  %i.lj = icmp ugt i16 %i.li, %.1201378
  br i1 %i.lj, label %bb.ea, label %.thread307

.loopexit:                                        ; preds = %zng_memread_4.exit.i286, %zng_memread_8.exit.i284, %zng_memread_2.exit.i282
  %.7227 = phi i16 [ %.4224, %zng_memread_2.exit.i282 ], [ %.5225, %zng_memread_8.exit.i284 ], [ %.6226, %zng_memread_4.exit.i286 ] ; 3 uses
  %.5198 = phi i32 [ %.2195, %zng_memread_2.exit.i282 ], [ %.3196, %zng_memread_8.exit.i284 ], [ %.4197, %zng_memread_4.exit.i286 ] ; 4 uses
  br i1 %.not265, label %bb.eq, label %bb.er, !prof !14, !nosanitize !13

bb.eq:                                            ; preds = %.loopexit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @117, i64 %.pre, i64 %i.gl) #5, !nosanitize !13
  br label %bb.er, !nosanitize !13

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %i.lk = zext i16 %.7227 to i32                  ; 2 uses
  %i.ll = zext i16 %.7227 to i64                  ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.2215376, i64 %i.ll ; 3 uses
  %i.ln = ptrtoint ptr %.2215376 to i64, !nosanitize !13 ; 6 uses
  %i.lo = add i64 %i.ll, %i.ln, !nosanitize !13   ; 3 uses
  %i.lp = icmp ne i64 %i.lo, 0
  %i.lq = icmp uge i64 %i.lo, %i.ln, !nosanitize !13
  %i.lr = and i1 %i.lp, %i.lq, !nosanitize !13
  br i1 %i.lr, label %bb.et, label %bb.es, !prof !16, !nosanitize !13

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @118, i64 %i.ln, i64 %i.lo) #5, !nosanitize !13
  br label %bb.et, !nosanitize !13

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %i.lt = ptrtoint ptr %i.lm to i64, !nosanitize !13 ; 2 uses
  %i.lu = add i64 %i.lt, 2, !nosanitize !13       ; 2 uses
  %i.lv = icmp ne i64 %i.lu, 0
  %i.lw = icmp ult ptr %i.lm, inttoptr (i64 -2 to ptr)
  %i.lx = and i1 %i.lw, %i.lv, !nosanitize !13
  br i1 %i.lx, label %bb.ev, label %bb.eu, !prof !16, !nosanitize !13

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @119, i64 %i.lt, i64 %i.lu) #5, !nosanitize !13
  br label %bb.ev, !nosanitize !13

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ly = call fastcc i32 @compare256_avx512_static(ptr noundef nonnull %i.gk, ptr noundef nonnull %i.ls) ; 6 uses
  %i.lz = add nuw nsw i32 %i.ly, 2                ; 12 uses
  %i.ma = icmp ugt i32 %i.lz, %.0188380
  br i1 %i.ma, label %bb.ew, label %bb.he

bb.ew:                                            ; preds = %bb.ev
  %i.mb = zext i16 %.3185381 to i32
  %i.mc = sub nsw i32 %i.lk, %i.mb                ; 3 uses
end_hunk_0
