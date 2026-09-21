Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_accelerator_util_funcs?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@zend_accel_function_hash_copy_notify:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !43
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !102
  %i.ba = load i8, ptr %i.au, align 8, !tbaa !43
  %i.bb = icmp eq i8 %i.ba, 2
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !43
  %.not33.i = icmp eq i32 %i.bd, 0
  br i1 %.not33.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !43
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bj, i32 noundef %i.bl) #15
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bo) #15
  unreachable

_zend_accel_function_hash_copy.exit:              ; preds = %bb.e, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.bp, align 4, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @zend_accel_class_hash_copy_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = add i32 %i.d, %i.b
  tail call void @zend_hash_extend(ptr noundef %0, i32 noundef %i.e, i1 noundef zeroext false) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not.i3 = icmp eq i32 %i.h, 0
  br i1 %.not.i3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.i
  %.033.i4 = phi ptr [ %i.g, %.lr.ph ], [ %i.bv, %.critedge.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.033.i4, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59, !nonnull !100, !noundef !100
  %i.p = tail call ptr @zend_hash_find_known_hash(ptr noundef %0, ptr noundef nonnull %i.o) #13 ; 2 uses
  %.not35.i = icmp eq ptr %i.p, null
  br i1 %.not35.i, label %bb.h, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  %.not39.i = icmp eq i64 %i.s, 0
  br i1 %.not39.i, label %bb.e, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !43
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 49), align 1, !tbaa !107, !range !99, !noundef !100
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge.i, label %bb.f, !prof !56

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %.033.i4, align 8, !tbaa !43 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !108
  %i.ab = and i32 %i.aa, 4
  %.not40.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not40.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 81), align 1, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = tail call ptr @zend_set_compiled_filename(ptr noundef %i.ad) #13 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 512
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !43
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !102
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !43
  tail call void @zend_class_redeclaration_error(i32 noundef 1, ptr noundef %i.ah) #13
  br label %_zend_accel_class_hash_copy.exit

bb.h:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %.033.i4, align 8, !tbaa !43 ; 5 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !54
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.an ; 5 uses
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 13, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !61 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !62
  %i.au = trunc i64 %i.as to i32
  %i.av = load i32, ptr %i.l, align 4, !tbaa !63
  %i.aw = or i32 %i.av, %i.au
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.ay = sext i32 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !43
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  store i32 %i.ak, ptr %i.bd, align 4, !tbaa !64
  %i.be = load i32, ptr %i.m, align 4, !tbaa !65
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.m, align 4, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !108
  %i.bi = and i32 %i.bh, 8
  %.not36.i = icmp eq i32 %i.bi, 0
  br i1 %.not36.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !43
  %.not37.i = icmp eq i8 %i.bl, 0
  br i1 %.not37.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43
  %i.bq = and i32 %i.bp, 32
  %.not38.i = icmp eq i32 %i.bq, 0
  br i1 %.not38.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !110
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !44
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  store ptr %i.ai, ptr %i.bu, align 8, !tbaa !82
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_zend_observer_class_linked_notify(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bj) #13
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %.033.i4, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, %i.j
  br i1 %.not.i, label %._crit_edge, label %bb.b, !llvm.loop !1

._crit_edge:                                      ; preds = %.critedge.i, %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.bw, align 4, !tbaa !103
  br label %_zend_accel_class_hash_copy.exit

_zend_accel_class_hash_copy.exit:                 ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @zend_adler32(i32 noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i32 %2, 5551
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %adler32_do16_loop.exit31
  %.069 = phi i32 [ %i.w, %adler32_do16_loop.exit31 ], [ %2, %bb.a ]
  %.02268 = phi ptr [ %i.x, %adler32_do16_loop.exit31 ], [ %1, %bb.a ] ; 2 uses
  %storemerge67 = phi i32 [ %4, %adler32_do16_loop.exit31 ], [ %i.b, %bb.a ]
  %.04666 = phi i32 [ %3, %adler32_do16_loop.exit31 ], [ %i.a, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.038.i26 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  %i.d = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.m, %bb.b ]
  %.036.i28 = phi i32 [ %.04666, %.lr.ph ], [ %i.v, %bb.b ] ; 2 uses
  %.0.i29.idx = phi i64 [ 0, %.lr.ph ], [ %.0.i29.add, %bb.b ] ; 2 uses
  %.0.i29.ptr = getelementptr inbounds nuw i8, ptr %.02268, i64 %.0.i29.idx
  %i.e = load <16 x i8>, ptr %.0.i29.ptr, align 1, !tbaa !43 ; 3 uses
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.h = bitcast <16 x i8> %i.f to <8 x i16>
  %i.i = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.h, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.j = bitcast <16 x i8> %i.g to <8 x i16>
  %i.k = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.j, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.l = add <4 x i32> %i.i, %i.d
  %i.m = add <4 x i32> %i.l, %i.k                 ; 2 uses
  %i.n = add i32 %.036.i28, %.038.i26             ; 2 uses
  %i.o = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.e, <16 x i8> zeroinitializer) ; 2 uses
  %i.p = bitcast <2 x i64> %i.o to <4 x i32>
  %i.q = extractelement <4 x i32> %i.p, i64 0
  %i.r = bitcast <2 x i64> %i.o to <8 x i16>
  %i.s = extractelement <8 x i16> %i.r, i64 4
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.q, %.036.i28
  %i.v = add i32 %i.u, %i.t                       ; 2 uses
  %.0.i29.add = add nuw nsw i64 %.0.i29.idx, 16   ; 2 uses
  %.not.i30 = icmp eq i64 %.0.i29.add, 5552
  br i1 %.not.i30, label %adler32_do16_loop.exit31, label %bb.b, !llvm.loop !2

