Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
  %brmerge.i223 = or i1 %tobool.i221, %.not620661683762806
  br i1 %brmerge.i223, label %call_destructor.exit225, label %call_destructor.exit225.sink.split

call_destructor.exit225.sink.split:               ; preds = %call_destructor.exit220, %call_destructor.exit
  %.sink = phi ptr [ %i.bfk, %call_destructor.exit ], [ %.050647697748820, %call_destructor.exit220 ]
  %.049648696749819866910.ph = phi ptr [ %i.aio, %call_destructor.exit ], [ %.049648696749819, %call_destructor.exit220 ]
  %.048649695750818867909.ph = phi ptr [ %i.ahd, %call_destructor.exit ], [ %.048649695750818, %call_destructor.exit220 ]
  %.047650694751817868908.ph = phi ptr [ %i.afn, %call_destructor.exit ], [ %.047650694751817, %call_destructor.exit220 ]
  %.046651693752816869907.ph = phi ptr [ %i.adz, %call_destructor.exit ], [ %.046651693752816, %call_destructor.exit220 ]
  %.045652692753815870906.ph = phi ptr [ %i.acd, %call_destructor.exit ], [ %.045652692753815, %call_destructor.exit220 ]
  %.044653691754814871905.ph = phi ptr [ %i.aab, %call_destructor.exit ], [ %.044653691754814, %call_destructor.exit220 ]
  %.043654690755813872904.ph = phi ptr [ %i.ya, %call_destructor.exit ], [ %.043654690755813, %call_destructor.exit220 ]
  %.042655689756812873903.ph = phi ptr [ %i.vy, %call_destructor.exit ], [ %.042655689756812, %call_destructor.exit220 ]
  %.041656688757811874902.ph = phi ptr [ %i.tj, %call_destructor.exit ], [ %.041656688757811, %call_destructor.exit220 ]
  %.040657687758810875901.ph = phi ptr [ %i.rh, %call_destructor.exit ], [ %.040657687758810, %call_destructor.exit220 ]
  %.039658686759809876900.ph = phi ptr [ %i.oi, %call_destructor.exit ], [ %.039658686759809, %call_destructor.exit220 ]
  %.038659685760808877899.ph = phi ptr [ %i.le, %call_destructor.exit ], [ %.038659685760808, %call_destructor.exit220 ]
  %.0660684761807878898.ph = phi ptr [ %i.gd, %call_destructor.exit ], [ %.0660684761807, %call_destructor.exit220 ]
  %.ph1344 = phi i32 [ %.ph, %call_destructor.exit ], [ %i.g, %call_destructor.exit220 ]
  call void @halide_free(ptr null, ptr nonnull %.sink) #6
  br label %call_destructor.exit225

