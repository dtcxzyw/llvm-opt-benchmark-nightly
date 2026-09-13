Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/compare256_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
begin_hunk_0_@longest_match_avx512:bb.a

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.fs) #5, !nosanitize !13
  br label %bb.cm, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.fw = load i16, ptr %i.fl, align 2, !tbaa !41 ; 2 uses
  %i.fx = icmp ult i16 %i.co, %i.fw
  br i1 %i.fx, label %bb.bx, label %.thread164

bb.cn:                                            ; preds = %.preheader188, %bb.dc
  %.3115 = phi i16 [ %i.hh, %bb.dc ], [ %.0112, %.preheader188 ] ; 3 uses
  %.4107 = phi i32 [ %i.gr, %bb.dc ], [ %.1104, %.preheader188 ] ; 3 uses
  %i.fy = zext i16 %.3115 to i32
  %i.fz = zext i16 %.3115 to i64                  ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.fz ; 2 uses
  %i.gb = add i64 %i.fz, %i.el, !nosanitize !13   ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = xor i1 %i.em, %i.gc
  %i.ge = icmp uge i64 %i.gb, %i.el, !nosanitize !13
  %i.gf = and i1 %i.ge, %i.gd, !nosanitize !13
  br i1 %i.gf, label %bb.cp, label %bb.co, !prof !16, !nosanitize !13

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @42, i64 %i.el, i64 %i.gb) #5, !nosanitize !13
  br label %bb.cp, !nosanitize !13

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.em, label %zng_memread_4.exit.i, label %bb.cq, !prof !16, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp
  %i.gg = ptrtoint ptr %i.ga to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.gg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.gg) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.cq, %bb.cp
  %i.gh = load i32, ptr %i.ga, align 1, !tbaa !15
  %.not179 = icmp eq i32 %i.gh, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not179, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %zng_memread_4.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz ; 2 uses
  %i.gj = add i64 %i.fz, %i.t, !nosanitize !13    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = xor i1 %i.v, %i.gk
  %i.gm = icmp uge i64 %i.gj, %i.t, !nosanitize !13
  %i.gn = and i1 %i.gm, %i.gl, !nosanitize !13
  br i1 %i.gn, label %bb.ct, label %bb.cs, !prof !16, !nosanitize !13

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.t, i64 %i.gj) #5, !nosanitize !13
  br label %bb.ct, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.v, label %zng_memread_4.exit.i153, label %bb.cu, !prof !16, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  %i.go = ptrtoint ptr %i.gi to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.go) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.go) #5, !nosanitize !13
  br label %zng_memread_4.exit.i153, !nosanitize !13

zng_memread_4.exit.i153:                          ; preds = %bb.cu, %bb.ct
  %i.gp = load i32, ptr %i.gi, align 1, !tbaa !15
  %.not180 = icmp eq i32 %i.gp, %.sroa.0.sroa.0236.0.insert.insert
  br i1 %.not180, label %.loopexit, label %bb.cv

bb.cv:                                            ; preds = %zng_memread_4.exit.i153, %zng_memread_4.exit.i
  %i.gq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4107, i32 1), !nosanitize !13 ; 2 uses
  %i.gr = extractvalue { i32, i1 } %i.gq, 0, !nosanitize !13 ; 2 uses
  %i.gs = extractvalue { i32, i1 } %i.gq, 1, !nosanitize !13
  br i1 %i.gs, label %bb.cw, label %bb.cx, !prof !14, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.gt = zext nneg i32 %.4107 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @44, i64 %i.gt, i64 1) #6, !nosanitize !13
  br label %bb.cx, !nosanitize !13

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.not138 = icmp eq i32 %i.gr, 0
  br i1 %.not138, label %.thread164, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.gu = and i32 %i.o, %i.fy
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.gv ; 2 uses
  %i.gx = shl nuw nsw i64 %i.gv, 1
  %i.gy = add i64 %i.gx, %i.ct, !nosanitize !13   ; 3 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = xor i1 %i.cu, %i.gz
  %i.hb = icmp uge i64 %i.gy, %i.ct, !nosanitize !13
  %i.hc = and i1 %i.hb, %i.ha, !nosanitize !13
  br i1 %i.hc, label %bb.da, label %bb.cz, !prof !16, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.ct, i64 %i.gy) #5, !nosanitize !13
  br label %bb.da, !nosanitize !13

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.hd = ptrtoint ptr %i.gw to i64, !nosanitize !13 ; 2 uses
  %i.he = and i64 %i.hd, 1, !nosanitize !13
  %i.hf = icmp eq i64 %i.he, 0, !nosanitize !13
  %i.hg = and i1 %i.cu, %i.hf
  br i1 %i.hg, label %bb.dc, label %bb.db, !prof !16, !nosanitize !13

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @46, i64 %i.hd) #5, !nosanitize !13
  br label %bb.dc, !nosanitize !13

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.hh = load i16, ptr %i.gw, align 2, !tbaa !41 ; 2 uses
  %i.hi = icmp ult i16 %i.co, %i.hh
  br i1 %i.hi, label %bb.cn, label %.thread164