adler32_do16_loop.exit31:                         ; preds = %bb.b
  %i.w = add i32 %.069, -5552                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02268, i64 5552 ; 2 uses
  %i.y = shl i32 %i.n, 4
  %i.z = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.m)
  %i.aa = add i32 %i.y, %storemerge67
  %i.ab = add i32 %i.aa, %i.z
  %3 = urem i32 %i.v, 65521                       ; 2 uses
  %4 = urem i32 %i.ab, 65521                      ; 2 uses
  %i.ac = icmp ugt i32 %i.w, 5551
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %adler32_do16_loop.exit31, %bb.a
  %.046.lcssa = phi i32 [ %i.a, %bb.a ], [ %3, %adler32_do16_loop.exit31 ] ; 3 uses
  %storemerge.lcssa = phi i32 [ %i.b, %bb.a ], [ %4, %adler32_do16_loop.exit31 ] ; 3 uses
  %.022.lcssa = phi ptr [ %1, %bb.a ], [ %i.x, %adler32_do16_loop.exit31 ] ; 3 uses
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %i.w, %adler32_do16_loop.exit31 ] ; 5 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = icmp samesign ugt i32 %.0.lcssa, 15
  br i1 %i.ad, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = and i32 %.0.lcssa, 8176
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 %i.af ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.038.i = phi i32 [ 0, %bb.d ], [ %i.ar, %bb.e ]
  %i.ah = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.aq, %bb.e ]
  %.036.i = phi i32 [ %.046.lcssa, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %.022.lcssa, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %i.ai = load <16 x i8>, ptr %.0.i, align 1, !tbaa !43 ; 3 uses
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ak = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.al = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.am = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.al, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.an = bitcast <16 x i8> %i.ak to <8 x i16>
  %i.ao = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.an, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.ap = add <4 x i32> %i.am, %i.ah
  %i.aq = add <4 x i32> %i.ap, %i.ao              ; 2 uses
  %i.ar = add i32 %.036.i, %.038.i                ; 2 uses
  %i.as = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ai, <16 x i8> zeroinitializer) ; 2 uses
  %i.at = bitcast <2 x i64> %i.as to <4 x i32>
  %i.au = extractelement <4 x i32> %i.at, i64 0
  %i.av = bitcast <2 x i64> %i.as to <8 x i16>
  %i.aw = extractelement <8 x i16> %i.av, i64 4
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %i.au, %.036.i
  %i.az = add i32 %i.ay, %i.ax                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.ag
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %i.bb = and i32 %.0.lcssa, 15                   ; 2 uses
  %i.bc = shl i32 %i.ar, 4
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aq)
  %i.be = add i32 %i.bc, %storemerge.lcssa
  %i.bf = add i32 %i.be, %i.bd                    ; 2 uses
  %.not24 = icmp eq i32 %i.bb, 0
  br i1 %.not24, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.f
  %.158 = phi i32 [ %i.bb, %bb.f ], [ %.0.lcssa, %bb.c ] ; 2 uses
  %.12357 = phi ptr [ %i.ag, %bb.f ], [ %.022.lcssa, %bb.c ] ; 3 uses
  %.04356 = phi i32 [ %i.bf, %bb.f ], [ %storemerge.lcssa, %bb.c ] ; 2 uses
  %.14755 = phi i32 [ %i.az, %bb.f ], [ %.046.lcssa, %bb.c ] ; 2 uses
  %i.bg = zext nneg i32 %.158 to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.12357, i64 %i.bg
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.thread, %.prol.preheader
  %.248.prol = phi i32 [ %i.bk, %.prol.preheader ], [ %.14755, %.thread ]
  %.144.prol = phi i32 [ %i.bl, %.prol.preheader ], [ %.04356, %.thread ]
  %.2.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %.12357, %.thread ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.thread ]
  %i.bi = load i8, ptr %.2.prol, align 1, !tbaa !43
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %.248.prol, %i.bj               ; 4 uses
  %i.bl = add i32 %i.bk, %.144.prol               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.2.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !178