call_destructor.exit225:                          ; preds = %call_destructor.exit225.sink.split, %call_destructor.exit220
  %.049648696749819866910 = phi ptr [ %.049648696749819, %call_destructor.exit220 ], [ %.049648696749819866910.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.048649695750818867909 = phi ptr [ %.048649695750818, %call_destructor.exit220 ], [ %.048649695750818867909.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.047650694751817868908 = phi ptr [ %.047650694751817, %call_destructor.exit220 ], [ %.047650694751817868908.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.046651693752816869907 = phi ptr [ %.046651693752816, %call_destructor.exit220 ], [ %.046651693752816869907.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.045652692753815870906 = phi ptr [ %.045652692753815, %call_destructor.exit220 ], [ %.045652692753815870906.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.044653691754814871905 = phi ptr [ %.044653691754814, %call_destructor.exit220 ], [ %.044653691754814871905.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.043654690755813872904 = phi ptr [ %.043654690755813, %call_destructor.exit220 ], [ %.043654690755813872904.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.042655689756812873903 = phi ptr [ %.042655689756812, %call_destructor.exit220 ], [ %.042655689756812873903.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.041656688757811874902 = phi ptr [ %.041656688757811, %call_destructor.exit220 ], [ %.041656688757811874902.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.040657687758810875901 = phi ptr [ %.040657687758810, %call_destructor.exit220 ], [ %.040657687758810875901.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.039658686759809876900 = phi ptr [ %.039658686759809, %call_destructor.exit220 ], [ %.039658686759809876900.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.038659685760808877899 = phi ptr [ %.038659685760808, %call_destructor.exit220 ], [ %.038659685760808877899.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %.0660684761807878898 = phi ptr [ %.0660684761807, %call_destructor.exit220 ], [ %.0660684761807878898.ph, %call_destructor.exit225.sink.split ] ; 2 uses
  %i.h = phi i32 [ %i.g, %call_destructor.exit220 ], [ %.ph1344, %call_destructor.exit225.sink.split ] ; 2 uses
  %.not620661683762806879897 = phi i1 [ %.not620661683762806, %call_destructor.exit220 ], [ false, %call_destructor.exit225.sink.split ] ; 3 uses
  %tobool.i226 = icmp eq ptr %.049648696749819866910, null
  %brmerge.i228 = or i1 %tobool.i226, %.not620661683762806879897
  br i1 %brmerge.i228, label %call_destructor.exit230, label %if.then.i229

if.then.i229:                                     ; preds = %call_destructor.exit225
  call void @halide_free(ptr null, ptr nonnull %.049648696749819866910) #6
  br label %call_destructor.exit230

call_destructor.exit230:                          ; preds = %if.then.i229, %call_destructor.exit225
  %tobool.i231 = icmp eq ptr %.048649695750818867909, null
  %brmerge.i233 = or i1 %tobool.i231, %.not620661683762806879897
  br i1 %brmerge.i233, label %call_destructor.exit235, label %call_destructor.exit235.sink.split

call_destructor.exit235.sink.split:               ; preds = %call_destructor.exit230, %if.then.i316
  %.sink1346 = phi ptr [ %i.blb, %if.then.i316 ], [ %.048649695750818867909, %call_destructor.exit230 ]
  %.047650694751817868908928966.ph = phi ptr [ %i.afn, %if.then.i316 ], [ %.047650694751817868908, %call_destructor.exit230 ]
  %.046651693752816869907929965.ph = phi ptr [ %i.adz, %if.then.i316 ], [ %.046651693752816869907, %call_destructor.exit230 ]
  %.045652692753815870906930964.ph = phi ptr [ %i.acd, %if.then.i316 ], [ %.045652692753815870906, %call_destructor.exit230 ]
  %.044653691754814871905931963.ph = phi ptr [ %i.aab, %if.then.i316 ], [ %.044653691754814871905, %call_destructor.exit230 ]
  %.043654690755813872904932962.ph = phi ptr [ %i.ya, %if.then.i316 ], [ %.043654690755813872904, %call_destructor.exit230 ]
  %.042655689756812873903933961.ph = phi ptr [ %i.vy, %if.then.i316 ], [ %.042655689756812873903, %call_destructor.exit230 ]
  %.041656688757811874902934960.ph = phi ptr [ %i.tj, %if.then.i316 ], [ %.041656688757811874902, %call_destructor.exit230 ]
  %.040657687758810875901935959.ph = phi ptr [ %i.rh, %if.then.i316 ], [ %.040657687758810875901, %call_destructor.exit230 ]
  %.039658686759809876900936958.ph = phi ptr [ %i.oi, %if.then.i316 ], [ %.039658686759809876900, %call_destructor.exit230 ]
  %.038659685760808877899937957.ph = phi ptr [ %i.le, %if.then.i316 ], [ %.038659685760808877899, %call_destructor.exit230 ]
  %.0660684761807878898938956.ph = phi ptr [ %i.gd, %if.then.i316 ], [ %.0660684761807878898, %call_destructor.exit230 ]
  %.ph1345 = phi i32 [ %i.bql, %if.then.i316 ], [ %i.h, %call_destructor.exit230 ]
  call void @halide_free(ptr null, ptr nonnull %.sink1346) #6
  br label %call_destructor.exit235

call_destructor.exit235:                          ; preds = %call_destructor.exit235.sink.split, %call_destructor.exit230
  %.047650694751817868908928966 = phi ptr [ %.047650694751817868908, %call_destructor.exit230 ], [ %.047650694751817868908928966.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.046651693752816869907929965 = phi ptr [ %.046651693752816869907, %call_destructor.exit230 ], [ %.046651693752816869907929965.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.045652692753815870906930964 = phi ptr [ %.045652692753815870906, %call_destructor.exit230 ], [ %.045652692753815870906930964.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.044653691754814871905931963 = phi ptr [ %.044653691754814871905, %call_destructor.exit230 ], [ %.044653691754814871905931963.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.043654690755813872904932962 = phi ptr [ %.043654690755813872904, %call_destructor.exit230 ], [ %.043654690755813872904932962.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.042655689756812873903933961 = phi ptr [ %.042655689756812873903, %call_destructor.exit230 ], [ %.042655689756812873903933961.ph, %call_destructor.exit235.sink.split ] ; 2 uses
  %.041656688757811874902934960 = phi ptr [ %.041656688757811874902, %call_destructor.exit230 ], [ %.041656688757811874902934960.ph, %call_destructor.exit235.sink.split ] ; 2 uses
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
  %a90 = tail call i32 @llvm.smin.i32(i32 %b88, i32 %a91)
  %i.dq = tail call i32 @llvm.smax.i32(i32 %a90, i32 %b97) ; 3 uses
  %i.dr = add nsw i32 %b108, %input.extent.2      ; 2 uses
  %b104 = add nsw i32 %i.dr, -1                   ; 3 uses
  %a101 = tail call i32 @llvm.smin.i32(i32 %b104, i32 %a108)
  %i.ds = tail call i32 @llvm.smin.i32(i32 %a101, i32 0)
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %b108) ; 3 uses
  %i.du = add nsw i32 %a108, %local_laplacian.extent.2
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.du, i32 3) ; 2 uses
  %a104 = add nsw i32 %i.dv, -1
  %.not267 = icmp sgt i32 %i.dr, %i.dv
  %a103 = select i1 %.not267, i32 %a104, i32 %b104
  %i.dw = tail call i32 @llvm.smax.i32(i32 %a103, i32 %b108) ; 3 uses
  %local_laplacian.extent.0.required.s = sub nsw i32 %b79, %b74 ; 2 uses
  %local_laplacian.extent.1.required.s = sub nsw i32 %b94, %b89
  %i.dx = add nsw i32 %local_laplacian.extent.1.required.s, 1 ; 2 uses
  %i.dy = add nsw i32 %local_laplacian.extent.0.required.s, 1 ; 3 uses
  %local_laplacian.stride.2.required = mul nsw i32 %i.dx, %i.dy
  br i1 %input.host_and_dev_are_null.not273, label %after_bb, label %after_bb.thread

after_bb:                                         ; preds = %"assert succeeded11"
  br i1 %local_laplacian.host_and_dev_are_null.not276, label %true_bb58, label %after_bb44.thread

after_bb.thread:                                  ; preds = %"assert succeeded11"
  %input.extent.0.required.s = sub nsw i32 %i.dh, %i.db
  %i.dz = add nsw i32 %input.extent.0.required.s, 1 ; 3 uses
  %input.extent.1.required.s = sub nsw i32 %i.dq, %i.dj
  %i.ea = add nsw i32 %input.extent.1.required.s, 1 ; 2 uses
  %input.stride.2.required = mul nsw i32 %i.ea, %i.dz
  store i32 2, ptr %buf_elem_size, align 8
  store i32 %i.db, ptr %buf_min, align 8
  store i32 %i.dz, ptr %buf_extent, align 8
  store i32 1, ptr %buf_stride, align 8
  store i32 %i.dj, ptr %buf_min7, align 4
  store i32 %i.ea, ptr %buf_extent1, align 4
  store i32 %i.dz, ptr %buf_stride4, align 4
  store i32 %i.dt, ptr %buf_min8, align 8
  %reass.sub = sub i32 %i.dw, %i.dt
  %i.eb = add i32 %reass.sub, 1
  store i32 %i.eb, ptr %buf_extent2, align 8
  store i32 %input.stride.2.required, ptr %buf_stride5, align 8
  %buf_min39 = getelementptr inbounds nuw i8, ptr %input.buffer, i64 60
  store i32 0, ptr %buf_min39, align 4
  %buf_extent40 = getelementptr inbounds nuw i8, ptr %input.buffer, i64 28
  store i32 0, ptr %buf_extent40, align 4
  %buf_stride41 = getelementptr inbounds nuw i8, ptr %input.buffer, i64 44
  store i32 0, ptr %buf_stride41, align 4
  br i1 %local_laplacian.host_and_dev_are_null.not276, label %call_destructor.exit210.thread823, label %after_bb44.thread

after_bb44.thread:                                ; preds = %after_bb.thread, %after_bb
  store i32 2, ptr %buf_elem_size28, align 8
  store i32 %b74, ptr %buf_min24, align 8
  store i32 %i.dy, ptr %buf_extent16, align 8
  store i32 1, ptr %buf_stride20, align 8
  store i32 %b89, ptr %buf_min25, align 4
  store i32 %i.dx, ptr %buf_extent17, align 4
  store i32 %i.dy, ptr %buf_stride21, align 4
  store i32 %local_laplacian.stride.2.required, ptr %buf_stride22, align 8
  %buf_min55 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 60
  store i32 0, ptr %buf_min55, align 4
  %buf_extent56 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 28
  store i32 0, ptr %buf_extent56, align 4
  %buf_stride57 = getelementptr inbounds nuw i8, ptr %local_laplacian.buffer, i64 44
  store i32 0, ptr %buf_stride57, align 4
  br label %call_destructor.exit210.thread823

true_bb58:                                        ; preds = %after_bb
  %i.ec = icmp eq i32 %input.elem_size, 2
  br i1 %i.ec, label %"assert succeeded62", label %"assert failed61", !prof !5

"assert failed61":                                ; preds = %true_bb58
  %i.ed = tail call i32 @halide_error_bad_elem_size(ptr null, ptr nonnull @str.3, ptr nonnull @str.4, i32 %input.elem_size, i32 2) #3
  br label %call_destructor.exit210.thread823

"assert succeeded62":                             ; preds = %true_bb58
  %i.ee = icmp eq i32 %local_laplacian.elem_size, 2
  br i1 %i.ee, label %"assert succeeded64", label %"assert failed63", !prof !5

"assert failed63":                                ; preds = %"assert succeeded62"
  %i.ef = tail call i32 @halide_error_bad_elem_size(ptr null, ptr nonnull @str.5, ptr nonnull @str.4, i32 %local_laplacian.elem_size, i32 2) #3
  br label %call_destructor.exit210.thread823

"assert succeeded64":                             ; preds = %"assert succeeded62"
  %i.eg = sub nsw i32 %i.dh, %input.extent.0
  %.not277 = icmp slt i32 %i.eg, %b82
  br i1 %.not277, label %"assert succeeded66", label %"assert failed65", !prof !5

"assert failed65":                                ; preds = %"assert succeeded64"
  %i.eh = tail call i32 @halide_error_access_out_of_bounds(ptr null, ptr nonnull @str.3, i32 0, i32 %i.db, i32 %i.dh, i32 %b82, i32 %b73) #3
  br label %call_destructor.exit210.thread823

"assert succeeded66":                             ; preds = %"assert succeeded64"
  %i.ei = sub nsw i32 %i.dq, %input.extent.1
  %.not278 = icmp slt i32 %i.ei, %b97
  br i1 %.not278, label %"assert succeeded68", label %"assert failed67", !prof !5

"assert failed67":                                ; preds = %"assert succeeded66"
  %i.ej = tail call i32 @halide_error_access_out_of_bounds(ptr null, ptr nonnull @str.3, i32 1, i32 %i.dj, i32 %i.dq, i32 %b97, i32 %b88) #3
  br label %call_destructor.exit210.thread823

"assert succeeded68":                             ; preds = %"assert succeeded66"
  %i.ek = sub nsw i32 %i.dw, %input.extent.2
  %.not279 = icmp slt i32 %i.ek, %b108
  br i1 %.not279, label %"assert succeeded70", label %"assert failed69", !prof !5

"assert failed69":                                ; preds = %"assert succeeded68"
  %i.el = tail call i32 @halide_error_access_out_of_bounds(ptr null, ptr nonnull @str.3, i32 2, i32 %i.dt, i32 %i.dw, i32 %b108, i32 %b104) #3
  br label %call_destructor.exit210.thread823

"assert succeeded70":                             ; preds = %"assert succeeded68"
  %13 = sub nsw i32 %b79, %local_laplacian.extent.0
  %.not280 = icmp slt i32 %13, %a286
  %14 = icmp sge i32 %b76, %a286
  %15 = and i1 %14, %.not280
  br i1 %15, label %"assert succeeded72", label %"assert failed71", !prof !5

"assert failed71":                                ; preds = %"assert succeeded70"
  %i.em = tail call i32 @halide_error_access_out_of_bounds(ptr null, ptr nonnull @str.5, i32 0, i32 %b74, i32 %b79, i32 %a286, i32 %a60) #3
  br label %call_destructor.exit210.thread823

"assert succeeded72":                             ; preds = %"assert succeeded70"
  %16 = sub nsw i32 %b94, %local_laplacian.extent.1
  %.not281 = icmp slt i32 %16, %a114
  %17 = icmp sge i32 %b91, %a114
  %18 = and i1 %17, %.not281
  br i1 %18, label %"assert succeeded74", label %"assert failed73", !prof !5

"assert failed73":                                ; preds = %"assert succeeded72"
  %i.en = tail call i32 @halide_error_access_out_of_bounds(ptr null, ptr nonnull @str.5, i32 1, i32 %b89, i32 %b94, i32 %a114, i32 %a54) #3
  br label %call_destructor.exit210.thread823

"assert succeeded74":                             ; preds = %"assert succeeded72"
  %i.eo = icmp eq i32 %input.stride.0, 1
  br i1 %i.eo, label %"assert succeeded76", label %"assert failed75", !prof !5

"assert failed75":                                ; preds = %"assert succeeded74"
  %i.ep = tail call i32 @halide_error_constraint_violated(ptr null, ptr nonnull @str.6, i32 %input.stride.0, ptr nonnull @str.7, i32 1) #3
  br label %call_destructor.exit210.thread823

"assert succeeded76":                             ; preds = %"assert succeeded74"
  %i.eq = icmp eq i32 %local_laplacian.stride.0, 1
  br i1 %i.eq, label %"assert succeeded78", label %"assert failed77", !prof !5

"assert failed77":                                ; preds = %"assert succeeded76"
  %i.er = tail call i32 @halide_error_constraint_violated(ptr null, ptr nonnull @str.8, i32 %local_laplacian.stride.0, ptr nonnull @str.7, i32 1) #3
  br label %call_destructor.exit210.thread823

"assert succeeded78":                             ; preds = %"assert succeeded76"
  %input.total_extent.1 = mul nsw i64 %i.b, %x1   ; 3 uses
  %local_laplacian.total_extent.1 = mul nuw nsw i64 %i.p, %x7 ; 3 uses
  %i.es = add nsw i64 %x1, 2147483647
  %i.et = icmp ult i64 %i.es, 4294967295
  br i1 %i.et, label %"assert succeeded80", label %"assert failed79", !prof !5

"assert failed79":                                ; preds = %"assert succeeded78"
  %i.eu = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str, i64 2147483648, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded80":                             ; preds = %"assert succeeded78"
  %x2 = mul nsw i64 %i.d, %i.b
  %i.ev = tail call i64 @llvm.abs.i64(i64 %x2, i1 true) ; 2 uses
  %i.ew = icmp samesign ult i64 %i.ev, 2147483648
  br i1 %i.ew, label %"assert succeeded82", label %"assert failed81", !prof !5

"assert failed81":                                ; preds = %"assert succeeded80"
  %i.ex = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str, i64 %i.ev, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded82":                             ; preds = %"assert succeeded80"
  %i.ey = icmp slt i64 %input.total_extent.1, 2147483648
  br i1 %i.ey, label %"assert succeeded84", label %"assert failed83", !prof !5

"assert failed83":                                ; preds = %"assert succeeded82"
  %i.ez = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str, i64 %input.total_extent.1, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded84":                             ; preds = %"assert succeeded82"
  %x4 = mul nsw i64 %i.e, %i.c
  %i.fa = tail call i64 @llvm.abs.i64(i64 %x4, i1 true) ; 2 uses
  %i.fb = icmp samesign ult i64 %i.fa, 2147483648
  br i1 %i.fb, label %"assert succeeded86", label %"assert failed85", !prof !5

"assert failed85":                                ; preds = %"assert succeeded84"
  %i.fc = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str, i64 %i.fa, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded86":                             ; preds = %"assert succeeded84"
  %i.fd = mul nsw i64 %input.total_extent.1, %i.c ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 2147483648
  br i1 %i.fe, label %"assert succeeded88", label %"assert failed87", !prof !5

"assert failed87":                                ; preds = %"assert succeeded86"
  %i.ff = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str, i64 %i.fd, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded88":                             ; preds = %"assert succeeded86"
  %i.fg = add nsw i64 %x7, 2147483647
  %i.fh = icmp ult i64 %i.fg, 4294967295
  br i1 %i.fh, label %"assert succeeded90", label %"assert failed89", !prof !5

"assert failed89":                                ; preds = %"assert succeeded88"
  %i.fi = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 2147483648, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded90":                             ; preds = %"assert succeeded88"
  %x8 = mul nsw i64 %i.r, %i.p
  %i.fj = tail call i64 @llvm.abs.i64(i64 %x8, i1 true) ; 2 uses
  %i.fk = icmp samesign ult i64 %i.fj, 2147483648
  br i1 %i.fk, label %"assert succeeded92", label %"assert failed91", !prof !5

"assert failed91":                                ; preds = %"assert succeeded90"
  %i.fl = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 %i.fj, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded92":                             ; preds = %"assert succeeded90"
  %i.fm = icmp slt i64 %local_laplacian.total_extent.1, 2147483648
  br i1 %i.fm, label %"assert succeeded94", label %"assert failed93", !prof !5

"assert failed93":                                ; preds = %"assert succeeded92"
  %i.fn = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str.2, i64 %local_laplacian.total_extent.1, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded94":                             ; preds = %"assert succeeded92"
  %x10 = mul nsw i64 %i.s, %i.q
  %i.fo = tail call i64 @llvm.abs.i64(i64 %x10, i1 true) ; 2 uses
  %i.fp = icmp samesign ult i64 %i.fo, 2147483648
  br i1 %i.fp, label %"assert succeeded96", label %"assert failed95", !prof !5

"assert failed95":                                ; preds = %"assert succeeded94"
  %i.fq = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 %i.fo, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded96":                             ; preds = %"assert succeeded94"
  %i.fr = mul nsw i64 %local_laplacian.total_extent.1, %i.q ; 2 uses
  %i.fs = icmp slt i64 %i.fr, 2147483648
  br i1 %i.fs, label %"assert succeeded98", label %"assert failed97", !prof !5

"assert failed97":                                ; preds = %"assert succeeded96"
  %i.ft = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str.2, i64 %i.fr, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded98":                             ; preds = %"assert succeeded96"
  %i.fu = shl i32 %i.cs, 8
  %i.fv = add nuw nsw i32 %i.cv, 257
  %i.fw = add i32 %i.fu, %b121
  %i.fx = sub i32 %i.fv, %i.fw                    ; 7 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2                ; 2 uses
  %i.ga = icmp ult i32 %i.fx, 536870912
  br i1 %i.ga, label %"assert succeeded100", label %"assert failed99", !prof !5

"assert failed99":                                ; preds = %"assert succeeded98"
  %i.gb = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.9, i64 %i.fz, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded100":                            ; preds = %"assert succeeded98"
  %i.gc = add nuw nsw i64 %i.fz, 4
  %i.gd = tail call ptr @halide_malloc(ptr null, i64 %i.gc) ; 51 uses
  %.not282 = icmp eq ptr %i.gd, null
  br i1 %.not282, label %"assert failed101", label %"produce f0", !prof !4

"assert failed101":                               ; preds = %"assert succeeded100"
  %i.ge = tail call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f0":                                     ; preds = %"assert succeeded100"
  %.not283 = icmp eq i32 %i.fx, 0
  br i1 %.not283, label %"consume f0", label %"for f0.s0.v3.preheader", !prof !4

"for f0.s0.v3.preheader":                         ; preds = %"produce f0"
  %i.gf = add nsw i32 %b121, -256                 ; 2 uses
  %i.gg = sext i32 %b121 to i64
  %i.gh = shl nsw i64 %i.gg, 2
  %i.gi = sub nsw i64 1024, %i.gh
  %scevgep480 = getelementptr i8, ptr %i.gd, i64 %i.gi ; 2 uses
  %i.gj = sext i32 %i.gf to i64                   ; 3 uses
  %i.gk = zext nneg i32 %i.fx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.fx, 4
  br i1 %min.iters.check, label %"for f0.s0.v3.preheader1480", label %vector.ph

vector.ph:                                        ; preds = %"for f0.s0.v3.preheader"
  %n.vec = and i64 %i.gk, 536870908               ; 4 uses
  %i.gl = add nsw i64 %n.vec, %i.gj
  %i.gm = trunc nuw nsw i64 %n.vec to i32
  %i.gn = sub nsw i32 %i.fx, %i.gm
  %broadcast.splatinsert = insertelement <4 x float> poison, float %alpha, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1349, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep1481 = getelementptr [4 x i8], ptr %scevgep480, i64 %i.gj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.go = sitofp <4 x i32> %vec.ind to <4 x float> ; 3 uses
  %i.gp = fmul nnan <4 x float> %i.go, splat (float 3.906250e-03)
  %i.gq = fsub nnan <4 x float> zeroinitializer, %i.gp
  %i.gr = fmul <4 x float> %i.gq, %i.go
  %i.gs = fmul <4 x float> %i.gr, splat (float f0x3B000000) ; 2 uses
  %i.gt = fmul <4 x float> %i.gs, splat (float f0x3FB8AA3B)
  %i.gu = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.gt) ; 3 uses
  %i.gv = fptosi <4 x float> %i.gu to <4 x i32>   ; 3 uses
  %i.gw = fmul <4 x float> %i.gu, splat (float f0x35BFBE8E)
  %i.gx = fmul <4 x float> %i.gu, splat (float f0x3F317200)
  %i.gy = fsub <4 x float> %i.gs, %i.gx
  %i.gz = fsub <4 x float> %i.gy, %i.gw           ; 3 uses
  %i.ha = fmul <4 x float> %i.gz, %i.gz           ; 6 uses
  %i.hb = shl <4 x i32> %i.gv, splat (i32 23)
  %i.hc = add <4 x i32> %i.hb, splat (i32 1065353216)
  %i.hd = bitcast <4 x i32> %i.hc to <4 x float>
  %i.he = fmul <4 x float> %i.ha, splat (float f0x3A9C2E66)
  %i.hf = fadd <4 x float> %i.he, splat (float f0x3D2A66BC)
  %i.hg = fmul <4 x float> %i.ha, %i.hf
  %i.hh = fadd <4 x float> %i.hg, splat (float 4.999990e-01)
  %i.hi = fmul <4 x float> %i.ha, %i.hh
  %i.hj = fadd <4 x float> %i.hi, splat (float 1.000000e+00)
  %i.hk = fmul <4 x float> %i.ha, splat (float f0x39A797F3)
  %i.hl = fadd <4 x float> %i.hk, splat (float f0x3C0B192A)
  %i.hm = fmul <4 x float> %i.ha, %i.hl
  %i.hn = fadd <4 x float> %i.hm, splat (float f0x3E2AAE1F)
  %i.ho = fmul <4 x float> %i.ha, %i.hn
  %i.hp = fadd <4 x float> %i.ho, splat (float 1.000000e+00)
  %i.hq = fmul <4 x float> %i.gz, %i.hp
  %i.hr = fadd <4 x float> %i.hj, %i.hq
end_hunk_0
begin_hunk_1_@__local_laplacian:entry
  %i.je = fmul float %i.jd, 3.906250e-03
  %i.jf = fmul float %i.je, %i.jc
  %scevgep484 = getelementptr [4 x i8], ptr %scevgep480, i64 %lsr.iv482
  store float %i.jf, ptr %scevgep484, align 4, !tbaa !8
  %lsr.iv.next479 = add nsw i32 %lsr.iv478, -1    ; 2 uses
  %lsr.iv.next483 = add nsw i64 %lsr.iv482, 1
  %.not284 = icmp eq i32 %lsr.iv.next479, 0
  br i1 %.not284, label %"consume f0", label %"for f0.s0.v3", !llvm.loop !40

"consume f0":                                     ; preds = %"for f0.s0.v3", %middle.block, %"produce f0"
  %a127 = add nsw i32 %f72.s0.v4.min.s, -1
  %b129 = add nsw i32 %b448, -31
  %b135 = tail call i32 @llvm.smin.i32(i32 %b129, i32 %a127) ; 3 uses
  %a134 = add nsw i32 %f4.s0.v4.min.s, -1
  %b136 = add nsw i32 %b448, -7
  %a133 = tail call i32 @llvm.smin.i32(i32 %b136, i32 %a134) ; 2 uses
  %i.jg = tail call i32 @llvm.smin.i32(i32 %b135, i32 %a133)
  %i.jh = shl nsw i32 %i.jg, 1
  %a132 = add nsw i32 %i.jh, -1                   ; 2 uses
  %b134 = shl nsw i32 %b135, 1                    ; 3 uses
  %b133 = or disjoint i32 %b134, 1
  %i.ji = icmp slt i32 %b134, %a132
  %a130 = select i1 %i.ji, i32 %b133, i32 %a132
  %b132 = add nsw i32 %b134, 2
  %a129 = tail call i32 @llvm.smin.i32(i32 %b132, i32 %a130)
  %a128 = tail call i32 @llvm.smin.i32(i32 %b89, i32 %a129)
  %f2.v4.min_realized = tail call i32 @llvm.smin.i32(i32 %a87, i32 %a128) ; 5 uses
  %i.jj = sub nsw i32 %b448, %f72.s0.v4.min.s     ; 2 uses
  %i.jk = add nsw i32 %i.jj, 1
  %i.jl = and i32 %i.jk, -32
  %i.jm = add nsw i32 %f72.s0.v4.min.s, 30
  %a136 = add i32 %i.jm, %i.jl
  %t1938 = tail call i32 @llvm.smin.i32(i32 %b448, i32 %a136) ; 2 uses
  %i.jn = sub nsw i32 %b448, %f4.s0.v4.min.s      ; 2 uses
  %i.jo = add nsw i32 %i.jn, 1
  %i.jp = and i32 %i.jo, -8
  %i.jq = add nsw i32 %f4.s0.v4.min.s, 6
  %a154 = add i32 %i.jq, %i.jp
  %i.jr = tail call i32 @llvm.smin.i32(i32 %b448, i32 %a154) ; 2 uses
  %i.js = shl nsw i32 %i.jr, 1
  %a153 = add nsw i32 %i.js, 2                    ; 2 uses
  %i.jt = shl nsw i32 %t1938, 1                   ; 3 uses
  %i.ju = tail call i32 @llvm.smax.i32(i32 %a153, i32 %i.jt)
  %b153 = or disjoint i32 %i.jt, 1                ; 2 uses
  %.not301 = icmp sgt i32 %a153, %b153
  %a150 = select i1 %.not301, i32 %i.ju, i32 %b153
  %b152 = add nsw i32 %i.jt, 2
  %b150 = tail call i32 @llvm.smax.i32(i32 %a150, i32 %b152)
  %b148 = tail call i32 @llvm.smax.i32(i32 %b94, i32 %b150)
  %i.jv = tail call i32 @llvm.smax.i32(i32 %a92, i32 %b148)
  %a155 = add nsw i32 %f72.s0.v3.min.s, -1
  %b157 = add nsw i32 %b465, -7                   ; 2 uses
  %b165 = tail call i32 @llvm.smin.i32(i32 %b157, i32 %a155) ; 3 uses
  %a164 = add nsw i32 %f4.s0.v3.min.s, -1
  %a163 = tail call i32 @llvm.smin.i32(i32 %b157, i32 %a164) ; 2 uses
  %i.jw = tail call i32 @llvm.smin.i32(i32 %b165, i32 %a163)
  %i.jx = shl nsw i32 %i.jw, 1
  %a162 = add nsw i32 %i.jx, -1                   ; 2 uses
  %b164 = shl nsw i32 %b165, 1                    ; 4 uses
  %b163 = or disjoint i32 %b164, 1
  %i.jy = icmp slt i32 %b164, %a162
  %a160 = select i1 %i.jy, i32 %b163, i32 %a162   ; 2 uses
  %b162 = add nsw i32 %b164, 2
  %a159 = tail call i32 @llvm.smin.i32(i32 %b162, i32 %a160)
  %b161 = add nsw i32 %b164, -1                   ; 2 uses
  %.not314 = icmp slt i32 %a160, %b161
  %a158 = select i1 %.not314, i32 %a159, i32 %b161
  %i.jz = icmp slt i32 %local_laplacian.extent.0, 9
  %a165 = select i1 %i.jz, i32 %i.dg, i32 %a286
  %b160 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %a165) ; 2 uses
  %b159 = tail call i32 @llvm.smin.i32(i32 %b160, i32 %a158)
  %a156 = tail call i32 @llvm.smin.i32(i32 %b159, i32 %b74)
  %f2.v3.min_realized = tail call i32 @llvm.smin.i32(i32 %a72, i32 %a156) ; 5 uses
  %reass.sub990 = sub i32 %b465, %f72.s0.v3.min.s
  %i.ka = add i32 %reass.sub990, 1
  %i.kb = and i32 %i.ka, -8
  %i.kc = add nsw i32 %f72.s0.v3.min.s, 6
  %a168 = add i32 %i.kc, %i.kb
  %t1943 = tail call i32 @llvm.smin.i32(i32 %b465, i32 %a168) ; 2 uses
  %reass.sub991 = sub i32 %b465, %f4.s0.v3.min.s
  %i.kd = add i32 %reass.sub991, 1
  %i.ke = and i32 %i.kd, -8
  %i.kf = add nsw i32 %f4.s0.v3.min.s, 6
  %a191 = add i32 %i.kf, %i.ke
  %i.kg = tail call i32 @llvm.smin.i32(i32 %b465, i32 %a191) ; 2 uses
  %i.kh = shl nsw i32 %i.kg, 1
  %a190 = add nsw i32 %i.kh, 2                    ; 2 uses
  %i.ki = shl nsw i32 %t1943, 1                   ; 3 uses
  %i.kj = tail call i32 @llvm.smax.i32(i32 %a190, i32 %i.ki)
  %b190 = or disjoint i32 %i.ki, 1                ; 2 uses
  %.not331 = icmp sgt i32 %a190, %b190
  %a187 = select i1 %.not331, i32 %i.kj, i32 %b190
  %b189 = add nsw i32 %i.ki, 2
  %a186 = tail call i32 @llvm.smax.i32(i32 %a187, i32 %b189)
  %i.kk = and i32 %local_laplacian.extent.0.required.s, -8
  %a192 = add nsw i32 %i.kk, %b74
  %b194 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %i.dg)
  %i.kl = tail call i32 @llvm.smin.i32(i32 %b194, i32 %a192) ; 2 uses
  %b188 = add nsw i32 %i.kl, 7                    ; 2 uses
  %b186 = tail call i32 @llvm.smax.i32(i32 %a186, i32 %b188)
  %b184 = tail call i32 @llvm.smax.i32(i32 %b79, i32 %b186)
  %i.km = tail call i32 @llvm.smax.i32(i32 %a77, i32 %b184)
  %f2.v3.extent_realized.s = sub nsw i32 %i.km, %f2.v3.min_realized ; 5 uses
  %reass.sub992 = sub i32 %i.jv, %f2.v4.min_realized
  %i.kn = add i32 %reass.sub992, 1
  %i.ko = zext i32 %i.kn to i64                   ; 3 uses
  %i.kp = add nsw i32 %f2.v3.extent_realized.s, 1
  %i.kq = zext i32 %i.kp to i64                   ; 2 uses
  %i.kr = shl nuw nsw i64 %i.kq, 2                ; 2 uses
  %i.ks = mul i64 %i.kr, %i.ko                    ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 2147483648
  %i.ku = and i64 %i.kr, 4294967292
  %i.kv = mul nuw i64 %i.ku, %i.ko
  %i.kw = lshr i64 %i.kv, 32
  %i.kx = lshr i64 %i.kq, 30
  %i.ky = mul nuw nsw i64 %i.kx, %i.ko
  %i.kz = add nuw nsw i64 %i.kw, %i.ky
  %i.la = icmp samesign ult i64 %i.kz, 4294967296
  %i.lb = and i1 %i.kt, %i.la
  br i1 %i.lb, label %"assert succeeded104", label %"assert failed103", !prof !5

"assert failed103":                               ; preds = %"consume f0"
  %i.lc = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.10, i64 %i.ks, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded104":                            ; preds = %"consume f0"
  %i.ld = add nuw nsw i64 %i.ks, 4
  %i.le = tail call ptr @halide_malloc(ptr null, i64 %i.ld) ; 50 uses
  %.not343 = icmp eq ptr %i.le, null
  br i1 %.not343, label %"assert failed105", label %"produce f2", !prof !4

"assert failed105":                               ; preds = %"assert succeeded104"
  %i.lf = tail call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f2":                                     ; preds = %"assert succeeded104"
  %i.lg = add i32 %b97, 31
  %i.lh = sub i32 %i.lg, %a145
  %a195 = ashr i32 %i.lh, 5
  %i.li = tail call i32 @llvm.smax.i32(i32 %a195, i32 0) ; 2 uses
  %b196 = add nsw i32 %i.dl, 1                    ; 2 uses
  %i.lj = icmp slt i32 %i.dl, %i.li
  %f2.s0.v4.v4.prologue = select i1 %i.lj, i32 %b196, i32 %i.li ; 2 uses
  %i.lk = sub nsw i32 %i.di, %a145
  %i.ll = ashr i32 %i.lk, 5
  %a200 = add nsw i32 %i.ll, -1
  %i.lm = tail call i32 @llvm.smin.i32(i32 %b88, i32 %b90)
  %i.ln = sub nsw i32 %i.lm, %a145
  %b202 = ashr i32 %i.ln, 5
  %a199 = tail call i32 @llvm.smin.i32(i32 %b202, i32 %a200)
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 %a199)
  %b198 = add nsw i32 %i.lo, 1
  %f2.s0.v4.v4.epilogue = tail call i32 @llvm.smax.i32(i32 %f2.s0.v4.v4.prologue, i32 %b198)
  store i32 %b185, ptr %12, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %a181, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %b149, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %a145, ptr %i.lr, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %f2.s0.v4.v4.epilogue, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %f2.s0.v4.v4.prologue, ptr %i.lt, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %f2.v3.extent_realized.s, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %f2.v3.min_realized, ptr %i.lv, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 %f2.v4.min_realized, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 %input.extent.0, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %input.extent.1, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 %input.extent.2, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 %b82, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 %b97, ptr %i.mb, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %b108, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i32 %input.stride.1, ptr %i.md, align 4
  %i.me = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 %input.stride.2, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.le, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr null, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %12, i64 88
  store ptr %input.host, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr %input.buffer, ptr %i.mi, align 8
  %i.mj = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f2.s0.v4.v4, i32 0, i32 %b196, ptr nonnull %12) ; 2 uses
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %"consume f2", label %call_destructor.exit210.thread823, !prof !5

"consume f2":                                     ; preds = %"produce f2"
  %b252 = add nuw nsw i32 %i.cw, 1
  %a249 = call i32 @llvm.smax.i32(i32 %a742, i32 %b252)
  %f4.v6.extent_realized.s = sub nsw i32 %a249, %i.cs
  %i.ml = ashr i32 %b89, 1
  %a256 = add nsw i32 %i.ml, -1                   ; 2 uses
  %i.mm = add nsw i32 %b89, 3
  %b258 = ashr i32 %i.mm, 1
  %a255 = call i32 @llvm.smin.i32(i32 %b258, i32 %a256) ; 3 uses
  %b259 = add nsw i32 %b539, -7
  %i.mn = call i32 @llvm.smin.i32(i32 %b259, i32 %a392) ; 2 uses
  %i.mo = shl nsw i32 %i.mn, 1
  %b257 = add nsw i32 %i.mo, -1
  %a254 = call i32 @llvm.smin.i32(i32 %b257, i32 %a255)
  %a253 = call i32 @llvm.smin.i32(i32 %a256, i32 %a254)
  %f4.v4.min_realized = call i32 @llvm.smin.i32(i32 %a133, i32 %a253) ; 4 uses
  %i.mp = sub nsw i32 %b539, %a392                ; 2 uses
  %i.mq = ashr i32 %i.mp, 3
  %i.mr = or i32 %i.mp, 7
  %a271 = add i32 %a392, %i.mr
  %i.ms = call i32 @llvm.smin.i32(i32 %b539, i32 %a271) ; 2 uses
  %i.mt = shl nsw i32 %i.ms, 1
  %a270 = add nsw i32 %i.mt, 2
  %i.mu = ashr i32 %b94, 1
  %b272 = add nsw i32 %i.mu, 1                    ; 2 uses
  %a269 = call i32 @llvm.smax.i32(i32 %a270, i32 %b272)
  %i.mv = call i32 @llvm.smax.i32(i32 %i.jr, i32 %a269)
  %b280 = add nsw i32 %b556, -7                   ; 2 uses
  %i.mw = call i32 @llvm.smin.i32(i32 %b280, i32 %a416) ; 2 uses
  %i.mx = shl nsw i32 %i.mw, 1
  %a277 = add nsw i32 %i.mx, -1
  %i.my = ashr i32 %b74, 1                        ; 2 uses
  %a279 = add nsw i32 %i.my, -1                   ; 2 uses
  %i.mz = ashr i32 %b79, 1                        ; 2 uses
  %b281 = add nsw i32 %i.mz, -6                   ; 2 uses
  %b279 = call i32 @llvm.smin.i32(i32 %b281, i32 %a279) ; 3 uses
  %a276 = call i32 @llvm.smin.i32(i32 %b279, i32 %a277)
  %i.na = ashr i32 %b160, 1
  %b278 = add nsw i32 %i.na, -1
  %a275 = call i32 @llvm.smin.i32(i32 %b278, i32 %a276)
  %f4.v3.min_realized = call i32 @llvm.smin.i32(i32 %a163, i32 %a275) ; 4 uses
  %i.nb = sub nsw i32 %b556, %a416
  %i.nc = or i32 %i.nb, 7
  %a299 = add i32 %a416, %i.nc
  %i.nd = call i32 @llvm.smin.i32(i32 %b556, i32 %a299) ; 2 uses
  %i.ne = shl nsw i32 %i.nd, 1
  %a298 = add nsw i32 %i.ne, 2
  %reass.sub993 = sub nsw i32 %i.mz, %i.my
  %i.nf = add i32 %reass.sub993, 2
  %i.ng = and i32 %i.nf, -8
  %a300 = add i32 %a279, %i.ng
  %i.nh = call i32 @llvm.smin.i32(i32 %b281, i32 %a300) ; 2 uses
  %b300 = add nsw i32 %i.nh, 7                    ; 3 uses
  %a297 = call i32 @llvm.smax.i32(i32 %a298, i32 %b300)
  %i.ni = add nsw i32 %i.kl, 9
  %b299 = ashr i32 %i.ni, 1
  %a296 = call i32 @llvm.smax.i32(i32 %a297, i32 %b299)
  %b298 = ashr i32 %b188, 1
  %b296 = call i32 @llvm.smax.i32(i32 %a296, i32 %b298)
  %i.nj = call i32 @llvm.smax.i32(i32 %i.kg, i32 %b296)
  %f4.v3.extent_realized.s = sub nsw i32 %i.nj, %f4.v3.min_realized ; 4 uses
  %i.nk = add nsw i32 %f4.v6.extent_realized.s, 1 ; 5 uses
  %i.nl = add nsw i32 %f4.v3.extent_realized.s, 1 ; 2 uses
  %f4.stride.1 = mul nsw i32 %i.nl, %i.nk         ; 3 uses
  %reass.sub994 = sub i32 %i.mv, %f4.v4.min_realized
  %i.nm = add i32 %reass.sub994, 1
  %i.nn = zext i32 %i.nm to i64                   ; 3 uses
  %i.no = zext i32 %i.nl to i64                   ; 2 uses
  %i.np = shl nuw nsw i64 %i.no, 2                ; 2 uses
  %i.nq = and i64 %i.np, 4294967292
  %i.nr = mul nuw i64 %i.nq, %i.nn
  %i.ns = lshr i64 %i.nr, 32
  %i.nt = lshr i64 %i.no, 30
  %i.nu = mul nuw nsw i64 %i.nt, %i.nn
  %t3067 = add nuw nsw i64 %i.ns, %i.nu           ; 2 uses
  %t3068 = mul i64 %i.np, %i.nn                   ; 2 uses
  %i.nv = zext i32 %i.nk to i64                   ; 18 uses
  %i.nw = mul i64 %t3068, %i.nv                   ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 2147483648
  %i.ny = and i64 %t3068, 4294967292
  %i.nz = mul nuw i64 %i.ny, %i.nv
  %i.oa = lshr i64 %i.nz, 32
  %i.ob = mul i64 %t3067, %i.nv
  %i.oc = add i64 %i.ob, %i.oa
  %i.od = or i64 %i.oc, %t3067
  %i.oe = icmp ult i64 %i.od, 4294967296
  %i.of = and i1 %i.nx, %i.oe
  br i1 %i.of, label %"assert succeeded110", label %"assert failed109", !prof !5

"assert failed109":                               ; preds = %"consume f2"
  %i.og = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.11, i64 %i.nw, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded110":                            ; preds = %"consume f2"
  %i.oh = add nuw nsw i64 %i.nw, 4
  %i.oi = call ptr @halide_malloc(ptr null, i64 %i.oh) ; 46 uses
  %.not379 = icmp eq ptr %i.oi, null
  br i1 %.not379, label %"assert failed111", label %"produce f4", !prof !4

"assert failed111":                               ; preds = %"assert succeeded110"
  %i.oj = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f4":                                     ; preds = %"assert succeeded110"
  %f4.s0.v6.loop_extent.s = sub nsw i32 %i.cw, %i.cs ; 5 uses
  %i.ok = add nsw i32 %i.jn, 9
  %i.ol = ashr i32 %i.ok, 3
  store float %beta, ptr %11, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %b121, ptr %i.om, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %a772, ptr %i.on, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %f2.v3.extent_realized.s, ptr %i.oo, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %f2.v3.min_realized, ptr %i.op, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %f2.v4.min_realized, ptr %i.oq, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %b465, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %f4.s0.v3.min.s, ptr %i.os, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %b448, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 36
  store i32 %f4.s0.v4.min.s, ptr %i.ou, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %f4.s0.v6.loop_extent.s, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 %f4.stride.1, ptr %i.ow, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 %f4.v3.extent_realized.s, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i32 %f4.v3.min_realized, ptr %i.oy, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i32 %f4.v4.min_realized, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i32 %levels, ptr %i.pa, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.gd, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %11, i64 72
  store ptr null, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %i.le, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr null, ptr %i.pe, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %11, i64 96
  store ptr %i.oi, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr null, ptr %i.pg, align 8
  %i.ph = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f4.s0.v4.v4, i32 0, i32 %i.ol, ptr nonnull %11) ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %"consume f4", label %call_destructor.exit210.thread823, !prof !5

"consume f4":                                     ; preds = %"produce f4"
  %b385 = add nsw i32 %b624, -7
  %i.pj = call i32 @llvm.smin.i32(i32 %b385, i32 %a485) ; 2 uses
  %i.pk = shl nsw i32 %i.pj, 1
  %a382 = add nsw i32 %i.pk, -1
  %i.pl = add nsw i32 %b89, -6                    ; 2 uses
  %b384 = ashr i32 %i.pl, 2                       ; 2 uses
  %a381 = call i32 @llvm.smin.i32(i32 %b384, i32 %a382)
  %i.pm = ashr i32 %a255, 1
  %b383 = add nsw i32 %i.pm, -1
  %a380 = call i32 @llvm.smin.i32(i32 %b383, i32 %a381)
  %f5.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.mn, i32 %a380) ; 4 uses
  %i.pn = sub nsw i32 %b624, %a485                ; 2 uses
  %i.po = ashr i32 %i.pn, 3
  %i.pp = or i32 %i.pn, 7
  %a397 = add i32 %a485, %i.pp
  %i.pq = call i32 @llvm.smin.i32(i32 %b624, i32 %a397) ; 2 uses
  %i.pr = shl nsw i32 %i.pq, 1
  %a396 = add nsw i32 %i.pr, 2
  %i.ps = add nsw i32 %b94, 6                     ; 2 uses
  %b398 = ashr i32 %i.ps, 2                       ; 2 uses
  %a395 = call i32 @llvm.smax.i32(i32 %a396, i32 %b398)
  %i.pt = add nsw i32 %b94, 2
  %b397 = ashr i32 %i.pt, 2
  %b395 = call i32 @llvm.smax.i32(i32 %a395, i32 %b397)
  %i.pu = call i32 @llvm.smax.i32(i32 %i.ms, i32 %b395)
  %b406 = add nsw i32 %b641, -7                   ; 2 uses
  %i.pv = call i32 @llvm.smin.i32(i32 %b406, i32 %a509) ; 2 uses
  %i.pw = shl nsw i32 %i.pv, 1
  %a403 = add nsw i32 %i.pw, -1
  %a405 = add nsw i32 %b74, -6                    ; 2 uses
  %b407 = add nsw i32 %b79, -22                   ; 2 uses
  %i.px = call i32 @llvm.smin.i32(i32 %b407, i32 %a405) ; 2 uses
  %b405 = ashr i32 %i.px, 2                       ; 2 uses
  %a402 = call i32 @llvm.smin.i32(i32 %b405, i32 %a403)
  %i.py = ashr i32 %b279, 1
  %b404 = add nsw i32 %i.py, -1
  %a401 = call i32 @llvm.smin.i32(i32 %b404, i32 %a402)
  %f5.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.mw, i32 %a401) ; 4 uses
  %i.pz = sub nsw i32 %b641, %a509
  %i.qa = or i32 %i.pz, 7
  %a422 = add i32 %a509, %i.qa
  %i.qb = call i32 @llvm.smin.i32(i32 %b641, i32 %a422) ; 2 uses
  %i.qc = shl nsw i32 %i.qb, 1
  %a421 = add nsw i32 %i.qc, 2
  %i.qd = ashr i32 %a405, 2                       ; 2 uses
  %i.qe = add nsw i32 %b79, 6
  %i.qf = ashr i32 %i.qe, 2
  %i.qg = sub nsw i32 %i.qf, %i.qd
  %i.qh = and i32 %i.qg, -8
  %a423 = add nsw i32 %i.qh, %i.qd
  %b425 = ashr i32 %b407, 2
  %i.qi = call i32 @llvm.smin.i32(i32 %b425, i32 %a423) ; 2 uses
  %b423 = add nsw i32 %i.qi, 7                    ; 3 uses
  %a420 = call i32 @llvm.smax.i32(i32 %a421, i32 %b423)
  %i.qj = add nsw i32 %i.nh, 9
  %b422 = ashr i32 %i.qj, 1
  %a419 = call i32 @llvm.smax.i32(i32 %a420, i32 %b422)
  %b421 = ashr i32 %b300, 1
  %b419 = call i32 @llvm.smax.i32(i32 %a419, i32 %b421)
  %i.qk = call i32 @llvm.smax.i32(i32 %i.nd, i32 %b419)
end_hunk_1
