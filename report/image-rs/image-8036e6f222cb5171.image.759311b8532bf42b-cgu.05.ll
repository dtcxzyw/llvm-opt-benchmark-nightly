Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB6_5Entry3valINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image:bb.a
    i16 1, label %bb.cx
    i16 2, label %bb.cx
    i16 3, label %bb.cx
    i16 4, label %bb.cx
    i16 5, label %bb.cy
    i16 6, label %bb.cx
    i16 7, label %bb.cx
    i16 8, label %bb.cx
    i16 9, label %bb.cx
    i16 10, label %bb.cz
    i16 11, label %bb.cx
    i16 12, label %bb.da
    i16 13, label %bb.cx
    i16 16, label %bb.db
    i16 17, label %bb.dc
    i16 18, label %bb.dd
  ], !prof !56

bb.i:                                             ; preds = %bb.eg, %bb.ed, %bb.h, %bb.g
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !noundef !4
  br label %bb.z

bb.k:                                             ; preds = %bb.g
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !noundef !4
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !60
  store i16 0, ptr %i.w, align 2, !noalias !60
  %i.du = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull %i.w, i64 noundef 2)
          to label %.noexc545.a unwind label %bb.ae ; 2 uses

.noexc545.a:                                      ; preds = %bb.l
  %.not.i541.a = icmp eq ptr %i.du, null
  br i1 %.not.i541.a, label %bb.af, label %bb.ag

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !65
  store i32 0, ptr %i.k, align 4, !noalias !65
  %i.dv = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.co, ptr noalias nofree noundef nonnull %i.k, i64 noundef 4)
          to label %.noexc616 unwind label %bb.ai ; 2 uses

.noexc616:                                        ; preds = %bb.m
  %.not.i612 = icmp eq ptr %i.dv, null
  br i1 %.not.i612, label %bb.aj, label %bb.ak

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !70
  store i32 0, ptr %i.l, align 4, !noalias !70
  %i.dw = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noalias nofree noundef nonnull %i.l, i64 noundef 4)
          to label %.noexc610 unwind label %bb.al ; 2 uses

.noexc610:                                        ; preds = %bb.n
  %.not.i606 = icmp eq ptr %i.dw, null
  br i1 %.not.i606, label %bb.am, label %bb.au

bb.o:                                             ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !noundef !4
  br label %bb.z

bb.p:                                             ; preds = %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load i8, ptr %i.dz, align 8, !noundef !4
  br label %bb.z

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !75
  store i16 0, ptr %i.ad, align 2, !noalias !75
  %i.eb = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 2)
          to label %.noexc508.a unwind label %bb.av ; 2 uses

.noexc508.a:                                      ; preds = %bb.q
  %.not.i504.a = icmp eq ptr %i.eb, null
  br i1 %.not.i504.a, label %bb.aw, label %bb.ax

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !80
  store i32 0, ptr %i.z, align 4, !noalias !80
  %i.ec = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noalias nofree noundef nonnull %i.z, i64 noundef 4)
          to label %.noexc531 unwind label %bb.ay ; 2 uses

.noexc531:                                        ; preds = %bb.r
  %.not.i527 = icmp eq ptr %i.ec, null
  br i1 %.not.i527, label %bb.az, label %bb.ba

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !85
  store i32 0, ptr %i.m, align 4, !noalias !85
  %i.ed = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noalias nofree noundef nonnull %i.m, i64 noundef 4)
          to label %.noexc604 unwind label %bb.bb ; 2 uses

.noexc604:                                        ; preds = %bb.s
  %.not.i600 = icmp eq ptr %i.ed, null
  br i1 %.not.i600, label %bb.bc, label %bb.bk

bb.t:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !90
  store i32 0, ptr %i.ag, align 4, !noalias !90
  %i.ee = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noalias nofree noundef nonnull %i.ag, i64 noundef 4)
          to label %.noexc492.a unwind label %bb.bl ; 2 uses

.noexc492.a:                                      ; preds = %bb.t
  %.not.i488.a = icmp eq ptr %i.ee, null
  br i1 %.not.i488.a, label %bb.bm, label %bb.bn

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !95
  store i32 0, ptr %i.n, align 4, !noalias !95
  %i.ef = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noalias nofree noundef nonnull %i.n, i64 noundef 4)
          to label %.noexc598 unwind label %bb.bo ; 2 uses

.noexc598:                                        ; preds = %bb.u
  %.not.i594 = icmp eq ptr %i.ef, null
  br i1 %.not.i594, label %bb.bp, label %bb.bv

bb.v:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !100
  store i32 0, ptr %i.o, align 4, !noalias !100
  %i.eg = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noalias nofree noundef nonnull %i.o, i64 noundef 4)
          to label %.noexc592 unwind label %bb.bw ; 2 uses

.noexc592:                                        ; preds = %bb.v
  %.not.i588 = icmp eq ptr %i.eg, null
  br i1 %.not.i588, label %bb.bx, label %bb.by

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !105
  store i32 0, ptr %i.p, align 4, !noalias !105
  %i.eh = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noalias nofree noundef nonnull %i.p, i64 noundef 4)
          to label %.noexc586 unwind label %bb.bz ; 2 uses

.noexc586:                                        ; preds = %bb.w
  %.not.i582 = icmp eq ptr %i.eh, null
  br i1 %.not.i582, label %bb.ca, label %bb.cg

bb.x:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !110
  store i32 0, ptr %i.q, align 4, !noalias !110
  %i.ei = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull %i.q, i64 noundef 4)
          to label %.noexc580 unwind label %bb.ch ; 2 uses

.noexc580:                                        ; preds = %bb.x
  %.not.i576 = icmp eq ptr %i.ei, null
  br i1 %.not.i576, label %bb.ci, label %bb.co

bb.y:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !115
  store i32 0, ptr %i.r, align 4, !noalias !115
  %i.ej = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noalias nofree noundef nonnull %i.r, i64 noundef 4)
          to label %.noexc574 unwind label %bb.cp ; 2 uses

.noexc574:                                        ; preds = %bb.y
  %.not.i570 = icmp eq ptr %i.ej, null
  br i1 %.not.i570, label %bb.cq, label %bb.cw

bb.z:                                             ; preds = %bb.cu, %bb.cm, %bb.ce, %bb.bx, %bb.bt, %bb.bm, %bb.bi, %bb.az, %bb.aw, %bb.as, %bb.aj, %bb.af, %bb.ad, %bb.p, %bb.o, %bb.j
  %.sroa.38.sroa.0.0 = phi ptr [ undef, %bb.j ], [ %i.es, %bb.ad ], [ undef, %bb.af ], [ undef, %bb.aj ], [ undef, %bb.as ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.aw ], [ undef, %bb.az ], [ undef, %bb.bi ], [ undef, %bb.bm ], [ undef, %bb.bt ], [ undef, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.cm ], [ undef, %bb.cu ]
  %.sroa.31.sroa.11.0 = phi i64 [ 0, %bb.j ], [ %.sroa.31.sroa.11.0.extract.shift67, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.as ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.aw ], [ 0, %bb.az ], [ 0, %bb.bi ], [ 0, %bb.bm ], [ %.sroa.31.sroa.11.0.extract.shift, %bb.bt ], [ 0, %bb.bx ], [ %.sroa.31.sroa.11.0.extract.shift61, %bb.ce ], [ %.sroa.31.sroa.11.0.extract.shift63, %bb.cm ], [ %.sroa.31.sroa.11.0.extract.shift65, %bb.cu ]
  %.sroa.31.sroa.0.0.a = phi i32 [ undef, %bb.j ], [ %.sroa.31.sroa.0.0.extract.trunc60, %bb.ad ], [ undef, %bb.af ], [ undef, %bb.aj ], [ %.sroa.03.0.i655, %bb.as ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.aw ], [ undef, %bb.az ], [ %.sroa.03.0.i640, %bb.bi ], [ undef, %bb.bm ], [ %.sroa.31.sroa.0.0.extract.trunc, %bb.bt ], [ undef, %bb.bx ], [ %.sroa.31.sroa.0.0.extract.trunc57, %bb.ce ], [ %.sroa.31.sroa.0.0.extract.trunc58, %bb.cm ], [ %.sroa.31.sroa.0.0.extract.trunc59, %bb.cu ]
  %.sroa.25.0 = phi i32 [ undef, %bb.j ], [ undef, %bb.ad ], [ undef, %bb.af ], [ %.sroa.03.0.i615, %bb.aj ], [ %.sroa.03.0.i659, %bb.as ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.aw ], [ %.sroa.03.0.i530, %bb.az ], [ %.sroa.03.0.i644, %bb.bi ], [ %.sroa.03.0.i491.a, %bb.bm ], [ undef, %bb.bt ], [ %.sroa.03.0.i591, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.cm ], [ undef, %bb.cu ]
  %.sroa.23.0 = phi i16 [ undef, %bb.j ], [ undef, %bb.ad ], [ %.sroa.03.0.i544.a, %bb.af ], [ undef, %bb.aj ], [ undef, %bb.as ], [ undef, %bb.o ], [ undef, %bb.p ], [ %.sroa.03.0.i507.a, %bb.aw ], [ undef, %bb.az ], [ undef, %bb.bi ], [ undef, %bb.bm ], [ undef, %bb.bt ], [ undef, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.cm ], [ undef, %bb.cu ]
  %.sroa.20.0 = phi i8 [ %i.dq, %bb.j ], [ undef, %bb.ad ], [ undef, %bb.af ], [ undef, %bb.aj ], [ undef, %bb.as ], [ %i.dy, %bb.o ], [ %i.ea, %bb.p ], [ undef, %bb.aw ], [ undef, %bb.az ], [ undef, %bb.bi ], [ undef, %bb.bm ], [ undef, %bb.bt ], [ undef, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.cm ], [ undef, %bb.cu ]
  %.sroa.056.0 = phi i8 [ 0, %bb.j ], [ 15, %bb.ad ], [ 1, %bb.af ], [ 6, %bb.aj ], [ 11, %bb.as ], [ 2, %bb.o ], [ 0, %bb.p ], [ 3, %bb.aw ], [ 4, %bb.az ], [ 13, %bb.bi ], [ 8, %bb.bm ], [ 9, %bb.bt ], [ 16, %bb.bx ], [ 7, %bb.ce ], [ 5, %bb.cm ], [ 17, %bb.cu ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.056.0, ptr %i.ek, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 2
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.31.sroa.0.0.insert.ext = zext i32 %.sroa.31.sroa.0.0.a to i64
  %.sroa.31.sroa.0.0.insert.insert = or disjoint i64 %.sroa.31.sroa.11.0, %.sroa.31.sroa.0.0.insert.ext
  store i64 %.sroa.31.sroa.0.0.insert.insert, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.38.sroa.0.0, ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.38.sroa.5.0..sroa.38.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.38.sroa.5.0..sroa.38.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.aa:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.el = load i64, ptr %i.al, align 8, !range !117, !noundef !4
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !118, !noundef !4 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.em, label %bb.ac, label %bb.ad, !prof !6

bb.ab:                                            ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775792, ptr %i.eq, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775803, ptr %.sroa.489.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.ac:                                            ; preds = %bb.aa
  %i.er = load i64, ptr %i.ep, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.eo, i64 %i.er) #26
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.31.sroa.0.0.extract.trunc60 = trunc i64 %i.eo to i32
  %.sroa.31.sroa.11.0.extract.shift67 = and i64 %i.eo, 9223372032559808512
  br label %bb.z

