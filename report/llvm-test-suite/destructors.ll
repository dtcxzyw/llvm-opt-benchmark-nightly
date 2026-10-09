Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
  %.040657687758810875901935959 = phi ptr [ %.040657687758810875901, %call_destructor.exit230 ], [ %.040657687758810875901935959.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.039658686759809876900936958 = phi ptr [ %.039658686759809876900, %call_destructor.exit230 ], [ %.039658686759809876900936958.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.038659685760808877899937957 = phi ptr [ %.038659685760808877899, %call_destructor.exit230 ], [ %.038659685760808877899937957.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.0660684761807878898938956 = phi ptr [ %.0660684761807878898, %call_destructor.exit230 ], [ %.0660684761807878898938956.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %i.i = phi i32 [ %i.h, %call_destructor.exit230 ], [ %.ph1345, %call_destructor.exit235.sink.split ] ; 2 uses
  %.not620661683762806879897939955 = phi i1 [ %.not620661683762806879897, %call_destructor.exit230 ], [ false, %call_destructor.exit235.sink.split ] ; 11 uses
  %tobool.i236 = icmp eq ptr %.047650694751817868908928966, null
  %brmerge.i238 = or i1 %tobool.i236, %.not620661683762806879897939955
  br i1 %brmerge.i238, label %call_destructor.exit240, label %if.then.i239

if.then.i239:                                     ; preds = %call_destructor.exit235
  call void @halide_free(ptr null, ptr nonnull %.047650694751817868908928966) #6
  br label %call_destructor.exit240

call_destructor.exit240:                          ; preds = %if.then.i239, %call_destructor.exit235
  %tobool.i241 = icmp eq ptr %.046651693752816869907929965, null
  %brmerge.i243 = or i1 %tobool.i241, %.not620661683762806879897939955
  br i1 %brmerge.i243, label %call_destructor.exit245, label %if.then.i244

if.then.i244:                                     ; preds = %call_destructor.exit240
  call void @halide_free(ptr null, ptr nonnull %.046651693752816869907929965) #6
  br label %call_destructor.exit245

call_destructor.exit245:                          ; preds = %if.then.i244, %call_destructor.exit240
  %tobool.i246 = icmp eq ptr %.045652692753815870906930964, null
  %brmerge.i248 = or i1 %tobool.i246, %.not620661683762806879897939955
  br i1 %brmerge.i248, label %call_destructor.exit250, label %if.then.i249

if.then.i249:                                     ; preds = %call_destructor.exit245
  call void @halide_free(ptr null, ptr nonnull %.045652692753815870906930964) #6
  br label %call_destructor.exit250

call_destructor.exit250:                          ; preds = %if.then.i249, %call_destructor.exit245
  %tobool.i251 = icmp eq ptr %.044653691754814871905931963, null
  %brmerge.i253 = or i1 %tobool.i251, %.not620661683762806879897939955
  br i1 %brmerge.i253, label %call_destructor.exit255, label %if.then.i254

if.then.i254:                                     ; preds = %call_destructor.exit250
  call void @halide_free(ptr null, ptr nonnull %.044653691754814871905931963) #6
  br label %call_destructor.exit255

call_destructor.exit255:                          ; preds = %if.then.i254, %call_destructor.exit250
  %tobool.i256 = icmp eq ptr %.043654690755813872904932962, null
  %brmerge.i258 = or i1 %tobool.i256, %.not620661683762806879897939955
  br i1 %brmerge.i258, label %call_destructor.exit260, label %if.then.i259

if.then.i259:                                     ; preds = %call_destructor.exit255
  call void @halide_free(ptr null, ptr nonnull %.043654690755813872904932962) #6
  br label %call_destructor.exit260

call_destructor.exit260:                          ; preds = %if.then.i259, %call_destructor.exit255
  %tobool.i261 = icmp eq ptr %.042655689756812873903933961, null
  %brmerge.i263 = or i1 %tobool.i261, %.not620661683762806879897939955
  br i1 %brmerge.i263, label %call_destructor.exit265, label %if.then.i264

if.then.i264:                                     ; preds = %call_destructor.exit260
  call void @halide_free(ptr null, ptr nonnull %.042655689756812873903933961) #6
  br label %call_destructor.exit265

call_destructor.exit265:                          ; preds = %if.then.i264, %call_destructor.exit260
  %tobool.i266 = icmp eq ptr %.041656688757811874902934960, null
  %brmerge.i268 = or i1 %tobool.i266, %.not620661683762806879897939955
  br i1 %brmerge.i268, label %call_destructor.exit270, label %if.then.i269

if.then.i269:                                     ; preds = %call_destructor.exit265
  call void @halide_free(ptr null, ptr nonnull %.041656688757811874902934960) #6
  br label %call_destructor.exit270

call_destructor.exit270:                          ; preds = %if.then.i269, %call_destructor.exit265
  %tobool.i271 = icmp eq ptr %.040657687758810875901935959, null
  %brmerge.i273 = or i1 %tobool.i271, %.not620661683762806879897939955
  br i1 %brmerge.i273, label %call_destructor.exit275, label %if.then.i274

if.then.i274:                                     ; preds = %call_destructor.exit270
  call void @halide_free(ptr null, ptr nonnull %.040657687758810875901935959) #6
  br label %call_destructor.exit275

call_destructor.exit275:                          ; preds = %if.then.i274, %call_destructor.exit270
  %tobool.i276 = icmp eq ptr %.039658686759809876900936958, null
  %brmerge.i278 = or i1 %tobool.i276, %.not620661683762806879897939955
  br i1 %brmerge.i278, label %call_destructor.exit280, label %if.then.i279

if.then.i279:                                     ; preds = %call_destructor.exit275
  call void @halide_free(ptr null, ptr nonnull %.039658686759809876900936958) #6
  br label %call_destructor.exit280

call_destructor.exit280:                          ; preds = %if.then.i279, %call_destructor.exit275
  %tobool.i281 = icmp eq ptr %.038659685760808877899937957, null
  %brmerge.i283 = or i1 %tobool.i281, %.not620661683762806879897939955
  br i1 %brmerge.i283, label %call_destructor.exit285, label %if.then.i284

if.then.i284:                                     ; preds = %call_destructor.exit280
  call void @halide_free(ptr null, ptr nonnull %.038659685760808877899937957) #6
  br label %call_destructor.exit285

call_destructor.exit285:                          ; preds = %if.then.i284, %call_destructor.exit280
  %tobool.i286 = icmp eq ptr %.0660684761807878898938956, null
  %brmerge.i288 = or i1 %tobool.i286, %.not620661683762806879897939955
  br i1 %brmerge.i288, label %call_destructor.exit290, label %if.then.i289

if.then.i289:                                     ; preds = %call_destructor.exit285
  call void @halide_free(ptr null, ptr nonnull %.0660684761807878898938956) #6
  br label %call_destructor.exit290

call_destructor.exit290:                          ; preds = %call_destructor.exit210, %call_destructor.exit205, %call_destructor.exit, %if.then.i289, %call_destructor.exit285
  %i.j = phi i32 [ %i.i, %call_destructor.exit285 ], [ %i.i, %if.then.i289 ], [ 0, %call_destructor.exit ], [ 0, %call_destructor.exit205 ], [ 0, %call_destructor.exit210 ]
  ret i32 %i.j

"assert failed10":                                ; preds = %"assert succeeded"
  %i.k = tail call i32 @halide_error_buffer_argument_is_null(ptr null, ptr nonnull @str.2) #3
  br label %call_destructor.exit210.thread823

"assert succeeded11":                             ; preds = %"assert succeeded"
  %i.l = icmp ne ptr %input.host, null
  %input.dev = load i64, ptr %input.buffer, align 8
  %i.m = icmp ne i64 %input.dev, 0
  %input.host_and_dev_are_null.not273 = or i1 %i.l, %i.m
  %buf_host12 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 8
  %local_laplacian.host = load ptr, ptr %buf_host12, align 8 ; 2 uses
  %local_laplacian.dev = load i64, ptr %local_laplacian.buffer, align 8
  %i.n = icmp ne i64 %local_laplacian.dev, 0
  %i.o = icmp ne ptr %local_laplacian.host, null
  %local_laplacian.host_and_dev_are_null.not276 = or i1 %i.o, %i.n ; 2 uses
  %buf_extent16 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 16 ; 2 uses
  %local_laplacian.extent.0 = load i32, ptr %buf_extent16, align 8 ; 6 uses
  %x7 = sext i32 %local_laplacian.extent.0 to i64 ; 2 uses
  %buf_extent17 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 20 ; 2 uses
  %local_laplacian.extent.1 = load i32, ptr %buf_extent17, align 4 ; 6 uses
  %i.p = sext i32 %local_laplacian.extent.1 to i64 ; 2 uses
  %buf_extent18 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 24
  %local_laplacian.extent.2 = load i32, ptr %buf_extent18, align 8 ; 3 uses
  %i.q = sext i32 %local_laplacian.extent.2 to i64 ; 2 uses
  %buf_stride20 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 32 ; 2 uses
  %local_laplacian.stride.0 = load i32, ptr %buf_stride20, align 8 ; 2 uses
  %buf_stride21 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 36 ; 2 uses
  %local_laplacian.stride.1 = load i32, ptr %buf_stride21, align 4 ; 2 uses
  %i.r = sext i32 %local_laplacian.stride.1 to i64
  %buf_stride22 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 40 ; 2 uses
  %local_laplacian.stride.2 = load i32, ptr %buf_stride22, align 8 ; 2 uses
  %i.s = sext i32 %local_laplacian.stride.2 to i64
  %buf_min24 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 48 ; 2 uses
  %a286 = load i32, ptr %buf_min24, align 8       ; 18 uses
  %buf_min25 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 52 ; 2 uses
  %a114 = load i32, ptr %buf_min25, align 4       ; 20 uses
  %buf_min26 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 56
  %a108 = load i32, ptr %buf_min26, align 8       ; 3 uses
  %buf_elem_size28 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 64 ; 2 uses
  %local_laplacian.elem_size = load i32, ptr %buf_elem_size28, align 8 ; 2 uses
  %i.t = add nsw i32 %a114, %local_laplacian.extent.1 ; 10 uses
  %i.u = add nsw i32 %i.t, 125
  %a0 = ashr i32 %i.u, 6                          ; 4 uses
  %i.v = add nsw i32 %i.t, 253
  %i.w = ashr i32 %i.v, 7                         ; 4 uses
  %i.x = shl nsw i32 %i.w, 1
  %b2 = add nsw i32 %i.x, 2
  %b750 = tail call i32 @llvm.smax.i32(i32 %a0, i32 %b2) ; 6 uses
  %i.y = add nsw i32 %a114, -126
  %a1 = ashr i32 %i.y, 6                          ; 8 uses
  %i.z = add nsw i32 %a114, -254
  %i.aa = ashr i32 %i.z, 7                        ; 7 uses
  %i.ab = shl nsw i32 %i.aa, 1                    ; 7 uses
  %b3 = add nsw i32 %i.ab, -1
  %b748 = tail call i32 @llvm.smin.i32(i32 %b3, i32 %a1) ; 11 uses
  %i.ac = add nsw i32 %a286, %local_laplacian.extent.0 ; 10 uses
  %i.ad = add nsw i32 %i.ac, 125
  %a2 = ashr i32 %i.ad, 6                         ; 3 uses
  %i.ae = add nsw i32 %i.ac, 253
  %i.af = ashr i32 %i.ae, 7                       ; 4 uses
  %i.ag = shl nsw i32 %i.af, 1
  %b4 = add nsw i32 %i.ag, 2
  %b753 = tail call i32 @llvm.smax.i32(i32 %a2, i32 %b4) ; 9 uses
  %i.ah = add nsw i32 %a286, -126
  %a3 = ashr i32 %i.ah, 6                         ; 8 uses
  %i.ai = add nsw i32 %a286, -254
  %i.aj = ashr i32 %i.ai, 7                       ; 7 uses
  %i.ak = shl nsw i32 %i.aj, 1                    ; 14 uses
  %b5 = add nsw i32 %i.ak, -1
  %b751 = tail call i32 @llvm.smin.i32(i32 %b5, i32 %a3) ; 16 uses
  %i.al = add nsw i32 %levels, -1
  %i.am = sitofp i32 %i.al to float               ; 5 uses
  %i.an = icmp slt i32 %levels, 1                 ; 2 uses
  %i.ao = select i1 %i.an, float 0.000000e+00, float %i.am ; 2 uses
  %a4 = fptosi float %i.ao to i32
  %b6 = add nsw i32 %levels, -2                   ; 5 uses
  %a742 = tail call i32 @llvm.smin.i32(i32 %b6, i32 %a4) ; 2 uses
  %i.ap = select i1 %i.an, float %i.am, float 0.000000e+00 ; 2 uses
  %a5 = fptosi float %i.ap to i32
  %a772 = tail call i32 @llvm.smin.i32(i32 %b6, i32 %a5) ; 9 uses
  %i.aq = add nsw i32 %i.t, 61                    ; 2 uses
  %a6 = ashr i32 %i.aq, 5                         ; 4 uses
  %i.ar = shl nsw i32 %b750, 1
  %b8 = add nsw i32 %i.ar, 2
  %b735 = tail call i32 @llvm.smax.i32(i32 %a6, i32 %b8) ; 6 uses
  %i.as = add nsw i32 %a114, -62                  ; 2 uses
  %a7 = ashr i32 %i.as, 5                         ; 5 uses
  %i.at = shl i32 %b748, 1                        ; 6 uses
  %b9 = add nsw i32 %i.at, -1
  %b733 = tail call i32 @llvm.smin.i32(i32 %b9, i32 %a7) ; 10 uses
  %i.au = add nsw i32 %i.ac, 61                   ; 2 uses
  %a8 = ashr i32 %i.au, 5                         ; 4 uses
  %i.av = shl i32 %b753, 1
  %b10 = add nsw i32 %i.av, 2
  %b739 = tail call i32 @llvm.smax.i32(i32 %a8, i32 %b10) ; 9 uses
  %i.aw = add nsw i32 %a286, -62                  ; 2 uses
  %a9 = ashr i32 %i.aw, 5                         ; 7 uses
  %i.ax = shl i32 %b751, 1                        ; 13 uses
  %b11 = add nsw i32 %i.ax, -1
  %b737 = tail call i32 @llvm.smin.i32(i32 %b11, i32 %a9) ; 15 uses
  %b14 = ashr i32 %i.as, 6                        ; 2 uses
  %i.ay = tail call i32 @llvm.smin.i32(i32 %b14, i32 %i.ab)
  %a11 = add nsw i32 %i.ay, -1
  %b720 = tail call i32 @llvm.smin.i32(i32 %a1, i32 %a11) ; 3 uses
  %b17 = ashr i32 %i.aw, 6                        ; 2 uses
  %i.az = tail call i32 @llvm.smin.i32(i32 %b17, i32 %i.ak)
  %a14 = add nsw i32 %i.az, -1
  %b724 = tail call i32 @llvm.smin.i32(i32 %a3, i32 %a14) ; 3 uses
  %i.ba = add nsw i32 %i.t, 29
  %a16 = ashr i32 %i.ba, 4
  %i.bb = shl nsw i32 %b735, 1
  %b18 = add nsw i32 %i.bb, 2                     ; 2 uses
  %b695 = tail call i32 @llvm.smax.i32(i32 %a16, i32 %b18) ; 9 uses
  %i.bc = add nsw i32 %a114, -30
  %a17 = ashr i32 %i.bc, 4                        ; 2 uses
  %i.bd = shl i32 %b733, 1                        ; 6 uses
  %b19 = add nsw i32 %i.bd, -1                    ; 2 uses
  %a691 = tail call i32 @llvm.smin.i32(i32 %b19, i32 %a17) ; 5 uses
  %i.be = add nsw i32 %i.ac, 29
  %a18 = ashr i32 %i.be, 4
  %i.bf = shl nsw i32 %b739, 1
  %b20 = add nsw i32 %i.bf, 2                     ; 2 uses
  %b709 = tail call i32 @llvm.smax.i32(i32 %a18, i32 %b20) ; 8 uses
  %i.bg = add nsw i32 %a286, -30
  %a19 = ashr i32 %i.bg, 4                        ; 2 uses
  %i.bh = shl i32 %b737, 1                        ; 13 uses
  %b21 = add nsw i32 %i.bh, -1                    ; 2 uses
  %a705 = tail call i32 @llvm.smin.i32(i32 %b21, i32 %a19) ; 5 uses
  %i.bi = shl nsw i32 %b720, 1
  %b23 = add nsw i32 %i.bi, -1
  %b658 = tail call i32 @llvm.smin.i32(i32 %b23, i32 %a7) ; 3 uses
  %i.bj = shl nsw i32 %b724, 1
  %b25 = add nsw i32 %i.bj, -1
  %b675 = tail call i32 @llvm.smin.i32(i32 %b25, i32 %a9) ; 3 uses
  %i.bk = add nsw i32 %i.t, 13
  %a24 = ashr i32 %i.bk, 3
  %i.bl = shl nsw i32 %b695, 1
  %b26 = add nsw i32 %i.bl, 2
  %b624 = tail call i32 @llvm.smax.i32(i32 %a24, i32 %b26) ; 9 uses
  %i.bm = add nsw i32 %a114, -14
  %a25 = ashr i32 %i.bm, 3                        ; 2 uses
  %i.bn = shl nsw i32 %a691, 1
  %b27 = add nsw i32 %i.bn, -1
  %a620 = tail call i32 @llvm.smin.i32(i32 %b27, i32 %a25) ; 5 uses
  %i.bo = add nsw i32 %i.ac, 13
  %a26 = ashr i32 %i.bo, 3
  %i.bp = shl nsw i32 %b709, 1
  %b28 = add nsw i32 %i.bp, 2
  %b641 = tail call i32 @llvm.smax.i32(i32 %a26, i32 %b28) ; 8 uses
  %i.bq = add nsw i32 %a286, -14
  %a27 = ashr i32 %i.bq, 3                        ; 2 uses
  %i.br = shl nsw i32 %a705, 1
  %b29 = add nsw i32 %i.br, -1
  %a637 = tail call i32 @llvm.smin.i32(i32 %b29, i32 %a27) ; 5 uses
  %i.bs = shl nsw i32 %b658, 1
  %b31 = add nsw i32 %i.bs, -1                    ; 2 uses
  %a574 = tail call i32 @llvm.smin.i32(i32 %b31, i32 %a17) ; 5 uses
  %i.bt = shl nsw i32 %b675, 1
  %b33 = add nsw i32 %i.bt, -1                    ; 2 uses
  %a595 = tail call i32 @llvm.smin.i32(i32 %b33, i32 %a19) ; 5 uses
  %i.bu = add nsw i32 %i.t, 5
  %a32 = ashr i32 %i.bu, 2
  %i.bv = shl nsw i32 %b624, 1
  %b34 = add nsw i32 %i.bv, 2
  %b539 = tail call i32 @llvm.smax.i32(i32 %a32, i32 %b34) ; 9 uses
  %i.bw = add nsw i32 %a114, -6
  %a33 = ashr i32 %i.bw, 2                        ; 2 uses
  %i.bx = shl nsw i32 %a620, 1
  %b35 = add nsw i32 %i.bx, -1
  %a535 = tail call i32 @llvm.smin.i32(i32 %b35, i32 %a33) ; 5 uses
  %i.by = add nsw i32 %i.ac, 5
  %a34 = ashr i32 %i.by, 2
  %i.bz = shl nsw i32 %b641, 1
  %b36 = add nsw i32 %i.bz, 2
  %b556 = tail call i32 @llvm.smax.i32(i32 %a34, i32 %b36) ; 8 uses
  %i.ca = add nsw i32 %a286, -6
  %a35 = ashr i32 %i.ca, 2                        ; 2 uses
  %i.cb = shl nsw i32 %a637, 1
  %b37 = add nsw i32 %i.cb, -1
  %a552 = tail call i32 @llvm.smin.i32(i32 %b37, i32 %a35) ; 5 uses
  %i.cc = shl nsw i32 %a574, 1
  %b39 = add nsw i32 %i.cc, -1
  %a485 = tail call i32 @llvm.smin.i32(i32 %b39, i32 %a25) ; 5 uses
  %i.cd = shl nsw i32 %a595, 1
  %b41 = add nsw i32 %i.cd, -1
  %a509 = tail call i32 @llvm.smin.i32(i32 %b41, i32 %a27) ; 5 uses
  %i.ce = add nsw i32 %i.t, 1
  %a40 = ashr i32 %i.ce, 1
  %i.cf = shl nsw i32 %b539, 1
  %b42 = add nsw i32 %i.cf, 2
  %b448 = tail call i32 @llvm.smax.i32(i32 %a40, i32 %b42) ; 9 uses
  %a41 = ashr i32 %a114, 1                        ; 2 uses
  %b43 = shl nsw i32 %a535, 1
  %f72.s0.v4.min.s = tail call i32 @llvm.smin.i32(i32 %b43, i32 %a41) ; 5 uses
  %i.cg = add nsw i32 %i.ac, 1
  %a42 = ashr i32 %i.cg, 1
  %i.ch = shl nsw i32 %b556, 1
  %b44 = add nsw i32 %i.ch, 2
  %b465 = tail call i32 @llvm.smax.i32(i32 %a42, i32 %b44) ; 8 uses
  %a43 = ashr i32 %a286, 1                        ; 2 uses
  %b45 = shl nsw i32 %a552, 1
  %f72.s0.v3.min.s = tail call i32 @llvm.smin.i32(i32 %b45, i32 %a43) ; 5 uses
  %i.ci = shl nsw i32 %a485, 1
  %b47 = add nsw i32 %i.ci, -1
  %a392 = tail call i32 @llvm.smin.i32(i32 %b47, i32 %a33) ; 5 uses
  %i.cj = shl nsw i32 %a509, 1
  %b49 = add nsw i32 %i.cj, -1
  %a416 = tail call i32 @llvm.smin.i32(i32 %b49, i32 %a35) ; 5 uses
  %b51 = shl nsw i32 %a392, 1
  %f4.s0.v4.min.s = tail call i32 @llvm.smin.i32(i32 %b51, i32 %a41) ; 5 uses
  %b53 = shl nsw i32 %a416, 1
  %f4.s0.v3.min.s = tail call i32 @llvm.smin.i32(i32 %b53, i32 %a43) ; 5 uses
  %a54 = add nsw i32 %i.t, -1                     ; 4 uses
  %i.ck = shl nsw i32 %b448, 1
  %b56 = add nsw i32 %i.ck, 2                     ; 2 uses
  %a53 = tail call i32 @llvm.smax.i32(i32 %a54, i32 %b56)
  %i.cl = icmp slt i32 %b56, %i.t
  %b149 = select i1 %i.cl, i32 %a54, i32 %a53     ; 4 uses
  %i.cm = shl nsw i32 %f4.s0.v4.min.s, 1
  %b59 = add nsw i32 %i.cm, -3
  %a56 = tail call i32 @llvm.smin.i32(i32 %b59, i32 %a114)
  %i.cn = shl nsw i32 %f72.s0.v4.min.s, 1
  %b58 = add nsw i32 %i.cn, -3
  %a55 = tail call i32 @llvm.smin.i32(i32 %b58, i32 %a56)
  %a145 = tail call i32 @llvm.smin.i32(i32 %a114, i32 %a55) ; 7 uses
  %a60 = add nsw i32 %i.ac, -1                    ; 4 uses
  %i.co = shl nsw i32 %b465, 1
  %b62 = add nsw i32 %i.co, 2                     ; 2 uses
  %a59 = tail call i32 @llvm.smax.i32(i32 %a60, i32 %b62)
  %i.cp = icmp slt i32 %b62, %i.ac
  %b185 = select i1 %i.cp, i32 %a60, i32 %a59     ; 4 uses
  %i.cq = shl nsw i32 %f4.s0.v3.min.s, 1
  %b65 = add nsw i32 %i.cq, -3
  %a62 = tail call i32 @llvm.smin.i32(i32 %b65, i32 %a286)
  %i.cr = shl nsw i32 %f72.s0.v3.min.s, 1
  %b64 = add nsw i32 %i.cr, -3
  %a61 = tail call i32 @llvm.smin.i32(i32 %b64, i32 %a62)
  %a181 = tail call i32 @llvm.smin.i32(i32 %a286, i32 %a61) ; 4 uses
  %i.cs = tail call i32 @llvm.smax.i32(i32 %a772, i32 0) ; 9 uses
  %i.ct = fmul nnan float %i.ao, 2.560000e+02
  %a66 = fptosi float %i.ct to i32
  %i.cu = shl nsw i32 %levels, 8
  %b68 = add nsw i32 %i.cu, -256                  ; 2 uses
  %a65 = tail call i32 @llvm.smin.i32(i32 %b68, i32 %a66)
  %i.cv = tail call i32 @llvm.smax.i32(i32 %a65, i32 0)
  %i.cw = tail call i32 @llvm.smax.i32(i32 %a742, i32 0) ; 3 uses
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = fmul nnan float %i.ap, 2.560000e+02
  %a69 = fptosi float %i.cy to i32
  %a68 = tail call i32 @llvm.smin.i32(i32 %b68, i32 %a69)
  %i.cz = tail call i32 @llvm.smax.i32(i32 %a68, i32 0)
  %b121 = sub nsw i32 %i.cz, %i.cx                ; 5 uses
  %b75 = add nsw i32 %b185, -7
  %a72 = tail call i32 @llvm.smin.i32(i32 %b75, i32 %a181) ; 2 uses
  %b76 = add nsw i32 %i.ac, -8                    ; 4 uses
  %b74 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %a286) ; 11 uses
  %a71 = tail call i32 @llvm.smin.i32(i32 %b74, i32 %a72)
  %i.da = add i32 %input.extent.0, -1
  %b73 = add i32 %i.da, %b82                      ; 3 uses
  %a70 = tail call i32 @llvm.smin.i32(i32 %b73, i32 %a71)
  %i.db = tail call i32 @llvm.smax.i32(i32 %a70, i32 %b82) ; 3 uses
  %i.dc = sub nsw i32 %b185, %a181
  %i.dd = or i32 %i.dc, 7
  %a78 = add i32 %a181, %i.dd
  %a77 = tail call i32 @llvm.smin.i32(i32 %b185, i32 %a78) ; 2 uses
  %i.de = add nsw i32 %local_laplacian.extent.0, -1
  %i.df = and i32 %i.de, -8
  %i.dg = add nsw i32 %a286, %i.df                ; 3 uses
  %a79 = add nsw i32 %i.dg, 7
  %b79 = tail call i32 @llvm.smin.i32(i32 %a60, i32 %a79) ; 12 uses
  %a76 = tail call i32 @llvm.smax.i32(i32 %a77, i32 %b79)
  %a75 = tail call i32 @llvm.smin.i32(i32 %b73, i32 %a76)
  %i.dh = tail call i32 @llvm.smax.i32(i32 %a75, i32 %b82) ; 3 uses
  %b90 = add nsw i32 %b149, -31                   ; 2 uses
  %a87 = tail call i32 @llvm.smin.i32(i32 %b90, i32 %a145) ; 2 uses
  %b91 = add nsw i32 %i.t, -64                    ; 3 uses
  %b89 = tail call i32 @llvm.smin.i32(i32 %b91, i32 %a114) ; 12 uses
  %a86 = tail call i32 @llvm.smin.i32(i32 %b89, i32 %a87)
  %i.di = add nsw i32 %b97, %input.extent.1       ; 3 uses
  %b88 = add nsw i32 %i.di, -1                    ; 5 uses
  %a85 = tail call i32 @llvm.smin.i32(i32 %b88, i32 %a86)
  %i.dj = tail call i32 @llvm.smax.i32(i32 %a85, i32 %b97) ; 3 uses
  %i.dk = sub nsw i32 %b149, %a145                ; 2 uses
  %i.dl = ashr i32 %i.dk, 5                       ; 3 uses
  %i.dm = or i32 %i.dk, 31
  %a93 = add i32 %a145, %i.dm
  %a92 = tail call i32 @llvm.smin.i32(i32 %b149, i32 %a93) ; 2 uses
  %i.dn = add nsw i32 %local_laplacian.extent.1, -1 ; 2 uses
  %i.do = ashr i32 %i.dn, 6
  %i.dp = or i32 %i.dn, 63
  %a94 = add i32 %i.dp, %a114
  %b94 = tail call i32 @llvm.smin.i32(i32 %a54, i32 %a94) ; 11 uses
  %a91 = tail call i32 @llvm.smax.i32(i32 %a92, i32 %b94)
end_hunk_0
begin_hunk_1_@__local_laplacian:entry
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %f7.v3.extent_realized.s, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %f7.v3.min_realized, ptr %i.aem, align 4
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %f7.v4.min_realized, ptr %i.aen, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %b739, ptr %i.aeo, align 4
  %i.aep = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %b675, ptr %i.aep, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %b735, ptr %i.aeq, align 4
  %i.aer = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %b658, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %f8.stride.2, ptr %i.aes, align 4
  %i.aet = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %f8.v3.extent_realized.s, ptr %i.aet, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %a667, ptr %i.aeu, align 4
  %i.aev = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.adf, ptr %i.aev, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.aaj, ptr %i.aew, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.aeh, ptr %i.aey, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr null, ptr %i.aez, align 8
  %i.afa = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f8.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %4) ; 2 uses
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %"consume f8", label %call_destructor.exit210.thread823, !prof !5

"consume f8":                                     ; preds = %"produce f8"
  %a686 = call i32 @llvm.smin.i32(i32 %b570, i32 %b19)
  %f75.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.abf, i32 %a686) ; 8 uses
  %i.afc = call i32 @llvm.smax.i32(i32 %i.abk, i32 %a577)
  %a696 = call i32 @llvm.smin.i32(i32 %b586, i32 %b21)
  %f75.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.abn, i32 %a696) ; 11 uses
  %i.afd = call i32 @llvm.smax.i32(i32 %i.abr, i32 %a599)
  %f75.v3.extent_realized.s = sub nsw i32 %i.afd, %f75.v3.min_realized ; 3 uses
  %reass.sub1001 = sub nsw i32 %i.afc, %f75.v4.min_realized
  %i.afe = add nsw i32 %reass.sub1001, 1
  %i.aff = zext i32 %i.afe to i64                 ; 3 uses
  %i.afg = add nsw i32 %f75.v3.extent_realized.s, 1 ; 8 uses
  %i.afh = zext i32 %i.afg to i64                 ; 2 uses
  %i.afi = shl nuw nsw i64 %i.afh, 2              ; 2 uses
  %i.afj = mul i64 %i.afi, %i.aff                 ; 3 uses
  %i.afk = icmp ult i64 %i.afj, 2147483648
  %i.afl = and i64 %i.afi, 4294967292
  %i.afm = mul nuw i64 %i.afl, %i.aff
  %i.afn = lshr i64 %i.afm, 32
  %i.afo = lshr i64 %i.afh, 30
  %i.afp = mul nuw nsw i64 %i.afo, %i.aff
  %i.afq = add nuw nsw i64 %i.afn, %i.afp
  %i.afr = icmp samesign ult i64 %i.afq, 4294967296
  %i.afs = and i1 %i.afk, %i.afr
  br i1 %i.afs, label %"assert succeeded158", label %"assert failed157", !prof !5

