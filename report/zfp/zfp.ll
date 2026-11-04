Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zfp_stream_mode:bb.a
  br i1 %i.d, label %zfp_stream_compression_mode.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  %i.g = add i32 %i.f, -1
  %or.cond.i = icmp ult i32 %i.g, 64
  br i1 %or.cond.i, label %bb.c, label %zfp_stream_compression_mode.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.a, 1
  %i.i = icmp eq i32 %i.c, 16658
  %or.cond32.i = and i1 %i.h, %i.i
  %i.j = icmp eq i32 %i.f, 64
  %or.cond33.i = and i1 %or.cond32.i, %i.j
  br i1 %or.cond33.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = icmp eq i32 %i.l, -1074
  br i1 %i.m, label %zfp_stream_compression_mode.exit.thread.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = icmp eq i32 %i.a, %i.c
  %i.o = add i32 %i.c, -1
  %i.p = icmp ult i32 %i.o, 16658
  %or.cond35.i = and i1 %i.n, %i.p
  %i.q = icmp samesign ugt i32 %i.f, 63           ; 2 uses
  %or.cond42.i = select i1 %or.cond35.i, i1 %i.q, i1 false
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = icmp eq i32 %i.s, -1074
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = icmp ult i32 %i.a, 2
  %i.v = icmp ugt i32 %i.c, 16657
  %or.cond43.i = and i1 %i.u, %i.v
  br i1 %or.cond43.i, label %bb.h, label %zfp_stream_compression_mode.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36   ; 4 uses
  %i.y = icmp ne i32 %i.x, -1074                  ; 2 uses
  %brmerge.not.i = select i1 %i.y, i1 %i.q, i1 false
  br i1 %brmerge.not.i, label %bb.i, label %zfp_stream_compression_mode.exit

bb.i:                                             ; preds = %bb.h
  %i.z = icmp sgt i32 %i.x, -1075
  br i1 %i.z, label %zfp_stream_compression_mode.exit.thread55, label %zfp_stream_compression_mode.exit.thread57

zfp_stream_compression_mode.exit:                 ; preds = %bb.h
  br i1 %i.y, label %zfp_stream_compression_mode.exit.thread, label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i32 %i.a, 2049
  br i1 %i.aa, label %bb.k, label %zfp_stream_compression_mode.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.a, -1
  %i.ac = zext nneg i32 %i.ab to i64
  br label %zfp_stream_compression_mode.exit.thread57

bb.l:                                             ; preds = %zfp_stream_compression_mode.exit
  %i.ad = add nuw nsw i32 %i.f, 2047
  %i.ae = zext nneg i32 %i.ad to i64
  br label %zfp_stream_compression_mode.exit.thread57

zfp_stream_compression_mode.exit.thread55:        ; preds = %bb.i
  %i.af = icmp slt i32 %i.x, 844
  br i1 %i.af, label %bb.m, label %zfp_stream_compression_mode.exit.thread

bb.m:                                             ; preds = %zfp_stream_compression_mode.exit.thread55
  %i.ag = sext i32 %i.x to i64
  %i.ah = add nsw i64 %i.ag, 3251
  br label %zfp_stream_compression_mode.exit.thread57

zfp_stream_compression_mode.exit.thread.thread:   ; preds = %bb.a
  %i.ai = icmp ult i32 %i.a, 32768
  br i1 %i.ai, label %zfp_stream_compression_mode.exit.thread.thread.thread, label %bb.n

zfp_stream_compression_mode.exit.thread:          ; preds = %zfp_stream_compression_mode.exit, %bb.b, %bb.g, %zfp_stream_compression_mode.exit.thread55, %bb.j
  %i.aj = icmp eq i32 %i.a, 0
  %i.ak = add i32 %i.a, -32768
  %brmerge = icmp ult i32 %i.ak, -32767
  %.mux = select i1 %i.aj, i64 0, i64 32767
  br i1 %brmerge, label %bb.n, label %zfp_stream_compression_mode.exit.thread.thread.thread

zfp_stream_compression_mode.exit.thread.thread.thread: ; preds = %zfp_stream_compression_mode.exit.thread, %bb.d, %zfp_stream_compression_mode.exit.thread.thread
  %i.al = add nsw i32 %i.a, -1
  %i.am = zext nneg i32 %i.al to i64
  br label %bb.n

