Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zfp_stream_mode:bb.a
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
  %i.b = icmp sgt i32 %.val, -1075                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16 ; 4 uses
  br i1 %.not.i, label %zfp_field_dimensionality.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4.i = icmp eq i64 %.pre, 0
  br i1 %.not4.i, label %zfp_field_dimensionality.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %zfp_field_dimensionality.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.not6.i = icmp eq i64 %i.h, 0
  %i.i = select i1 %.not6.i, i32 3, i32 4
  br label %zfp_field_dimensionality.exit

zfp_field_dimensionality.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %2 = phi i64 [ 0, %bb.b ], [ %.pre, %bb.c ], [ %.pre, %bb.d ], [ %.pre, %bb.a ] ; 2 uses
  %i.j = phi i32 [ 1, %bb.b ], [ 2, %bb.c ], [ %i.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.k = add i64 %i.d, 3
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  %i.m = add i64 %2, 3
  %i.n = lshr i64 %i.m, 2                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = add i64 %i.p, 3
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  br i1 %.not.i, label %zfp_field_blocks.exit, label %bb.e

bb.e:                                             ; preds = %zfp_field_dimensionality.exit
  %.not4.i.i = icmp eq i64 %2, 0
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
  %i.ae = select i1 %i.b, i32 0, i32 5
  br label %zfp_field_precision.exit

bb.l:                                             ; preds = %bb.j
  %i.af = select i1 %i.b, i32 0, i32 6
  br label %zfp_field_precision.exit

bb.m:                                             ; preds = %bb.j
  %i.ag = select i1 %i.b, i32 9, i32 15
  br label %zfp_field_precision.exit

bb.n:                                             ; preds = %bb.j
  %i.ah = select i1 %i.b, i32 12, i32 19
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
end_hunk_0
