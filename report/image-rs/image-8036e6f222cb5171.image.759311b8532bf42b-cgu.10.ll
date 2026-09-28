Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation21from_exif_chunk_inner:bb.a
    i64 3, label %bb.bq
    i64 0, label %.thread157.i
    i64 1, label %bb.br
  ], !prof !15

bb.bq:                                            ; preds = %bb.bp
  %i.fg = icmp ult ptr %i.fd, inttoptr (i64 188978561024 to ptr)
  %i.fh = and i64 %i.fe, 1095216660480
  %i.fi = icmp ne i64 %i.fh, 1095216660480
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 %i.fi)
  br label %.thread157.i

bb.br:                                            ; preds = %bb.bp
  %i.fj = getelementptr i8, ptr %i.fd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !alias.scope !543, !noalias !542
  store i8 3, ptr %i.e, align 8, !alias.scope !543, !noalias !542
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fk), !noalias !544
  br label %.thread157.i

.thread157.i:                                     ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !542
  br label %.loopexit

bb.bs:                                            ; preds = %bb.bo
  %i.fl = icmp eq i16 %.val.i58.i37, 4609
  %i.fm = icmp eq i16 %.val.i65.i39, 768
  %i.fn = and i1 %i.fl, %i.fm
  %.val.i72.i41 = load i32, ptr %i.f, align 4, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !540
  %i.fo = icmp eq i32 %.val.i72.i41, 16777216
  %i.fp = and i1 %i.fn, %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !545
  store i16 0, ptr %i.d, align 2, !noalias !545
  %i.fq = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.d, i64 noundef 2), !noalias !546 ; 4 uses
  %.not.i77.i42 = icmp eq ptr %i.fq, null
  br i1 %.not.i77.i42, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !547
  %i.fr = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fs = and i64 %i.fr, 3
  switch i64 %i.fs, label %default.unreachable [
    i64 2, label %.thread163.i
    i64 3, label %bb.bu
    i64 0, label %.thread163.i
    i64 1, label %bb.bv
  ], !prof !15

bb.bu:                                            ; preds = %bb.bt
  %i.ft = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.fu = and i64 %i.fr, 1095216660480
  %i.fv = icmp ne i64 %i.fu, 1095216660480
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.assume(i1 %i.fv)
  br label %.thread163.i

bb.bv:                                            ; preds = %bb.bt
  %i.fw = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !alias.scope !548, !noalias !547
  store i8 3, ptr %i.c, align 8, !alias.scope !548, !noalias !547
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx), !noalias !549
  br label %.thread163.i

.thread163.i:                                     ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !547
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bs
  %.val.i79.i43 = load i16, ptr %i.d, align 2, !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !550
  store i16 0, ptr %i.b, align 2, !noalias !550
  %i.fy = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.b, i64 noundef 2), !noalias !551 ; 4 uses
  %.not.i84.i44 = icmp eq ptr %i.fy, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !550
  br i1 %.not.i84.i44, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 3
  switch i64 %i.ga, label %default.unreachable [
    i64 2, label %.thread166.i
    i64 3, label %bb.by
    i64 0, label %.thread166.i
    i64 1, label %bb.bz
  ], !prof !15

bb.by:                                            ; preds = %bb.bx
  %i.gb = icmp ult ptr %i.fy, inttoptr (i64 188978561024 to ptr)
  %i.gc = and i64 %i.fz, 1095216660480
  %i.gd = icmp ne i64 %i.gc, 1095216660480
  call void @llvm.assume(i1 %i.gb)
  call void @llvm.assume(i1 %i.gd)
  br label %.thread166.i

bb.bz:                                            ; preds = %bb.bx
  %i.ge = getelementptr i8, ptr %i.fy, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ge) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ge, ptr %i.gf, align 8, !alias.scope !553, !noalias !552
  store i8 3, ptr %i.a, align 8, !alias.scope !553, !noalias !552
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gf), !noalias !554
  br label %.thread166.i

.thread166.i:                                     ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552
  br label %.loopexit

bb.ca:                                            ; preds = %bb.bw
  br i1 %i.fp, label %bb.cb, label %bb.bg