bb.n:                                             ; preds = %zfp_stream_compression_mode.exit.thread, %zfp_stream_compression_mode.exit.thread.thread, %zfp_stream_compression_mode.exit.thread.thread.thread
  %i.an = phi i64 [ %.mux, %zfp_stream_compression_mode.exit.thread ], [ %i.am, %zfp_stream_compression_mode.exit.thread.thread.thread ], [ 32767, %zfp_stream_compression_mode.exit.thread.thread ]
  %i.ao = icmp eq i32 %i.c, 0
  %i.ap = add i32 %i.c, -32768
  %brmerge61 = icmp ult i32 %i.ap, -32767
  %.mux62 = select i1 %i.ao, i64 0, i64 1073709056
  %i.aq = add nsw i32 %i.c, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 15
  %i.at = select i1 %brmerge61, i64 %.mux62, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35 ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = add i32 %i.av, -128
  %brmerge64 = icmp ult i32 %i.ax, -127
  %.mux65 = select i1 %i.aw, i64 0, i64 127
  %i.ay = add i32 %i.av, 4194303
  %i.az = zext i32 %i.ay to i64
  %i.ba = select i1 %brmerge64, i64 %.mux65, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36 ; 3 uses
  %i.bd = icmp slt i32 %i.bc, -16495
  %i.be = add i32 %i.bc, -16272
  %brmerge67 = icmp ult i32 %i.be, -32767
  %.mux68 = select i1 %i.bd, i64 0, i64 4194176
  %i.bf = add nsw i32 %i.bc, 16495
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 7
  %i.bi = select i1 %brmerge67, i64 %.mux68, i64 %i.bh
  %i.bj = add nuw nsw i64 %i.bi, %i.ba
  %i.bk = add nuw nsw i64 %i.an, %i.at
  %i.bl = shl i64 %i.bj, 42
  %i.bm = shl nuw nsw i64 %i.bk, 12
  %i.bn = add i64 %i.bl, %i.bm
  %i.bo = or disjoint i64 %i.bn, 4095
  br label %zfp_stream_compression_mode.exit.thread57

zfp_stream_compression_mode.exit.thread57:        ; preds = %bb.i, %bb.n, %bb.m, %bb.l, %bb.k
  %.0 = phi i64 [ %i.bo, %bb.n ], [ %i.ac, %bb.k ], [ %i.ae, %bb.l ], [ %i.ah, %bb.m ], [ 2176, %bb.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @zfp_stream_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !33
  store i32 %i.a, ptr %1, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  store i32 %i.c, ptr %2, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  store i32 %i.e, ptr %3, align 4, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not17 = icmp eq ptr %4, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  store i32 %i.g, ptr %4, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @zfp_stream_compressed_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_size(ptr noundef %i.b) #20
  ret i64 %i.c
}

declare i64 @stream_size(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, 2305843009213693952) i64 @zfp_stream_maximum_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !36
  %2 = icmp slt i32 %.val, -1074                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16 ; 4 uses
  br i1 %.not.i, label %zfp_field_dimensionality.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4.i = icmp eq i64 %.pre, 0
  br i1 %.not4.i, label %zfp_field_dimensionality.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %zfp_field_dimensionality.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %.not6.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not6.i, i32 3, i32 4
  br label %zfp_field_dimensionality.exit