.prol.loopexit:                                   ; preds = %.prol.preheader, %.thread
  %.lcssa110.unr = phi i32 [ poison, %.thread ], [ %i.bk, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.thread ], [ %i.bl, %.prol.preheader ]
  %.248.unr = phi i32 [ %.14755, %.thread ], [ %i.bk, %.prol.preheader ]
  %.144.unr = phi i32 [ %.04356, %.thread ], [ %i.bl, %.prol.preheader ]
  %.2.unr = phi ptr [ %.12357, %.thread ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp samesign ult i32 %.158, 8
  br i1 %i.bn, label %.loopexit, label %.thread.new

.thread.new:                                      ; preds = %.prol.loopexit, %.thread.new
  %.248 = phi i32 [ %i.cz, %.thread.new ], [ %.248.unr, %.prol.loopexit ]
  %.144 = phi i32 [ %i.da, %.thread.new ], [ %.144.unr, %.prol.loopexit ]
  %.2 = phi ptr [ %i.db, %.thread.new ], [ %.2.unr, %.prol.loopexit ] ; 9 uses
  %i.bo = load i8, ptr %.2, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add i32 %.248, %i.bp                    ; 2 uses
  %i.br = add i32 %i.bq, %.144
  %i.bs = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !43
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz                    ; 2 uses
  %i.cb = add i32 %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !43
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add i32 %i.ca, %i.ce                    ; 2 uses
  %i.cg = add i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !43
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add i32 %i.cf, %i.cj                    ; 2 uses
  %i.cl = add i32 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !43
  %i.co = zext i8 %i.cn to i32
  %i.cp = add i32 %i.ck, %i.co                    ; 2 uses
  %i.cq = add i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !43
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add i32 %i.cp, %i.ct                    ; 2 uses
  %i.cv = add i32 %i.cu, %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !43
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add i32 %i.cu, %i.cy                    ; 3 uses
  %i.da = add i32 %i.cz, %i.cv                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %.not25.7 = icmp eq ptr %i.db, %i.bh
  br i1 %.not25.7, label %.loopexit, label %.thread.new, !llvm.loop !4

.loopexit:                                        ; preds = %.prol.loopexit, %.thread.new, %bb.f
  %.349 = phi i32 [ %i.az, %bb.f ], [ %.lcssa110.unr, %.prol.loopexit ], [ %i.cz, %.thread.new ]
  %.245 = phi i32 [ %i.bf, %bb.f ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.da, %.thread.new ]
  %i.dc = urem i32 %.349, 65521
  %i.dd = urem i32 %.245, 65521
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %._crit_edge
  %.4 = phi i32 [ %.046.lcssa, %._crit_edge ], [ %i.dc, %.loopexit ]
  %.3 = phi i32 [ %storemerge.lcssa, %._crit_edge ], [ %i.dd, %.loopexit ]
  %i.de = shl nuw i32 %.3, 16
  %i.df = or i32 %i.de, %.4
  ret i32 %i.df
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, -983040) i32 @zend_accel_script_checksum(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.d = load i64, ptr %i.c, align 8, !tbaa !182  ; 2 uses
  %i.e = icmp ult ptr %i.b, %0
  br i1 %i.e, label %bb.b, label %zend_adler32.exit55

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = icmp ugt i32 %i.i, 5551
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %adler32_do16_loop.exit31.i
  %.069.i = phi i32 [ %i.ad, %adler32_do16_loop.exit31.i ], [ %i.i, %bb.b ]
  %.02268.i = phi ptr [ %i.ae, %adler32_do16_loop.exit31.i ], [ %i.b, %bb.b ] ; 2 uses
  %storemerge67.i = phi i32 [ %2, %adler32_do16_loop.exit31.i ], [ 0, %bb.b ]
  %.04666.i = phi i32 [ %1, %adler32_do16_loop.exit31.i ], [ 1, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.038.i26.i = phi i32 [ 0, %.lr.ph.i ], [ %i.u, %bb.c ]
  %i.k = phi <4 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.t, %bb.c ]
  %.036.i28.i = phi i32 [ %.04666.i, %.lr.ph.i ], [ %i.ac, %bb.c ] ; 2 uses
  %.0.i29.idx.i = phi i64 [ 0, %.lr.ph.i ], [ %.0.i29.add.i, %bb.c ] ; 2 uses
  %.0.i29.ptr.i = getelementptr inbounds nuw i8, ptr %.02268.i, i64 %.0.i29.idx.i
  %i.l = load <16 x i8>, ptr %.0.i29.ptr.i, align 1, !tbaa !43 ; 3 uses
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.n = shufflevector <16 x i8> %i.l, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.o = bitcast <16 x i8> %i.m to <8 x i16>
  %i.p = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.o, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.q = bitcast <16 x i8> %i.n to <8 x i16>
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.s = add <4 x i32> %i.p, %i.k
  %i.t = add <4 x i32> %i.s, %i.r                 ; 2 uses
  %i.u = add i32 %.036.i28.i, %.038.i26.i         ; 2 uses
  %i.v = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.l, <16 x i8> zeroinitializer) ; 2 uses
  %i.w = bitcast <2 x i64> %i.v to <4 x i32>
  %i.x = extractelement <4 x i32> %i.w, i64 0
  %i.y = bitcast <2 x i64> %i.v to <8 x i16>
  %i.z = extractelement <8 x i16> %i.y, i64 4
  %i.aa = zext i16 %i.z to i32
  %i.ab = add i32 %i.x, %.036.i28.i
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %.0.i29.add.i = add nuw nsw i64 %.0.i29.idx.i, 16 ; 2 uses
  %.not.i30.i = icmp eq i64 %.0.i29.add.i, 5552
  br i1 %.not.i30.i, label %adler32_do16_loop.exit31.i, label %bb.c, !llvm.loop !2