bb.ae:                                            ; preds = %bb.l
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cq) #24
          to label %.thread994 unwind label %bb.ah

bb.af:                                            ; preds = %.noexc545.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ev = load i8, ptr %i.eu, align 8, !range !9, !alias.scope !57, !noalias !119, !noundef !4
  %i.ew = trunc nuw i8 %i.ev to i1
  %.sroa.05.0.copyload.i542.a = load i16, ptr %i.w, align 2, !noalias !60 ; 2 uses
  %i.ex = call i16 @llvm.bswap.i16(i16 %.sroa.05.0.copyload.i542.a)
  %.sroa.03.0.i544.a = select i1 %i.ew, i16 %i.ex, i16 %.sroa.05.0.copyload.i542.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !60
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.z

bb.ag:                                            ; preds = %.noexc545.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !60
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.ey, align 8
  %.sroa.4822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.du, ptr %.sroa.4822.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.c

bb.ah:                                            ; preds = %bb.ke, %.body706, %bb.jt, %.body703, %bb.ji, %.body700, %bb.ix, %.body697, %bb.ik, %.body694, %bb.hz, %.body, %bb.gz, %bb.gr, %bb.fi, %bb.fh, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.dn, %bb.dl, %bb.dg, %bb.de, %bb.cp, %bb.ch, %bb.bz, %bb.bw, %bb.bo, %bb.bl, %bb.bb, %bb.ay, %bb.av, %bb.al, %bb.ai, %bb.ae
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread994:                                       ; preds = %bb.fh, %bb.fi, %bb.ke, %bb.jt, %bb.ji, %bb.ix, %bb.ik, %bb.hz, %bb.gz, %bb.gr, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.dn, %bb.dl, %bb.dg, %bb.de, %bb.cp, %bb.ch, %bb.bz, %bb.bw, %bb.bo, %bb.bl, %bb.bb, %bb.ay, %bb.av, %bb.al, %bb.ai, %bb.ae
  %.pn486 = phi { ptr, i32 } [ %i.ks, %bb.dg ], [ %i.oi, %bb.fi ], [ %i.km, %bb.de ], [ %i.lf, %bb.dn ], [ %lpad.thr_comm1003, %bb.fh ], [ %i.kz, %bb.dl ], [ %i.ll, %bb.dr ], [ %i.lr, %bb.du ], [ %i.lx, %bb.dx ], [ %i.md, %bb.ea ], [ %i.et, %bb.ae ], [ %i.fa, %bb.ai ], [ %i.fg, %bb.al ], [ %i.gb, %bb.av ], [ %i.gh, %bb.ay ], [ %i.gn, %bb.bb ], [ %i.hi, %bb.bl ], [ %i.ho, %bb.bo ], [ %i.ie, %bb.bw ], [ %i.ik, %bb.bz ], [ %i.ja, %bb.ch ], [ %i.jq, %bb.cp ], [ %i.qg, %bb.gz ], [ %.pn477, %bb.hz ], [ %.pn475, %bb.ik ], [ %.pn473, %bb.ix ], [ %.pn471, %bb.ji ], [ %.pn469, %bb.jt ], [ %.pn467, %bb.ke ], [ %lpad.thr_comm.split-lp, %bb.gr ]
  resume { ptr, i32 } %.pn486

bb.ai:                                            ; preds = %bb.m
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.co) #24
          to label %.thread994 unwind label %bb.ah

bb.aj:                                            ; preds = %.noexc616
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.fc = load i8, ptr %i.fb, align 8, !range !9, !alias.scope !62, !noalias !120, !noundef !4
  %i.fd = trunc nuw i8 %i.fc to i1
  %.sroa.05.0.copyload.i613 = load i32, ptr %i.k, align 4, !noalias !65 ; 2 uses
  %i.fe = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i613)
  %.sroa.03.0.i615 = select i1 %i.fd, i32 %i.fe, i32 %.sroa.05.0.copyload.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.z

bb.ak:                                            ; preds = %.noexc616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.ff, align 8
  %.sroa.4828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dv, ptr %.sroa.4828.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.c

bb.al:                                            ; preds = %bb.am, %bb.n
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ci) #24
          to label %.thread994 unwind label %bb.ah

bb.am:                                            ; preds = %.noexc610
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.fi = load i8, ptr %i.fh, align 8, !range !9, !alias.scope !67, !noalias !121, !noundef !4
  %i.fj = trunc nuw i8 %i.fi to i1
  %.sroa.05.0.copyload.i607 = load i32, ptr %i.l, align 4, !noalias !70 ; 2 uses
  %i.fk = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i607)
  %.sroa.03.0.i609 = select i1 %i.fj, i32 %i.fk, i32 %.sroa.05.0.copyload.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !70
  %i.fl = zext i32 %.sroa.03.0.i609 to i64
  %i.fm = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.fl)
          to label %bb.an unwind label %bb.al     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fn = extractvalue { i64, ptr } %i.fm, 0
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = extractvalue { i64, ptr } %i.fm, 1      ; 2 uses
  %.not4851030 = icmp ne ptr %i.fp, null
  %.not485.not = select i1 %i.fo, i1 %.not4851030, i1 false
  br i1 %.not485.not, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !125
  store i32 0, ptr %i.c, align 4, !noalias !125
  %i.fq = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4), !noalias !127 ; 2 uses
  %.not.i656.a = icmp eq ptr %i.fq, null
  br i1 %.not.i656.a, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.fr, align 8
  %.sroa.4870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fq, ptr %.sroa.4870.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.aq:                                            ; preds = %bb.ao
  %i.fs = load i8, ptr %i.da, align 8, !range !9, !alias.scope !122, !noalias !127, !noundef !4
  %.sroa.05.0.copyload.i657 = load i32, ptr %i.c, align 4, !noalias !125 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131
  store i32 0, ptr %i.d, align 4, !noalias !131
  %i.ft = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4), !noalias !133 ; 2 uses
  %.not.i652 = icmp eq ptr %i.ft, null
  br i1 %.not.i652, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.fu, align 8
  %.sroa.4873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ft, ptr %.sroa.4873.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.as:                                            ; preds = %bb.aq
  %i.fv = trunc nuw i8 %i.fs to i1
  %i.fw = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i657)
  %.sroa.03.0.i659 = select i1 %i.fv, i32 %i.fw, i32 %.sroa.05.0.copyload.i657
  %i.fx = load i8, ptr %i.da, align 8, !range !9, !alias.scope !128, !noalias !133, !noundef !4
  %i.fy = trunc nuw i8 %i.fx to i1
  %.sroa.05.0.copyload.i653 = load i32, ptr %i.d, align 4, !noalias !131 ; 2 uses
  %i.fz = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i653)
  %.sroa.03.0.i655 = select i1 %i.fy, i32 %i.fz, i32 %.sroa.05.0.copyload.i653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  br label %bb.z

bb.at:                                            ; preds = %bb.an, %bb.au
  %.sink1175 = phi ptr [ %i.dw, %bb.au ], [ %i.fp, %bb.an ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.ga, align 8
  %.sroa.4864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1175, ptr %.sroa.4864.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.c

bb.au:                                            ; preds = %.noexc610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !70
  br label %bb.at

bb.av:                                            ; preds = %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cp) #24
          to label %.thread994 unwind label %bb.ah

bb.aw:                                            ; preds = %.noexc508.a
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.gd = load i8, ptr %i.gc, align 8, !range !9, !alias.scope !72, !noalias !134, !noundef !4
  %i.ge = trunc nuw i8 %i.gd to i1
  %.sroa.05.0.copyload.i505.a = load i16, ptr %i.ad, align 2, !noalias !75 ; 2 uses
  %i.gf = call i16 @llvm.bswap.i16(i16 %.sroa.05.0.copyload.i505.a)
  %.sroa.03.0.i507.a = select i1 %i.ge, i16 %i.gf, i16 %.sroa.05.0.copyload.i505.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !75
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.z

bb.ax:                                            ; preds = %.noexc508.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !75
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.gg, align 8
  %.sroa.4825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eb, ptr %.sroa.4825.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.c

bb.ay:                                            ; preds = %bb.r
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cn) #24
          to label %.thread994 unwind label %bb.ah