"assert failed157":                               ; preds = %"consume f8"
  %i.aft = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.19, i64 %i.afj, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded158":                            ; preds = %"consume f8"
  %i.afu = add nuw nsw i64 %i.afj, 4
  %i.afv = call ptr @halide_malloc(ptr null, i64 %i.afu) ; 29 uses
  %.not554 = icmp eq ptr %i.afv, null
  br i1 %.not554, label %"assert failed159", label %"produce f75", !prof !4

"assert failed159":                               ; preds = %"assert succeeded158"
  %i.afw = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f75":                                    ; preds = %"assert succeeded158"
  %i.afx = add nsw i32 %i.abi, 1
  store i32 %f74.v3.extent_realized.s, ptr %3, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %f74.v3.min_realized, ptr %i.afy, align 4
  %i.afz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %f74.v4.min_realized, ptr %i.afz, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %b709, ptr %i.aga, align 4
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %a705, ptr %i.agb, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %b695, ptr %i.agc, align 4
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %a691, ptr %i.agd, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %f75.v3.extent_realized.s, ptr %i.age, align 4
  %i.agf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %f75.v3.min_realized, ptr %i.agf, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %f75.v4.min_realized, ptr %i.agg, align 4
  %i.agh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.acl, ptr %i.agh, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.agi, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.afv, ptr %i.agj, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr null, ptr %i.agk, align 8
  %i.agl = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f75.s0.v4.v4, i32 0, i32 %i.afx, ptr nonnull %3) ; 2 uses
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %"consume f75", label %call_destructor.exit210.thread823, !prof !5

