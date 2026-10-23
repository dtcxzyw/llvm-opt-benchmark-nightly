Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_server?download=true
inline.NumInlined: 108
inline.NumDeleted: 12
begin_hunk_0_@pmix_server_init:bb.a
  %.not117 = icmp eq i32 %i.t, %i.u
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pmix_obj_run_constructors.exit160
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_pointer_array_t_class) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pmix_obj_run_constructors.exit160
  store ptr @pmix_pointer_array_t_class, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 216), align 8, !tbaa !57
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 224), align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 232), i8 0, i64 64, i1 false)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %.not6.i161 = icmp eq ptr %i.w, null
  br i1 %.not6.i161, label %pmix_obj_run_constructors.exit165, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %bb.h, %.lr.ph.i162
  %i.x = phi ptr [ %i.z, %.lr.ph.i162 ], [ %i.w, %bb.h ]
  %.07.i163 = phi ptr [ %i.y, %.lr.ph.i162 ], [ %i.v, %bb.h ]
  tail call void %i.x(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 176)) #17, !inline_history !3
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i163, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %.not.i164 = icmp eq ptr %i.z, null
  br i1 %.not.i164, label %pmix_obj_run_constructors.exit165, label %.lr.ph.i162, !llvm.loop !4

pmix_obj_run_constructors.exit165:                ; preds = %.lr.ph.i162, %bb.h
  %i.aa = tail call i32 @pmix_pointer_array_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 176), i32 noundef 128, i32 noundef 2147483647, i32 noundef 2) #17 ; 0 uses
  %i.ab = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !55
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 32), align 8, !tbaa !62
  %.not118 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not118, label %bb.j, label %bb.i

bb.i:                                             ; preds = %pmix_obj_run_constructors.exit165
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_pointer_array_t_class) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %pmix_obj_run_constructors.exit165
  store ptr @pmix_pointer_array_t_class, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 56), align 8, !tbaa !57
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 64), align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 72), i8 0, i64 64, i1 false)
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not6.i166 = icmp eq ptr %i.ae, null
  br i1 %.not6.i166, label %pmix_obj_run_constructors.exit170, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.j, %.lr.ph.i167
  %i.af = phi ptr [ %i.ah, %.lr.ph.i167 ], [ %i.ae, %bb.j ]
  %.07.i168 = phi ptr [ %i.ag, %.lr.ph.i167 ], [ %i.ad, %bb.j ]
  tail call void %i.af(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 16)) #17, !inline_history !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i168, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ah, null
  br i1 %.not.i169, label %pmix_obj_run_constructors.exit170, label %.lr.ph.i167, !llvm.loop !4

pmix_obj_run_constructors.exit170:                ; preds = %.lr.ph.i167, %bb.j
  %i.ai = tail call i32 @pmix_pointer_array_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 16), i32 noundef 128, i32 noundef 2147483647, i32 noundef 2) #17 ; 0 uses
  %i.aj = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !55
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !62
  %.not119 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not119, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pmix_obj_run_constructors.exit170
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %pmix_obj_run_constructors.exit170
  store ptr @pmix_list_t_class, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 648), align 8, !tbaa !57
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 656), align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 664), i8 0, i64 64, i1 false)
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not6.i171 = icmp eq ptr %i.am, null
  br i1 %.not6.i171, label %pmix_obj_run_constructors.exit175, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.l, %.lr.ph.i172
  %i.an = phi ptr [ %i.ap, %.lr.ph.i172 ], [ %i.am, %bb.l ]
  %.07.i173 = phi ptr [ %i.ao, %.lr.ph.i172 ], [ %i.al, %bb.l ]
  tail call void %i.an(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 608)) #17, !inline_history !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i173, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 2 uses
  %.not.i174 = icmp eq ptr %i.ap, null
  br i1 %.not.i174, label %pmix_obj_run_constructors.exit175, label %.lr.ph.i172, !llvm.loop !4