bb.az:                                            ; preds = %.noexc531
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.gj = load i8, ptr %i.gi, align 8, !range !9, !alias.scope !77, !noalias !135, !noundef !4
  %i.gk = trunc nuw i8 %i.gj to i1
  %.sroa.05.0.copyload.i528 = load i32, ptr %i.z, align 4, !noalias !80 ; 2 uses
  %i.gl = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i528)
  %.sroa.03.0.i530 = select i1 %i.gk, i32 %i.gl, i32 %.sroa.05.0.copyload.i528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !80
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.z

bb.ba:                                            ; preds = %.noexc531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !80
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.gm, align 8
  %.sroa.4831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ec, ptr %.sroa.4831.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.c

bb.bb:                                            ; preds = %bb.bc, %bb.s
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ch) #24
          to label %.thread994 unwind label %bb.ah

bb.bc:                                            ; preds = %.noexc604
  %i.go = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.gp = load i8, ptr %i.go, align 8, !range !9, !alias.scope !82, !noalias !136, !noundef !4
  %i.gq = trunc nuw i8 %i.gp to i1
  %.sroa.05.0.copyload.i601 = load i32, ptr %i.m, align 4, !noalias !85 ; 2 uses
  %i.gr = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i601)
  %.sroa.03.0.i603 = select i1 %i.gq, i32 %i.gr, i32 %.sroa.05.0.copyload.i601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !85
  %i.gs = zext i32 %.sroa.03.0.i603 to i64
  %i.gt = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.gs)
          to label %bb.bd unwind label %bb.bb     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gu = extractvalue { i64, ptr } %i.gt, 0
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = extractvalue { i64, ptr } %i.gt, 1      ; 2 uses
  %.not4841029 = icmp ne ptr %i.gw, null
  %.not484.not = select i1 %i.gv, i1 %.not4841029, i1 false
  br i1 %.not484.not, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !140
  store i32 0, ptr %i.f, align 4, !noalias !140
  %i.gx = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.f, i64 noundef 4), !noalias !142 ; 2 uses
  %.not.i641 = icmp eq ptr %i.gx, null
  br i1 %.not.i641, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.gy, align 8
  %.sroa.4882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gx, ptr %.sroa.4882.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.bg:                                            ; preds = %bb.be
  %i.gz = load i8, ptr %i.da, align 8, !range !9, !alias.scope !137, !noalias !142, !noundef !4
  %.sroa.05.0.copyload.i642 = load i32, ptr %i.f, align 4, !noalias !140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !146
  store i32 0, ptr %i.g, align 4, !noalias !146
  %i.ha = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.g, i64 noundef 4), !noalias !148 ; 2 uses
  %.not.i637 = icmp eq ptr %i.ha, null
  br i1 %.not.i637, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !146
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.hb, align 8
  %.sroa.4885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ha, ptr %.sroa.4885.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.bi:                                            ; preds = %bb.bg
  %i.hc = trunc nuw i8 %i.gz to i1
  %i.hd = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i642)
  %.sroa.03.0.i644 = select i1 %i.hc, i32 %i.hd, i32 %.sroa.05.0.copyload.i642
  %i.he = load i8, ptr %i.da, align 8, !range !9, !alias.scope !143, !noalias !148, !noundef !4
  %i.hf = trunc nuw i8 %i.he to i1
  %.sroa.05.0.copyload.i638 = load i32, ptr %i.g, align 4, !noalias !146 ; 2 uses
  %i.hg = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i638)
  %.sroa.03.0.i640 = select i1 %i.hf, i32 %i.hg, i32 %.sroa.05.0.copyload.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !146
  br label %bb.z

bb.bj:                                            ; preds = %bb.bd, %bb.bk
  %.sink1177 = phi ptr [ %i.ed, %bb.bk ], [ %i.gw, %bb.bd ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.hh, align 8
  %.sroa.4876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1177, ptr %.sroa.4876.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.c

bb.bk:                                            ; preds = %.noexc604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !85
  br label %bb.bj

bb.bl:                                            ; preds = %bb.t
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cm) #24
          to label %.thread994 unwind label %bb.ah

bb.bm:                                            ; preds = %.noexc492.a
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.hk = load i8, ptr %i.hj, align 8, !range !9, !alias.scope !87, !noalias !149, !noundef !4
  %i.hl = trunc nuw i8 %i.hk to i1
  %.sroa.05.0.copyload.i489.a = load i32, ptr %i.ag, align 4, !noalias !90 ; 2 uses
  %i.hm = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i489.a)
  %.sroa.03.0.i491.a = select i1 %i.hl, i32 %i.hm, i32 %.sroa.05.0.copyload.i489.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !90
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.z

bb.bn:                                            ; preds = %.noexc492.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !90
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.hn, align 8
  %.sroa.4834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ee, ptr %.sroa.4834.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.c

bb.bo:                                            ; preds = %bb.bp, %bb.u
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cj) #24
          to label %.thread994 unwind label %bb.ah

bb.bp:                                            ; preds = %.noexc598
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.hq = load i8, ptr %i.hp, align 8, !range !9, !alias.scope !92, !noalias !150, !noundef !4
  %i.hr = trunc nuw i8 %i.hq to i1
  %.sroa.05.0.copyload.i595 = load i32, ptr %i.n, align 4, !noalias !95 ; 2 uses
  %i.hs = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i595)
  %.sroa.03.0.i597 = select i1 %i.hr, i32 %i.hs, i32 %.sroa.05.0.copyload.i595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !95
  %i.ht = zext i32 %.sroa.03.0.i597 to i64
  %i.hu = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ht)
          to label %bb.bq unwind label %bb.bo     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.hv = extractvalue { i64, ptr } %i.hu, 0
  %i.hw = trunc nuw i64 %i.hv to i1
  %i.hx = extractvalue { i64, ptr } %i.hu, 1      ; 2 uses
  %.not4831028 = icmp ne ptr %i.hx, null
  %.not483.not = select i1 %i.hw, i1 %.not4831028, i1 false
  br i1 %.not483.not, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !154
  store i64 0, ptr %i.h, align 8, !noalias !154
  %i.hy = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.h, i64 noundef 8), !noalias !156 ; 2 uses
  %.not.i633 = icmp eq ptr %i.hy, null
  br i1 %.not.i633, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !154
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.hz, align 8
  %.sroa.4861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hy, ptr %.sroa.4861.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.bt:                                            ; preds = %bb.br
  %i.ia = load i8, ptr %i.da, align 8, !range !9, !alias.scope !151, !noalias !156, !noundef !4
  %i.ib = trunc nuw i8 %i.ia to i1
  %.sroa.05.0.copyload.i634 = load i64, ptr %i.h, align 8, !noalias !154 ; 2 uses
  %i.ic = call i64 @llvm.bswap.i64(i64 %.sroa.05.0.copyload.i634)
  %.sroa.03.0.i636 = select i1 %i.ib, i64 %i.ic, i64 %.sroa.05.0.copyload.i634 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !154
  %.sroa.31.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i636 to i32
  %.sroa.31.sroa.11.0.extract.shift = and i64 %.sroa.03.0.i636, -4294967296
  br label %bb.z

bb.bu:                                            ; preds = %bb.bq, %bb.bv
  %.sink1179 = phi ptr [ %i.ef, %bb.bv ], [ %i.hx, %bb.bq ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.id, align 8
  %.sroa.4855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1179, ptr %.sroa.4855.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.c

bb.bv:                                            ; preds = %.noexc598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !95
  br label %bb.bu

bb.bw:                                            ; preds = %bb.v
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cg) #24
          to label %.thread994 unwind label %bb.ah

bb.bx:                                            ; preds = %.noexc592
  %i.if = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ig = load i8, ptr %i.if, align 8, !range !9, !alias.scope !97, !noalias !157, !noundef !4
  %i.ih = trunc nuw i8 %i.ig to i1
  %.sroa.05.0.copyload.i589 = load i32, ptr %i.o, align 4, !noalias !100 ; 2 uses
  %i.ii = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i589)
  %.sroa.03.0.i591 = select i1 %i.ih, i32 %i.ii, i32 %.sroa.05.0.copyload.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !100
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.z

bb.by:                                            ; preds = %.noexc592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !100
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.ij, align 8
  %.sroa.4888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eg, ptr %.sroa.4888.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.c

bb.bz:                                            ; preds = %bb.ca, %bb.w
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cl) #24
          to label %.thread994 unwind label %bb.ah

bb.ca:                                            ; preds = %.noexc586
  %i.il = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.im = load i8, ptr %i.il, align 8, !range !9, !alias.scope !102, !noalias !158, !noundef !4
  %i.in = trunc nuw i8 %i.im to i1
  %.sroa.05.0.copyload.i583 = load i32, ptr %i.p, align 4, !noalias !105 ; 2 uses
  %i.io = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i583)
  %.sroa.03.0.i585 = select i1 %i.in, i32 %i.io, i32 %.sroa.05.0.copyload.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !105
  %i.ip = zext i32 %.sroa.03.0.i585 to i64
  %i.iq = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ip)
          to label %bb.cb unwind label %bb.bz     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ir = extractvalue { i64, ptr } %i.iq, 0
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = extractvalue { i64, ptr } %i.iq, 1      ; 2 uses
  %.not4821027 = icmp ne ptr %i.it, null
  %.not482.not = select i1 %i.is, i1 %.not4821027, i1 false
  br i1 %.not482.not, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  store i64 0, ptr %i.a, align 8, !noalias !159
  %i.iu = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.a, i64 noundef 8) ; 2 uses
  %.not.i667 = icmp eq ptr %i.iu, null
  br i1 %.not.i667, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.iv, align 8
  %.sroa.4843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.iu, ptr %.sroa.4843.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.ce:                                            ; preds = %bb.cc
  %i.iw = load i8, ptr %i.da, align 8, !range !9, !alias.scope !159, !noundef !4
  %i.ix = trunc nuw i8 %i.iw to i1
  %.sroa.06.0.copyload.i670 = load i64, ptr %i.a, align 8, !noalias !159 ; 2 uses
  %i.iy = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i670)
  %.sroa.04.0.i672 = select i1 %i.ix, i64 %i.iy, i64 %.sroa.06.0.copyload.i670 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  %.sroa.31.sroa.0.0.extract.trunc57 = trunc i64 %.sroa.04.0.i672 to i32
  %.sroa.31.sroa.11.0.extract.shift61 = and i64 %.sroa.04.0.i672, -4294967296
  br label %bb.z