"consume f75":                                    ; preds = %"produce f75"
  %a718 = call i32 @llvm.smin.i32(i32 %b14, i32 %b748)
  %f9.v4.min_realized = call i32 @llvm.smin.i32(i32 %b720, i32 %a718) ; 6 uses
  %b723 = ashr i32 %i.aq, 6
  %f9.v4.extent_realized.s.s = call i32 @llvm.smax.i32(i32 %b750, i32 %b723)
  %a722 = call i32 @llvm.smin.i32(i32 %b17, i32 %b751)
  %f9.v3.min_realized = call i32 @llvm.smin.i32(i32 %b724, i32 %a722) ; 6 uses
  %b727 = ashr i32 %i.au, 6
  %f9.v3.extent_realized.s.s = call i32 @llvm.smax.i32(i32 %b753, i32 %b727) ; 4 uses
  %i.agn = sub nsw i32 %f9.v4.extent_realized.s.s, %f9.v4.min_realized
  %i.ago = add nsw i32 %i.agn, 1                  ; 2 uses
  %i.agp = sub nsw i32 %f9.v3.extent_realized.s.s, %f9.v3.min_realized
  %i.agq = add nsw i32 %i.agp, 1                  ; 4 uses
  %f9.stride.2 = mul nsw i32 %i.ago, %i.agq       ; 4 uses
  %i.agr = zext i32 %i.ago to i64                 ; 3 uses
  %i.ags = zext i32 %i.agq to i64                 ; 2 uses
  %i.agt = shl nuw nsw i64 %i.ags, 2              ; 2 uses
  %i.agu = and i64 %i.agt, 4294967292
  %i.agv = mul nuw i64 %i.agu, %i.agr
  %i.agw = lshr i64 %i.agv, 32
  %i.agx = lshr i64 %i.ags, 30
  %i.agy = mul nuw nsw i64 %i.agx, %i.agr
  %t3079 = add nuw nsw i64 %i.agw, %i.agy         ; 2 uses
  %t3080 = mul i64 %i.agt, %i.agr                 ; 2 uses
  %i.agz = mul i64 %t3080, %i.od                  ; 3 uses
  %i.aha = icmp ult i64 %i.agz, 2147483648
  %i.ahb = and i64 %t3080, 4294967292
  %i.ahc = mul nuw i64 %i.ahb, %i.od
  %i.ahd = lshr i64 %i.ahc, 32
  %i.ahe = mul i64 %t3079, %i.od
  %i.ahf = add i64 %i.ahe, %i.ahd
  %i.ahg = or i64 %i.ahf, %t3079
  %i.ahh = icmp ult i64 %i.ahg, 4294967296
  %i.ahi = and i1 %i.aha, %i.ahh
  br i1 %i.ahi, label %"assert succeeded164", label %"assert failed163", !prof !5