adler32_do16_loop.exit31.i:                       ; preds = %bb.c
  %i.ad = add i32 %.069.i, -5552                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02268.i, i64 5552 ; 2 uses
  %i.af = shl i32 %i.u, 4
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.t)
  %i.ah = add i32 %i.af, %storemerge67.i
  %i.ai = add i32 %i.ah, %i.ag
  %1 = urem i32 %i.ac, 65521                      ; 2 uses
  %2 = urem i32 %i.ai, 65521                      ; 2 uses
  %i.aj = icmp ugt i32 %i.ad, 5551
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %adler32_do16_loop.exit31.i, %bb.b
  %.046.lcssa.i = phi i32 [ 1, %bb.b ], [ %1, %adler32_do16_loop.exit31.i ] ; 3 uses
  %storemerge.lcssa.i = phi i32 [ 0, %bb.b ], [ %2, %adler32_do16_loop.exit31.i ] ; 3 uses
  %.022.lcssa.i = phi ptr [ %i.b, %bb.b ], [ %i.ae, %adler32_do16_loop.exit31.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.i, %bb.b ], [ %i.ad, %adler32_do16_loop.exit31.i ] ; 5 uses
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %zend_adler32.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp samesign ugt i32 %.0.lcssa.i, 15
  br i1 %i.ak, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.al = and i32 %.0.lcssa.i, 8176
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 %i.am ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.038.i.i = phi i32 [ 0, %bb.e ], [ %i.ay, %bb.f ]
  %i.ao = phi <4 x i32> [ zeroinitializer, %bb.e ], [ %i.ax, %bb.f ]
  %.036.i.i = phi i32 [ %.046.lcssa.i, %bb.e ], [ %i.bg, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %.022.lcssa.i, %bb.e ], [ %i.bh, %bb.f ] ; 2 uses
  %i.ap = load <16 x i8>, ptr %.0.i.i, align 1, !tbaa !43 ; 3 uses
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ar = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.as = bitcast <16 x i8> %i.aq to <8 x i16>
  %i.at = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.as, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.au = bitcast <16 x i8> %i.ar to <8 x i16>
  %i.av = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.aw = add <4 x i32> %i.at, %i.ao
  %i.ax = add <4 x i32> %i.aw, %i.av              ; 2 uses
  %i.ay = add i32 %.036.i.i, %.038.i.i            ; 2 uses
  %i.az = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ap, <16 x i8> zeroinitializer) ; 2 uses
  %i.ba = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bb = extractelement <4 x i32> %i.ba, i64 0
  %i.bc = bitcast <2 x i64> %i.az to <8 x i16>
  %i.bd = extractelement <8 x i16> %i.bc, i64 4
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.bb, %.036.i.i
  %i.bg = add i32 %i.bf, %i.be                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.an
  br i1 %.not.i.i, label %bb.g, label %bb.f, !llvm.loop !2

bb.g:                                             ; preds = %bb.f
  %i.bi = and i32 %.0.lcssa.i, 15                 ; 2 uses
  %i.bj = shl i32 %i.ay, 4
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ax)
  %i.bl = add i32 %i.bj, %storemerge.lcssa.i
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %.not24.i = icmp eq i32 %i.bi, 0
  br i1 %.not24.i, label %.loopexit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.d
  %.158.i = phi i32 [ %i.bi, %bb.g ], [ %.0.lcssa.i, %bb.d ] ; 2 uses
  %.12357.i = phi ptr [ %i.an, %bb.g ], [ %.022.lcssa.i, %bb.d ] ; 3 uses
  %.04356.i = phi i32 [ %i.bm, %bb.g ], [ %storemerge.lcssa.i, %bb.d ] ; 2 uses
  %.14755.i = phi i32 [ %i.bg, %bb.g ], [ %.046.lcssa.i, %bb.d ] ; 2 uses
  %i.bn = zext nneg i32 %.158.i to i64            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.12357.i, i64 %i.bn
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.thread.i, %.prol.preheader
  %.248.i.prol = phi i32 [ %i.br, %.prol.preheader ], [ %.14755.i, %.thread.i ]
  %.144.i.prol = phi i32 [ %i.bs, %.prol.preheader ], [ %.04356.i, %.thread.i ]
  %.2.i.prol = phi ptr [ %i.bt, %.prol.preheader ], [ %.12357.i, %.thread.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.thread.i ]
  %i.bp = load i8, ptr %.2.i.prol, align 1, !tbaa !43
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %.248.i.prol, %i.bq             ; 4 uses
  %i.bs = add i32 %i.br, %.144.i.prol             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !179

