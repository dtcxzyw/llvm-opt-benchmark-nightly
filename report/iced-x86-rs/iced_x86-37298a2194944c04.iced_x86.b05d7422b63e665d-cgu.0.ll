Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_0_4:bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.x = and i32 %i.i, 7                          ; 2 uses
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.z = trunc i32 %i.p to i8
  %i.aa = add i8 %., %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.aa, ptr %i.ab, align 4
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.ad = trunc i64 %i.f to i8
  store i8 %i.ad, ptr %i.ac, align 4
  %i.ae = add i64 %i.b, 4
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.h, label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !21
  %i.ai = add i32 %i.ah, %i.x
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = add i8 %., %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.b, 5
  %i.ap = inttoptr i64 %i.f to ptr
  %.sroa.03.0.copyload = load i32, ptr %i.ap, align 1 ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.c
  ret i1 true

bb.j:                                             ; preds = %bb.h
  %i.as = zext i32 %.sroa.03.0.copyload to i64
  store i64 %i.as, ptr %i.aq, align 8
  store i8 3, ptr %i.ar, align 1
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.at = sext i32 %.sroa.03.0.copyload to i64
  store i64 %i.at, ptr %i.aq, align 8
  store i8 4, ptr %i.ar, align 1
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_0_5(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.d = trunc i64 %i.b to i8
  store i8 %i.d, ptr %i.c, align 4
  %i.e = add i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = load i64, ptr %i.f, align 8, !noundef !21
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = or i32 %i.j, 16448
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = add i64 %i.b, 4
  %i.m = inttoptr i64 %i.b to ptr
  %.sroa.01.0.copyload = load i32, ptr %i.m, align 1 ; 2 uses
  %i.n = zext i32 %.sroa.01.0.copyload to i64     ; 2 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i8, ptr %i.o, align 4, !range !44, !noundef !21
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
  ret i1 false

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.s = load i8, ptr %i.r, align 4, !range !27, !noundef !21
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.u = sext i32 %.sroa.01.0.copyload to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !noundef !21
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 4, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 70, ptr %i.aa, align 1
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.ac, align 1
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !21
  %i.af = or i32 %i.ae, 2
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 69, ptr %i.ai, align 1
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_1_4(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((37, 38)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.e = trunc i64 %i.c to i8
  %i.f = add i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = add i64 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.i = load i64, ptr %i.h, align 8, !noundef !21
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
  %i.m = or i32 %i.l, 16448
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = add i64 %i.c, 2
  %i.o = inttoptr i64 %i.c to ptr
  %.sroa.01.0.copyload = load i16, ptr %i.o, align 1 ; 4 uses
  store i64 %i.n, ptr %i.b, align 8
  %i.p = zext i16 %.sroa.01.0.copyload to i32     ; 3 uses
  %i.q = trunc i16 %.sroa.01.0.copyload to i8
  %i.r = lshr i8 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.r, ptr %i.s, align 2
  %i.t = lshr i32 %i.p, 3
  %i.u = and i32 %i.t, 7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !noundef !21
  %i.x = add i32 %i.u, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i8, ptr %i.y, align 4, !range !44, !noundef !21
  %i.aa = icmp eq i8 %i.z, 2
  %i.ab = icmp eq i32 %i.x, 4                     ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.i, %bb.b
  ret i1 true

bb.e:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ac = and i32 %i.p, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !21
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = trunc i32 %i.af to i8
  %i.ah = add i8 %i.ag, 37
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ah, ptr %i.ai, align 1
  %2 = ashr i16 %.sroa.01.0.copyload, 8
  %3 = sext i16 %2 to i64
  %4 = and i64 %3, 4294967295
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.aj, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %i.ak = trunc i32 %i.x to i8
  %i.al = add i8 %i.ak, 37
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.al, ptr %i.am, align 4
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.an = and i32 %i.p, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !noundef !21
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.ar, 53
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.as, ptr %i.at, align 1
  %5 = ashr i16 %.sroa.01.0.copyload, 8
  %6 = sext i16 %5 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.au, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.av = trunc i32 %i.x to i8
  %i.aw = add i8 %i.av, 53
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.aw, ptr %i.ax, align 4
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_2_4(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1                      ; 3 uses
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i8, ptr %i.g, align 1, !noundef !21 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.k = trunc i64 %i.f to i8
  store i8 %i.k, ptr %i.j, align 4
  %i.l = add i64 %i.b, 4
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !noundef !21
  %i.p = or i32 %i.o, 16448
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.b, 5
  %i.r = inttoptr i64 %i.f to ptr
  %.sroa.01.0.copyload = load i32, ptr %i.r, align 1 ; 2 uses
  %i.s = zext i32 %.sroa.01.0.copyload to i64
  store i64 %i.q, ptr %i.a, align 8
  %i.t = sext i32 %.sroa.01.0.copyload to i64
  %i.u = lshr i8 %i.h, 6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.u, ptr %i.v, align 2
  %i.w = lshr i32 %i.i, 3
  %i.x = and i32 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !noundef !21
  %i.aa = add i32 %i.z, %i.x                      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i8, ptr %i.ab, align 4, !range !44, !noundef !21
  %i.ad = icmp eq i8 %i.ac, 2
  %i.ae = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.j, %bb.c
  ret i1 true

bb.f:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.af = and i32 %i.i, 7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !21
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = add i8 %i.aj, 37
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.an, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ao = trunc i32 %i.aa to i8
  %i.ap = add i8 %i.ao, 37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ap, ptr %i.aq, align 4
  br label %bb.h

bb.j:                                             ; preds = %bb.k, %bb.g
  %i.ar = and i32 %i.i, 7
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !noundef !21
  %i.au = add i32 %i.at, %i.ar
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i8 %i.av, 53
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 4, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.az, align 8
  br label %bb.e

bb.k:                                             ; preds = %bb.g
  %i.ba = trunc i32 %i.aa to i8
  %i.bb = add i8 %i.ba, 53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.bb, ptr %i.bc, align 4
  br label %bb.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef range(i64 0, 3298534883328) i64 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder20get_constant_offsets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.b = load i8, ptr %i.a, align 1, !noundef !21 ; 4 uses
  %i.c = icmp ult i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.f = load i8, ptr %i.e, align 4, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.h = load i64, ptr %i.g, align 8, !noundef !21
  %i.i = trunc i64 %i.h to i8
  %i.j = sub i8 %i.f, %i.i                        ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
  %i.m = and i32 %i.l, 512
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, i64 1024, i64 2048
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.p = load i8, ptr %i.o, align 4, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = load i64, ptr %i.q, align 8, !noundef !21
  %i.s = trunc i64 %i.r to i8
  %i.t = sub i8 %i.p, %i.s
  %i.u = zext nneg i8 %i.b to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.c
  %.sroa.5.0 = phi i64 [ %i.v, %bb.e ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ 1024, %bb.b ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %i.t, %bb.e ], [ 0, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !noundef !21 ; 3 uses
  %i.y = and i32 %i.x, 256
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i16, ptr %i.aa, align 8, !range !28, !noundef !21
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8621instruction_op_counts8OP_COUNT, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !21 ; 2 uses
  %.not2856 = icmp eq i8 %i.ae, 0
  br i1 %.not2856, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ah = load i8, ptr %i.ag, align 2             ; 8 uses
  %i.ai = add i8 %i.ah, -1                        ; 3 uses
  %i.aj = add i8 %i.ah, -6                        ; 2 uses
  %i.ak = add i8 %i.ah, -2                        ; 6 uses
  %i.al = add i8 %i.ah, -4                        ; 4 uses
  %i.am = and i32 %i.x, 1024
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = and i32 %i.x, 2048
  %i.ap = icmp eq i32 %i.ao, 0                    ; 4 uses
  %i.aq = zext i8 %i.ae to i64                    ; 2 uses
  br i1 %i.an, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.as = load i8, ptr %i.ar, align 1, !range !44
  %.fr302 = freeze i8 %i.as
  %.not29 = icmp ne i8 %.fr302, 0                 ; 4 uses
  %i.at = or i1 %i.ap, %.not29
  %spec.select495 = select i1 %i.at, i8 4, i8 2
  %i.au = or i1 %i.ap, %.not29
  %spec.select496 = select i1 %i.au, i8 %i.al, i8 %i.ak
  %i.av = xor i1 %.not29, true
  %i.aw = or i1 %i.ap, %i.av
end_hunk_0