"assert failed163":                               ; preds = %"consume f75"
  %i.ahj = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.20, i64 %i.agz, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded164":                            ; preds = %"consume f75"
  %i.ahk = add nuw nsw i64 %i.agz, 4
  %i.ahl = call ptr @halide_malloc(ptr null, i64 %i.ahk) ; 21 uses
  %.not569 = icmp eq ptr %i.ahl, null
  br i1 %.not569, label %"assert failed165", label %"produce f9", !prof !4

"assert failed165":                               ; preds = %"assert succeeded164"
  %i.ahm = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f9":                                     ; preds = %"assert succeeded164"
  store i32 %a772, ptr %2, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %f8.stride.2, ptr %i.ahn, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %f8.v3.extent_realized.s, ptr %i.aho, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %a667, ptr %i.ahp, align 4
  %i.ahq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.adf, ptr %i.ahq, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %b753, ptr %i.ahr, align 4
  %i.ahs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %b724, ptr %i.ahs, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %b750, ptr %i.aht, align 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %b720, ptr %i.ahu, align 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %f9.stride.2, ptr %i.ahv, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %f9.v3.extent_realized.s.s, ptr %i.ahw, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %f9.v3.min_realized, ptr %i.ahx, align 4
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %f9.v4.min_realized, ptr %i.ahy, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aeh, ptr %i.ahz, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.aia, align 8
  %i.aib = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ahl, ptr %i.aib, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.aic, align 8
  %i.aid = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f9.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %2) ; 2 uses
  %i.aie = icmp eq i32 %i.aid, 0
  br i1 %i.aie, label %"consume f9", label %call_destructor.exit210.thread823, !prof !5

"consume f9":                                     ; preds = %"produce f9"
  %reass.sub1002 = sub nsw i32 %b735, %b733
  %i.aif = add nsw i32 %reass.sub1002, 1
  %i.aig = zext i32 %i.aif to i64                 ; 3 uses
  %reass.sub1003 = sub nsw i32 %b739, %b737       ; 4 uses
  %i.aih = add nsw i32 %reass.sub1003, 1          ; 3 uses
  %i.aii = zext i32 %i.aih to i64                 ; 2 uses
  %i.aij = shl nuw nsw i64 %i.aii, 2              ; 2 uses
  %i.aik = mul i64 %i.aij, %i.aig                 ; 3 uses
  %i.ail = icmp ult i64 %i.aik, 2147483648
  %i.aim = and i64 %i.aij, 4294967292
  %i.ain = mul nuw i64 %i.aim, %i.aig
  %i.aio = lshr i64 %i.ain, 32
  %i.aip = lshr i64 %i.aii, 30
  %i.aiq = mul nuw nsw i64 %i.aip, %i.aig
  %i.air = add nuw nsw i64 %i.aio, %i.aiq
  %i.ais = icmp samesign ult i64 %i.air, 4294967296
  %i.ait = and i1 %i.ail, %i.ais
  br i1 %i.ait, label %"assert succeeded170", label %"assert failed169", !prof !5

"assert failed169":                               ; preds = %"consume f9"
  %i.aiu = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.21, i64 %i.aik, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded170":                            ; preds = %"consume f9"
  %i.aiv = add nuw nsw i64 %i.aik, 4
  %i.aiw = call ptr @halide_malloc(ptr null, i64 %i.aiv) ; 22 uses
  %.not576 = icmp eq ptr %i.aiw, null
  br i1 %.not576, label %"assert failed171", label %"produce f76", !prof !4

"assert failed171":                               ; preds = %"assert succeeded170"
  %i.aix = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f76":                                    ; preds = %"assert succeeded170"
  %.not967 = icmp sgt i32 %b733, %b735
  br i1 %.not967, label %"consume f76", label %"for f76.s0.v4.preheader", !prof !4

"for f76.s0.v4.preheader":                        ; preds = %"produce f76"
  %i.aiy = add nsw i32 %b739, 1
  %i.aiz = sub nsw i32 %i.aiy, %b737              ; 3 uses
  %i.aja = sext i32 %b739 to i64
  %i.ajb = sext i32 %b737 to i64
  %reass.sub1004 = sub nsw i64 %i.aja, %i.ajb
  %i.ajc = shl nsw i64 %reass.sub1004, 2
  %i.ajd = shl nsw i32 %i.afg, 1                  ; 4 uses
  %.not968 = icmp sgt i32 %b737, %b739
  br i1 %.not968, label %"consume f76", label %"for f76.s0.v4.preheader1022", !prof !4