bb.cf:                                            ; preds = %bb.cb, %bb.cg
  %.sink1181 = phi ptr [ %i.eh, %bb.cg ], [ %i.it, %bb.cb ]
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.iz, align 8
  %.sroa.4837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1181, ptr %.sroa.4837.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.c

bb.cg:                                            ; preds = %.noexc586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !105
  br label %bb.cf

bb.ch:                                            ; preds = %bb.ci, %bb.x
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ck) #24
          to label %.thread994 unwind label %bb.ah

bb.ci:                                            ; preds = %.noexc580
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.jc = load i8, ptr %i.jb, align 8, !range !9, !alias.scope !107, !noalias !162, !noundef !4
  %i.jd = trunc nuw i8 %i.jc to i1
  %.sroa.05.0.copyload.i577 = load i32, ptr %i.q, align 4, !noalias !110 ; 2 uses
  %i.je = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i577)
  %.sroa.03.0.i579 = select i1 %i.jd, i32 %i.je, i32 %.sroa.05.0.copyload.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !110
  %i.jf = zext i32 %.sroa.03.0.i579 to i64
  %i.jg = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.jf)
          to label %bb.cj unwind label %bb.ch     ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jh = extractvalue { i64, ptr } %i.jg, 0
  %i.ji = trunc nuw i64 %i.jh to i1
  %i.jj = extractvalue { i64, ptr } %i.jg, 1      ; 2 uses
  %.not4811026 = icmp ne ptr %i.jj, null
  %.not481.not = select i1 %i.ji, i1 %.not4811026, i1 false
  br i1 %.not481.not, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163
  store i64 0, ptr %i.e, align 8, !noalias !163
  %i.jk = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.e, i64 noundef 8) ; 2 uses
  %.not.i646 = icmp eq ptr %i.jk, null
  br i1 %.not.i646, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.jl, align 8
  %.sroa.4852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jk, ptr %.sroa.4852.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.cm:                                            ; preds = %bb.ck
  %i.jm = load i8, ptr %i.da, align 8, !range !9, !alias.scope !163, !noundef !4
  %i.jn = trunc nuw i8 %i.jm to i1
  %.sroa.06.0.copyload.i649 = load i64, ptr %i.e, align 8, !noalias !163 ; 2 uses
  %i.jo = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i649)
  %.sroa.04.0.i651 = select i1 %i.jn, i64 %i.jo, i64 %.sroa.06.0.copyload.i649 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %.sroa.31.sroa.0.0.extract.trunc58 = trunc i64 %.sroa.04.0.i651 to i32
  %.sroa.31.sroa.11.0.extract.shift63 = and i64 %.sroa.04.0.i651, -4294967296
  br label %bb.z

bb.cn:                                            ; preds = %bb.cj, %bb.co
  %.sink1183 = phi ptr [ %i.ei, %bb.co ], [ %i.jj, %bb.cj ]
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.jp, align 8
  %.sroa.4846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1183, ptr %.sroa.4846.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.c

bb.co:                                            ; preds = %.noexc580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !110
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cq, %bb.y
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cf) #24
          to label %.thread994 unwind label %bb.ah

bb.cq:                                            ; preds = %.noexc574
  %i.jr = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.js = load i8, ptr %i.jr, align 8, !range !9, !alias.scope !112, !noalias !166, !noundef !4
  %i.jt = trunc nuw i8 %i.js to i1
  %.sroa.05.0.copyload.i571 = load i32, ptr %i.r, align 4, !noalias !115 ; 2 uses
  %i.ju = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i571)
  %.sroa.03.0.i573 = select i1 %i.jt, i32 %i.ju, i32 %.sroa.05.0.copyload.i571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !115
  %i.jv = zext i32 %.sroa.03.0.i573 to i64
  %i.jw = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.jv)
          to label %bb.cr unwind label %bb.cp     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.jx = extractvalue { i64, ptr } %i.jw, 0
  %i.jy = trunc nuw i64 %i.jx to i1
  %i.jz = extractvalue { i64, ptr } %i.jw, 1      ; 2 uses
  %.not4801025 = icmp ne ptr %i.jz, null
  %.not480.not = select i1 %i.jy, i1 %.not4801025, i1 false
  br i1 %.not480.not, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167
  store i64 0, ptr %i.b, align 8, !noalias !167
  %i.ka = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull %i.b, i64 noundef 8) ; 2 uses
  %.not.i661 = icmp eq ptr %i.ka, null
  br i1 %.not.i661, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.kb, align 8
  %.sroa.4897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ka, ptr %.sroa.4897.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.cu:                                            ; preds = %bb.cs
  %i.kc = load i8, ptr %i.da, align 8, !range !9, !alias.scope !167, !noundef !4
  %i.kd = trunc nuw i8 %i.kc to i1
  %.sroa.06.0.copyload.i664 = load i64, ptr %i.b, align 8, !noalias !167 ; 2 uses
  %i.ke = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i664)
  %.sroa.04.0.i666 = select i1 %i.kd, i64 %i.ke, i64 %.sroa.06.0.copyload.i664 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  %.sroa.31.sroa.0.0.extract.trunc59 = trunc i64 %.sroa.04.0.i666 to i32
  %.sroa.31.sroa.11.0.extract.shift65 = and i64 %.sroa.04.0.i666, -4294967296
  br label %bb.z

bb.cv:                                            ; preds = %bb.cr, %bb.cw
  %.sink1185 = phi ptr [ %i.ej, %bb.cw ], [ %i.jz, %bb.cr ]
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.kf, align 8
  %.sroa.4891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1185, ptr %.sroa.4891.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.c

bb.cw:                                            ; preds = %.noexc574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !115
  br label %bb.cv

bb.cx:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

bb.cy:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !173
  store i32 0, ptr %i.s, align 4, !noalias !173
  %i.kg = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull %i.s, i64 noundef 4)
          to label %.noexc568 unwind label %bb.de ; 2 uses

.noexc568:                                        ; preds = %bb.cy
  %.not.i564 = icmp eq ptr %i.kg, null
  br i1 %.not.i564, label %bb.df, label %bb.dk

bb.cz:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !178
  store i32 0, ptr %i.aa, align 4, !noalias !178
  %i.kh = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull %i.aa, i64 noundef 4)
          to label %.noexc525 unwind label %bb.dl ; 2 uses

.noexc525:                                        ; preds = %bb.cz
  %.not.i521 = icmp eq ptr %i.kh, null
  br i1 %.not.i521, label %bb.dm, label %bb.dq

bb.da:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !183
  store i64 0, ptr %i.af, align 8, !noalias !183
  %i.ki = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull %i.af, i64 noundef 8)
          to label %.noexc498 unwind label %bb.dr ; 2 uses

.noexc498:                                        ; preds = %bb.da
  %.not.i494 = icmp eq ptr %i.ki, null
  br i1 %.not.i494, label %bb.ds, label %bb.dt

bb.db:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !185
  store i64 0, ptr %i.i, align 8, !noalias !185
  %i.kj = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noalias nofree noundef nonnull %i.i, i64 noundef 8)
          to label %.noexc631 unwind label %bb.du ; 2 uses

.noexc631:                                        ; preds = %bb.db
  %.not.i625 = icmp eq ptr %i.kj, null
  br i1 %.not.i625, label %bb.dv, label %bb.dw

bb.dc:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !188
  store i64 0, ptr %i.y, align 8, !noalias !188
  %i.kk = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noalias nofree noundef nonnull %i.y, i64 noundef 8)
          to label %.noexc535 unwind label %bb.dx ; 2 uses

.noexc535:                                        ; preds = %bb.dc
  %.not.i533 = icmp eq ptr %i.kk, null
  br i1 %.not.i533, label %bb.dy, label %bb.dz

bb.dd:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry19offset_field_reader(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !191
  store i64 0, ptr %i.j, align 8, !noalias !191
  %i.kl = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noalias nofree noundef nonnull %i.j, i64 noundef 8)
          to label %.noexc624 unwind label %bb.ea ; 2 uses

.noexc624:                                        ; preds = %bb.dd
  %.not.i618 = icmp eq ptr %i.kl, null
  br i1 %.not.i618, label %bb.eb, label %bb.ec

bb.de:                                            ; preds = %bb.cy
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ct) #24
          to label %.thread994 unwind label %bb.ah

bb.df:                                            ; preds = %.noexc568
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 8, !range !9, !alias.scope !170, !noalias !194, !noundef !4
  %i.kp = trunc nuw i8 %i.ko to i1
  %.sroa.05.0.copyload.i565 = load i32, ptr %i.s, align 4, !noalias !173 ; 2 uses
  %i.kq = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i565)
  %.sroa.03.0.i567 = select i1 %i.kp, i32 %i.kq, i32 %.sroa.05.0.copyload.i565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !173
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !198
  store i32 0, ptr %i.t, align 4, !noalias !198
  %i.kr = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull %i.t, i64 noundef 4)
          to label %.noexc562 unwind label %bb.dg ; 2 uses

.noexc562:                                        ; preds = %bb.df
  %.not.i558 = icmp eq ptr %i.kr, null
  br i1 %.not.i558, label %bb.dh, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ct) #24
          to label %.thread994 unwind label %bb.ah

bb.dh:                                            ; preds = %.noexc562
  %i.kt = load i8, ptr %i.kn, align 8, !range !9, !alias.scope !195, !noalias !200, !noundef !4
  %i.ku = trunc nuw i8 %i.kt to i1
  %.sroa.05.0.copyload.i559 = load i32, ptr %i.t, align 4, !noalias !198 ; 2 uses
  %i.kv = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i559)
  %.sroa.03.0.i561 = select i1 %i.ku, i32 %i.kv, i32 %.sroa.05.0.copyload.i559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !198
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.di

