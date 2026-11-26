Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/odls_base_default_fns?download=true
inline.NumInlined: 107
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@prte_odls_base_default_get_add_procs_data:bb.a
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %pmix_pointer_array_get_item.exit, label %._crit_edge192

pmix_pointer_array_get_item.exit:                 ; preds = %bb.g, %bb.p
  %i.w = phi ptr [ %i.bb, %bb.p ], [ %i.s, %bb.g ] ; 2 uses
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %bb.p ], [ 1, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv215
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  %.not148 = icmp eq ptr %i.aa, %i.i
  %or.cond = or i1 %i.ab, %.not148
  br i1 %or.cond, label %bb.p, label %bb.h

bb.h:                                             ; preds = %pmix_pointer_array_get_item.exit
  call void @PMIx_Data_buffer_construct(ptr noundef nonnull %3) #16
  %i.ac = call i32 @prte_job_pack(ptr noundef nonnull %3, ptr noundef nonnull %i.aa) #16 ; 3 uses
  switch i32 %i.ac, label %bb.i [
    i32 0, label %.preheader
    i32 -2, label %.loopexit172
  ]

.preheader:                                       ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 464 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !38
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %pmix_pointer_array_get_item.exit160, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @PMIx_Error_string(i32 noundef %i.ac) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.ai, ptr noundef nonnull @.str.1, i32 noundef 211) #16
  br label %.loopexit172

.loopexit172:                                     ; preds = %bb.h, %bb.i
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %2) #16
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %3) #16
  br label %bb.az

pmix_pointer_array_get_item.exit160:              ; preds = %.preheader, %bb.l
  %i.aj = phi ptr [ %i.as, %bb.l ], [ %i.ae, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !40 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.j

bb.j:                                             ; preds = %pmix_pointer_array_get_item.exit160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 404
  %i.aq = call i32 @PMIx_Data_pack(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %i.ap, i32 noundef 1, i16 noundef zeroext 40) #16 ; 3 uses
  switch i32 %i.aq, label %bb.k [
    i32 0, label %._crit_edge224
    i32 -2, label %.loopexit
  ]

._crit_edge224:                                   ; preds = %bb.j
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !41
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = call ptr @PMIx_Error_string(i32 noundef %i.aq) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.ar, ptr noundef nonnull @.str.1, i32 noundef 224) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %2) #16
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %3) #16
  br label %bb.az

bb.l:                                             ; preds = %._crit_edge224, %pmix_pointer_array_get_item.exit160
  %i.as = phi ptr [ %.pre, %._crit_edge224 ], [ %i.aj, %pmix_pointer_array_get_item.exit160 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %pmix_pointer_array_get_item.exit160, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.ax = call i32 @PMIx_Data_unload(ptr noundef nonnull %3, ptr noundef nonnull %5) #16 ; 3 uses
  switch i32 %i.ax, label %bb.m [
    i32 0, label %bb.n
    i32 -2, label %.loopexit173
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.ay = call ptr @PMIx_Error_string(i32 noundef %i.ax) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.ay, ptr noundef nonnull @.str.1, i32 noundef 233) #16
  br label %.loopexit173

.loopexit173:                                     ; preds = %._crit_edge, %bb.m
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %3) #16
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %2) #16
  br label %bb.az

bb.n:                                             ; preds = %._crit_edge
  %i.az = call i32 @PMIx_Data_pack(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 1, i16 noundef zeroext 27) #16 ; 3 uses
  call void @PMIx_Byte_object_destruct(ptr noundef nonnull %5) #16
  switch i32 %i.az, label %bb.o [
    i32 0, label %._crit_edge225
    i32 -2, label %.loopexit174
  ]

._crit_edge225:                                   ; preds = %bb.n
  %.pre226 = load ptr, ptr @prte_job_data, align 8, !tbaa !35
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = call ptr @PMIx_Error_string(i32 noundef %i.az) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.ba, ptr noundef nonnull @.str.1, i32 noundef 242) #16
  br label %.loopexit174

.loopexit174:                                     ; preds = %bb.n, %bb.o
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %2) #16
  br label %bb.az