"for f76.s0.v4.preheader1022":                    ; preds = %"for f76.s0.v4.preheader"
  %i.aje = xor i32 %f75.v4.min_realized, -1
  %i.ajf = add i32 %i.bd, %i.aje
  %i.ajg = mul i32 %i.afg, %i.ajf                 ; 2 uses
  %i.ajh = sub i32 %i.ajg, %f75.v3.min_realized
  %i.aji = sub i32 %i.bd, %f75.v4.min_realized
  %i.ajj = mul i32 %i.afg, %i.aji                 ; 2 uses
  %i.ajk = sub i32 %i.ajj, %f75.v3.min_realized
  %i.ajl = or disjoint i32 %i.bd, 1
  %i.ajm = sub nsw i32 %i.ajl, %f75.v4.min_realized
  %i.ajn = mul i32 %i.afg, %i.ajm
  %i.ajo = sub i32 %i.ajn, %f75.v3.min_realized
  %i.ajp = add nsw i32 %i.bd, 2
  %i.ajq = sub i32 %i.ajp, %f75.v4.min_realized
  %i.ajr = mul i32 %i.afg, %i.ajq                 ; 2 uses
  %i.ajs = sub i32 %i.ajr, %f75.v3.min_realized
  %i.ajt = add i32 %i.ajr, %i.bh
  %i.aju = sub i32 %i.ajt, %f75.v3.min_realized
  %i.ajv = shl i32 %i.afg, 1
  %i.ajw = or disjoint i32 %i.bd, 1
  %i.ajx = sub i32 %i.ajw, %f75.v4.min_realized
  %i.ajy = mul i32 %i.afg, %i.ajx
  %i.ajz = add i32 %i.ajy, %i.bh
  %i.aka = sub i32 %i.ajz, %f75.v3.min_realized
  %i.akb = add i32 %i.ajj, %i.bh
  %i.akc = sub i32 %i.akb, %f75.v3.min_realized
  %i.akd = add i32 %i.ajg, %i.bh
  %i.ake = sub i32 %i.akd, %f75.v3.min_realized
  %i.akf = zext i32 %reass.sub1003 to i64
  %i.akg = add nuw nsw i64 %i.akf, 1              ; 2 uses
  %min.iters.check1352 = icmp ult i32 %reass.sub1003, 3
  %mul.result = shl i32 %reass.sub1003, 1         ; 4 uses
  %n.vec1354 = and i64 %i.akg, 4294967292         ; 4 uses
  %i.akh = trunc nuw i64 %n.vec1354 to i32        ; 2 uses
  %i.aki = shl i32 %i.akh, 1                      ; 4 uses
  %i.akj = shl nuw nsw i64 %n.vec1354, 2
  %i.akk = sub i32 %i.aiz, %i.akh
  %cmp.n1381 = icmp eq i64 %i.akg, %n.vec1354
  br label %"for f76.s0.v4"