pmix_obj_run_constructors.exit175:                ; preds = %.lr.ph.i172, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 344), ptr noundef nonnull align 4 dereferenceable(260) @prte_name_invalid, i64 260, i1 false), !tbaa.struct !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 885), align 1, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1152), align 8, !tbaa !67
  %i.aq = tail call ptr @PMIx_Info_list_start() #17 ; 48 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !149
  %i.as = tail call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.35, ptr noundef %i.ar, i16 noundef zeroext 3) #17 ; 2 uses
  %.not120 = icmp eq i32 %i.as, 0
  br i1 %.not120, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pmix_obj_run_constructors.exit175
  tail call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.at = tail call i32 @prte_pmix_convert_status(i32 noundef %i.as) #17
  br label %bb.ch

bb.n:                                             ; preds = %pmix_obj_run_constructors.exit175
  %i.au = load ptr, ptr @prte_event_base, align 8, !tbaa !70
  %i.av = tail call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.36, ptr noundef %i.au, i16 noundef zeroext 31) #17 ; 2 uses
  %.not121 = icmp eq i32 %i.av, 0
  br i1 %.not121, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.aw = tail call i32 @prte_pmix_convert_status(i32 noundef %i.av) #17
  br label %bb.ch

bb.p:                                             ; preds = %bb.n
  store ptr @.str.37, ptr @mytopology, align 8, !tbaa !151
  %i.ax = load ptr, ptr @prte_hwloc_topology, align 8, !tbaa !153
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @mytopology, i64 8), align 8, !tbaa !154
  call void @PMIx_Info_construct(ptr noundef nonnull %1) #17
  call void @PMIx_Load_key(ptr noundef nonnull %1, ptr noundef nonnull @.str.38) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i16 56, ptr %i.ay, align 8, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr @mytopology, ptr %i.az, align 8, !tbaa !64
  %i.ba = call i32 @PMIx_Info_list_insert(ptr noundef %i.aq, ptr noundef nonnull %1) #17 ; 2 uses
  %.not122 = icmp eq i32 %i.ba, 0
  br i1 %.not122, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bb = call i32 @prte_pmix_convert_status(i32 noundef %i.ba) #17
  br label %bb.ch

bb.r:                                             ; preds = %bb.p
  %i.bc = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.39, ptr noundef nonnull @share_hwloc_memory, i16 noundef zeroext 1) #17 ; 2 uses
  %.not123 = icmp eq i32 %i.bc, 0
  br i1 %.not123, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bd = call i32 @prte_pmix_convert_status(i32 noundef %i.bc) #17
  br label %bb.ch

bb.t:                                             ; preds = %bb.r
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 856), align 8, !tbaa !155
  %i.bf = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.40, ptr noundef %i.be, i16 noundef zeroext 3) #17 ; 2 uses
  %.not124 = icmp eq i32 %i.bf, 0
  br i1 %.not124, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bg = call i32 @prte_pmix_convert_status(i32 noundef %i.bf) #17
  br label %bb.ch

bb.v:                                             ; preds = %bb.t
  %i.bh = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.41, ptr noundef null, i16 noundef zeroext 1) #17 ; 3 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !55
  %.not125 = icmp eq i32 %i.bh, 0
  br i1 %.not125, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bi = call i32 @prte_pmix_convert_status(i32 noundef %i.bh) #17
  br label %bb.ch

bb.x:                                             ; preds = %bb.v
  %i.bj = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.42, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 887), i16 noundef zeroext 1) #17 ; 2 uses
  %.not126 = icmp eq i32 %i.bj, 0
  br i1 %.not126, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bk = call i32 @prte_pmix_convert_status(i32 noundef %i.bj) #17
  br label %bb.ch

bb.z:                                             ; preds = %bb.x
  %i.bl = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.43, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 881), i16 noundef zeroext 1) #17 ; 2 uses
  %.not127 = icmp eq i32 %i.bl, 0
  br i1 %.not127, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bm = call i32 @prte_pmix_convert_status(i32 noundef %i.bl) #17
  br label %bb.ch