.loopexit:                                        ; preds = %zng_memread_4.exit.i153, %zng_memread_8.exit.i151, %zng_memread_2.exit.i149
  %.4116 = phi i16 [ %.1113, %zng_memread_2.exit.i149 ], [ %.2114, %zng_memread_8.exit.i151 ], [ %.3115, %zng_memread_4.exit.i153 ] ; 2 uses
  %.5 = phi i32 [ %.2105, %zng_memread_2.exit.i149 ], [ %.3106, %zng_memread_8.exit.i151 ], [ %.4107, %zng_memread_4.exit.i153 ] ; 2 uses
  br i1 %.not141, label %bb.dd, label %bb.de, !prof !14, !nosanitize !13

bb.dd:                                            ; preds = %.loopexit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %.pre, i64 %i.cw) #5, !nosanitize !13
  br label %bb.de, !nosanitize !13

bb.de:                                            ; preds = %bb.dd, %.loopexit
  %i.hj = zext i16 %.4116 to i32                  ; 2 uses
  %i.hk = zext i16 %.4116 to i64                  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hk ; 3 uses
  %i.hm = add i64 %i.hk, %i.t, !nosanitize !13    ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = xor i1 %i.v, %i.hn
  %i.hp = icmp uge i64 %i.hm, %i.t, !nosanitize !13
  %i.hq = and i1 %i.hp, %i.ho, !nosanitize !13
  br i1 %i.hq, label %bb.dg, label %bb.df, !prof !16, !nosanitize !13

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @48, i64 %i.t, i64 %i.hm) #5, !nosanitize !13
  br label %bb.dg, !nosanitize !13

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hs = ptrtoint ptr %i.hl to i64, !nosanitize !13 ; 2 uses
  %i.ht = add i64 %i.hs, 2, !nosanitize !13       ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = xor i1 %i.v, %i.hu
  %i.hw = icmp ult ptr %i.hl, inttoptr (i64 -2 to ptr)
  %i.hx = and i1 %i.hw, %i.hv, !nosanitize !13
  br i1 %i.hx, label %bb.di, label %bb.dh, !prof !16, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @49, i64 %i.hs, i64 %i.ht) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.hy = call fastcc i32 @compare256_avx512_static(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.hr) ; 4 uses
  %i.hz = add nuw nsw i32 %i.hy, 2                ; 6 uses
  %i.ia = icmp ugt i32 %i.hz, %.0101
  br i1 %i.ia, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  br i1 %i.e, label %bb.dl, label %bb.dk, !prof !16, !nosanitize !13

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @50, i64 %i.b) #5, !nosanitize !13
  br label %bb.dl, !nosanitize !13

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  store i32 %i.hj, ptr %i.cx, align 8, !tbaa !42
  %.not142 = icmp ult i32 %i.hz, %i.ag
  br i1 %.not142, label %bb.dm, label %.thread164

bb.dm:                                            ; preds = %bb.dl
  %.not143 = icmp ult i32 %i.hz, %i.bt
  br i1 %.not143, label %bb.dn, label %.thread164

bb.dn:                                            ; preds = %bb.dm
  %i.ib = icmp samesign ugt i32 %i.hy, 1
  %i.ic = icmp samesign ugt i32 %i.hy, 5
  %spec.select288.v = select i1 %i.ic, i32 -5, i32 -1
  %.1100.v = select i1 %i.ib, i32 %spec.select288.v, i32 1
  %.1100 = add nsw i32 %i.hy, %.1100.v
  %i.id = zext nneg i32 %.1100 to i64             ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.id
  %i.if = add i64 %.pre, %i.id, !nosanitize !13   ; 2 uses
  %.not144 = icmp ult i64 %i.if, %.pre, !nosanitize !13
  br i1 %.not144, label %bb.do, label %zng_memread_8.exit155, !prof !14, !nosanitize !13

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @51, i64 %.pre, i64 %i.if) #5, !nosanitize !13
  br label %zng_memread_8.exit155, !nosanitize !13

