Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegdecoderhelper?download=true
inline.NumInlined: 116
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8ultrahdr17JpegDecoderHelper6decodeEPKvmNS_13decode_mode_tE:bb.a
  %invariant.op198 = add i32 %i.la, -1
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 188
  %wide.trip.count237 = zext nneg i32 %i.fg to i64
  br label %bb.ba

bb.az:                                            ; preds = %.thread152
  store i32 1, ptr %0, align 4, !tbaa !47
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.lc, align 4, !tbaa !48
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ld, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.ks) #25 ; 0 uses
  br label %.critedge90

._crit_edge197:                                   ; preds = %bb.ba
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i64 noundef %i.lw)
  %i.lg = load i32, ptr %i.kr, align 4, !tbaa !105
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %i.lg, ptr %i.lh, align 8, !tbaa !68
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 1, ptr %i.li, align 4, !tbaa !106
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph196, %bb.ba
  %indvars.iv234 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next235, %bb.ba ] ; 5 uses
  %.063194 = phi i64 [ 0, %.lr.ph196 ], [ %i.lw, %bb.ba ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv234
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7
  %.reass = add i32 %i.lk, %invariant.op
  %.fr = freeze i32 %.reass                       ; 2 uses
  %i.ll = urem i32 %.fr, %i.kw
  %i.lm = sub nuw i32 %.fr, %i.ll                 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv234
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !7
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv234
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !7
  %.reass199 = add i32 %i.lp, %invariant.op198
  %.fr83 = freeze i32 %.reass199                  ; 2 uses
  %i.lq = urem i32 %.fr83, %i.la
  %i.lr = sub nuw i32 %.fr83, %i.lq               ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv234
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !7
  %i.lt = zext i32 %i.lm to i64
  %i.lu = zext i32 %i.lr to i64
  %i.lv = mul nuw i64 %i.lu, %i.lt
  %i.lw = add i64 %i.lv, %.063194                 ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge197, label %bb.ba, !llvm.loop !88

bb.bb:                                            ; preds = %bb.av, %.split, %._crit_edge197, %bb.ay
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 0, ptr %i.lx, align 8, !tbaa !107
  %i.ly = call i32 @jpeg_start_decompress(ptr noundef nonnull %6) ; 0 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !50
  call void @_ZN8ultrahdr17JpegDecoderHelper6decodeEP22jpeg_decompress_structPh(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %6, ptr noundef %i.ma)
  %i.mb = load i32, ptr %0, align 4, !tbaa !47
  %.not84 = icmp eq i32 %i.mb, 0
  br i1 %.not84, label %bb.bc, label %.critedge90

bb.bc:                                            ; preds = %bb.bb
  %i.mc = call i32 @jpeg_finish_decompress(ptr noundef nonnull %6) ; 0 uses
  br label %.critedge90

bb.bd:                                            ; preds = %bb.a
  store i32 1, ptr %0, align 4, !tbaa !47
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.md, align 4, !tbaa !48
  %i.me = load ptr, ptr %6, align 8, !tbaa !89
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !69
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void %i.mg(ptr noundef nonnull %6, ptr noundef nonnull %i.mh)
  br label %.critedge90

.critedge90:                                      ; preds = %bb.bb, %.split, %bb.af, %bb.ah, %bb.aj, %bb.at, %._crit_edge242, %bb.ax, %bb.az, %bb.ap, %bb.an, %bb.al, %.critedge88, %bb.bc, %bb.bd
  call void @jpeg_destroy_decompress(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.b, i32 noundef 1) #28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN8ultrahdrL14output_messageEP18jpeg_common_struct(ptr noundef %0) #11 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %0, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !44
  %fputc = call i32 @fputc(i32 10, ptr %i.g)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #12

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @jpeg_save_markers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h)
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, %i.f
  br i1 %i.i, label %bb.d, label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i, label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit:    ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegDecoderHelper6decodeEP22jpeg_decompress_structPh(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.uhdr_error_info, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  switch i32 %i.e, label %bb.r [
    i32 1, label %bb.b
    i32 3, label %bb.b
    i32 12, label %bb.l
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.n = load <2 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.o = sitofp <2 x i32> %i.n to <2 x float>     ; 3 uses
  %i.p = load <2 x i32>, ptr %i.m, align 8, !tbaa !7
  %i.q = sitofp <2 x i32> %i.p to <2 x float>
  %i.r = fdiv contract <2 x float> %i.q, %i.o     ; 4 uses
  %i.s = load <2 x i32>, ptr %i.l, align 8, !tbaa !7
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = fdiv contract <2 x float> %i.t, %i.o
  %.fr = freeze <2 x float> %i.u
  %5 = fcmp une <2 x float> %.fr, splat (float 1.000000e+00)
  %6 = bitcast <2 x i1> %5 to i2
  %or.cond.i = icmp eq i2 %6, 0
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !7
  %i.x = sitofp <2 x i32> %i.w to <2 x float>
  %i.y = fdiv contract <2 x float> %i.x, %i.o
  %i.z = fcmp contract oeq <2 x float> %i.r, %i.y
  %7 = freeze <2 x i1> %i.z
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond35.i = icmp eq i2 %8, -1
  br i1 %or.cond35.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp contract oeq <2 x float> %i.r, splat (float 1.000000e+00) ; 3 uses
  %i.ab = bitcast <2 x i1> %i.aa to i2
  %i.ac = icmp eq i2 %i.ab, -1
  br i1 %i.ac, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = extractelement <2 x float> %i.r, i64 1
  %i.ae = fcmp contract oeq float %i.ad, 5.000000e-01 ; 3 uses
  %i.af = extractelement <2 x i1> %i.aa, i64 0
  %or.cond27.i = and i1 %i.af, %i.ae
  br i1 %or.cond27.i, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ah = fcmp contract oeq float %i.ag, 5.000000e-01 ; 2 uses
  %i.ai = extractelement <2 x i1> %i.aa, i64 1    ; 2 uses
  %or.cond8.i = and i1 %i.ah, %i.ai
  br i1 %or.cond8.i, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond28.i = and i1 %i.ah, %i.ae
  br i1 %or.cond28.i, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = fcmp contract oeq float %i.ag, 2.500000e-01 ; 2 uses
  %or.cond11.i = and i1 %i.aj, %i.ai
  br i1 %or.cond11.i, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond29.i = and i1 %i.aj, %i.ae
  br i1 %or.cond29.i, label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d, %bb.c
  br label %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread

_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.b, %bb.k
  %.1.i.ph.sink = phi i32 [ -1, %bb.k ], [ 6, %bb.e ], [ 8, %bb.f ], [ 7, %bb.g ], [ 1, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 2, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.1.i.ph.sink, ptr %i.ak, align 8, !tbaa !57
  tail call void @_ZN8ultrahdr17JpegDecoderHelper15decodeToCSYCbCrEP22jpeg_decompress_structPh(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 3, ptr %i.al, align 8, !tbaa !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !112
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  store ptr %3, ptr %i.b, align 8, !tbaa !59, !noalias !112
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !72, !noalias !112
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !73, !noalias !112
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %i.as = call i32 @jpeg_read_scanlines(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1), !noalias !112 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 1
  br i1 %.not.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  store i32 1, ptr %0, align 4, !tbaa !47, !alias.scope !112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !48, !alias.scope !112
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.au, i64 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %i.as, i32 noundef 1) #25 ; 0 uses
  br label %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !7, !noalias !112
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !59, !noalias !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !59, !noalias !112
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !72, !noalias !112
  %i.bc = load i32, ptr %i.an, align 4, !tbaa !73, !noalias !112
  %i.bd = icmp ult i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.m, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.n, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false), !alias.scope !112
  br label %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit

_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit: ; preds = %.thread.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !112
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 11, ptr %i.be, align 8, !tbaa !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !113
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !59, !noalias !113
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !72, !noalias !113
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !73, !noalias !113
  %i.bj = icmp ult i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.i11, label %._crit_edge.i10

.lr.ph.i11:                                       ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i11
  %i.bl = call i32 @jpeg_read_scanlines(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 1), !noalias !113 ; 2 uses
  %.not.i12 = icmp eq i32 %i.bl, 1
  br i1 %.not.i12, label %bb.q, label %.thread.i13

.thread.i13:                                      ; preds = %bb.p
  store i32 1, ptr %0, align 4, !tbaa !47, !alias.scope !113
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bm, align 4, !tbaa !48, !alias.scope !113
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bn, i64 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %i.bl, i32 noundef 1) #25 ; 0 uses
  br label %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit14

bb.q:                                             ; preds = %bb.p
  %i.bp = load i32, ptr %i.bk, align 8, !tbaa !7, !noalias !113
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !59, !noalias !113
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !59, !noalias !113
  %i.bu = load i32, ptr %i.bf, align 8, !tbaa !72, !noalias !113
  %i.bv = load i32, ptr %i.bg, align 4, !tbaa !73, !noalias !113
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.p, label %._crit_edge.i10, !llvm.loop !0

._crit_edge.i10:                                  ; preds = %bb.q, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false), !alias.scope !113
  br label %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit14

_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit14: ; preds = %.thread.i13, %._crit_edge.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !113
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 4, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.by, i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.e) #25 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(264) %4, i64 264, i1 false), !tbaa.struct !115
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit14, %_ZN8ultrahdr17JpegDecoderHelper13decodeToCSRGBEP22jpeg_decompress_structPh.exit, %_ZN8ultrahdrL23getOutputSamplingFormatEP22jpeg_decompress_struct.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegDecoderHelper15decodeToCSYCbCrEP22jpeg_decompress_structPh(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x [32 x ptr]], align 16        ; 5 uses
  %i.b = alloca [3 x [32 x ptr]], align 16        ; 5 uses
  %i.c = alloca [3 x ptr], align 16               ; 5 uses
  %i.d = alloca [3 x i64], align 16               ; 5 uses
  %i.e = alloca [3 x ptr], align 16               ; 4 uses
  %i.f = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph117, label %.preheader110

.lr.ph117:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  br label %bb.b

.preheader110:                                    ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit105, %bb.a
  %i.m = phi i32 [ %i.h, %bb.a ], [ %i.cj, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit105 ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !73
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph129, label %._crit_edge130

end_hunk_0