bb.di:                                            ; preds = %bb.eb, %bb.dy, %bb.dv, %bb.ds, %bb.do, %bb.dh
  %.sroa.12.sroa.10.0 = phi i64 [ 0, %bb.dh ], [ 0, %bb.do ], [ %.sroa.12.sroa.10.0.extract.shift, %bb.ds ], [ %.sroa.12.sroa.10.0.extract.shift21, %bb.dv ], [ %.sroa.12.sroa.10.0.extract.shift23, %bb.dy ], [ %.sroa.12.sroa.10.0.extract.shift25, %bb.eb ]
  %.sroa.12.sroa.0.0 = phi i32 [ %.sroa.03.0.i561, %bb.dh ], [ %.sroa.03.0.i518, %bb.do ], [ %.sroa.12.sroa.0.0.extract.trunc, %bb.ds ], [ %.sroa.12.sroa.0.0.extract.trunc18, %bb.dv ], [ %.sroa.12.sroa.0.0.extract.trunc19, %bb.dy ], [ %.sroa.12.sroa.0.0.extract.trunc20, %bb.eb ]
  %.sroa.1017.0 = phi i32 [ %.sroa.03.0.i567, %bb.dh ], [ %.sroa.03.0.i524, %bb.do ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dy ], [ undef, %bb.eb ]
  %.sroa.016.0 = phi i8 [ 11, %bb.dh ], [ 13, %bb.do ], [ 9, %bb.ds ], [ 7, %bb.dv ], [ 5, %bb.dy ], [ 17, %bb.eb ]
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.016.0, ptr %i.kw, align 8
  %.sroa.1017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.1017.0, ptr %.sroa.1017.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.sroa.0.0.insert.ext = zext i32 %.sroa.12.sroa.0.0 to i64
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.sroa.10.0, %.sroa.12.sroa.0.0.insert.ext
  store i64 %.sroa.12.sroa.0.0.insert.insert, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.dj:                                            ; preds = %.noexc562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !198
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.kx, align 8
  %.sroa.4810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kr, ptr %.sroa.4810.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.c

bb.dk:                                            ; preds = %.noexc568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !173
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.ky, align 8
  %.sroa.4807.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kg, ptr %.sroa.4807.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.c

bb.dl:                                            ; preds = %bb.cz
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #24
          to label %.thread994 unwind label %bb.ah

bb.dm:                                            ; preds = %.noexc525
  %i.la = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 8, !range !9, !alias.scope !175, !noalias !201, !noundef !4
  %i.lc = trunc nuw i8 %i.lb to i1
  %.sroa.05.0.copyload.i522 = load i32, ptr %i.aa, align 4, !noalias !178 ; 2 uses
  %i.ld = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i522)
  %.sroa.03.0.i524 = select i1 %i.lc, i32 %i.ld, i32 %.sroa.05.0.copyload.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !178
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !205
  store i32 0, ptr %i.ab, align 4, !noalias !205
  %i.le = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull %i.ab, i64 noundef 4)
          to label %.noexc519 unwind label %bb.dn ; 2 uses

.noexc519:                                        ; preds = %bb.dm
  %.not.i515 = icmp eq ptr %i.le, null
  br i1 %.not.i515, label %bb.do, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #24
          to label %.thread994 unwind label %bb.ah

bb.do:                                            ; preds = %.noexc519
  %i.lg = load i8, ptr %i.la, align 8, !range !9, !alias.scope !202, !noalias !207, !noundef !4
  %i.lh = trunc nuw i8 %i.lg to i1
  %.sroa.05.0.copyload.i516 = load i32, ptr %i.ab, align 4, !noalias !205 ; 2 uses
  %i.li = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i516)
  %.sroa.03.0.i518 = select i1 %i.lh, i32 %i.li, i32 %.sroa.05.0.copyload.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !205
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.di

bb.dp:                                            ; preds = %.noexc519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !205
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.lj, align 8
  %.sroa.4816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.le, ptr %.sroa.4816.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.c

bb.dq:                                            ; preds = %.noexc525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !178
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.lk, align 8
  %.sroa.4813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kh, ptr %.sroa.4813.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.c

bb.dr:                                            ; preds = %bb.da
  %i.ll = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cu) #24
          to label %.thread994 unwind label %bb.ah

bb.ds:                                            ; preds = %.noexc498
  %i.lm = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ln = load i8, ptr %i.lm, align 8, !range !9, !alias.scope !180, !noalias !208, !noundef !4
  %i.lo = trunc nuw i8 %i.ln to i1
  %.sroa.05.0.copyload.i495 = load i64, ptr %i.af, align 8, !noalias !183 ; 2 uses
  %i.lp = call i64 @llvm.bswap.i64(i64 %.sroa.05.0.copyload.i495)
  %.sroa.03.0.i497 = select i1 %i.lo, i64 %i.lp, i64 %.sroa.05.0.copyload.i495 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !183
  %.sroa.12.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i497 to i32
  %.sroa.12.sroa.10.0.extract.shift = and i64 %.sroa.03.0.i497, -4294967296
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.di

bb.dt:                                            ; preds = %.noexc498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !183
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.lq, align 8
  %.sroa.4804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ki, ptr %.sroa.4804.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.c

bb.du:                                            ; preds = %bb.db
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cw) #24
          to label %.thread994 unwind label %bb.ah

bb.dv:                                            ; preds = %.noexc631
  %i.ls = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.lt = load i8, ptr %i.ls, align 8, !range !9, !alias.scope !185, !noundef !4
  %i.lu = trunc nuw i8 %i.lt to i1
  %.sroa.06.0.copyload.i628 = load i64, ptr %i.i, align 8, !noalias !185 ; 2 uses
  %i.lv = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i628)
  %.sroa.04.0.i630 = select i1 %i.lu, i64 %i.lv, i64 %.sroa.06.0.copyload.i628 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !185
  %.sroa.12.sroa.0.0.extract.trunc18 = trunc i64 %.sroa.04.0.i630 to i32
  %.sroa.12.sroa.10.0.extract.shift21 = and i64 %.sroa.04.0.i630, -4294967296
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.di

bb.dw:                                            ; preds = %.noexc631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !185
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.lw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kj, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.c

bb.dx:                                            ; preds = %bb.dc
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cv) #24
          to label %.thread994 unwind label %bb.ah

bb.dy:                                            ; preds = %.noexc535
  %i.ly = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.lz = load i8, ptr %i.ly, align 8, !range !9, !alias.scope !188, !noundef !4
  %i.ma = trunc nuw i8 %i.lz to i1
  %.sroa.06.0.copyload.i = load i64, ptr %i.y, align 8, !noalias !188 ; 2 uses
  %i.mb = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i)
  %.sroa.04.0.i = select i1 %i.ma, i64 %i.mb, i64 %.sroa.06.0.copyload.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !188
  %.sroa.12.sroa.0.0.extract.trunc19 = trunc i64 %.sroa.04.0.i to i32
  %.sroa.12.sroa.10.0.extract.shift23 = and i64 %.sroa.04.0.i, -4294967296
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.di

bb.dz:                                            ; preds = %.noexc535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !188
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.mc, align 8
  %.sroa.4801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kk, ptr %.sroa.4801.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.c

bb.ea:                                            ; preds = %bb.dd
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr) #24
          to label %.thread994 unwind label %bb.ah

bb.eb:                                            ; preds = %.noexc624
  %i.me = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.mf = load i8, ptr %i.me, align 8, !range !9, !alias.scope !191, !noundef !4
  %i.mg = trunc nuw i8 %i.mf to i1
  %.sroa.06.0.copyload.i621 = load i64, ptr %i.j, align 8, !noalias !191 ; 2 uses
  %i.mh = call i64 @llvm.bswap.i64(i64 %.sroa.06.0.copyload.i621)
  %.sroa.04.0.i623 = select i1 %i.mg, i64 %i.mh, i64 %.sroa.06.0.copyload.i621 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !191
  %.sroa.12.sroa.0.0.extract.trunc20 = trunc i64 %.sroa.04.0.i623 to i32
  %.sroa.12.sroa.10.0.extract.shift25 = and i64 %.sroa.04.0.i623, -4294967296
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.di

bb.ec:                                            ; preds = %.noexc624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !191
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.mi, align 8
  %.sroa.4819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kl, ptr %.sroa.4819.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12EndianReaderINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.c

bb.ed:                                            ; preds = %bb.f
  switch i16 %.val, label %bb.i [
    i16 1, label %bb.gs
    i16 2, label %bb.gt
    i16 3, label %.lr.ph1062
    i16 4, label %.lr.ph1058
    i16 5, label %bb.gu
    i16 6, label %bb.gv
    i16 7, label %bb.gw
    i16 8, label %.lr.ph1054
    i16 9, label %.lr.ph1050
    i16 10, label %bb.gu
    i16 11, label %.lr.ph1046
    i16 12, label %bb.gu
    i16 13, label %.lr.ph
    i16 16, label %bb.gu
    i16 17, label %bb.gu
    i16 18, label %bb.gu
  ], !prof !209