.prol.loopexit:                                   ; preds = %.prol.preheader, %.thread.i
  %.lcssa214.unr = phi i32 [ poison, %.thread.i ], [ %i.br, %.prol.preheader ]
  %.lcssa213.unr = phi i32 [ poison, %.thread.i ], [ %i.bs, %.prol.preheader ]
  %.248.i.unr = phi i32 [ %.14755.i, %.thread.i ], [ %i.br, %.prol.preheader ]
  %.144.i.unr = phi i32 [ %.04356.i, %.thread.i ], [ %i.bs, %.prol.preheader ]
  %.2.i.unr = phi ptr [ %.12357.i, %.thread.i ], [ %i.bt, %.prol.preheader ]
  %i.bu = icmp samesign ult i32 %.158.i, 8
  br i1 %i.bu, label %.loopexit.i, label %.thread.i.new

.thread.i.new:                                    ; preds = %.prol.loopexit, %.thread.i.new
  %.248.i = phi i32 [ %i.dg, %.thread.i.new ], [ %.248.i.unr, %.prol.loopexit ]
  %.144.i = phi i32 [ %i.dh, %.thread.i.new ], [ %.144.i.unr, %.prol.loopexit ]
  %.2.i = phi ptr [ %i.di, %.thread.i.new ], [ %.2.i.unr, %.prol.loopexit ] ; 9 uses
  %i.bv = load i8, ptr %.2.i, align 1, !tbaa !43
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add i32 %.248.i, %i.bw                  ; 2 uses
  %i.by = add i32 %i.bx, %.144.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add i32 %i.bx, %i.cb                    ; 2 uses
  %i.cd = add i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add i32 %i.cc, %i.cg                    ; 2 uses
  %i.ci = add i32 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !43
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add i32 %i.ch, %i.cl                    ; 2 uses
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add i32 %i.cm, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.i, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add i32 %i.cr, %i.cv                    ; 2 uses
  %i.cx = add i32 %i.cw, %i.cs
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.i, i64 6
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = zext i8 %i.cz to i32
  %i.db = add i32 %i.cw, %i.da                    ; 2 uses
  %i.dc = add i32 %i.db, %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 7
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !43
  %i.df = zext i8 %i.de to i32
  %i.dg = add i32 %i.db, %i.df                    ; 3 uses
  %i.dh = add i32 %i.dg, %i.dc                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  %.not25.i.7 = icmp eq ptr %i.di, %i.bo
  br i1 %.not25.i.7, label %.loopexit.i, label %.thread.i.new, !llvm.loop !4

.loopexit.i:                                      ; preds = %.prol.loopexit, %.thread.i.new, %bb.g
  %.349.i = phi i32 [ %i.bg, %bb.g ], [ %.lcssa214.unr, %.prol.loopexit ], [ %i.dg, %.thread.i.new ]
  %.245.i = phi i32 [ %i.bm, %bb.g ], [ %.lcssa213.unr, %.prol.loopexit ], [ %i.dh, %.thread.i.new ]
  %i.dj = urem i32 %.349.i, 65521
  %i.dk = urem i32 %.245.i, 65521
  br label %zend_adler32.exit

zend_adler32.exit:                                ; preds = %._crit_edge.i, %.loopexit.i
  %.4.i = phi i32 [ %.046.lcssa.i, %._crit_edge.i ], [ %i.dj, %.loopexit.i ]
  %.3.i = phi i32 [ %storemerge.lcssa.i, %._crit_edge.i ], [ %i.dk, %.loopexit.i ]
  %i.dl = shl nuw i32 %.3.i, 16
  %i.dm = or i32 %i.dl, %.4.i
  %i.dn = sub i64 %i.d, %i.h
  %i.do = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  br label %zend_adler32.exit55