bb.ab:                                            ; preds = %bb.z
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 836), align 4, !tbaa !74
  %i.bo = and i8 %i.bn, 4
  %.not128 = icmp eq i8 %i.bo, 0
  br i1 %.not128, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.44, ptr noundef null, i16 noundef zeroext 1) #17 ; 2 uses
  %.not130 = icmp eq i32 %i.bp, 0
  br i1 %.not130, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bq = call i32 @prte_pmix_convert_status(i32 noundef %i.bp) #17
  br label %bb.ch

bb.ae:                                            ; preds = %bb.ac
  %i.br = call ptr @getenv(ptr noundef nonnull @.str.45) #17
  %.not185 = icmp eq ptr %i.br, null
  %i.bs = load i8, ptr @prte_persistent, align 1, !range !51
  %3 = xor i8 %i.bs, 1
  %not.or.cond = select i1 %.not185, i8 %3, i8 0
  store i8 %not.or.cond, ptr %i.c, align 1, !tbaa !75
  %i.bt = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.c, i16 noundef zeroext 1) #17 ; 2 uses
  %.not131 = icmp eq i32 %i.bt, 0
  br i1 %.not131, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.bu = call i32 @prte_pmix_convert_status(i32 noundef %i.bt) #17
  br label %bb.ch

bb.ag:                                            ; preds = %bb.ae
  %i.bv = load i8, ptr @prte_xml_output, align 1, !tbaa !75, !range !51, !noundef !52
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.c, align 1, !tbaa !75
  %i.bx = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.c, i16 noundef zeroext 1) #17 ; 3 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !55
  %.not132 = icmp eq i32 %i.bx, 0
  br i1 %.not132, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.by = call i32 @prte_pmix_convert_status(i32 noundef %i.bx) #17
  br label %bb.ch

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.bz = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.48, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 882), i16 noundef zeroext 1) #17 ; 2 uses
  %.not133 = icmp eq i32 %i.bz, 0
  br i1 %.not133, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.ca = call i32 @prte_pmix_convert_status(i32 noundef %i.bz) #17
  br label %bb.ch

bb.al:                                            ; preds = %bb.aj
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 883), align 1, !tbaa !31, !range !51, !noundef !52
  %i.cc = xor i8 %i.cb, 1
  store i8 %i.cc, ptr %i.c, align 1, !tbaa !75
  %i.cd = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.c, i16 noundef zeroext 1) #17 ; 2 uses
  %.not134 = icmp eq i32 %i.cd, 0
  br i1 %.not134, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.ce = call i32 @prte_pmix_convert_status(i32 noundef %i.cd) #17
  br label %bb.ch

bb.an:                                            ; preds = %bb.al
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 884), align 4, !tbaa !33, !range !51, !noundef !52
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ch = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.50, ptr noundef null, i16 noundef zeroext 1) #17 ; 3 uses
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !55
  %.not135 = icmp eq i32 %i.ch, 0
  br i1 %.not135, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.ci = call i32 @prte_pmix_convert_status(i32 noundef %i.ch) #17
  br label %bb.ch

bb.aq:                                            ; preds = %bb.ab
  store i8 0, ptr %i.c, align 1, !tbaa !75
  %i.cj = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.c, i16 noundef zeroext 1) #17 ; 2 uses
  %.not129 = icmp eq i32 %i.cj, 0
  br i1 %.not129, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.ck = call i32 @prte_pmix_convert_status(i32 noundef %i.cj) #17
  br label %bb.ch