bb.ee:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call fastcc void @_RINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB6_5Entry26set_reader_offset_relativeINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i1 noundef zeroext %3, ptr noalias nofree noundef align 8 dereferenceable(32) %4, i64 noundef 0)
  %i.mj = load i64, ptr %i.bi, align 8, !range !7, !noundef !4
  %.not448.a = icmp eq i64 %i.mj, -1
  br i1 %.not448.a, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  store i64 1, ptr %0, align 8
  br label %bb.gq

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  switch i16 %.val, label %bb.i [
    i16 1, label %bb.eh
    i16 2, label %bb.ei
    i16 3, label %bb.ej
    i16 4, label %bb.ek
    i16 5, label %bb.el
    i16 6, label %bb.em
    i16 7, label %bb.eh
    i16 8, label %bb.en
    i16 9, label %bb.eo
    i16 10, label %bb.ep
    i16 11, label %bb.eq
    i16 12, label %bb.er
    i16 13, label %bb.es
    i16 16, label %bb.et
    i16 17, label %bb.eu
    i16 18, label %bb.ev
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bg, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.ml = load i64, ptr %i.bg, align 8, !range !7, !noundef !4 ; 2 uses
  %.not464 = icmp eq i64 %i.ml, -1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6210, ptr noundef nonnull align 8 dereferenceable(24) %i.mm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br i1 %.not464, label %bb.fv, label %bb.fu

bb.ei:                                            ; preds = %bb.eg
  %i.mn = load i64, ptr %2, align 8, !noundef !4
  %i.mo = icmp ugt i64 %i.cx, %i.mn
  br i1 %i.mo, label %bb.ex, label %bb.ew

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.be, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mp = load i64, ptr %i.be, align 8, !range !7, !noundef !4 ; 2 uses
  %.not461 = icmp eq i64 %i.mp, -1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6222, ptr noundef nonnull align 8 dereferenceable(24) %i.mq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br i1 %.not461, label %bb.fm, label %bb.fl

bb.ek:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bc, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mr = load i64, ptr %i.bc, align 8, !range !7, !noundef !4 ; 2 uses
  %.not460 = icmp eq i64 %i.mr, -1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6234, ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br i1 %.not460, label %bb.fp, label %bb.fo

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mt = load i64, ptr %i.ay, align 8, !range !7, !noundef !4 ; 2 uses
  %.not459 = icmp eq i64 %i.mt, -1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6258, ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br i1 %.not459, label %bb.fr, label %bb.fq

bb.em:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bf, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mv = load i64, ptr %i.bf, align 8, !range !7, !noundef !4 ; 2 uses
  %.not458 = icmp eq i64 %i.mv, -1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6216, ptr noundef nonnull align 8 dereferenceable(24) %i.mw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br i1 %.not458, label %bb.ft, label %bb.fs

bb.en:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mx = load i64, ptr %i.bd, align 8, !range !7, !noundef !4 ; 2 uses
  %.not457 = icmp eq i64 %i.mx, -1
  %i.my = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br i1 %.not457, label %bb.fx, label %bb.fw

bb.eo:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bb, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.mz = load i64, ptr %i.bb, align 8, !range !7, !noundef !4 ; 2 uses
  %.not456 = icmp eq i64 %i.mz, -1
  %i.na = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6240, ptr noundef nonnull align 8 dereferenceable(24) %i.na, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br i1 %.not456, label %bb.fz, label %bb.fy

bb.ep:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ax, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.nb = load i64, ptr %i.ax, align 8, !range !7, !noundef !4 ; 2 uses
  %.not455 = icmp eq i64 %i.nb, -1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6264, ptr noundef nonnull align 8 dereferenceable(24) %i.nc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br i1 %.not455, label %bb.gb, label %bb.ga

bb.eq:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ba, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.nd = load i64, ptr %i.ba, align 8, !range !7, !noundef !4 ; 2 uses
  %.not454 = icmp eq i64 %i.nd, -1
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6246, ptr noundef nonnull align 8 dereferenceable(24) %i.ne, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br i1 %.not454, label %bb.gd, label %bb.gc

bb.er:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.nf = load i64, ptr %i.az, align 8, !range !7, !noundef !4 ; 2 uses
  %.not453.a = icmp eq i64 %i.nf, -1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6252, ptr noundef nonnull align 8 dereferenceable(24) %i.ng, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br i1 %.not453.a, label %bb.gf, label %bb.ge

bb.es:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry17vec_with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.nh = load i64, ptr %i.au, align 8, !range !7, !noundef !4 ; 2 uses
  %.not452 = icmp eq i64 %i.nh, -1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6282, ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br i1 %.not452, label %bb.gh, label %bb.gg

bb.et:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6270)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB5_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16new_with_optionsCsa5QsYiPB8Gl_5image:bb.a

.noexc41:                                         ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1546
  br label %bb.cy

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #26
          to label %bb.dg unwind label %bb.db

bb.dk:                                            ; preds = %.noexc39
  %.val486.i = load i64, ptr %i.gh, align 8, !alias.scope !1576, !noundef !4 ; 3 uses
  %i.gt = getelementptr i8, ptr %i.gh, i64 8
  %.val487.i = load i64, ptr %i.gt, align 8, !alias.scope !1579, !noundef !4
  %i.gu = add i64 %.val486.i, 16
  %i.gv = invoke { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef 0, i64 noundef %i.gu)
          to label %.noexc42 unwind label %.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %bb.dk
  %i.gw = extractvalue { i64, ptr } %i.gv, 0
  %i.gx = trunc nuw i64 %i.gw to i1
  br i1 %i.gx, label %bb.dl, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc42
  %i.gy = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.4399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.5400.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 21
  %.sroa.6401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.4593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.6595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 17 ; 2 uses
  %.sroa.11579.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1546
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp7decoder17read_chunk_headerQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag)
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %.preheader.i
  %i.hc = load i8, ptr %i.r, align 8, !range !304, !noalias !1546, !noundef !4 ; 2 uses
  %.not480.i = icmp eq i8 %i.hc, -1
  %.sroa.5410.0.copyload.pre693.i = load i64, ptr %i.gy, align 8, !noalias !1546 ; 2 uses
  %.sroa.6411.sroa.0.0.copyload.pre695.i = load i40, ptr %.sroa.4399.0..sroa_idx.i, align 8, !noalias !1546 ; 2 uses
  %.sroa.8413.0.copyload.pre697.i = load i64, ptr %.sroa.6401.0..sroa_idx.i, align 8, !noalias !1546 ; 2 uses
  br i1 %.not480.i, label %bb.dn, label %bb.dm

.loopexit.i:                                      ; preds = %bb.dt, %.noexc48, %_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEE9or_insertCsa5QsYiPB8Gl_5image.exit523.i, %.noexc39
  %i.hd = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  %i.he = load i8, ptr %i.hd, align 1, !range !9, !noalias !1546, !noundef !4
  store i8 %i.he, ptr %i.al, align 1, !alias.scope !1520, !noalias !1517
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1546
  br label %.thread135

bb.dl:                                            ; preds = %.noexc42
  %i.hg = extractvalue { i64, ptr } %i.gv, 1
  %i.hh = ptrtoint ptr %i.hg to i64
  br label %.thread143

bb.dm:                                            ; preds = %.noexc46, %.noexc43
  %.sroa.8413.0.copyload.i = phi i64 [ %.sroa.8413.0.copyload.pre697.i, %.noexc43 ], [ %.sroa.8413.0.copyload.pre.i, %.noexc46 ]
  %.sroa.6411.sroa.0.0.copyload.i = phi i40 [ %.sroa.6411.sroa.0.0.copyload.pre695.i, %.noexc43 ], [ %.sroa.6411.sroa.0.0.copyload.pre.i, %.noexc46 ]
  %.sroa.5410.0.copyload.i = phi i64 [ %.sroa.5410.0.copyload.pre693.i, %.noexc43 ], [ %.sroa.5410.0.copyload.pre.i, %.noexc46 ]
  %.lcssa.i = phi i8 [ %i.hc, %.noexc43 ], [ %i.hq, %.noexc46 ]
  %.sroa.4409.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4409.0..sroa_idx.i, i64 5, i1 false), !noalias !1520
  %.sroa.50.1..sroa.4409.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %.sroa.50.1.copyload59 = load i16, ptr %.sroa.50.1..sroa.4409.0..sroa_idx.i.sroa_idx, align 2, !noalias !1520
  %.sroa.9220.i.sroa.0.0.copyload = load i24, ptr %.sroa.5400.0..sroa_idx.i, align 1, !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1546
  %.sroa.70.5.insert.ext = zext i24 %.sroa.9220.i.sroa.0.0.copyload to i64
  %.sroa.70.5.insert.shift = shl nuw i64 %.sroa.70.5.insert.ext, 40
  %.sroa.70.0.insert.ext = zext i40 %.sroa.6411.sroa.0.0.copyload.i to i64
  %.sroa.70.0.insert.insert = or disjoint i64 %.sroa.70.5.insert.shift, %.sroa.70.0.insert.ext
  %i.hi = inttoptr i64 %.sroa.70.0.insert.insert to ptr
  br label %.thread143

bb.dn:                                            ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1546
  invoke void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap, i40 %.sroa.6411.sroa.0.0.copyload.pre695.i)
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.dn
  %i.hj = load i8, ptr %i.gz, align 8, !range !1564, !noalias !1546, !noundef !4 ; 2 uses
  %.not481.i = icmp eq i8 %i.hj, -1
  br i1 %.not481.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.noexc44
  %i.hk = add i64 %.val486.i, 24                  ; 3 uses
  %i.hl = add i64 %.sroa.5410.0.copyload.pre693.i, %i.hk
  %.sroa.0592.0.copyload.i = load ptr, ptr %i.n, align 8, !noalias !1546
  %.sroa.4593.0.copyload.i = load i64, ptr %.sroa.4593.0..sroa_idx.i, align 8, !noalias !1546
  %.sroa.6595.sroa.0.0.copyload.i = load i32, ptr %.sroa.6595.0..sroa_idx.i, align 1, !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  store i8 %i.hj, ptr %i.a, align 8, !noalias !1546
  store i32 %.sroa.6595.sroa.0.0.copyload.i, ptr %.sroa.11579.16..sroa_idx.i, align 1, !noalias !1546
  store i64 %i.hk, ptr %i.ha, align 8, !noalias !1582
  store i64 %i.hl, ptr %i.hb, align 8, !noalias !1582
  %i.hm = invoke noundef nonnull ptr @_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE14insert_no_growCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.0592.0.copyload.i, i64 noundef %.sroa.4593.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc45 unwind label %.loopexit.split-lp ; 0 uses