zend_adler32.exit55:                              ; preds = %zend_adler32.exit, %bb.a
  %.026 = phi ptr [ %i.do, %zend_adler32.exit ], [ %i.b, %bb.a ]
  %.025 = phi i64 [ %i.dn, %zend_adler32.exit ], [ %i.d, %bb.a ]
  %.0 = phi i32 [ %i.dm, %zend_adler32.exit ], [ 1, %bb.a ] ; 3 uses
  %i.dp = add i64 %.025, -480                     ; 2 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %zend_adler32.exit55
  %i.dq = lshr i32 %.0, 16                        ; 2 uses
  %i.dr = and i32 %.0, 65535                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.026, i64 480 ; 2 uses
  %i.dt = trunc i64 %i.dp to i32                  ; 3 uses
  %i.du = icmp ugt i32 %i.dt, 5551
  br i1 %i.du, label %.lr.ph.i81, label %._crit_edge.i56

.lr.ph.i81:                                       ; preds = %bb.h, %adler32_do16_loop.exit31.i92
  %.069.i82 = phi i32 [ %i.eo, %adler32_do16_loop.exit31.i92 ], [ %i.dt, %bb.h ]
  %.02268.i83 = phi ptr [ %i.ep, %adler32_do16_loop.exit31.i92 ], [ %i.ds, %bb.h ] ; 2 uses
  %storemerge67.i84 = phi i32 [ %4, %adler32_do16_loop.exit31.i92 ], [ %i.dq, %bb.h ]
  %.04666.i85 = phi i32 [ %3, %adler32_do16_loop.exit31.i92 ], [ %i.dr, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i81
  %.038.i26.i86 = phi i32 [ 0, %.lr.ph.i81 ], [ %i.ef, %bb.i ]
  %i.dv = phi <4 x i32> [ zeroinitializer, %.lr.ph.i81 ], [ %i.ee, %bb.i ]
  %.036.i28.i87 = phi i32 [ %.04666.i85, %.lr.ph.i81 ], [ %i.en, %bb.i ] ; 2 uses
  %.0.i29.idx.i88 = phi i64 [ 0, %.lr.ph.i81 ], [ %.0.i29.add.i90, %bb.i ] ; 2 uses
  %.0.i29.ptr.i89 = getelementptr inbounds nuw i8, ptr %.02268.i83, i64 %.0.i29.idx.i88
  %i.dw = load <16 x i8>, ptr %.0.i29.ptr.i89, align 1, !tbaa !43 ; 3 uses
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dy = shufflevector <16 x i8> %i.dw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dz = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dz, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.eb = bitcast <16 x i8> %i.dy to <8 x i16>
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eb, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.ed = add <4 x i32> %i.ea, %i.dv
  %i.ee = add <4 x i32> %i.ed, %i.ec              ; 2 uses
  %i.ef = add i32 %.036.i28.i87, %.038.i26.i86    ; 2 uses
  %i.eg = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.dw, <16 x i8> zeroinitializer) ; 2 uses
  %i.eh = bitcast <2 x i64> %i.eg to <4 x i32>
  %i.ei = extractelement <4 x i32> %i.eh, i64 0
  %i.ej = bitcast <2 x i64> %i.eg to <8 x i16>
  %i.ek = extractelement <8 x i16> %i.ej, i64 4
  %i.el = zext i16 %i.ek to i32
  %i.em = add i32 %i.ei, %.036.i28.i87
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  %.0.i29.add.i90 = add nuw nsw i64 %.0.i29.idx.i88, 16 ; 2 uses
  %.not.i30.i91 = icmp eq i64 %.0.i29.add.i90, 5552
  br i1 %.not.i30.i91, label %adler32_do16_loop.exit31.i92, label %bb.i, !llvm.loop !2

adler32_do16_loop.exit31.i92:                     ; preds = %bb.i
  %i.eo = add i32 %.069.i82, -5552                ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.02268.i83, i64 5552 ; 2 uses
  %i.eq = shl i32 %i.ef, 4
  %i.er = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ee)
  %i.es = add i32 %i.eq, %storemerge67.i84
  %i.et = add i32 %i.es, %i.er
  %3 = urem i32 %i.en, 65521                      ; 2 uses
  %4 = urem i32 %i.et, 65521                      ; 2 uses
  %i.eu = icmp ugt i32 %i.eo, 5551
  br i1 %i.eu, label %.lr.ph.i81, label %._crit_edge.i56, !llvm.loop !3

._crit_edge.i56:                                  ; preds = %adler32_do16_loop.exit31.i92, %bb.h
  %.046.lcssa.i57 = phi i32 [ %i.dr, %bb.h ], [ %3, %adler32_do16_loop.exit31.i92 ] ; 3 uses
  %storemerge.lcssa.i58 = phi i32 [ %i.dq, %bb.h ], [ %4, %adler32_do16_loop.exit31.i92 ] ; 3 uses
  %.022.lcssa.i59 = phi ptr [ %i.ds, %bb.h ], [ %i.ep, %adler32_do16_loop.exit31.i92 ] ; 3 uses
  %.0.lcssa.i60 = phi i32 [ %i.dt, %bb.h ], [ %i.eo, %adler32_do16_loop.exit31.i92 ] ; 5 uses
  %.not.i61 = icmp eq i32 %.0.lcssa.i60, 0
  br i1 %.not.i61, label %zend_adler32.exit93, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i56
  %i.ev = icmp samesign ugt i32 %.0.lcssa.i60, 15
  br i1 %i.ev, label %bb.k, label %.thread.i62