"for f76.s0.v4":                                  ; preds = %"for f76.s0.v4.preheader1022", %"end for f76.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f76.s0.v4.preheader1022" ], [ %indvar.next, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv474 = phi i32 [ %i.ajh, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next475, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv470 = phi i32 [ %i.ajk, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next471, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv466 = phi i32 [ %i.ajo, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next467, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv462 = phi i32 [ %i.ajs, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next463, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv456 = phi ptr [ %i.aiw, %"for f76.s0.v4.preheader1022" ], [ %scevgep458, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %f76.s0.v4 = phi i32 [ %b733, %"for f76.s0.v4.preheader1022" ], [ %i.aoz, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1352, label %"for f76.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f76.s0.v4"
  %i.akl = mul i32 %i.ajv, %indvar                ; 4 uses
  %i.akm = add i32 %i.ake, %i.akl                 ; 2 uses
  %i.akn = add i32 %i.akc, %i.akl                 ; 2 uses
  %i.ako = add i32 %i.aka, %i.akl                 ; 2 uses
  %i.akp = add i32 %i.aju, %i.akl                 ; 2 uses
  %i.akq = add i32 %i.akp, %mul.result
  %i.akr = icmp slt i32 %i.akq, %i.akp
  %i.aks = add i32 %i.ako, %mul.result
  %i.akt = icmp slt i32 %i.aks, %i.ako
  %i.aku = add i32 %i.akn, %mul.result
  %i.akv = icmp slt i32 %i.aku, %i.akn
  %i.akw = add i32 %i.akm, %mul.result
  %i.akx = icmp slt i32 %i.akw, %i.akm
  %i.aky = or i1 %i.akt, %i.akr
  %i.akz = or i1 %i.aky, %i.akv
  %i.ala = or i1 %i.akx, %i.akz
  br i1 %i.ala, label %"for f76.s0.v3.preheader", label %vector.ph1353

vector.ph1353:                                    ; preds = %vector.scevcheck
  %i.alb = add i32 %lsr.iv474, %i.aki
  %i.alc = add i32 %lsr.iv470, %i.aki
  %i.ald = add i32 %lsr.iv466, %i.aki
  %i.ale = add i32 %lsr.iv462, %i.aki
  %i.alf = getelementptr i8, ptr %lsr.iv456, i64 %i.akj
  %invariant.op = add i32 %lsr.iv474, %i.bh
  %invariant.op1483 = add i32 %lsr.iv470, %i.bh
  %invariant.op1485 = add i32 %lsr.iv466, %i.bh
  %invariant.op1487 = add i32 %lsr.iv462, %i.bh
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1379, %vector.body1355 ] ; 3 uses
  %i.alg = trunc i64 %index1356 to i32
  %i.alh = shl i32 %i.alg, 1                      ; 4 uses
  %i.ali = shl i64 %index1356, 2
  %next.gep = getelementptr i8, ptr %lsr.iv456, i64 %i.ali
  %.reass = add i32 %i.alh, %invariant.op
  %.reass1484 = add i32 %i.alh, %invariant.op1483
  %.reass1486 = add i32 %i.alh, %invariant.op1485
  %.reass1488 = add i32 %i.alh, %invariant.op1487
  %i.alj = sext i32 %.reass1488 to i64
  %i.alk = getelementptr [4 x i8], ptr %i.afv, i64 %i.alj ; 2 uses
  %i.all = getelementptr i8, ptr %i.alk, i64 4
  %wide.vec = load <8 x float>, ptr %i.all, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1357 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alm = getelementptr i8, ptr %i.alk, i64 -4
  %wide.vec1358 = load <8 x float>, ptr %i.alm, align 4, !tbaa !12 ; 2 uses
  %strided.vec1359 = shufflevector <8 x float> %wide.vec1358, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1360 = shufflevector <8 x float> %wide.vec1358, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aln = fadd <4 x float> %strided.vec, %strided.vec1360
  %i.alo = fmul <4 x float> %i.aln, splat (float 3.000000e+00)
  %i.alp = fadd <4 x float> %strided.vec1359, %i.alo
  %i.alq = fadd <4 x float> %strided.vec1357, %i.alp
  %i.alr = fmul <4 x float> %i.alq, splat (float 1.250000e-01)
  %i.als = sext i32 %.reass1486 to i64
  %i.alt = getelementptr [4 x i8], ptr %i.afv, i64 %i.als ; 2 uses
  %i.alu = getelementptr i8, ptr %i.alt, i64 4
  %wide.vec1361 = load <8 x float>, ptr %i.alu, align 4, !tbaa !12 ; 2 uses
  %strided.vec1362 = shufflevector <8 x float> %wide.vec1361, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1363 = shufflevector <8 x float> %wide.vec1361, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alv = getelementptr i8, ptr %i.alt, i64 -4
  %wide.vec1364 = load <8 x float>, ptr %i.alv, align 4, !tbaa !12 ; 2 uses
  %strided.vec1365 = shufflevector <8 x float> %wide.vec1364, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1366 = shufflevector <8 x float> %wide.vec1364, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alw = fadd <4 x float> %strided.vec1362, %strided.vec1366
  %i.alx = fmul <4 x float> %i.alw, splat (float 3.000000e+00)
  %i.aly = fadd <4 x float> %strided.vec1365, %i.alx
  %i.alz = fadd <4 x float> %strided.vec1363, %i.aly
  %i.ama = sext i32 %.reass1484 to i64
  %i.amb = getelementptr [4 x i8], ptr %i.afv, i64 %i.ama ; 2 uses
  %i.amc = getelementptr i8, ptr %i.amb, i64 4
  %wide.vec1367 = load <8 x float>, ptr %i.amc, align 4, !tbaa !12 ; 2 uses
  %strided.vec1368 = shufflevector <8 x float> %wide.vec1367, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1369 = shufflevector <8 x float> %wide.vec1367, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amd = getelementptr i8, ptr %i.amb, i64 -4
  %wide.vec1370 = load <8 x float>, ptr %i.amd, align 4, !tbaa !12 ; 2 uses
  %strided.vec1371 = shufflevector <8 x float> %wide.vec1370, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1372 = shufflevector <8 x float> %wide.vec1370, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ame = fadd <4 x float> %strided.vec1368, %strided.vec1372
  %i.amf = fmul <4 x float> %i.ame, splat (float 3.000000e+00)
  %i.amg = fadd <4 x float> %strided.vec1371, %i.amf
  %i.amh = fadd <4 x float> %strided.vec1369, %i.amg
  %i.ami = fadd <4 x float> %i.alz, %i.amh
  %i.amj = fmul <4 x float> %i.ami, splat (float 3.750000e-01)
  %i.amk = sext i32 %.reass to i64
  %i.aml = getelementptr [4 x i8], ptr %i.afv, i64 %i.amk ; 2 uses
  %i.amm = getelementptr i8, ptr %i.aml, i64 4
  %wide.vec1373 = load <8 x float>, ptr %i.amm, align 4, !tbaa !12 ; 2 uses
  %strided.vec1374 = shufflevector <8 x float> %wide.vec1373, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1375 = shufflevector <8 x float> %wide.vec1373, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amn = getelementptr i8, ptr %i.aml, i64 -4
  %wide.vec1376 = load <8 x float>, ptr %i.amn, align 4, !tbaa !12 ; 2 uses
  %strided.vec1377 = shufflevector <8 x float> %wide.vec1376, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1378 = shufflevector <8 x float> %wide.vec1376, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amo = fadd <4 x float> %strided.vec1374, %strided.vec1378
  %i.amp = fmul <4 x float> %i.amo, splat (float 3.000000e+00)
  %i.amq = fadd <4 x float> %strided.vec1377, %i.amp
  %i.amr = fadd <4 x float> %strided.vec1375, %i.amq
  %i.ams = fmul <4 x float> %i.amr, splat (float 1.250000e-01)
  %i.amt = fadd <4 x float> %i.amj, %i.ams
  %i.amu = fadd <4 x float> %i.alr, %i.amt
  %i.amv = fmul <4 x float> %i.amu, splat (float 1.250000e-01)
  store <4 x float> %i.amv, ptr %next.gep, align 4, !tbaa !48
  %index.next1379 = add nuw i64 %index1356, 4     ; 2 uses
  %i.amw = icmp eq i64 %index.next1379, %n.vec1354
end_hunk_1
begin_hunk_2_@__local_laplacian:entry
  %lsr.iv464 = phi i32 [ %lsr.iv.next465, %"for f76.s0.v3" ], [ %lsr.iv464.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv459 = phi ptr [ %scevgep460, %"for f76.s0.v3" ], [ %lsr.iv459.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv453 = phi i32 [ %lsr.iv.next454, %"for f76.s0.v3" ], [ %lsr.iv453.ph, %"for f76.s0.v3.preheader" ]
  %i.amx = add i32 %lsr.iv476, %i.bh
  %i.amy = add i32 %lsr.iv472, %i.bh
  %i.amz = add i32 %lsr.iv468, %i.bh
  %i.ana = add i32 %lsr.iv464, %i.bh
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr [4 x i8], ptr %i.afv, i64 %i.anb ; 2 uses
  %i.and = getelementptr i8, ptr %i.anc, i64 4
  %i.ane = getelementptr i8, ptr %i.anc, i64 -4
  %i.anf = sext i32 %i.amz to i64
  %i.ang = getelementptr [4 x i8], ptr %i.afv, i64 %i.anf ; 3 uses
  %i.anh = getelementptr i8, ptr %i.ang, i64 8
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !12
  %i.anj = load <2 x float>, ptr %i.ang, align 4, !tbaa !12
  %i.ank = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.anj)
  %i.anl = fmul float %i.ank, 3.000000e+00
  %i.anm = getelementptr i8, ptr %i.ang, i64 -4
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !12
  %i.ano = fadd float %i.ann, %i.anl
  %i.anp = fadd float %i.ani, %i.ano
  %i.anq = sext i32 %i.amy to i64
  %i.anr = getelementptr [4 x i8], ptr %i.afv, i64 %i.anq ; 3 uses
  %i.ans = getelementptr i8, ptr %i.anr, i64 8
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !12
  %i.anu = load <2 x float>, ptr %i.anr, align 4, !tbaa !12
  %i.anv = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.anu)
  %i.anw = fmul float %i.anv, 3.000000e+00
  %i.anx = getelementptr i8, ptr %i.anr, i64 -4
  %i.any = load float, ptr %i.anx, align 4, !tbaa !12
  %i.anz = fadd float %i.any, %i.anw
  %i.aoa = fadd float %i.ant, %i.anz
  %i.aob = fadd float %i.anp, %i.aoa
  %i.aoc = fmul float %i.aob, 3.750000e-01
  %i.aod = sext i32 %i.amx to i64
  %i.aoe = getelementptr [4 x i8], ptr %i.afv, i64 %i.aod ; 2 uses
  %i.aof = getelementptr i8, ptr %i.aoe, i64 4
  %i.aog = getelementptr i8, ptr %i.aoe, i64 -4
  %i.aoh = load <2 x float>, ptr %i.and, align 4, !tbaa !12 ; 2 uses
  %i.aoi = load <2 x float>, ptr %i.ane, align 4, !tbaa !12 ; 2 uses
  %i.aoj = load <2 x float>, ptr %i.aof, align 4, !tbaa !12 ; 2 uses
  %i.aok = load <2 x float>, ptr %i.aog, align 4, !tbaa !12 ; 2 uses
  %i.aol = shufflevector <2 x float> %i.aoh, <2 x float> %i.aoj, <2 x i32> <i32 0, i32 2>
  %i.aom = shufflevector <2 x float> %i.aoi, <2 x float> %i.aok, <2 x i32> <i32 1, i32 3>
  %i.aon = fadd <2 x float> %i.aol, %i.aom
  %i.aoo = fmul <2 x float> %i.aon, splat (float 3.000000e+00)
  %i.aop = shufflevector <2 x float> %i.aoi, <2 x float> %i.aok, <2 x i32> <i32 0, i32 2>
  %i.aoq = fadd <2 x float> %i.aop, %i.aoo
  %i.aor = shufflevector <2 x float> %i.aoh, <2 x float> %i.aoj, <2 x i32> <i32 1, i32 3>
  %i.aos = fadd <2 x float> %i.aor, %i.aoq
  %i.aot = fmul <2 x float> %i.aos, splat (float 1.250000e-01) ; 2 uses
  %i.aou = extractelement <2 x float> %i.aot, i64 1
  %i.aov = fadd float %i.aoc, %i.aou
  %i.aow = extractelement <2 x float> %i.aot, i64 0
  %i.aox = fadd float %i.aow, %i.aov
  %i.aoy = fmul float %i.aox, 1.250000e-01
  store float %i.aoy, ptr %lsr.iv459, align 4, !tbaa !48
  %lsr.iv.next454 = add i32 %lsr.iv453, -1        ; 2 uses
  %scevgep460 = getelementptr i8, ptr %lsr.iv459, i64 4
  %lsr.iv.next465 = add i32 %lsr.iv464, 2
  %lsr.iv.next469 = add i32 %lsr.iv468, 2
  %lsr.iv.next473 = add i32 %lsr.iv472, 2
  %lsr.iv.next477 = add i32 %lsr.iv476, 2
  %.not577 = icmp eq i32 %lsr.iv.next454, 0
  br i1 %.not577, label %"end for f76.s0.v3.loopexit", label %"for f76.s0.v3", !llvm.loop !42

"end for f76.s0.v3.loopexit":                     ; preds = %"for f76.s0.v3", %middle.block1380
  %i.aoz = add nsw i32 %f76.s0.v4, 1
  %i.apa = getelementptr i8, ptr %lsr.iv456, i64 %i.ajc
  %scevgep458 = getelementptr i8, ptr %i.apa, i64 4
  %lsr.iv.next463 = add i32 %lsr.iv462, %i.ajd
  %lsr.iv.next467 = add i32 %lsr.iv466, %i.ajd
  %lsr.iv.next471 = add i32 %lsr.iv470, %i.ajd
  %lsr.iv.next475 = add i32 %lsr.iv474, %i.ajd
  %.not578 = icmp eq i32 %f76.s0.v4, %b735
  %indvar.next = add i32 %indvar, 1
  br i1 %.not578, label %"consume f76", label %"for f76.s0.v4"

"consume f76":                                    ; preds = %"end for f76.s0.v3.loopexit", %"for f76.s0.v4.preheader", %"produce f76"
  %f10.v4.extent_realized.s = sub nsw i32 %i.w, %i.aa ; 2 uses
  %f10.v3.extent_realized.s = sub nsw i32 %i.af, %i.aj ; 5 uses
  %i.apb = add nsw i32 %f10.v4.extent_realized.s, 1 ; 2 uses
  %i.apc = add nsw i32 %f10.v3.extent_realized.s, 1 ; 8 uses
  %f10.stride.2 = mul nsw i32 %i.apb, %i.apc      ; 3 uses
  %i.apd = zext i32 %i.apb to i64                 ; 3 uses
  %i.ape = zext i32 %i.apc to i64                 ; 2 uses
  %i.apf = shl nuw nsw i64 %i.ape, 2              ; 2 uses
  %i.apg = and i64 %i.apf, 4294967292
  %i.aph = mul nuw i64 %i.apg, %i.apd
  %i.api = lshr i64 %i.aph, 32
  %i.apj = lshr i64 %i.ape, 30
  %i.apk = mul nuw nsw i64 %i.apj, %i.apd
  %t3083 = add nuw nsw i64 %i.api, %i.apk         ; 2 uses
  %t3084 = mul i64 %i.apf, %i.apd                 ; 5 uses
  %i.apl = zext i32 %i.aej to i64                 ; 3 uses
  %i.apm = mul i64 %t3084, %i.apl                 ; 3 uses
  %i.apn = icmp ult i64 %i.apm, 2147483648
  %i.apo = and i64 %t3084, 4294967292
  %i.app = mul nuw i64 %i.apo, %i.apl
  %i.apq = lshr i64 %i.app, 32
  %i.apr = mul i64 %t3083, %i.apl
  %i.aps = add i64 %i.apr, %i.apq
  %i.apt = or i64 %i.aps, %t3083
  %i.apu = icmp ult i64 %i.apt, 4294967296
  %i.apv = and i1 %i.apn, %i.apu
  br i1 %i.apv, label %"assert succeeded174", label %"assert failed173", !prof !5

"assert failed173":                               ; preds = %"consume f76"
  %i.apw = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.22, i64 %i.apm, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded174":                            ; preds = %"consume f76"
  %i.apx = add nuw nsw i64 %i.apm, 4
  %i.apy = call ptr @halide_malloc(ptr null, i64 %i.apx) ; 16 uses
  %.not579 = icmp eq ptr %i.apy, null
  br i1 %.not579, label %"assert failed175", label %"produce f10", !prof !4

"assert failed175":                               ; preds = %"assert succeeded174"
  %i.apz = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f10":                                    ; preds = %"assert succeeded174"
  store i32 %a772, ptr %1, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %f10.stride.2, ptr %i.aqa, align 4
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %f10.v3.extent_realized.s, ptr %i.aqb, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %f10.v4.extent_realized.s, ptr %i.aqc, align 4
  %i.aqd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %f9.stride.2, ptr %i.aqd, align 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %f9.v3.extent_realized.s.s, ptr %i.aqe, align 4
  %i.aqf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %f9.v3.min_realized, ptr %i.aqf, align 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %f9.v4.min_realized, ptr %i.aqg, align 4
  %i.aqh = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %a286, ptr %i.aqh, align 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %a114, ptr %i.aqi, align 4
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.apy, ptr %i.aqj, align 8
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.aqk, align 8
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ahl, ptr %i.aql, align 8
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.aqm, align 8
  %i.aqn = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f10.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %1) ; 2 uses
  %i.aqo = icmp eq i32 %i.aqn, 0
  br i1 %i.aqo, label %"consume f10", label %call_destructor.exit210.thread823, !prof !5

"consume f10":                                    ; preds = %"produce f10"
  %reass.sub1006 = sub nsw i32 %b750, %b748
  %i.aqp = add nsw i32 %reass.sub1006, 1
  %i.aqq = zext i32 %i.aqp to i64                 ; 3 uses
  %reass.sub1007 = sub nsw i32 %b753, %b751       ; 4 uses
  %i.aqr = add nsw i32 %reass.sub1007, 1          ; 3 uses
  %i.aqs = zext i32 %i.aqr to i64                 ; 2 uses
  %i.aqt = shl nuw nsw i64 %i.aqs, 2              ; 2 uses
  %i.aqu = mul i64 %i.aqt, %i.aqq                 ; 3 uses
  %i.aqv = icmp ult i64 %i.aqu, 2147483648
  %i.aqw = and i64 %i.aqt, 4294967292
  %i.aqx = mul nuw i64 %i.aqw, %i.aqq
  %i.aqy = lshr i64 %i.aqx, 32
  %i.aqz = lshr i64 %i.aqs, 30
  %i.ara = mul nuw nsw i64 %i.aqz, %i.aqq
  %i.arb = add nuw nsw i64 %i.aqy, %i.ara
  %i.arc = icmp samesign ult i64 %i.arb, 4294967296
  %i.ard = and i1 %i.aqv, %i.arc
  br i1 %i.ard, label %"assert succeeded180", label %"assert failed179", !prof !5

"assert failed179":                               ; preds = %"consume f10"
  %i.are = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.23, i64 %i.aqu, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded180":                            ; preds = %"consume f10"
  %i.arf = add nuw nsw i64 %i.aqu, 4
  %i.arg = call ptr @halide_malloc(ptr null, i64 %i.arf) ; 16 uses
  %.not580 = icmp eq ptr %i.arg, null
  br i1 %.not580, label %"assert failed181", label %"produce f77", !prof !4

"assert failed181":                               ; preds = %"assert succeeded180"
  %i.arh = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f77":                                    ; preds = %"assert succeeded180"
  %.not1083 = icmp sgt i32 %b748, %b750
  br i1 %.not1083, label %"consume f77", label %"for f77.s0.v4.preheader", !prof !4

"for f77.s0.v4.preheader":                        ; preds = %"produce f77"
  %i.ari = add nsw i32 %b753, 1
  %i.arj = sub nsw i32 %i.ari, %b751              ; 3 uses
  %i.ark = sext i32 %b753 to i64
  %i.arl = sext i32 %b751 to i64
  %reass.sub1008 = sub nsw i64 %i.ark, %i.arl
  %i.arm = shl nsw i64 %reass.sub1008, 2
  %i.arn = add nsw i32 %b739, 1
  %i.aro = sub i32 %i.arn, %b737                  ; 5 uses
  %i.arp = shl nsw i32 %i.aro, 1                  ; 4 uses
  %.not1084 = icmp sgt i32 %b751, %b753
  br i1 %.not1084, label %"consume f77", label %"for f77.s0.v4.preheader1021", !prof !4

"for f77.s0.v4.preheader1021":                    ; preds = %"for f77.s0.v4.preheader"
  %i.arq = xor i32 %b733, -1
  %i.arr = add i32 %i.at, %i.arq
  %i.ars = mul i32 %i.aro, %i.arr                 ; 2 uses
  %i.art = sub i32 %i.ars, %b737
  %i.aru = sub i32 %i.at, %b733
  %i.arv = mul i32 %i.aro, %i.aru                 ; 2 uses
  %i.arw = sub i32 %i.arv, %b737
  %i.arx = or disjoint i32 %i.at, 1
  %i.ary = sub nsw i32 %i.arx, %b733
  %i.arz = mul i32 %i.aro, %i.ary
  %i.asa = sub i32 %i.arz, %b737
  %i.asb = add nsw i32 %i.at, 2
  %i.asc = sub i32 %i.asb, %b733
  %i.asd = mul i32 %i.aro, %i.asc                 ; 2 uses
  %i.ase = sub i32 %i.asd, %b737
  %i.asf = add i32 %i.asd, %i.ax
  %i.asg = sub i32 %i.asf, %b737
  %i.ash = shl i32 %i.aih, 1
  %i.asi = or disjoint i32 %i.at, 1
  %i.asj = sub i32 %i.asi, %b733
  %i.ask = mul i32 %i.aih, %i.asj
  %i.asl = add i32 %i.ask, %i.ax
  %i.asm = sub i32 %i.asl, %b737
  %i.asn = add i32 %i.arv, %i.ax
  %i.aso = sub i32 %i.asn, %b737
  %i.asp = add i32 %i.ars, %i.ax
  %i.asq = sub i32 %i.asp, %b737
  %i.asr = zext i32 %reass.sub1007 to i64
  %i.ass = add nuw nsw i64 %i.asr, 1              ; 2 uses
  %min.iters.check1395 = icmp ult i32 %reass.sub1007, 3
  %mul.result1392 = shl i32 %reass.sub1007, 1     ; 4 uses
  %n.vec1397 = and i64 %i.ass, 4294967292         ; 4 uses
  %i.ast = trunc nuw i64 %n.vec1397 to i32        ; 2 uses
  %i.asu = shl i32 %i.ast, 1                      ; 4 uses
  %i.asv = shl nuw nsw i64 %n.vec1397, 2
  %i.asw = sub i32 %i.arj, %i.ast
  %cmp.n1427 = icmp eq i64 %i.ass, %n.vec1397
  br label %"for f77.s0.v4"

"for f77.s0.v4":                                  ; preds = %"for f77.s0.v4.preheader1021", %"end for f77.s0.v3.loopexit"
  %indvar1389 = phi i32 [ 0, %"for f77.s0.v4.preheader1021" ], [ %indvar.next1390, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv449 = phi i32 [ %i.art, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next450, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv445 = phi i32 [ %i.arw, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next446, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv441 = phi i32 [ %i.asa, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next442, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv437 = phi i32 [ %i.ase, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next438, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv431 = phi ptr [ %i.arg, %"for f77.s0.v4.preheader1021" ], [ %scevgep433, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %f77.s0.v4 = phi i32 [ %b748, %"for f77.s0.v4.preheader1021" ], [ %i.axl, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1395, label %"for f77.s0.v3.preheader", label %vector.scevcheck1388

vector.scevcheck1388:                             ; preds = %"for f77.s0.v4"
  %i.asx = mul i32 %i.ash, %indvar1389            ; 4 uses
  %i.asy = add i32 %i.asq, %i.asx                 ; 2 uses
  %i.asz = add i32 %i.aso, %i.asx                 ; 2 uses
  %i.ata = add i32 %i.asm, %i.asx                 ; 2 uses
  %i.atb = add i32 %i.asg, %i.asx                 ; 2 uses
  %i.atc = add i32 %i.atb, %mul.result1392
  %i.atd = icmp slt i32 %i.atc, %i.atb
  %i.ate = add i32 %i.ata, %mul.result1392
  %i.atf = icmp slt i32 %i.ate, %i.ata
  %i.atg = add i32 %i.asz, %mul.result1392
  %i.ath = icmp slt i32 %i.atg, %i.asz
  %i.ati = add i32 %i.asy, %mul.result1392
  %i.atj = icmp slt i32 %i.ati, %i.asy
  %i.atk = or i1 %i.atf, %i.atd
  %i.atl = or i1 %i.atk, %i.ath
  %i.atm = or i1 %i.atj, %i.atl
  br i1 %i.atm, label %"for f77.s0.v3.preheader", label %vector.ph1396

vector.ph1396:                                    ; preds = %vector.scevcheck1388
  %i.atn = add i32 %lsr.iv449, %i.asu
  %i.ato = add i32 %lsr.iv445, %i.asu
  %i.atp = add i32 %lsr.iv441, %i.asu
  %i.atq = add i32 %lsr.iv437, %i.asu
  %i.atr = getelementptr i8, ptr %lsr.iv431, i64 %i.asv
  %invariant.op1489 = add i32 %lsr.iv449, %i.ax
  %invariant.op1491 = add i32 %lsr.iv445, %i.ax
  %invariant.op1493 = add i32 %lsr.iv441, %i.ax
  %invariant.op1495 = add i32 %lsr.iv437, %i.ax
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1425, %vector.body1398 ] ; 3 uses
  %i.ats = trunc i64 %index1399 to i32
  %i.att = shl i32 %i.ats, 1                      ; 4 uses
  %i.atu = shl i64 %index1399, 2
  %next.gep1400 = getelementptr i8, ptr %lsr.iv431, i64 %i.atu
  %.reass1490 = add i32 %i.att, %invariant.op1489
  %.reass1492 = add i32 %i.att, %invariant.op1491
  %.reass1494 = add i32 %i.att, %invariant.op1493
  %.reass1496 = add i32 %i.att, %invariant.op1495
  %i.atv = sext i32 %.reass1496 to i64
  %i.atw = getelementptr [4 x i8], ptr %i.aiw, i64 %i.atv ; 2 uses
  %i.atx = getelementptr i8, ptr %i.atw, i64 4
  %wide.vec1401 = load <8 x float>, ptr %i.atx, align 4, !tbaa !48 ; 2 uses
  %strided.vec1402 = shufflevector <8 x float> %wide.vec1401, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1403 = shufflevector <8 x float> %wide.vec1401, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aty = getelementptr i8, ptr %i.atw, i64 -4
  %wide.vec1404 = load <8 x float>, ptr %i.aty, align 4, !tbaa !48 ; 2 uses
  %strided.vec1405 = shufflevector <8 x float> %wide.vec1404, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1406 = shufflevector <8 x float> %wide.vec1404, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.atz = fadd <4 x float> %strided.vec1402, %strided.vec1406
  %i.aua = fmul <4 x float> %i.atz, splat (float 3.000000e+00)
  %i.aub = fadd <4 x float> %strided.vec1405, %i.aua
  %i.auc = fadd <4 x float> %strided.vec1403, %i.aub
  %i.aud = fmul <4 x float> %i.auc, splat (float 1.250000e-01)
  %i.aue = sext i32 %.reass1494 to i64
  %i.auf = getelementptr [4 x i8], ptr %i.aiw, i64 %i.aue ; 2 uses
  %i.aug = getelementptr i8, ptr %i.auf, i64 4
  %wide.vec1407 = load <8 x float>, ptr %i.aug, align 4, !tbaa !48 ; 2 uses
  %strided.vec1408 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1409 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auh = getelementptr i8, ptr %i.auf, i64 -4
  %wide.vec1410 = load <8 x float>, ptr %i.auh, align 4, !tbaa !48 ; 2 uses
  %strided.vec1411 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1412 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aui = fadd <4 x float> %strided.vec1408, %strided.vec1412
  %i.auj = fmul <4 x float> %i.aui, splat (float 3.000000e+00)
  %i.auk = fadd <4 x float> %strided.vec1411, %i.auj
  %i.aul = fadd <4 x float> %strided.vec1409, %i.auk
  %i.aum = sext i32 %.reass1492 to i64
  %i.aun = getelementptr [4 x i8], ptr %i.aiw, i64 %i.aum ; 2 uses
  %i.auo = getelementptr i8, ptr %i.aun, i64 4
  %wide.vec1413 = load <8 x float>, ptr %i.auo, align 4, !tbaa !48 ; 2 uses
  %strided.vec1414 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1415 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aup = getelementptr i8, ptr %i.aun, i64 -4
  %wide.vec1416 = load <8 x float>, ptr %i.aup, align 4, !tbaa !48 ; 2 uses
  %strided.vec1417 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1418 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auq = fadd <4 x float> %strided.vec1414, %strided.vec1418
  %i.aur = fmul <4 x float> %i.auq, splat (float 3.000000e+00)
  %i.aus = fadd <4 x float> %strided.vec1417, %i.aur
  %i.aut = fadd <4 x float> %strided.vec1415, %i.aus
  %i.auu = fadd <4 x float> %i.aul, %i.aut
  %i.auv = fmul <4 x float> %i.auu, splat (float 3.750000e-01)
  %i.auw = sext i32 %.reass1490 to i64
  %i.aux = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auw ; 2 uses
  %i.auy = getelementptr i8, ptr %i.aux, i64 4
  %wide.vec1419 = load <8 x float>, ptr %i.auy, align 4, !tbaa !48 ; 2 uses
  %strided.vec1420 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1421 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auz = getelementptr i8, ptr %i.aux, i64 -4
  %wide.vec1422 = load <8 x float>, ptr %i.auz, align 4, !tbaa !48 ; 2 uses
  %strided.vec1423 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1424 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ava = fadd <4 x float> %strided.vec1420, %strided.vec1424
  %i.avb = fmul <4 x float> %i.ava, splat (float 3.000000e+00)
  %i.avc = fadd <4 x float> %strided.vec1423, %i.avb
  %i.avd = fadd <4 x float> %strided.vec1421, %i.avc
  %i.ave = fmul <4 x float> %i.avd, splat (float 1.250000e-01)
  %i.avf = fadd <4 x float> %i.auv, %i.ave
  %i.avg = fadd <4 x float> %i.aud, %i.avf
  %i.avh = fmul <4 x float> %i.avg, splat (float 1.250000e-01)
  store <4 x float> %i.avh, ptr %next.gep1400, align 4, !tbaa !50
  %index.next1425 = add nuw i64 %index1399, 4     ; 2 uses
  %i.avi = icmp eq i64 %index.next1425, %n.vec1397
  br i1 %i.avi, label %middle.block1426, label %vector.body1398, !llvm.loop !43

middle.block1426:                                 ; preds = %vector.body1398
  br i1 %cmp.n1427, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3.preheader"

"for f77.s0.v3.preheader":                        ; preds = %vector.scevcheck1388, %"for f77.s0.v4", %middle.block1426
  %lsr.iv451.ph = phi i32 [ %lsr.iv449, %vector.scevcheck1388 ], [ %lsr.iv449, %"for f77.s0.v4" ], [ %i.atn, %middle.block1426 ]
  %lsr.iv447.ph = phi i32 [ %lsr.iv445, %vector.scevcheck1388 ], [ %lsr.iv445, %"for f77.s0.v4" ], [ %i.ato, %middle.block1426 ]
  %lsr.iv443.ph = phi i32 [ %lsr.iv441, %vector.scevcheck1388 ], [ %lsr.iv441, %"for f77.s0.v4" ], [ %i.atp, %middle.block1426 ]
  %lsr.iv439.ph = phi i32 [ %lsr.iv437, %vector.scevcheck1388 ], [ %lsr.iv437, %"for f77.s0.v4" ], [ %i.atq, %middle.block1426 ]
  %lsr.iv434.ph = phi ptr [ %lsr.iv431, %vector.scevcheck1388 ], [ %lsr.iv431, %"for f77.s0.v4" ], [ %i.atr, %middle.block1426 ]
  %lsr.iv428.ph = phi i32 [ %i.arj, %vector.scevcheck1388 ], [ %i.arj, %"for f77.s0.v4" ], [ %i.asw, %middle.block1426 ]
  br label %"for f77.s0.v3"

"for f77.s0.v3":                                  ; preds = %"for f77.s0.v3.preheader", %"for f77.s0.v3"
  %lsr.iv451 = phi i32 [ %lsr.iv.next452, %"for f77.s0.v3" ], [ %lsr.iv451.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv447 = phi i32 [ %lsr.iv.next448, %"for f77.s0.v3" ], [ %lsr.iv447.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv443 = phi i32 [ %lsr.iv.next444, %"for f77.s0.v3" ], [ %lsr.iv443.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv439 = phi i32 [ %lsr.iv.next440, %"for f77.s0.v3" ], [ %lsr.iv439.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv434 = phi ptr [ %scevgep435, %"for f77.s0.v3" ], [ %lsr.iv434.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv428 = phi i32 [ %lsr.iv.next429, %"for f77.s0.v3" ], [ %lsr.iv428.ph, %"for f77.s0.v3.preheader" ]
  %i.avj = add i32 %lsr.iv451, %i.ax
  %i.avk = add i32 %lsr.iv447, %i.ax
  %i.avl = add i32 %lsr.iv443, %i.ax
  %i.avm = add i32 %lsr.iv439, %i.ax
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avn ; 2 uses
  %i.avp = getelementptr i8, ptr %i.avo, i64 4
  %i.avq = getelementptr i8, ptr %i.avo, i64 -4
  %i.avr = sext i32 %i.avl to i64
  %i.avs = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avr ; 3 uses
  %i.avt = getelementptr i8, ptr %i.avs, i64 8
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !48
  %i.avv = load <2 x float>, ptr %i.avs, align 4, !tbaa !48
  %i.avw = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avv)
  %i.avx = fmul float %i.avw, 3.000000e+00
  %i.avy = getelementptr i8, ptr %i.avs, i64 -4
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !48
  %i.awa = fadd float %i.avz, %i.avx
  %i.awb = fadd float %i.avu, %i.awa
  %i.awc = sext i32 %i.avk to i64
  %i.awd = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awc ; 3 uses
  %i.awe = getelementptr i8, ptr %i.awd, i64 8
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !48
  %i.awg = load <2 x float>, ptr %i.awd, align 4, !tbaa !48
  %i.awh = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.awg)
  %i.awi = fmul float %i.awh, 3.000000e+00
  %i.awj = getelementptr i8, ptr %i.awd, i64 -4
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !48
  %i.awl = fadd float %i.awk, %i.awi
  %i.awm = fadd float %i.awf, %i.awl
  %i.awn = fadd float %i.awb, %i.awm
  %i.awo = fmul float %i.awn, 3.750000e-01
  %i.awp = sext i32 %i.avj to i64
  %i.awq = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awp ; 2 uses
  %i.awr = getelementptr i8, ptr %i.awq, i64 4
  %i.aws = getelementptr i8, ptr %i.awq, i64 -4
  %i.awt = load <2 x float>, ptr %i.avp, align 4, !tbaa !48 ; 2 uses
  %i.awu = load <2 x float>, ptr %i.avq, align 4, !tbaa !48 ; 2 uses
  %i.awv = load <2 x float>, ptr %i.awr, align 4, !tbaa !48 ; 2 uses
  %i.aww = load <2 x float>, ptr %i.aws, align 4, !tbaa !48 ; 2 uses
  %i.awx = shufflevector <2 x float> %i.awt, <2 x float> %i.awv, <2 x i32> <i32 0, i32 2>
  %i.awy = shufflevector <2 x float> %i.awu, <2 x float> %i.aww, <2 x i32> <i32 1, i32 3>
  %i.awz = fadd <2 x float> %i.awx, %i.awy
  %i.axa = fmul <2 x float> %i.awz, splat (float 3.000000e+00)
  %i.axb = shufflevector <2 x float> %i.awu, <2 x float> %i.aww, <2 x i32> <i32 0, i32 2>
  %i.axc = fadd <2 x float> %i.axb, %i.axa
  %i.axd = shufflevector <2 x float> %i.awt, <2 x float> %i.awv, <2 x i32> <i32 1, i32 3>
  %i.axe = fadd <2 x float> %i.axd, %i.axc
  %i.axf = fmul <2 x float> %i.axe, splat (float 1.250000e-01) ; 2 uses
end_hunk_2