.noexc45:                                         ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1582
  br label %_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEE9or_insertCsa5QsYiPB8Gl_5image.exit523.i

bb.dp:                                            ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1546
  %.pre700.i = add i64 %.val486.i, 24
  br label %_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEE9or_insertCsa5QsYiPB8Gl_5image.exit523.i

_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEE9or_insertCsa5QsYiPB8Gl_5image.exit523.i: ; preds = %bb.dp, %.noexc45
  %.pre-phi.i = phi i64 [ %i.hk, %.noexc45 ], [ %.pre700.i, %bb.dp ]
  %i.hn = add i64 %.sroa.8413.0.copyload.pre697.i, 8
  %i.ho = add i64 %i.hn, %.pre-phi.i              ; 3 uses
  %i.hp = icmp ugt i64 %i.ho, %.val487.i
  br i1 %i.hp, label %.loopexit.i, label %bb.dq

bb.dq:                                            ; preds = %_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEE9or_insertCsa5QsYiPB8Gl_5image.exit523.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1546
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp7decoder17read_chunk_headerQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag)
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.dq
  %i.hq = load i8, ptr %i.r, align 8, !range !304, !noalias !1546, !noundef !4 ; 2 uses
  %.not480.1.i = icmp eq i8 %i.hq, -1
  %.sroa.5410.0.copyload.pre.i = load i64, ptr %i.gy, align 8, !noalias !1546 ; 2 uses
  %.sroa.6411.sroa.0.0.copyload.pre.i = load i40, ptr %.sroa.4399.0..sroa_idx.i, align 8, !noalias !1546 ; 2 uses
  %.sroa.8413.0.copyload.pre.i = load i64, ptr %.sroa.6401.0..sroa_idx.i, align 8, !noalias !1546
  br i1 %.not480.1.i, label %bb.dr, label %bb.dm

bb.dr:                                            ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1546
  invoke void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap, i40 %.sroa.6411.sroa.0.0.copyload.pre.i)
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.dr
  %i.hr = load i8, ptr %i.gz, align 8, !range !1564, !noalias !1546, !noundef !4 ; 2 uses
  %.not481.1.i = icmp eq i8 %i.hr, -1
  br i1 %.not481.1.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.noexc47
  %i.hs = add i64 %.sroa.5410.0.copyload.pre.i, %i.ho
  %.sroa.0592.0.copyload.1.i = load ptr, ptr %i.n, align 8, !noalias !1546
  %.sroa.4593.0.copyload.1.i = load i64, ptr %.sroa.4593.0..sroa_idx.i, align 8, !noalias !1546
  %.sroa.6595.sroa.0.0.copyload688.i = load i32, ptr %.sroa.6595.0..sroa_idx.i, align 1, !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  store i8 %i.hr, ptr %i.a, align 8, !noalias !1546
  store i32 %.sroa.6595.sroa.0.0.copyload688.i, ptr %.sroa.11579.16..sroa_idx.i, align 1, !noalias !1546
  store i64 %i.ho, ptr %i.ha, align 8, !noalias !1582
  store i64 %i.hs, ptr %i.hb, align 8, !noalias !1582
  %i.ht = invoke noundef nonnull ptr @_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE14insert_no_growCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.0592.0.copyload.1.i, i64 noundef %.sroa.4593.0.copyload.1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc48 unwind label %.loopexit.split-lp ; 0 uses

.noexc48:                                         ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1582
  br label %.loopexit.i

bb.dt:                                            ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1546
  br label %.loopexit.i

bb.du:                                            ; preds = %bb.de, %bb.dc
  %.sink.i = phi ptr [ %i.gp, %bb.de ], [ %i.gn, %bb.dc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.du
  %i.hu = ptrtoint ptr %.sink.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1546
  br label %.noexc50

bb.dv:                                            ; preds = %bb.ea, %bb.dz, %bb.db
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dw:                                            ; preds = %.noexc40
  %.sroa.40.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.40.0..sroa_idx53, i64 5, i1 false), !noalias !1520
  %.sroa.50.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.sroa.50.0.copyload56 = load i16, ptr %.sroa.50.0..sroa_idx55, align 2, !noalias !1520
  %.sroa.5061.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5061.0.copyload63 = load i64, ptr %.sroa.5061.0..sroa_idx62, align 8, !noalias !1520
  %.sroa.70.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.70.0.copyload67 = load ptr, ptr %.sroa.70.0..sroa_idx66, align 8, !noalias !1520
  %.sroa.78.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.78.0.copyload74 = load i64, ptr %.sroa.78.0..sroa_idx73, align 8, !noalias !1520
  br label %.noexc50

bb.dx:                                            ; preds = %.noexc40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.dx, %bb.cz, %bb.dw, %.noexc49
  %.sroa.70.1 = phi ptr [ %.sroa.70.0.copyload67, %bb.dw ], [ undef, %bb.cz ], [ undef, %.noexc49 ], [ undef, %bb.dx ]
  %.sroa.78.1.a = phi i64 [ %.sroa.78.0.copyload74, %bb.dw ], [ undef, %bb.cz ], [ undef, %.noexc49 ], [ undef, %bb.dx ]
  %.sroa.5061.1 = phi i64 [ %.sroa.5061.0.copyload63, %bb.dw ], [ undef, %bb.cz ], [ %i.hu, %.noexc49 ], [ undef, %bb.dx ]
  %.sroa.50.1 = phi i16 [ %.sroa.50.0.copyload56, %bb.dw ], [ undef, %bb.cz ], [ undef, %.noexc49 ], [ undef, %bb.dx ]
  %.sroa.0.1 = phi i8 [ %i.gi, %bb.dw ], [ 3, %bb.cz ], [ 0, %.noexc49 ], [ 27, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1546
  br label %.thread143

bb.dy:                                            ; preds = %bb.bj
  br i1 %.sroa.0235.0.i, label %bb.ea, label %.body

bb.dz:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #24
          to label %.body unwind label %bb.dv

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq) #24
          to label %.body unwind label %bb.dv

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c, %bb.g, %bb.k, %bb.m, %bb.ac, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.aj, %bb.an, %bb.aq, %bb.at, %bb.ax, %bb.bb, %bb.be, %bb.cm, %bb.cn, %bb.cq, %bb.cr, %bb.ct, %bb.cv, %bb.cw, %.noexc37, %bb.cy, %.thread.i, %bb.di, %bb.dk, %.preheader.i, %bb.dn, %bb.do, %bb.dq, %bb.dr, %bb.ds, %bb.du, %bb.dx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %bb.db, %bb.dy, %bb.dz, %bb.ea
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i, %bb.bj ], [ %i.go, %bb.db ], [ %lpad.phi.i, %bb.ea ], [ %lpad.phi.i, %bb.dy ], [ %lpad.phi.i, %bb.dz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(192) %i.ac) #24
          to label %common.resume unwind label %bb.ej

.thread135:                                       ; preds = %.noexc28, %.noexc26, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.eh