zng_memread_8.exit155:                            ; preds = %bb.dn, %bb.do
  %i.ig = load i64, ptr %i.ie, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc220 = trunc i64 %i.ig to i16 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift224259 = lshr i64 %i.ig, 16
  %.sroa.0.sroa.7.0.extract.trunc225 = trunc i64 %.sroa.0.sroa.7.0.extract.shift224259 to i16 ; 2 uses
  %.sroa.7.0.extract.shift218 = lshr i64 %i.ig, 32
  %.sroa.7.0.extract.trunc219 = trunc nuw i64 %.sroa.7.0.extract.shift218 to i32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.id ; 2 uses
  %i.ii = add i64 %i.id, %i.t, !nosanitize !13    ; 3 uses
  %2 = icmp ne i64 %i.ii, 0
  %3 = icmp uge i64 %i.ii, %i.t, !nosanitize !13
  %4 = and i1 %2, %3
  %i.ij = and i1 %4, %i.v
  br i1 %i.ij, label %.thread158, label %bb.dp, !prof !16, !nosanitize !13

bb.dp:                                            ; preds = %zng_memread_8.exit155
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @52, i64 %i.t, i64 %i.ii) #5, !nosanitize !13
  br label %.thread158, !nosanitize !13

bb.dq:                                            ; preds = %bb.di
  br i1 %i.cr, label %.thread164, label %.thread158, !prof !43

.thread158:                                       ; preds = %zng_memread_8.exit155, %bb.dp, %bb.dq
  %.sroa.0.sroa.7.1 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc225, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.7.0.extract.trunc225, %bb.dp ], [ %.sroa.0.sroa.7.0, %bb.dq ]
  %.sroa.0.sroa.0.1 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc220, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.0.0.extract.trunc220, %bb.dp ], [ %.sroa.0.sroa.0.0, %bb.dq ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0.extract.trunc219, %zng_memread_8.exit155 ], [ %.sroa.7.0.extract.trunc219, %bb.dp ], [ %.sroa.7.0, %bb.dq ]
  %.2110 = phi ptr [ %i.ih, %zng_memread_8.exit155 ], [ %i.ih, %bb.dp ], [ %.0108, %bb.dq ]
  %.2 = phi i32 [ %i.hz, %zng_memread_8.exit155 ], [ %i.hz, %bb.dp ], [ %.0101, %bb.dq ] ; 3 uses
  %i.ik = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5, i32 1), !nosanitize !13 ; 2 uses
  %i.il = extractvalue { i32, i1 } %i.ik, 0, !nosanitize !13 ; 2 uses
  %i.im = extractvalue { i32, i1 } %i.ik, 1, !nosanitize !13
  br i1 %i.im, label %bb.dr, label %bb.ds, !prof !14, !nosanitize !13

bb.dr:                                            ; preds = %.thread158
  %i.in = zext nneg i32 %.5 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @53, i64 %i.in, i64 1) #6, !nosanitize !13
  br label %bb.ds, !nosanitize !13

bb.ds:                                            ; preds = %bb.dr, %.thread158
  %.not145 = icmp eq i32 %i.il, 0
  br i1 %.not145, label %.thread164, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.io = and i32 %i.o, %i.hj
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ip ; 2 uses
  %i.ir = shl nuw nsw i64 %i.ip, 1
  %i.is = add i64 %i.ir, %i.ct, !nosanitize !13   ; 3 uses
  %i.it = icmp eq i64 %i.is, 0
  %i.iu = xor i1 %i.cu, %i.it
  %i.iv = icmp uge i64 %i.is, %i.ct, !nosanitize !13
  %i.iw = and i1 %i.iv, %i.iu, !nosanitize !13
  br i1 %i.iw, label %bb.dv, label %bb.du, !prof !16, !nosanitize !13

bb.du:                                            ; preds = %bb.dt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.ct, i64 %i.is) #5, !nosanitize !13
  br label %bb.dv, !nosanitize !13

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ix = ptrtoint ptr %i.iq to i64, !nosanitize !13 ; 2 uses
  %i.iy = and i64 %i.ix, 1, !nosanitize !13
  %i.iz = icmp eq i64 %i.iy, 0, !nosanitize !13
  %i.ja = and i1 %i.cu, %i.iz
  br i1 %i.ja, label %bb.dx, label %bb.dw, !prof !16, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @55, i64 %i.ix) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.jb = load i16, ptr %i.iq, align 2, !tbaa !41 ; 2 uses
  %i.jc = icmp ult i16 %i.co, %i.jb
  br i1 %i.jc, label %bb.bg, label %.thread164

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
end_hunk_0