bb.as:                                            ; preds = %bb.aq, %bb.an, %bb.ao
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1160), align 8, !tbaa !156 ; 2 uses
  %.not136 = icmp eq ptr %i.cl, null
  br i1 %.not136, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cm = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.cl, i16 noundef zeroext 3) #17 ; 2 uses
  %.not137 = icmp eq i32 %i.cm, 0
  br i1 %.not137, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.cn = call i32 @prte_pmix_convert_status(i32 noundef %i.cm) #17
  br label %bb.ch

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1168), align 8, !tbaa !157 ; 2 uses
  %.not138 = icmp eq ptr %i.co, null
  br i1 %.not138, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cp = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.co, i16 noundef zeroext 3) #17 ; 2 uses
  %.not139 = icmp eq i32 %i.cp, 0
  br i1 %.not139, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.cq = call i32 @prte_pmix_convert_status(i32 noundef %i.cp) #17
  br label %bb.ch

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.cr = load ptr, ptr @prte_progress_thread_cpus, align 8, !tbaa !30 ; 2 uses
  %.not140 = icmp eq ptr %i.cr, null
  br i1 %.not140, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cs = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.cr, i16 noundef zeroext 3) #17 ; 0 uses
  %i.ct = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.54, ptr noundef nonnull @prte_bind_progress_thread_reqd, i16 noundef zeroext 1) #17
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !55
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.b = load i1, ptr @remote_connections_specified, align 1
  br i1 %.b, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.cu = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.55, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 886), i16 noundef zeroext 1) #17 ; 2 uses
  %.not141 = icmp eq i32 %i.cu, 0
  br i1 %.not141, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.cv = call i32 @prte_pmix_convert_status(i32 noundef %i.cu) #17
  br label %bb.ch

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 836), align 4, !tbaa !74
  %i.cx = and i8 %i.cw, 4
  %.not142 = icmp eq i8 %i.cx, 0
  br i1 %.not142, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cy = call ptr @getenv(ptr noundef nonnull @.str.56) #17
  %.not143 = icmp eq ptr %i.cy, null
  br i1 %.not143, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cz = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.c, i16 noundef zeroext 1) #17 ; 2 uses
  %.not144 = icmp eq i32 %i.cz, 0
  br i1 %.not144, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.da = call i32 @prte_pmix_convert_status(i32 noundef %i.cz) #17
  br label %bb.ch

bb.bh:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.db = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.58, ptr noundef nonnull @prte_keep_fqdn_hostnames, i16 noundef zeroext 1) #17 ; 2 uses
  %.not145 = icmp eq i32 %i.db, 0
  br i1 %.not145, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.dc = call i32 @prte_pmix_convert_status(i32 noundef %i.db) #17
  br label %bb.ch

bb.bj:                                            ; preds = %bb.bh
  %i.dd = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.59, ptr noundef nonnull @prte_process_info, i16 noundef zeroext 3) #17 ; 2 uses
  %.not146 = icmp eq i32 %i.dd, 0
  br i1 %.not146, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.de = call i32 @prte_pmix_convert_status(i32 noundef %i.dd) #17
  br label %bb.ch

bb.bl:                                            ; preds = %bb.bj
  %i.df = call i32 @PMIx_Info_list_add(ptr noundef %i.aq, ptr noundef nonnull @.str.60, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 256), i16 noundef zeroext 40) #17 ; 2 uses
  %.not147 = icmp eq i32 %i.df, 0
  br i1 %.not147, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  %i.dg = call i32 @prte_pmix_convert_status(i32 noundef %i.df) #17
  br label %bb.ch

bb.bn:                                            ; preds = %bb.bl
  %i.dh = call i32 @PMIx_Info_list_convert(ptr noundef %i.aq, ptr noundef nonnull %0) #17 ; 2 uses
  %.not148 = icmp eq i32 %i.dh, 0
  call void @PMIx_Info_list_release(ptr noundef %i.aq) #17
  br i1 %.not148, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.di = call i32 @prte_pmix_convert_status(i32 noundef %i.dh) #17
  br label %bb.ch

bb.bp:                                            ; preds = %bb.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !159 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !160 ; 2 uses
  %i.dn = call i32 @PMIx_server_init(ptr noundef nonnull @pmix_server, ptr noundef %i.dk, i64 noundef %i.dm) #17 ; 3 uses
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !55
  %.not149 = icmp eq i32 %i.dn, 0
end_hunk_0