bb.p:                                             ; preds = %._crit_edge225, %pmix_pointer_array_get_item.exit
  %i.bb = phi ptr [ %.pre226, %._crit_edge225 ], [ %i.w, %pmix_pointer_array_get_item.exit ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !38
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next216, %i.be
  br i1 %i.bf, label %pmix_pointer_array_get_item.exit, label %._crit_edge192, !llvm.loop !149

._crit_edge192:                                   ; preds = %bb.p, %bb.g
  %i.bg = call i32 @PMIx_Data_unload(ptr noundef nonnull %2, ptr noundef nonnull %5) #16 ; 3 uses
  switch i32 %i.bg, label %bb.q [
    i32 0, label %bb.s
    i32 -2, label %bb.r
  ]

bb.q:                                             ; preds = %._crit_edge192
  %i.bh = call ptr @PMIx_Error_string(i32 noundef %i.bg) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.bh, ptr noundef nonnull @.str.1, i32 noundef 251) #16
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge192, %bb.q
  call void @PMIx_Data_buffer_destruct(ptr noundef nonnull %2) #16
  br label %bb.az

bb.s:                                             ; preds = %._crit_edge192
  %i.bi = call i32 @PMIx_Data_pack(ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i16 noundef zeroext 27) #16 ; 4 uses
  call void @PMIx_Byte_object_destruct(ptr noundef nonnull %5) #16
  switch i32 %i.bi, label %bb.t [
    i32 0, label %bb.w
    i32 -2, label %bb.az
  ]

bb.t:                                             ; preds = %bb.s
  %i.bj = call ptr @PMIx_Error_string(i32 noundef %i.bi) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.bj, ptr noundef nonnull @.str.1, i32 noundef 259) #16
  br label %bb.az

bb.u:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 1, !tbaa !34
  %i.bk = call i32 @PMIx_Data_pack(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i16 noundef zeroext 7) #16 ; 4 uses
  switch i32 %i.bk, label %bb.v [
    i32 0, label %bb.w
    i32 -2, label %bb.az
  ]

bb.v:                                             ; preds = %bb.u
  %i.bl = call ptr @PMIx_Error_string(i32 noundef %i.bk) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.bl, ptr noundef nonnull @.str.1, i32 noundef 266) #16
  br label %bb.az

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.bm = call i32 @prte_job_pack(ptr noundef %0, ptr noundef nonnull %i.i) #16 ; 4 uses
  switch i32 %i.bm, label %bb.x [
    i32 0, label %bb.y
    i32 -2, label %bb.az
  ]

bb.x:                                             ; preds = %bb.w
  %i.bn = call ptr @PMIx_Error_string(i32 noundef %i.bm) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.bn, ptr noundef nonnull @.str.1, i32 noundef 274) #16
  br label %bb.az

bb.y:                                             ; preds = %bb.w
  store ptr null, ptr %i.b, align 8, !tbaa !43
  store ptr null, ptr %i.c, align 8, !tbaa !43
  %i.bo = call ptr @PMIx_Info_list_start() #16    ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !38
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %pmix_pointer_array_get_item.exit163.lr.ph, label %._crit_edge196

pmix_pointer_array_get_item.exit163.lr.ph:        ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  br label %pmix_pointer_array_get_item.exit163

pmix_pointer_array_get_item.exit163:              ; preds = %pmix_pointer_array_get_item.exit163.lr.ph, %bb.ae
  %indvars.iv221 = phi i64 [ 0, %pmix_pointer_array_get_item.exit163.lr.ph ], [ %indvars.iv.next222, %bb.ae ] ; 2 uses
  %i.bv = phi ptr [ %i.bq, %pmix_pointer_array_get_item.exit163.lr.ph ], [ %i.dc, %bb.ae ]
  store ptr null, ptr %i.d, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv221
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40 ; 3 uses
  %.not142 = icmp eq ptr %i.bz, null
  br i1 %.not142, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %pmix_pointer_array_get_item.exit163
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !153
  %i.cc = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.b, ptr noundef %i.cb) #16 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 208 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !38
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %pmix_pointer_array_get_item.exit166, label %._crit_edge194

pmix_pointer_array_get_item.exit166:              ; preds = %bb.z, %bb.ac
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %i.ci = phi ptr [ %i.ct, %bb.ac ], [ %i.ce, %bb.z ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv218
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40 ; 3 uses
  %.not144 = icmp eq ptr %i.cm, null
  br i1 %.not144, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %pmix_pointer_array_get_item.exit166
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  %i.co = call zeroext i1 @PMIx_Check_nspace(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.cn) #16
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 400
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !53
  %i.cr = call ptr @prte_util_print_vpids(i32 noundef %i.cq) #16
  %i.cs = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.d, ptr noundef %i.cr) #16 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %pmix_pointer_array_get_item.exit166, %bb.ab, %bb.aa
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !38
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next219, %i.cw
  br i1 %i.cx, label %pmix_pointer_array_get_item.exit166, label %._crit_edge194, !llvm.loop !150