.thread143:                                       ; preds = %bb.bf, %.noexc50, %bb.dl, %bb.dm, %bb.bd, %.noexc38, %.noexc36, %.noexc35, %.noexc34, %.noexc33
  %.sroa.70.0.ph = phi ptr [ undef, %.noexc33 ], [ undef, %.noexc34 ], [ undef, %.noexc35 ], [ undef, %.noexc36 ], [ undef, %.noexc38 ], [ %.sroa.70.1.copyload, %bb.bd ], [ %i.hi, %bb.dm ], [ undef, %bb.dl ], [ %.sroa.70.1, %.noexc50 ], [ undef, %bb.bf ]
  %.sroa.78.0.ph.a = phi i64 [ undef, %.noexc33 ], [ undef, %.noexc34 ], [ undef, %.noexc35 ], [ undef, %.noexc36 ], [ undef, %.noexc38 ], [ %.sroa.78.1.copyload, %bb.bd ], [ %.sroa.8413.0.copyload.i, %bb.dm ], [ undef, %bb.dl ], [ %.sroa.78.1.a, %.noexc50 ], [ undef, %bb.bf ]
  %.sroa.5061.0.ph = phi i64 [ undef, %.noexc33 ], [ undef, %.noexc34 ], [ undef, %.noexc35 ], [ undef, %.noexc36 ], [ undef, %.noexc38 ], [ %.sroa.5061.1.copyload, %bb.bd ], [ %.sroa.5410.0.copyload.i, %bb.dm ], [ %i.hh, %bb.dl ], [ %.sroa.5061.1, %.noexc50 ], [ %i.dx, %bb.bf ]
  %.sroa.50.0.ph = phi i16 [ undef, %.noexc33 ], [ undef, %.noexc34 ], [ undef, %.noexc35 ], [ undef, %.noexc36 ], [ undef, %.noexc38 ], [ %.sroa.50.1.copyload, %bb.bd ], [ %.sroa.50.1.copyload59, %bb.dm ], [ undef, %bb.dl ], [ %.sroa.50.1, %.noexc50 ], [ undef, %bb.bf ]
  %.sroa.0.0.ph = phi i8 [ 3, %.noexc33 ], [ 3, %.noexc34 ], [ 3, %.noexc35 ], [ 3, %.noexc36 ], [ 3, %.noexc38 ], [ %i.bm, %bb.bd ], [ %.lcssa.i, %bb.dm ], [ 0, %bb.dl ], [ %.sroa.0.1, %.noexc50 ], [ 0, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1546
  br label %.sink.split

.thread151:                                       ; preds = %bb.bo, %bb.ch, %bb.br, %bb.cf, %bb.cd, %bb.by, %bb.bt
  %.sroa.70.2.ph = phi ptr [ undef, %bb.ch ], [ undef, %bb.bt ], [ %i.fb, %bb.by ], [ undef, %bb.cd ], [ undef, %bb.cf ], [ undef, %bb.br ], [ undef, %bb.bo ]
  %.sroa.78.2.ph.a = phi i64 [ undef, %bb.ch ], [ undef, %bb.bt ], [ %.sroa.8365.0.copyload.i, %bb.by ], [ undef, %bb.cd ], [ undef, %bb.cf ], [ undef, %bb.br ], [ undef, %bb.bo ]
  %.sroa.5061.2.ph = phi i64 [ %i.fh, %bb.ch ], [ %i.er, %bb.bt ], [ %.sroa.5362.0.copyload.i, %bb.by ], [ %i.fe, %bb.cd ], [ %i.fg, %bb.cf ], [ %i.ep, %bb.br ], [ undef, %bb.bo ]
  %.sroa.50.2.ph = phi i16 [ undef, %bb.ch ], [ undef, %bb.bt ], [ %.sroa.50.1.copyload60, %bb.by ], [ undef, %bb.cd ], [ undef, %bb.cf ], [ undef, %bb.br ], [ undef, %bb.bo ]
  %.sroa.0.2.ph = phi i8 [ 0, %bb.ch ], [ 0, %bb.bt ], [ %i.fa, %bb.by ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.br ], [ 27, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1546
  br label %.sink.split

thread-pre-split:                                 ; preds = %bb.cj
  %.sroa.0.0.copyload52.pr = load i8, ptr %i.w, align 8, !noalias !1520
  br label %.loopexit158

.loopexit158:                                     ; preds = %.noexc30, %thread-pre-split
  %.sroa.0.0.copyload52 = phi i8 [ %.sroa.0.0.copyload52.pr, %thread-pre-split ], [ %i.dy, %.noexc30 ] ; 2 uses
  %.sroa.40.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.40.0..sroa_idx54, i64 5, i1 false), !noalias !1520
  %.sroa.50.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %.sroa.50.0.copyload58 = load i16, ptr %.sroa.50.0..sroa_idx57, align 2, !noalias !1520
  %.sroa.5061.0.copyload65 = load i64, ptr %i.dq, align 8, !noalias !1520
  %.sroa.70.0.copyload69 = load ptr, ptr %i.dr, align 8, !noalias !1520
  %.sroa.78.0.copyload76 = load i64, ptr %i.ds, align 8, !noalias !1520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not = icmp eq i8 %.sroa.0.0.copyload52, -1
  br i1 %.not, label %bb.eh, label %bb.eb

.sink.split:                                      ; preds = %bb.h, %bb.i, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i, %bb.z, %bb.av, %bb.ay, %bb.az, %bb.bc, %bb.ak, %bb.e, %bb.au, %bb.af, %bb.ab, %.thread143, %.thread151
  %.sroa.0.4133.ph = phi i8 [ %.sroa.0.2.ph, %.thread151 ], [ %.sroa.0.0.ph, %.thread143 ], [ 4, %bb.h ], [ 0, %bb.i ], [ 2, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ 0, %bb.z ], [ 0, %bb.av ], [ 11, %bb.ay ], [ 0, %bb.az ], [ 12, %bb.bc ], [ 24, %bb.ak ], [ 0, %bb.e ], [ %.sroa.0.3, %bb.au ], [ 0, %bb.af ], [ 4, %bb.ab ]
  %.sroa.50.3132.ph = phi i16 [ %.sroa.50.2.ph, %.thread151 ], [ %.sroa.50.0.ph, %.thread143 ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ undef, %bb.z ], [ undef, %bb.av ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.bc ], [ undef, %bb.ak ], [ undef, %bb.e ], [ undef, %bb.au ], [ undef, %bb.af ], [ undef, %bb.ab ]
  %.sroa.5061.4131.ph = phi i64 [ %.sroa.5061.2.ph, %.thread151 ], [ %.sroa.5061.0.ph, %.thread143 ], [ undef, %bb.h ], [ %i.ay, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ %.sroa.9538.0.ph.i, %bb.z ], [ %i.cq, %bb.av ], [ undef, %bb.ay ], [ %i.cu, %bb.az ], [ undef, %bb.bc ], [ %i.bx, %bb.ak ], [ %.sroa.9.0.ph.i, %bb.e ], [ %.sroa.5061.3, %bb.au ], [ %i.bp, %bb.af ], [ undef, %bb.ab ]
  %.sroa.78.3130.ph = phi i64 [ %.sroa.78.2.ph.a, %.thread151 ], [ %.sroa.78.0.ph.a, %.thread143 ], [ 19, %bb.h ], [ 19, %bb.i ], [ 19, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ 19, %bb.z ], [ 19, %bb.av ], [ 19, %bb.ay ], [ 19, %bb.az ], [ 19, %bb.bc ], [ 19, %bb.ak ], [ 19, %bb.e ], [ 19, %bb.au ], [ 19, %bb.af ], [ 19, %bb.ab ]
  %.sroa.70.3129.ph = phi ptr [ %.sroa.70.2.ph, %.thread151 ], [ %.sroa.70.0.ph, %.thread143 ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ null, %bb.z ], [ undef, %bb.av ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.bc ], [ %i.cb, %bb.ak ], [ null, %bb.e ], [ undef, %bb.au ], [ undef, %bb.af ], [ undef, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.eb

bb.eb:                                            ; preds = %.sink.split, %.loopexit158
  %.sroa.0.4133 = phi i8 [ %.sroa.0.0.copyload52, %.loopexit158 ], [ %.sroa.0.4133.ph, %.sink.split ]
  %.sroa.50.3132 = phi i16 [ %.sroa.50.0.copyload58, %.loopexit158 ], [ %.sroa.50.3132.ph, %.sink.split ]
  %.sroa.5061.4131 = phi i64 [ %.sroa.5061.0.copyload65, %.loopexit158 ], [ %.sroa.5061.4131.ph, %.sink.split ]
  %.sroa.78.3130 = phi i64 [ %.sroa.78.0.copyload76, %.loopexit158 ], [ %.sroa.78.3130.ph, %.sink.split ]
  %.sroa.70.3129 = phi ptr [ %.sroa.70.0.copyload69, %.loopexit158 ], [ %.sroa.70.3129.ph, %.sink.split ]
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.4133, ptr %i.hw, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.sroa.50.3132, ptr %.sroa.5119.0..sroa_idx, align 2
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5061.4131, ptr %.sroa.6120.0..sroa_idx, align 8
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.70.3129, ptr %.sroa.7121.0..sroa_idx, align 8
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.78.3130, ptr %.sroa.8122.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  %i.hx = load i64, ptr %i.ac, align 8, !range !213, !alias.scope !1585, !noundef !4
  %i.hy = icmp eq i64 %i.hx, -1
  br i1 %i.hy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %.body.i unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ec
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ef, %bb.ed
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ib, %bb.ef ], [ %i.hz, %bb.ed ]
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEENtNtB1L_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %common.resume unwind label %bb.eg

bb.eg:                                            ; preds = %.body.i
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.eb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEENtNtB1L_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap)
  br label %bb.ei

bb.eh:                                            ; preds = %.thread135, %.loopexit158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.ac, i64 192, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.ej:                                            ; preds = %.body
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %.val30 = load ptr, ptr %1, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val31 = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.d = icmp eq i64 %.val31, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30), !noalias !1592
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1592, !noundef !4 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1592, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1592
  store i8 0, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.420.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !noalias !1592, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1592
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val31, i64 %i.i)
  %i.j = icmp ugt i64 %..i.i, 7
  br i1 %i.j, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted = load i8, ptr %i.k, align 8         ; 2 uses
  %i.l = icmp ne i64 %i.i, 0
  %i.m = icmp ult i8 %.promoted, 56
  %or.cond49 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted51 = load i64, ptr %i.n, align 8
  %i.q = zext nneg i8 %.promoted to i64
  br label %bb.e

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !noundef !4  ; 3 uses
  %i.t = sub i8 63, %i.s
  %i.u = lshr i8 %i.t, 3
  %i.v = zext nneg i8 %i.u to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %..i.i32 = tail call noundef i64 @llvm.umin.i64(i64 %.val31, i64 range(i64 0, 32) %i.v) ; 2 uses
  %i.w = sub nuw i64 %.val31, %..i.i32
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !1595
  %i.x = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1598, !noalias !1595, !noundef !4
  %i.z = add i64 %..i.i32, %i.y
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !1598, !noalias !1595
  %i.aa = and i8 %i.s, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl i64 %.sroa.021.0.copyload, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = or i8 %i.s, 56
  store i8 %i.ag, ptr %i.r, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ah = phi i64 [ %.promoted51, %.lr.ph ], [ %i.am, %bb.h ]
  %.sroa.06.050 = phi ptr [ %i.e, %.lr.ph ], [ %i.at, %bb.h ]
  %i.ai = phi i64 [ %.val31, %.lr.ph ], [ %i.ap, %bb.h ] ; 3 uses
  %i.aj = load i8, ptr %.sroa.06.050, align 1, !noundef !4
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, %indvars.iv
  %i.am = or i64 %i.al, %i.ah                     ; 2 uses
  store i64 %i.am, ptr %i.n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next to i8
  store i8 %i.an, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.ao = icmp ne i64 %i.ai, 0
  %..i.i33.a = zext i1 %i.ao to i64               ; 2 uses
  %i.ap = sub nuw i64 %i.ai, %..i.i33.a           ; 3 uses
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !1601
  %i.aq = load i64, ptr %i.o, align 8, !alias.scope !1604, !noalias !1601, !noundef !4
  %i.ar = add i64 %i.aq, %..i.i33.a
  store i64 %i.ar, ptr %i.o, align 8, !alias.scope !1604, !noalias !1601
  %i.as = icmp ult i64 %i.ai, 2
  br i1 %i.as, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1607
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30), !noalias !1607
  %i.at = load ptr, ptr %i.a, align 8, !noalias !1607, !noundef !4 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.p, align 8, !noalias !1607, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1607
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.p, align 8, !noalias !1607, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1607
  %..i.i35 = tail call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aw)
  %i.ax = icmp ne i64 %..i.i35, 0
  %i.ay = icmp samesign ult i64 %indvars.iv, 48
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a, %.preheader, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
