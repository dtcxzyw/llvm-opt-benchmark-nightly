Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CPlusPlusLanguage?download=true
inline.NumInlined: 8510
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm16itanium_demangle16FloatLiteralImplIdE9printLeftERNS0_12OutputBufferE:bb.a
  %op.rdx66 = or disjoint i64 %i.be, %.sroa.0.4.insert.shift
  %op.rdx67 = or disjoint i64 %op.rdx, %op.rdx66
  %op.rdx68 = or disjoint i64 %op.rdx67, %.sroa.0.7.insert.ext
  %i.bf = bitcast i64 %op.rdx68 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.517, double noundef %i.bf) #27 ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !421 ; 2 uses
  %i.bk = add i64 %i.bj, %i.bh                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !422 ; 2 uses
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.bo = add i64 %i.bk, 992
  %i.bp = shl i64 %i.bm, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bo) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.bl, align 8, !tbaa !422
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !423
  %i.bs = tail call ptr @realloc(ptr noundef %i.br, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !423
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.bi, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.bu = phi i64 [ %i.bj, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.bv = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.bs, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 16 %i.a, i64 %i.bh, i1 false)
  %i.bx = load i64, ptr %i.bi, align 8, !tbaa !421
  %i.by = add i64 %i.bx, %i.bh
  store i64 %i.by, ptr %i.bi, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle16FloatLiteralImplIeED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle16FloatLiteralImplIeE9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [42 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !531
  %i.d = icmp ugt i64 %i.c, 19
  br i1 %i.d, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !532  ; 13 uses
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.g = load i8, ptr %.ptr.6, align 1, !tbaa !58 ; 2 uses
  %i.h = sext i8 %i.g to i32
  %isdigittmp20.6 = add nsw i32 %i.h, -48
  %isdigit21.6 = icmp ult i32 %isdigittmp20.6, 10
  %.v22.6 = select i1 %isdigit21.6, i8 -48, i8 -87
  %i.i = add i8 %.v22.6, %i.g
  %.018.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i8, ptr %.018.ptr.6, align 1, !tbaa !58 ; 2 uses
  %i.k = sext i8 %i.j to i32
  %isdigittmp.6 = add nsw i32 %i.k, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.l = add i8 %.v.6, %i.j
  %i.m = shl i8 %i.l, 4
  %i.n = add i8 %i.i, %i.m
  %.sroa.0.6.insert.ext = zext i8 %i.n to i80
  %.sroa.0.6.insert.shift = shl nuw nsw i80 %.sroa.0.6.insert.ext, 48
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.o = load i8, ptr %.ptr.7, align 1, !tbaa !58 ; 2 uses
  %i.p = sext i8 %i.o to i32
  %isdigittmp20.7 = add nsw i32 %i.p, -48
  %isdigit21.7 = icmp ult i32 %isdigittmp20.7, 10
  %.v22.7 = select i1 %isdigit21.7, i8 -48, i8 -87
  %i.q = add i8 %.v22.7, %i.o
  %.018.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.r = load i8, ptr %.018.ptr.7, align 1, !tbaa !58 ; 2 uses
  %i.s = sext i8 %i.r to i32
  %isdigittmp.7 = add nsw i32 %i.s, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.t = add i8 %.v.7, %i.r
  %i.u = shl i8 %i.t, 4
  %i.v = add i8 %i.q, %i.u
  %.sroa.0.7.insert.ext = zext i8 %i.v to i80
  %.sroa.0.7.insert.shift = shl nuw nsw i80 %.sroa.0.7.insert.ext, 56
  %i.w = or disjoint i80 %.sroa.0.6.insert.shift, %.sroa.0.7.insert.shift
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.x = load i8, ptr %.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.y = sext i8 %i.x to i32
  %isdigittmp20.4 = add nsw i32 %i.y, -48
  %isdigit21.4 = icmp ult i32 %isdigittmp20.4, 10
  %.v22.4 = select i1 %isdigit21.4, i8 -48, i8 -87
  %i.z = add i8 %.v22.4, %i.x
  %.018.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i8, ptr %.018.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp.4 = add nsw i32 %i.ab, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.ac = add i8 %.v.4, %i.aa
  %i.ad = shl i8 %i.ac, 4
  %i.ae = add i8 %i.z, %i.ad
  %.sroa.0.4.insert.ext = zext i8 %i.ae to i80    ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw nsw i80 %.sroa.0.4.insert.ext, 32
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.af = load i8, ptr %.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.ag = sext i8 %i.af to i32
  %isdigittmp20.5 = add nsw i32 %i.ag, -48
  %isdigit21.5 = icmp ult i32 %isdigittmp20.5, 10
  %.v22.5 = select i1 %isdigit21.5, i8 -48, i8 -87
  %i.ah = add i8 %.v22.5, %i.af
  %.018.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ai = load i8, ptr %.018.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp.5 = add nsw i32 %i.aj, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.ak = add i8 %.v.5, %i.ai
  %i.al = shl i8 %i.ak, 4
  %i.am = add i8 %i.ah, %i.al
  %.sroa.0.5.insert.ext = zext i8 %i.am to i80    ; 2 uses
  %.sroa.0.5.insert.shift = shl nuw nsw i80 %.sroa.0.5.insert.ext, 40
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.an = load i8, ptr %.ptr.8, align 1, !tbaa !58 ; 2 uses
  %i.ao = sext i8 %i.an to i32
  %isdigittmp20.8 = add nsw i32 %i.ao, -48
  %isdigit21.8 = icmp ult i32 %isdigittmp20.8, 10
  %.v22.8 = select i1 %isdigit21.8, i8 -48, i8 -87
  %i.ap = add i8 %.v22.8, %i.an
  %.018.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aq = load i8, ptr %.018.ptr.8, align 1, !tbaa !58 ; 2 uses
  %i.ar = sext i8 %i.aq to i32
  %isdigittmp.8 = add nsw i32 %i.ar, -48
  %isdigit.8 = icmp ult i32 %isdigittmp.8, 10
  %.v.8 = select i1 %isdigit.8, i8 0, i8 9
  %i.as = add i8 %.v.8, %i.aq
  %i.at = shl i8 %i.as, 4
  %i.au = add i8 %i.ap, %i.at
  %.sroa.0.8.insert.ext = zext i8 %i.au to i80
  %.sroa.0.8.insert.shift = shl nuw nsw i80 %.sroa.0.8.insert.ext, 64
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.av = load i8, ptr %.ptr.9, align 1, !tbaa !58 ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %isdigittmp20.9 = add nsw i32 %i.aw, -48
  %isdigit21.9 = icmp ult i32 %isdigittmp20.9, 10
  %.v22.9 = select i1 %isdigit21.9, i8 -48, i8 -87
  %i.ax = add i8 %.v22.9, %i.av
  %.018.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.ay = load i8, ptr %.018.ptr.9, align 1, !tbaa !58 ; 2 uses
  %i.az = sext i8 %i.ay to i32
  %isdigittmp.9 = add nsw i32 %i.az, -48
  %isdigit.9 = icmp ult i32 %isdigittmp.9, 10
  %.v.9 = select i1 %isdigit.9, i8 0, i8 9
  %i.ba = add i8 %.v.9, %i.ay
  %i.bb = shl i8 %i.ba, 4
  %i.bc = add i8 %i.ax, %i.bb
  %.sroa.0.9.insert.ext = zext i8 %i.bc to i80
  %.sroa.0.9.insert.shift = shl nuw i80 %.sroa.0.9.insert.ext, 72
  %i.bd = or disjoint i80 %.sroa.0.8.insert.shift, %.sroa.0.9.insert.shift
  %i.be = load <8 x i8>, ptr %i.f, align 1, !tbaa !58 ; 2 uses
  %i.bf = shufflevector <8 x i8> %i.be, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.bg = sext <4 x i8> %i.bf to <4 x i32>
  %i.bh = add nsw <4 x i32> %i.bg, splat (i32 -48)
  %i.bi = icmp ult <4 x i32> %i.bh, splat (i32 10)
  %i.bj = select <4 x i1> %i.bi, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.bk = add <4 x i8> %i.bj, %i.bf
  %i.bl = shufflevector <8 x i8> %i.be, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %2 = sext <4 x i8> %i.bl to <4 x i16>
  %3 = add nsw <4 x i16> %2, splat (i16 -48)
  %i.bm = icmp ult <4 x i16> %3, splat (i16 10)
  %i.bn = select <4 x i1> %i.bm, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.bo = add <4 x i8> %i.bn, %i.bl
  %i.bp = shl <4 x i8> %i.bo, splat (i8 4)
  %i.bq = add <4 x i8> %i.bk, %i.bp               ; 2 uses
  %i.br = bitcast <4 x i8> %i.bq to i32
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = zext i32 %i.bs to i80
  %i.bu = or disjoint i80 %.sroa.0.5.insert.shift, %i.bt
  %op.rdx82 = or disjoint i80 %i.bu, %.sroa.0.4.insert.shift
  %.sroa.0.8.insert.mask = or disjoint i80 %i.w, %op.rdx82 ; 3 uses
  %i.bv = lshr i80 %.sroa.0.8.insert.mask, 24
  %.sroa.0.3.insert.shift41 = and i80 %i.bv, 4278190080
  %i.bw = zext <4 x i8> %i.bq to <4 x i80>
  %i.bx = shl nuw <4 x i80> %i.bw, <i80 48, i80 56, i80 64, i80 72>
  %i.by = lshr i80 %.sroa.0.8.insert.mask, 40
  %.sroa.0.2.insert.shift36 = and i80 %i.by, 16711680
  %.sroa.0.9.insert.insert = or disjoint i80 %i.bd, %.sroa.0.8.insert.mask ; 2 uses
  %i.bz = lshr i80 %.sroa.0.9.insert.insert, 56
  %.sroa.0.1.insert.shift31 = and i80 %i.bz, 65280
  %.sroa.0.9.extract.shift = lshr i80 %.sroa.0.9.insert.insert, 72
  %i.ca = shl nuw nsw i80 %.sroa.0.5.insert.ext, 32
  %i.cb = shl nuw nsw i80 %.sroa.0.4.insert.ext, 40
  %i.cc = tail call i80 @llvm.vector.reduce.or.v4i80(<4 x i80> %i.bx)
  %op.rdx = or i80 %i.cc, %.sroa.0.3.insert.shift41
  %op.rdx76 = or disjoint i80 %.sroa.0.2.insert.shift36, %.sroa.0.1.insert.shift31
  %op.rdx77 = or disjoint i80 %i.ca, %i.cb
  %op.rdx78 = or i80 %op.rdx, %op.rdx76
  %op.rdx79 = or disjoint i80 %op.rdx77, %.sroa.0.9.extract.shift
  %op.rdx80 = or i80 %op.rdx78, %op.rdx79
  %i.cd = bitcast i80 %op.rdx80 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.a, i8 0, i64 42, i1 false)
  %i.ce = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 42, ptr noundef nonnull @.str.518, x86_fp80 noundef %i.cd) #27 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !421 ; 2 uses
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !422 ; 2 uses
  %i.cl = icmp ugt i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cm = add i64 %i.ci, 992
  %i.cn = shl i64 %i.ck, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.cm) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.cj, align 8, !tbaa !422
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !423
  %i.cq = tail call ptr @realloc(ptr noundef %i.cp, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !423
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.cg, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.cs = phi i64 [ %i.ch, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.ct = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.cq, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 16 %i.a, i64 %i.cf, i1 false)
  %i.cv = load i64, ptr %i.cg, align 8, !tbaa !421
  %i.cw = add i64 %i.cv, %i.cf
  store i64 %i.cw, ptr %i.cg, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle13StringLiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle13StringLiteral9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = add i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 994
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !422
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !423
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i16 15394, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8, !tbaa !421
  %i.q = add i64 %i.p, 2
  store i64 %i.q, ptr %i.a, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !523  ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27, !inline_history !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.x = load i16, ptr %i.w, align 1
  %.mask3.i = and i16 %i.x, 192
  %.not.i4 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i4, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27, !inline_history !25
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %bb.d, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !421 ; 3 uses
  %i.ac = add i64 %i.ab, 2
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !422 ; 2 uses
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i6

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i6: ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %.phi.trans.insert.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i8 = load ptr, ptr %.phi.trans.insert.i7, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i9

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.af = add i64 %i.ab, 994
  %i.ag = shl i64 %i.ad, 1
  %spec.select.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.af) ; 2 uses
  store i64 %spec.select.i.i10, ptr %i.d, align 8, !tbaa !422
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !423
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %spec.select.i.i10) #34 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !423
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i11

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i11: ; preds = %bb.e
  %.pre5.i12 = load i64, ptr %i.a, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i9

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i9: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i11, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i6
  %i.al = phi i64 [ %i.ab, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i6 ], [ %.pre5.i12, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i11 ]
  %i.am = phi ptr [ %.pre.i8, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i6 ], [ %i.aj, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i11 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i16 8766, ptr %i.an, align 1
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !421
  %i.ap = add i64 %i.ao, 2
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !421
  ret void
end_hunk_0