zfp_field_dimensionality.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = phi i64 [ 0, %bb.b ], [ %.pre, %bb.c ], [ %.pre, %bb.d ], [ %.pre, %bb.a ] ; 2 uses
  %i.j = phi i32 [ 1, %bb.b ], [ 2, %bb.c ], [ %i.h, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.k = add i64 %i.c, 3
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  %i.m = add i64 %i.i, 3
  %i.n = lshr i64 %i.m, 2                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = add i64 %i.p, 3
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  br i1 %.not.i, label %zfp_field_blocks.exit, label %bb.e

bb.e:                                             ; preds = %zfp_field_dimensionality.exit
  %.not4.i.i = icmp eq i64 %i.i, 0
  br i1 %.not4.i.i, label %zfp_field_blocks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not5.i.i = icmp eq i64 %i.p, 0
  br i1 %.not5.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not6.i.i = icmp eq i64 %i.t, 0
  br i1 %.not6.i.i, label %bb.i, label %zfp_field_dimensionality.exit.i

bb.h:                                             ; preds = %bb.f
  %i.u = mul i64 %i.n, %i.l
  br label %zfp_field_blocks.exit

bb.i:                                             ; preds = %bb.g
  %i.v = mul i64 %i.n, %i.l
  %i.w = mul i64 %i.v, %i.r
  br label %zfp_field_blocks.exit

zfp_field_dimensionality.exit.i:                  ; preds = %bb.g
  %i.x = add i64 %i.t, 3
  %i.y = lshr i64 %i.x, 2
  %i.z = mul i64 %i.n, %i.l
  %i.aa = mul i64 %i.z, %i.r
  %i.ab = mul i64 %i.aa, %i.y
  br label %zfp_field_blocks.exit

zfp_field_blocks.exit:                            ; preds = %zfp_field_dimensionality.exit, %bb.e, %bb.h, %bb.i, %zfp_field_dimensionality.exit.i
  %.0.i = phi i64 [ 0, %zfp_field_dimensionality.exit ], [ %i.ab, %zfp_field_dimensionality.exit.i ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.l, %bb.e ]
  %i.ac = shl nuw nsw i32 %i.j, 1                 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %zfp_field_blocks.exit
  %i.ad = load i32, ptr %1, align 8, !tbaa !13    ; 2 uses
  switch i32 %i.ad, label %bb.o [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = select i1 %2, i32 5, i32 0
  br label %zfp_field_precision.exit

bb.l:                                             ; preds = %bb.j
  %i.af = select i1 %2, i32 6, i32 0
  br label %zfp_field_precision.exit

bb.m:                                             ; preds = %bb.j
  %i.ag = select i1 %2, i32 15, i32 9
  br label %zfp_field_precision.exit

bb.n:                                             ; preds = %bb.j
  %i.ah = select i1 %2, i32 19, i32 12
  br label %zfp_field_precision.exit

zfp_field_precision.exit:                         ; preds = %bb.n, %bb.l, %bb.k, %bb.m
  %.049 = phi i32 [ %i.ae, %bb.k ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.af, %bb.l ]
  %.0.i.i = phi i32 [ 32, %bb.k ], [ 32, %bb.m ], [ 64, %bb.n ], [ 64, %bb.l ]
  %.in50 = shl nsw i32 -1, %i.ac
  %i.ai = xor i32 %.in50, -1
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %.in, align 8, !tbaa !35  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %.0.i.i
  br i1 %i.ak, label %zfp_field_precision.exit46, label %switch.lookup

switch.lookup:                                    ; preds = %zfp_field_precision.exit
  %i.al = sext i32 %i.ad to i64
  %i.am = getelementptr i8, ptr @switch.table.zfp_stream_maximum_size, i64 %i.al
  %switch.gep = getelementptr i8, ptr %i.am, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %zfp_field_precision.exit46

zfp_field_precision.exit46:                       ; preds = %switch.lookup, %zfp_field_precision.exit
  %i.an = phi i32 [ %i.aj, %zfp_field_precision.exit ], [ %switch.ext, %switch.lookup ]
  %i.ao = shl nuw nsw i32 %i.an, %i.ac
  %i.ap = add nuw nsw i32 %.049, %i.ai
  %i.aq = add nuw nsw i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %. = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.as)
  %i.at = load i32, ptr %0, align 8, !tbaa !33
  %i.au = tail call i32 @llvm.umax.i32(i32 %., i32 %i.at)
  %i.av = zext i32 %i.au to i64
  %i.aw = mul i64 %.0.i, %i.av
  %i.ax = load i64, ptr @stream_word_bits, align 8, !tbaa !10 ; 2 uses
  %i.ay = add i64 %i.ax, 147
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = urem i64 %i.az, %i.ax
  %i.bb = sub nuw i64 %i.az, %i.ba
  %i.bc = lshr i64 %i.bb, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %zfp_field_blocks.exit, %zfp_field_precision.exit46
  %.036 = phi i64 [ 0, %zfp_field_blocks.exit ], [ %i.bc, %zfp_field_precision.exit46 ], [ 0, %bb.j ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @zfp_stream_set_bit_stream(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @zfp_stream_set_reversible(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #8 {
bb.a:
  store <4 x i32> <i32 1, i32 16658, i32 64, i32 -1075>, ptr %0, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define double @zfp_stream_set_rate(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, double noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = shl i32 %3, 1
  %i.b = shl nuw i32 1, %i.a
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double %1, double 5.000000e-01)
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = fptoui double %i.e to i32                ; 3 uses
  switch i32 %2, label %bb.d [
    i32 3, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.f, i32 9)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.f, i32 12)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr @stream_word_bits, align 8, !tbaa !10
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = add i32 %.0, -1
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = urem i32 %i.l, %i.j
  %i.n = sub nuw i32 %i.l, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.n, %bb.e ], [ %.0, %bb.d ]   ; 3 uses
  store i32 %.1, ptr %0, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.1, ptr %i.o, align 4, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1074, ptr %i.q, align 4, !tbaa !36
  %i.r = uitofp i32 %.1 to double
  %i.s = fdiv double %i.r, %i.c
  ret double %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i32 0, 65) i32 @zfp_stream_set_precision(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 16658, ptr %i.a, align 4, !tbaa !34
  %.not = icmp eq i32 %1, 0
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 64)
  %i.c = select i1 %.not, i32 64, i32 %i.b        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1074, ptr %i.e, align 4, !tbaa !36
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define double @zfp_stream_set_accuracy(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, double noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 -1074, ptr %i.a, align 4, !tbaa !30
  %i.b = fcmp ogt double %1, 0.000000e+00
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = call double @frexp(double noundef %1, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !30
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %i.f = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.e) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.e, %bb.b ], [ -1074, %bb.a ]
  %i.g = phi double [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  store i32 1, ptr %0, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 16658, ptr %i.h, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink, ptr %i.j, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret double %i.g
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 6) i32 @zfp_stream_set_mode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %1, 4095
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 2048
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %1 to i32
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %1, 2176
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %1 to i32
  %i.g = add nsw i32 %i.f, -2047
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %1, 2176
  br i1 %i.h, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = trunc nuw nsw i64 %1 to i32
  %i.j = add nsw i32 %i.i, -3251
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.k = trunc i64 %1 to i32
  %i.l = lshr i32 %i.k, 12
  %i.m = and i32 %i.l, 32767
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = lshr i64 %1, 27
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 32767
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = lshr i64 %1, 42
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 127
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = lshr i64 %1, 49
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %i.x, -16495
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.g, %bb.e, %bb.h
  %.023 = phi i32 [ %i.d, %bb.c ], [ 1, %bb.e ], [ %i.n, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ] ; 5 uses
  %.022 = phi i32 [ %i.d, %bb.c ], [ 16658, %bb.e ], [ %i.r, %bb.h ], [ 16658, %bb.g ], [ 16658, %bb.f ] ; 6 uses
  %i.z = phi i32 [ 64, %bb.c ], [ %i.g, %bb.e ], [ %i.v, %bb.h ], [ 64, %bb.g ], [ 64, %bb.f ] ; 4 uses
  %i.aa = phi i32 [ -1074, %bb.c ], [ -1074, %bb.e ], [ %i.y, %bb.h ], [ %i.j, %bb.g ], [ -1075, %bb.f ] ; 5 uses
  %i.ab = icmp samesign ule i32 %.023, %.022
  %i.ac = icmp samesign ult i32 %i.z, 65
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %zfp_stream_compression_mode.exit

bb.j:                                             ; preds = %bb.i
  store i32 %.023, ptr %0, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.022, ptr %i.ad, align 4, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.z, ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aa, ptr %i.af, align 4, !tbaa !36
  %i.ag = icmp eq i32 %.023, 1
  %i.ah = icmp eq i32 %.022, 16658
  %or.cond32.i = and i1 %i.ag, %i.ah
  %i.ai = icmp eq i32 %i.z, 64
  %or.cond33.i = and i1 %or.cond32.i, %i.ai
  %i.aj = icmp eq i32 %i.aa, -1074
  %or.cond = select i1 %or.cond33.i, i1 %i.aj, i1 false
  br i1 %or.cond, label %zfp_stream_compression_mode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i32 %.023, %.022
  %i.al = icmp samesign ult i32 %.022, 16659
  %or.cond35.i = and i1 %i.ak, %i.al
  %i.am = icmp samesign ugt i32 %i.z, 63          ; 2 uses
  %or.cond42.i = select i1 %or.cond35.i, i1 %i.am, i1 false
  %i.an = icmp eq i32 %i.aa, -1074
  %or.cond31 = select i1 %or.cond42.i, i1 %i.an, i1 false
  br i1 %or.cond31, label %zfp_stream_compression_mode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ult i32 %.023, 2
  %i.ap = icmp samesign ugt i32 %.022, 16657
  %or.cond43.i = and i1 %i.ao, %i.ap
  br i1 %or.cond43.i, label %bb.m, label %zfp_stream_compression_mode.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp ne i32 %i.aa, -1074                ; 2 uses
  %brmerge.not.i = select i1 %i.aq, i1 %i.am, i1 false
  %.mux.i = select i1 %i.aq, i32 1, i32 3
  br i1 %brmerge.not.i, label %bb.n, label %zfp_stream_compression_mode.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp sgt i32 %i.aa, -1075
  %spec.select.i = select i1 %i.ar, i32 4, i32 5
  br label %zfp_stream_compression_mode.exit

zfp_stream_compression_mode.exit:                 ; preds = %bb.k, %bb.j, %bb.n, %bb.m, %bb.l, %bb.i
  %.024 = phi i32 [ 0, %bb.i ], [ 1, %bb.l ], [ %spec.select.i, %bb.n ], [ 1, %bb.j ], [ 2, %bb.k ], [ %.mux.i, %bb.m ]
  ret i32 %.024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @zfp_stream_set_params(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ule i32 %1, %2
  %i.b = add i32 %3, -1
  %i.c = icmp ult i32 %i.b, 64
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.f, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zfp_stream_flush(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_flush(ptr noundef %i.b) #20
  ret i64 %i.c
}

declare i64 @stream_flush(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i64 @zfp_stream_align(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_align(ptr noundef %i.b) #20
  ret i64 %i.c
}

declare i64 @stream_align(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @zfp_stream_rewind(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @stream_rewind(ptr noundef %i.b) #20
  ret void
}

declare void @stream_rewind(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @zfp_stream_execution(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @zfp_stream_omp_threads(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @zfp_stream_omp_chunk_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @zfp_stream_set_execution(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  switch i32 %1, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #20
  store ptr null, ptr %i.c, align 8, !tbaa !32
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !39
  store ptr %i.i, ptr %i.g, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.k, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @zfp_stream_set_omp_threads(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.b, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp eq ptr %.pre, null
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %.pre) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !39
  store ptr %i.c, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.a ]
  store i32 1, ptr %i.a, align 8, !tbaa !31
  store i32 %1, ptr %i.e, align 4, !tbaa !38
  ret i32 1
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
end_hunk_0
begin_hunk_1_@decompress_strided_int32_1:bb.a
; Function Attrs: nounwind uwtable
define internal void @decompress_strided_int64_1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.g = mul nsw i64 %.022, %spec.select
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = sub nuw i64 %i.d, %.022                  ; 2 uses
  %i.j = icmp ult i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call i64 @zfp_decode_partial_block_strided_int64_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.l = tail call i64 @zfp_decode_block_strided_int64_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = add i64 %.022, 4                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decompress_strided_float_1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.g = mul nsw i64 %.022, %spec.select
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = sub nuw i64 %i.d, %.022                  ; 2 uses
  %i.j = icmp ult i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call i64 @zfp_decode_partial_block_strided_float_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.l = tail call i64 @zfp_decode_block_strided_float_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = add i64 %.022, 4                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decompress_strided_double_1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.g = mul nsw i64 %.022, %spec.select
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = sub nuw i64 %i.d, %.022                  ; 2 uses
  %i.j = icmp ult i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call i64 @zfp_decode_partial_block_strided_double_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.l = tail call i64 @zfp_decode_block_strided_double_1(ptr noundef %0, ptr noundef %i.h, i64 noundef %spec.select) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = add i64 %.022, 4                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

declare i64 @zfp_decode_block_int32_1(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int32_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_int64_1(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int64_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_float_1(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_float_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_double_1(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int32_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int32_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int64_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int64_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_float_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_float_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int32_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int32_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int64_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int64_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_float_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_float_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_double_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_double_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int32_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int32_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_int64_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int64_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_float_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_float_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_partial_block_strided_double_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_double_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int32_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_int64_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_float_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_decode_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i64 0, 149) i64 @zfp_write_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = and i32 %2, 2
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @zfp_field_metadata(ptr noundef %1) ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %.not25 = trunc i32 %2 to i1
  br i1 %.not25, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = tail call i64 @stream_write_bits(ptr noundef %i.e, i64 noundef 122, i64 noundef 8) #20 ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.h = tail call i64 @stream_write_bits(ptr noundef %i.g, i64 noundef 102, i64 noundef 8) #20 ; 0 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.j = tail call i64 @stream_write_bits(ptr noundef %i.i, i64 noundef 112, i64 noundef 8) #20 ; 0 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.l = tail call i64 @stream_write_bits(ptr noundef %i.k, i64 noundef 5, i64 noundef 8) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022 = phi i64 [ 32, %bb.d ], [ 0, %bb.c ]     ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = tail call i64 @stream_write_bits(ptr noundef %i.n, i64 noundef %.023, i64 noundef 52) #20 ; 0 uses
  %i.p = add nuw nsw i64 %.022, 52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %i.p, %bb.f ], [ %.022, %bb.e ] ; 2 uses
  %i.q = and i32 %2, 4
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 @zfp_stream_mode(ptr noundef %0) ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4094
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = select i1 %i.s, i64 64, i64 12           ; 2 uses
  %i.w = tail call i64 @stream_write_bits(ptr noundef %i.u, i64 noundef %i.r, i64 noundef %i.v) #20 ; 0 uses
  %i.x = add nuw nsw i64 %i.v, %.1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.x, %bb.h ], [ %.1, %bb.g ]
  ret i64 %.0
}

declare i64 @stream_write_bits(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i64 0, 149) i64 @zfp_read_header(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %.not = trunc i32 %2 to i1
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_read_bits(ptr noundef %i.b, i64 noundef 8) #20
  %.not33 = icmp eq i64 %i.c, 122
  br i1 %.not33, label %bb.c, label %zfp_stream_set_mode.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.e = tail call i64 @stream_read_bits(ptr noundef %i.d, i64 noundef 8) #20
  %.not34 = icmp eq i64 %i.e, 102
  br i1 %.not34, label %bb.d, label %zfp_stream_set_mode.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.g = tail call i64 @stream_read_bits(ptr noundef %i.f, i64 noundef 8) #20
  %.not35 = icmp eq i64 %i.g, 112
  br i1 %.not35, label %bb.e, label %zfp_stream_set_mode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.i = tail call i64 @stream_read_bits(ptr noundef %i.h, i64 noundef 8) #20
  %.not36 = icmp eq i64 %i.i, 5
  br i1 %.not36, label %bb.f, label %zfp_stream_set_mode.exit

bb.f:                                             ; preds = %bb.e, %bb.a
  %.029 = phi i64 [ 0, %bb.a ], [ 32, %bb.e ]     ; 2 uses
  %i.j = and i32 %2, 2
  %.not37 = icmp eq i32 %i.j, 0
  br i1 %.not37, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = tail call i64 @stream_read_bits(ptr noundef %i.l, i64 noundef 52) #20 ; 10 uses
  %.not.i = icmp ult i64 %i.m, 4503599627370496
  br i1 %.not.i, label %bb.h, label %zfp_stream_set_mode.exit

bb.h:                                             ; preds = %bb.g
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  %i.p = add nuw nsw i32 %i.o, 1
  store i32 %i.p, ptr %1, align 8, !tbaa !13
  %i.q = lshr i64 %i.m, 2
  %i.r = and i64 %i.q, 3
  %i.s = lshr i64 %i.m, 4                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i64 %i.r, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = and i64 %i.s, 4294967295
  %i.v = add nuw nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br label %zfp_field_set_metadata.exit

bb.j:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 16777215
  %i.y = add nuw nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.t, align 8, !tbaa !14
  %i.z = lshr i64 %i.m, 28
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %zfp_field_set_metadata.exit

bb.k:                                             ; preds = %bb.h
  %i.ad = and i64 %i.s, 65535
  %i.ae = add nuw nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !14
  %i.af = lshr i64 %i.m, 20
  %i.ag = and i64 %i.af, 65535
  %i.ah = add nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !16
  %i.aj = lshr i64 %i.m, 36
  %i.ak = add nuw nsw i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.am, align 8, !tbaa !18
  br label %zfp_field_set_metadata.exit

bb.l:                                             ; preds = %bb.h
  %i.an = and i64 %i.s, 4095
  %i.ao = add nuw nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.t, align 8, !tbaa !14
  %i.ap = lshr i64 %i.m, 16
  %i.aq = and i64 %i.ap, 4095
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !16
  %i.at = lshr i64 %i.m, 28
  %i.au = and i64 %i.at, 4095
  %i.av = add nuw nsw i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !17
  %i.ax = lshr i64 %i.m, 40
  %i.ay = add nuw nsw i64 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !18
  br label %zfp_field_set_metadata.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

zfp_field_set_metadata.exit:                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bb = add nuw nsw i64 %.029, 52
  br label %bb.m

bb.m:                                             ; preds = %zfp_field_set_metadata.exit, %bb.f
  %.231 = phi i64 [ %i.bb, %zfp_field_set_metadata.exit ], [ %.029, %bb.f ] ; 3 uses
  %i.bc = and i32 %2, 4
  %.not39 = icmp eq i32 %i.bc, 0
  br i1 %.not39, label %zfp_stream_set_mode.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29
  %i.bf = tail call i64 @stream_read_bits(ptr noundef %i.be, i64 noundef 12) #20 ; 3 uses
  %i.bg = add nuw nsw i64 %.231, 12
  %i.bh = icmp ugt i64 %i.bf, 4094
  br i1 %i.bh, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !29
  %i.bj = tail call i64 @stream_read_bits(ptr noundef %i.bi, i64 noundef 52) #20
  %i.bk = shl i64 %i.bj, 12
  %i.bl = add i64 %i.bk, %i.bf                    ; 6 uses
  %i.bm = add nuw nsw i64 %.231, 64               ; 2 uses
  %i.bn = icmp ult i64 %i.bl, 4095
  br i1 %i.bn, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.n, %bb.o
  %.02648 = phi i64 [ %i.bl, %bb.o ], [ %i.bf, %bb.n ] ; 6 uses
  %.33247 = phi i64 [ %i.bm, %bb.o ], [ %i.bg, %bb.n ] ; 4 uses
  %i.bo = icmp samesign ult i64 %.02648, 2048
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %i.bp = trunc nuw nsw i64 %.02648 to i32
  %i.bq = add nuw nsw i32 %i.bp, 1                ; 2 uses
  br label %bb.v

bb.q:                                             ; preds = %.thread
  %i.br = icmp samesign ult i64 %.02648, 2176
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = trunc nuw nsw i64 %.02648 to i32
  %i.bt = add nsw i32 %i.bs, -2047
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %.02648, 2176
  br i1 %i.bu, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc nuw nsw i64 %.02648 to i32
  %i.bw = add nsw i32 %i.bv, -3251
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.bx = trunc i64 %i.bl to i32
  %i.by = lshr i32 %i.bx, 12
  %i.bz = and i32 %i.by, 32767
  %i.ca = add nuw nsw i32 %i.bz, 1
  %i.cb = lshr i64 %i.bl, 27
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 32767
  %i.ce = add nuw nsw i32 %i.cd, 1
  %i.cf = lshr i64 %i.bl, 42
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 127
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = lshr i64 %i.bl, 49
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -16495
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.p
  %.33246 = phi i64 [ %.33247, %bb.p ], [ %.33247, %bb.r ], [ %i.bm, %bb.u ], [ %.33247, %bb.t ], [ %.33247, %bb.s ]
  %.023.i = phi i32 [ %i.bq, %bb.p ], [ 1, %bb.r ], [ %i.ca, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %.022.i = phi i32 [ %i.bq, %bb.p ], [ 16658, %bb.r ], [ %i.ce, %bb.u ], [ 16658, %bb.t ], [ 16658, %bb.s ] ; 2 uses
  %i.cm = phi i32 [ 64, %bb.p ], [ %i.bt, %bb.r ], [ %i.ci, %bb.u ], [ 64, %bb.t ], [ 64, %bb.s ] ; 2 uses
  %i.cn = phi i32 [ -1074, %bb.p ], [ -1074, %bb.r ], [ %i.cl, %bb.u ], [ %i.bw, %bb.t ], [ -1075, %bb.s ]
  %i.co = icmp samesign ule i32 %.023.i, %.022.i
  %i.cp = icmp samesign ult i32 %i.cm, 65
  %or.cond3.i.i = and i1 %i.co, %i.cp
  br i1 %or.cond3.i.i, label %bb.w, label %zfp_stream_set_mode.exit

bb.w:                                             ; preds = %bb.v
  store i32 %.023.i, ptr %0, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.022.i, ptr %i.cq, align 4, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cm, ptr %i.cr, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cn, ptr %i.cs, align 4, !tbaa !36
  br label %zfp_stream_set_mode.exit

zfp_stream_set_mode.exit:                         ; preds = %bb.g, %bb.w, %bb.v, %bb.m, %bb.b, %bb.c, %bb.d, %bb.e
  %.3 = phi i64 [ %.33246, %bb.w ], [ 0, %bb.b ], [ %.231, %bb.m ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.v ], [ 0, %bb.g ]
  ret i64 %.3
}

declare i64 @stream_read_bits(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !11, i64 72}
!13 = !{!12, !6, i64 0}
!14 = !{!12, !9, i64 8}
!15 = !{!12, !11, i64 72}
!16 = !{!12, !9, i64 16}
!17 = !{!12, !9, i64 24}
!18 = !{!12, !9, i64 32}
!19 = !{!12, !9, i64 40}
!20 = !{!12, !9, i64 48}
!21 = !{!12, !9, i64 56}
!22 = !{!12, !9, i64 64}
!23 = !{!"", !6, i64 0, !5, i64 8}
!24 = !{!23, !6, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!"p1 _ZTS9bitstream", !11, i64 0}
!27 = !{!"", !6, i64 0, !11, i64 8}
!28 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !26, i64 16, !27, i64 24}
!29 = !{!28, !26, i64 16}
!30 = !{!6, !6, i64 0}
!31 = !{!28, !6, i64 24}
!32 = !{!28, !11, i64 32}
!33 = !{!28, !6, i64 0}
!34 = !{!28, !6, i64 4}
!35 = !{!28, !6, i64 8}
!36 = !{!28, !6, i64 12}
!37 = !{!"", !6, i64 0, !6, i64 4}
!38 = !{!37, !6, i64 0}
!39 = !{!37, !6, i64 4}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"short", !5, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!11, !11, i64 0}
!46 = !{!"p1 int", !11, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"any p2 pointer", !11, i64 0}
!49 = !{!"p2 _ZTS9bitstream", !48, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 long", !11, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"p1 float", !11, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 double", !11, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!26, !26, i64 0}
!58 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 8, !57, i64 24, i64 4, !30, i64 32, i64 8, !45}
!59 = !{i64 2, i64 -1, i64 -1, i1 true}
!60 = !{!59}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !41, !42}
!66 = distinct !{!66, !41}
!67 = !{!63}
!68 = !{!64}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !41, !42}
!74 = distinct !{!74, !41}
!75 = !{!71}
!76 = !{!72}
!77 = distinct !{!77, !41, !42}
!78 = distinct !{!78, !42, !41}
!79 = distinct !{!79, !41, !42}
!80 = distinct !{!80, !42, !41}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41}
!86 = !{!82}
!87 = !{!83}
!88 = distinct !{!88, i1 false, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !41, !42}
!92 = distinct !{!92, !41}
!93 = !{!89}
!94 = !{!90}
!95 = distinct !{!95, !41, !42}
!96 = distinct !{!96, !42, !41}
!97 = distinct !{!97, !41, !42}
!98 = distinct !{!98, !42, !41}
!99 = !{i64 0, i64 4, !30, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !10, i64 72, i64 8, !45}
end_hunk_1