._crit_edge194:                                   ; preds = %bb.ac, %bb.z
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %.not143 = icmp eq ptr %i.cy, null
  br i1 %.not143, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge194
  %i.cz = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.cy, i32 noundef 44) #16 ; 3 uses
  store ptr %i.cz, ptr %i.e, align 8, !tbaa !54
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !43
  call void @PMIx_Argv_free(ptr noundef %i.da) #16
  %i.db = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.c, ptr noundef %i.cz) #16 ; 0 uses
  call void @free(ptr noundef %i.cz) #16
  br label %bb.ae

bb.ae:                                            ; preds = %pmix_pointer_array_get_item.exit163, %bb.ad, %._crit_edge194
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.dc = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !38
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next222, %i.df
  br i1 %i.dg, label %pmix_pointer_array_get_item.exit163, label %._crit_edge196, !llvm.loop !151

._crit_edge196:                                   ; preds = %bb.ae, %bb.y
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.not132 = icmp eq ptr %i.dh, null
  br i1 %.not132, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %._crit_edge196
  %i.di = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.dh, i32 noundef 44) #16 ; 4 uses
  store ptr %i.di, ptr %i.e, align 8, !tbaa !54
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !43
  call void @PMIx_Argv_free(ptr noundef %i.dj) #16
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.dk = call i32 @PMIx_generate_regex(ptr noundef %i.di, ptr noundef nonnull %i.f) #16 ; 3 uses
  switch i32 %i.dk, label %bb.ag [
    i32 0, label %bb.ai
    i32 -2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dl = call ptr @PMIx_Error_string(i32 noundef %i.dk) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.dl, ptr noundef nonnull @.str.1, i32 noundef 310) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @free(ptr noundef %i.di) #16
  call void @PMIx_Info_free(ptr noundef null, i64 noundef 0) #16
  %i.dm = call i32 @prte_pmix_convert_status(i32 noundef %i.dk) #16
  br label %bb.az

bb.ai:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.di) #16
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.do = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.3, ptr noundef %i.dn, i16 noundef zeroext 49) #16 ; 0 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !54
  call void @free(ptr noundef %i.dp) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge196
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %.not134 = icmp eq ptr %i.dq, null
  br i1 %.not134, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.dq, i32 noundef 59) #16 ; 4 uses
  store ptr %i.dr, ptr %i.e, align 8, !tbaa !54
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @PMIx_Argv_free(ptr noundef %i.ds) #16
  store ptr null, ptr %i.c, align 8, !tbaa !43
  %i.dt = call i32 @PMIx_generate_ppn(ptr noundef %i.dr, ptr noundef nonnull %i.f) #16 ; 3 uses
  switch i32 %i.dt, label %bb.al [
    i32 0, label %bb.an
    i32 -2, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.du = call ptr @PMIx_Error_string(i32 noundef %i.dt) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.du, ptr noundef nonnull @.str.1, i32 noundef 326) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @free(ptr noundef %i.dr) #16
  call void @PMIx_Info_free(ptr noundef null, i64 noundef 0) #16
  %i.dv = call i32 @prte_pmix_convert_status(i32 noundef %i.dt) #16
  br label %bb.az