bb.k:                                             ; preds = %bb.j
  %i.ew = and i32 %.0.lcssa.i60, 8176
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.022.lcssa.i59, i64 %i.ex ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.038.i.i76 = phi i32 [ 0, %bb.k ], [ %i.fj, %bb.l ]
  %i.ez = phi <4 x i32> [ zeroinitializer, %bb.k ], [ %i.fi, %bb.l ]
  %.036.i.i77 = phi i32 [ %.046.lcssa.i57, %bb.k ], [ %i.fr, %bb.l ] ; 2 uses
  %.0.i.i78 = phi ptr [ %.022.lcssa.i59, %bb.k ], [ %i.fs, %bb.l ] ; 2 uses
  %i.fa = load <16 x i8>, ptr %.0.i.i78, align 1, !tbaa !43 ; 3 uses
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fc = shufflevector <16 x i8> %i.fa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fd = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.fe = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fd, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.ff = bitcast <16 x i8> %i.fc to <8 x i16>
  %i.fg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ff, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.fh = add <4 x i32> %i.fe, %i.ez
  %i.fi = add <4 x i32> %i.fh, %i.fg              ; 2 uses
  %i.fj = add i32 %.036.i.i77, %.038.i.i76        ; 2 uses
  %i.fk = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.fa, <16 x i8> zeroinitializer) ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fk to <4 x i32>
  %i.fm = extractelement <4 x i32> %i.fl, i64 0
  %i.fn = bitcast <2 x i64> %i.fk to <8 x i16>
  %i.fo = extractelement <8 x i16> %i.fn, i64 4
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add i32 %i.fm, %.036.i.i77
  %i.fr = add i32 %i.fq, %i.fp                    ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 16 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.fs, %i.ey
  br i1 %.not.i.i79, label %bb.m, label %bb.l, !llvm.loop !2

bb.m:                                             ; preds = %bb.l
  %i.ft = and i32 %.0.lcssa.i60, 15               ; 2 uses
  %i.fu = shl i32 %i.fj, 4
  %i.fv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fi)
  %i.fw = add i32 %i.fu, %storemerge.lcssa.i58
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %.not24.i80 = icmp eq i32 %i.ft, 0
  br i1 %.not24.i80, label %.loopexit.i71, label %.thread.i62

.thread.i62:                                      ; preds = %bb.m, %bb.j
  %.158.i63 = phi i32 [ %i.ft, %bb.m ], [ %.0.lcssa.i60, %bb.j ] ; 2 uses
  %.12357.i64 = phi ptr [ %i.ey, %bb.m ], [ %.022.lcssa.i59, %bb.j ] ; 3 uses
  %.04356.i65 = phi i32 [ %i.fx, %bb.m ], [ %storemerge.lcssa.i58, %bb.j ] ; 2 uses
  %.14755.i66 = phi i32 [ %i.fr, %bb.m ], [ %.046.lcssa.i57, %bb.j ] ; 2 uses
  %i.fy = zext nneg i32 %.158.i63 to i64          ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.12357.i64, i64 %i.fy
  %xtraiter227 = and i64 %i.fy, 7                 ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.prol.loopexit226, label %.prol.preheader225

.prol.preheader225:                               ; preds = %.thread.i62, %.prol.preheader225
  %.248.i67.prol = phi i32 [ %i.gc, %.prol.preheader225 ], [ %.14755.i66, %.thread.i62 ]
  %.144.i68.prol = phi i32 [ %i.gd, %.prol.preheader225 ], [ %.04356.i65, %.thread.i62 ]
  %.2.i69.prol = phi ptr [ %i.ge, %.prol.preheader225 ], [ %.12357.i64, %.thread.i62 ] ; 2 uses
  %prol.iter229 = phi i64 [ %prol.iter229.next, %.prol.preheader225 ], [ 0, %.thread.i62 ]
  %i.ga = load i8, ptr %.2.i69.prol, align 1, !tbaa !43
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add i32 %.248.i67.prol, %i.gb           ; 4 uses
  %i.gd = add i32 %i.gc, %.144.i68.prol           ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.2.i69.prol, i64 1 ; 2 uses
  %prol.iter229.next = add i64 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i64 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %.prol.loopexit226, label %.prol.preheader225, !llvm.loop !180