bb.cb:                                            ; preds = %bb.ca
  %i.gg = call noundef i16 @llvm.bswap.i16(i16 %.val.i79.i43) ; 2 uses
  %i.gh = load i64, ptr %i.ag, align 8, !alias.scope !519, !noundef !5
  %i.gi = add i64 %i.gh, -4
  %..i.i45 = call noundef range(i16 0, 256) i16 @llvm.umin.i16(i16 %i.gg, i16 255)
  %i.gj = trunc nuw i16 %..i.i45 to i8
  switch i8 %i.gj, label %bb.cc [
    i8 1, label %bb.cj
    i8 2, label %bb.ck
    i8 3, label %bb.cd
    i8 4, label %bb.ce
    i8 5, label %bb.cf
    i8 6, label %bb.cg
    i8 7, label %bb.ch
    i8 8, label %bb.ci
    i8 0, label %.loopexit
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.gk = icmp ugt i16 %i.gg, 8
  call void @llvm.assume(i1 %i.gk)
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb
  br label %bb.ck

bb.ce:                                            ; preds = %bb.cb
  br label %bb.ck

bb.cf:                                            ; preds = %bb.cb
  br label %bb.ck

bb.cg:                                            ; preds = %bb.cb
  br label %bb.ck

bb.ch:                                            ; preds = %bb.cb
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cb
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cb
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cb, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.sroa.0.0.i29 = phi i8 [ 2, %bb.cd ], [ 5, %bb.ce ], [ 3, %bb.ci ], [ 7, %bb.ch ], [ 1, %bb.cg ], [ 6, %bb.cf ], [ 0, %bb.cj ], [ 4, %bb.cb ]
  store i64 %i.gi, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i29, ptr %.sroa.418.0..sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %bb.s, %bb.bf, %bb.r, %bb.e, %bb.g, %bb.h, %bb.i, %bb.f, %bb.aw, %bb.ck, %.thread172.i, %bb.an, %.thread169.i, %.thread162.i, %.thread154.i, %.thread146.i, %.thread139.i, %.thread.i, %bb.ao, %.thread166.i, %bb.cb, %.thread163.i, %.thread157.i, %.thread149.i, %.thread142.i, %.thread138.i, %.thread.i27, %bb.cc
  %.sink191 = phi i8 [ 2, %bb.cc ], [ 0, %bb.ck ], [ 2, %bb.ao ], [ 1, %bb.aw ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %.thread172.i ], [ 2, %bb.an ], [ 2, %.thread169.i ], [ 2, %.thread162.i ], [ 2, %.thread154.i ], [ 2, %.thread146.i ], [ 2, %.thread139.i ], [ 2, %.thread.i ], [ 2, %bb.r ], [ 2, %.thread166.i ], [ 2, %bb.cb ], [ 2, %.thread163.i ], [ 2, %.thread157.i ], [ 2, %.thread149.i ], [ 2, %.thread142.i ], [ 2, %.thread138.i ], [ 2, %.thread.i27 ], [ 2, %bb.i ], [ 2, %bb.h ], [ 2, %bb.g ], [ 2, %bb.bf ], [ 2, %bb.s ], [ 2, %bb.bg ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink191, ptr %i.gl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 8) i8 @_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation22remove_from_exif_chunk(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation21from_exif_chunk_inner(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.i = load i8, ptr %i.h, align 1, !range !27, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.i, 2
  br i1 %.not, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsa5QsYiPB8Gl_5image.exit2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !28, !noundef !5 ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !noundef !5
  %i.m = trunc nuw i8 %i.i to i1
  %..i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 %i.l) ; 2 uses
  %i.n = sub nuw nsw i64 %1, %..i.i.i             ; 2 uses
  %..i7.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 range(i64 1, -9223372036854775808) 2) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i.i ; 2 uses
  %i.p = icmp samesign ugt i64 %i.n, 1            ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 0, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !571
  store i16 1, ptr %i.b, align 2, !noalias !571
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !571
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.o, i64 noundef %..i7.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %..i7.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsa5QsYiPB8Gl_5image.exit2, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !573
  store ptr @150, ptr %i.c, align 8, !noalias !573
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #33
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 0, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  store i16 256, ptr %i.a, align 2, !noalias !574
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.e, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.o, i64 noundef %..i7.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %..i7.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126), !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsa5QsYiPB8Gl_5image.exit2, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !576
  store ptr @150, ptr %i.d, align 8, !noalias !576
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #33
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #28
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsa5QsYiPB8Gl_5image.exit2: ; preds = %bb.c, %bb.h, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %i.k, %bb.h ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5XDXJCpOCOR_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16read_header_infoCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(584) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8.i = alloca [12 x i8], align 8          ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.h = load i64, ptr %i.c, align 8, !range !14, !alias.scope !585, !noundef !5
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !587
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !588
  %i.i = load ptr, ptr %i.b, align 8, !noalias !587, !noundef !5 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !noalias !587, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !587
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %.sroa.969.sroa.15.0.extract.shift95 = lshr i64 %i.l, 32
  %.sroa.969.sroa.15.0.extract.trunc96 = trunc i64 %.sroa.969.sroa.15.0.extract.shift95 to i8
  %.sroa.969.sroa.17.0.extract.shift101 = lshr i64 %i.l, 40
  %.sroa.969.sroa.17.0.extract.trunc102 = trunc nuw i64 %.sroa.969.sroa.17.0.extract.shift101 to i24
  %i.m = bitcast i64 %i.l to <8 x i8>
  %i.n = shufflevector <8 x i8> %i.m, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !noalias !587, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !587
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !587
  call void @_RNvMs9_NtNtCs5XDXJCpOCOR_3png7decoder6streamNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(584) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.o, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !589
  %i.q = load i64, ptr %i.a, align 8, !range !29, !noalias !587, !noundef !5 ; 2 uses
  %.not.i67 = icmp eq i64 %i.q, -1
  %.sroa.014.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !587 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx.i, i64 12, i1 false), !noalias !587
  br i1 %.not.i67, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.624.0.copyload.i = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !587
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.25.sroa.0.0.copyload = load i32, ptr %.sroa.8.i, align 8, !noalias !590
  %.sroa.8.i.4.i.4.i.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 4
  %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.25.sroa.7.0.copyload = load i64, ptr %.sroa.8.i.4.i.4.i.4.i.sroa_idx, align 4, !noalias !590
  %.sroa.969.sroa.15.0.extract.shift97 = lshr i64 %.sroa.014.0.copyload.i, 32
  %.sroa.969.sroa.15.0.extract.trunc98 = trunc i64 %.sroa.969.sroa.15.0.extract.shift97 to i8
  %.sroa.969.sroa.17.0.extract.shift103 = lshr i64 %.sroa.014.0.copyload.i, 40
  %.sroa.969.sroa.17.0.extract.trunc104 = trunc nuw i64 %.sroa.969.sroa.17.0.extract.shift103 to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.r = bitcast i64 %.sroa.014.0.copyload.i to <8 x i8>
  %i.s = shufflevector <8 x i8> %i.r, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  ret void

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.g
  %.sroa.25.sroa.7.0.ph = phi i64 [ %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.25.sroa.7.0.copyload, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.25.sroa.0.0.ph = phi i32 [ %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.25.sroa.0.0.copyload, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.969.sroa.17.sroa.0.0.ph = phi i24 [ %.sroa.969.sroa.17.0.extract.trunc104, %bb.g ], [ %.sroa.969.sroa.17.0.extract.trunc102, %bb.d ], [ 0, %bb.e ]
  %.sroa.969.sroa.15.0.ph = phi i8 [ %.sroa.969.sroa.15.0.extract.trunc98, %bb.g ], [ %.sroa.969.sroa.15.0.extract.trunc96, %bb.d ], [ 37, %bb.e ]
  %.sroa.27.0.ph = phi i32 [ %.sroa.624.0.copyload.i, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.ph = phi i64 [ %i.q, %bb.g ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.u = phi <4 x i8> [ %i.s, %bb.g ], [ %i.n, %bb.d ], [ <i8 3, i8 0, i8 0, i8 0>, %bb.e ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> %i.u, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.969.sroa.15.0.ph, ptr %.sroa.860.0..sroa_idx, align 4
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i24 %.sroa.969.sroa.17.sroa.0.0.ph, ptr %.sroa.961.0..sroa_idx, align 1
  %.sroa.961.sroa.4.0..sroa.961.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.25.sroa.0.0.ph, ptr %.sroa.961.sroa.4.0..sroa.961.0..sroa_idx.sroa_idx, align 8
  %.sroa.1062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.25.sroa.7.0.ph, ptr %.sroa.1062.0..sroa_idx, align 4
  %.sroa.1062.sroa.4.0..sroa.1062.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.27.0.ph, ptr %.sroa.1062.sroa.4.0..sroa.1062.0..sroa_idx.sroa_idx, align 4
  br label %bb.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !587
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.969.8.copyload = load i64, ptr %.sroa.8.i, align 8, !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !591, !noalias !588, !noundef !5
  %i.w = add i64 %i.v, %.sroa.014.0.copyload.i
  store i64 %i.w, ptr %i.g, align 8, !alias.scope !591, !noalias !588
  %i.x = and i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.969.8.copyload, 1099511627775
  %or.cond15 = icmp eq i64 %i.x, 293370939650
  br i1 %or.cond15, label %bb.k, label %bb.b, !prof !592

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE11with_limitsB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([864 x i8]) align 8 captures(none) dereferenceable(864) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