bb.an:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.dr) #16
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.dx = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.4, ptr noundef %i.dw, i16 noundef zeroext 49) #16 ; 0 uses
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !54
  call void @free(ptr noundef %i.dy) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !55 ; 2 uses
  %.not136 = icmp eq ptr %i.ea, null
  br i1 %.not136, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.ea, i32 noundef 44) #16 ; 3 uses
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !54
  %i.ec = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.5, ptr noundef %i.eb, i16 noundef zeroext 3) #16 ; 0 uses
  call void @free(ptr noundef %i.eb) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ed = call ptr @PMIx_Info_list_start() #16    ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  %i.ef = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ee) #16 ; 0 uses
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.eh = call i32 @PMIx_Info_list_add(ptr noundef %i.ed, ptr noundef nonnull @.str.7, ptr noundef %i.eg, i16 noundef zeroext 3) #16 ; 0 uses
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !54
  call void @free(ptr noundef %i.ei) #16
  %i.ej = call i32 @PMIx_Info_list_add(ptr noundef %i.ed, ptr noundef nonnull @.str.8, ptr noundef null, i16 noundef zeroext 1) #16 ; 0 uses
  %i.ek = call i32 @PMIx_Info_list_convert(ptr noundef %i.ed, ptr noundef nonnull %6) #16 ; 0 uses
  %i.el = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.9, ptr noundef nonnull %6, i16 noundef zeroext 39) #16 ; 0 uses
  call void @PMIx_Data_array_destruct(ptr noundef nonnull %6) #16
  call void @PMIx_Info_list_release(ptr noundef %i.ed) #16
  %i.em = call i32 @geteuid() #16
  store i32 %i.em, ptr %i.g, align 4, !tbaa !56
  %i.en = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.g, i16 noundef zeroext 14) #16 ; 0 uses
  %i.eo = call i32 @getegid() #16
  store i32 %i.eo, ptr %i.h, align 4, !tbaa !56
  %i.ep = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.h, i16 noundef zeroext 14) #16 ; 0 uses
  %i.eq = call zeroext i1 @prte_get_attribute(ptr noundef nonnull %i.o, i16 noundef zeroext 290, ptr noundef null, i16 noundef zeroext 1) #16
  br i1 %i.eq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = call i32 @PMIx_Info_list_add(ptr noundef %i.bo, ptr noundef nonnull @.str.12, ptr noundef null, i16 noundef zeroext 1) #16 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.es = call i32 @PMIx_Info_list_convert(ptr noundef %i.bo, ptr noundef nonnull %6) #16 ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !155
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !61
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !156
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !62
  call void @PMIx_Info_list_release(ptr noundef %i.bo) #16
  store ptr %i.i, ptr %4, align 8, !tbaa !63
  %i.ez = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !56
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_mutex_t_class, i64 32), align 8, !tbaa !65
  %.not137 = icmp eq i32 %i.ez, %i.fa
  br i1 %.not137, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_mutex_t_class) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr @pmix_mutex_t_class, ptr %i.fc, align 8, !tbaa !66
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 1, ptr %i.fd, align 8, !tbaa !67
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, i8 0, i64 64, i1 false)
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mutex_t_class, i64 40), align 8, !tbaa !68 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !40 ; 2 uses
  %.not6.i = icmp eq ptr %i.fg, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.au, %.lr.ph.i
  %i.fh = phi ptr [ %i.fj, %.lr.ph.i ], [ %i.fg, %bb.au ]
  %.07.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %i.ff, %bb.au ]
  call void %i.fh(ptr noundef nonnull %i.fb) #16, !inline_history !0
  %i.fi = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !40 ; 2 uses
  %.not.i167 = icmp eq ptr %i.fj, null
  br i1 %.not.i167, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.au
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.fl = call i32 @pthread_cond_init(ptr noundef nonnull %i.fk, ptr noundef null) #16 ; 0 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  store volatile i8 1, ptr %i.fm, align 8, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 236
  store i32 0, ptr %i.fn, align 4, !tbaa !157
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !158
  fence release
  %i.fp = load ptr, ptr %i.ev, align 8, !tbaa !61
  %i.fq = load i64, ptr %i.ey, align 8, !tbaa !62
  %i.fr = call i32 @PMIx_server_setup_application(ptr noundef nonnull %i.ee, ptr noundef %i.fp, i64 noundef %i.fq, ptr noundef nonnull @setup_cbfunc, ptr noundef nonnull %4) #16 ; 2 uses
  %.not138 = icmp eq i32 %i.fr, 0
  br i1 %.not138, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.fs = call ptr @PMIx_Error_string(i32 noundef %i.fr) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 381, ptr noundef %i.fs) #16
  br label %bb.ax

bb.aw:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  %i.fu = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ft) #16 ; 0 uses
  %i.fv = load volatile i8, ptr %i.fm, align 8, !tbaa !69, !range !70, !noundef !71
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.lr.ph, label %._crit_edge198

.lr.ph:                                           ; preds = %bb.aw, %.lr.ph
  %i.fx = call i32 @pthread_cond_wait(ptr noundef nonnull %i.fk, ptr noundef nonnull %i.ft) #16 ; 0 uses
  %i.fy = load volatile i8, ptr %i.fm, align 8, !tbaa !69, !range !70, !noundef !71
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.lr.ph, label %._crit_edge198, !llvm.loop !152

._crit_edge198:                                   ; preds = %.lr.ph, %bb.aw
  fence acquire
  %i.ga = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ft) #16 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %._crit_edge198
  %.0102 = phi i32 [ -1, %bb.av ], [ 0, %._crit_edge198 ] ; 2 uses
  fence acquire
  %i.gb = load ptr, ptr %i.fc, align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !72 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !40 ; 2 uses
  %.not6.i168 = icmp eq ptr %i.ge, null
end_hunk_0