.prol.loopexit226:                                ; preds = %.prol.preheader225, %.thread.i62
  %.lcssa202.unr = phi i32 [ poison, %.thread.i62 ], [ %i.gc, %.prol.preheader225 ]
  %.lcssa.unr = phi i32 [ poison, %.thread.i62 ], [ %i.gd, %.prol.preheader225 ]
  %.248.i67.unr = phi i32 [ %.14755.i66, %.thread.i62 ], [ %i.gc, %.prol.preheader225 ]
  %.144.i68.unr = phi i32 [ %.04356.i65, %.thread.i62 ], [ %i.gd, %.prol.preheader225 ]
  %.2.i69.unr = phi ptr [ %.12357.i64, %.thread.i62 ], [ %i.ge, %.prol.preheader225 ]
  %i.gf = icmp samesign ult i32 %.158.i63, 8
  br i1 %i.gf, label %.loopexit.i71, label %.thread.i62.new

.thread.i62.new:                                  ; preds = %.prol.loopexit226, %.thread.i62.new
  %.248.i67 = phi i32 [ %i.hr, %.thread.i62.new ], [ %.248.i67.unr, %.prol.loopexit226 ]
  %.144.i68 = phi i32 [ %i.hs, %.thread.i62.new ], [ %.144.i68.unr, %.prol.loopexit226 ]
  %.2.i69 = phi ptr [ %i.ht, %.thread.i62.new ], [ %.2.i69.unr, %.prol.loopexit226 ] ; 9 uses
  %i.gg = load i8, ptr %.2.i69, align 1, !tbaa !43
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add i32 %.248.i67, %i.gh                ; 2 uses
  %i.gj = add i32 %i.gi, %.144.i68
  %i.gk = getelementptr inbounds nuw i8, ptr %.2.i69, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !43
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add i32 %i.gi, %i.gm                    ; 2 uses
  %i.go = add i32 %i.gn, %i.gj
  %i.gp = getelementptr inbounds nuw i8, ptr %.2.i69, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !43
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add i32 %i.gn, %i.gr                    ; 2 uses
  %i.gt = add i32 %i.gs, %i.go
  %i.gu = getelementptr inbounds nuw i8, ptr %.2.i69, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !43
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add i32 %i.gs, %i.gw                    ; 2 uses
  %i.gy = add i32 %i.gx, %i.gt
  %i.gz = getelementptr inbounds nuw i8, ptr %.2.i69, i64 4
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !43
  %i.hb = zext i8 %i.ha to i32
  %i.hc = add i32 %i.gx, %i.hb                    ; 2 uses
  %i.hd = add i32 %i.hc, %i.gy
  %i.he = getelementptr inbounds nuw i8, ptr %.2.i69, i64 5
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !43
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add i32 %i.hc, %i.hg                    ; 2 uses
  %i.hi = add i32 %i.hh, %i.hd
  %i.hj = getelementptr inbounds nuw i8, ptr %.2.i69, i64 6
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !43
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add i32 %i.hh, %i.hl                    ; 2 uses
  %i.hn = add i32 %i.hm, %i.hi
  %i.ho = getelementptr inbounds nuw i8, ptr %.2.i69, i64 7
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !43
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add i32 %i.hm, %i.hq                    ; 3 uses
  %i.hs = add i32 %i.hr, %i.hn                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.2.i69, i64 8 ; 2 uses
  %.not25.i70.7 = icmp eq ptr %i.ht, %i.fz
  br i1 %.not25.i70.7, label %.loopexit.i71, label %.thread.i62.new, !llvm.loop !4

.loopexit.i71:                                    ; preds = %.prol.loopexit226, %.thread.i62.new, %bb.m
  %.349.i72 = phi i32 [ %i.fr, %bb.m ], [ %.lcssa202.unr, %.prol.loopexit226 ], [ %i.hr, %.thread.i62.new ]
  %.245.i73 = phi i32 [ %i.fx, %bb.m ], [ %.lcssa.unr, %.prol.loopexit226 ], [ %i.hs, %.thread.i62.new ]
  %i.hu = urem i32 %.349.i72, 65521
  %i.hv = urem i32 %.245.i73, 65521
  br label %zend_adler32.exit93

zend_adler32.exit93:                              ; preds = %._crit_edge.i56, %.loopexit.i71
  %.4.i74 = phi i32 [ %.046.lcssa.i57, %._crit_edge.i56 ], [ %i.hu, %.loopexit.i71 ]
  %.3.i75 = phi i32 [ %storemerge.lcssa.i58, %._crit_edge.i56 ], [ %i.hv, %.loopexit.i71 ]
  %i.hw = shl nuw i32 %.3.i75, 16
  %i.hx = or i32 %i.hw, %.4.i74
  br label %bb.n

bb.n:                                             ; preds = %zend_adler32.exit93, %zend_adler32.exit55
  %.1 = phi i32 [ %i.hx, %zend_adler32.exit93 ], [ %.0, %zend_adler32.exit55 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i64 @zend_string_hash_func(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @zend_string_equal_val(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_find_known_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_zend_observer_function_declared_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_set_compiled_filename(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare void @zend_class_redeclaration_error(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_zend_observer_class_linked_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_try_early_bind(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_bind_class_in_slot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
