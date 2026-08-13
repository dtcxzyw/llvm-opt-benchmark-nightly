inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput16internal_readimgEPhiii:bb.a
  %i.y = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.y, label %bb.e, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i, %bb.e, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit6.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.ba, %_ZNSt14_Function_baseD2Ev.exit6.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !43  ; 5 uses
  %i.ab = invoke noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput7threadsEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %i.a, align 8, !tbaa !146
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  store ptr %i.x, ptr %i.d, align 8, !tbaa !146
  store i32 %i.aa, ptr %i.e, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.ad = icmp eq i32 %i.aa, 1
  %i.ae = icmp eq i32 %i.aa, 6
  %i.af = or i1 %i.ad, %i.ae
  %i.ag = select i1 %i.af, i64 8, i64 16
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !148
  %i.aj = icmp slt i32 %i.ai, 0                   ; 2 uses
  switch i32 %i.aa, label %bb.i [
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 6, label %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = select i1 %i.aj, i32 3, i32 4
  br label %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = select i1 %i.aj, i32 3, i32 2
  br label %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i

bb.i:                                             ; preds = %bb.f
  %i.am = and i32 %i.aa, -2
  %or.cond.i.i = icmp eq i32 %i.am, 8
  %..i.i = select i1 %or.cond.i.i, i32 3, i32 4
  br label %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i

_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.al, %bb.h ], [ 1, %bb.f ], [ %..i.i, %bb.i ]
  store i32 %.0.i.i, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.an = add nsw i32 %2, 3
  %i.ao = sdiv i32 %i.an, 4
  store i32 %i.ao, ptr %i.h, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aq, align 8
  %i.ar = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN11OpenImageIO4v3_1L15GetChannelCountENS0_7DDS_pvt11CompressionEb.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = add nsw i32 %3, 3
  %i.au = sdiv i32 %i.at, 4
  %i.av = sext i32 %i.au to i64
  store ptr %i.c, ptr %i.ar, align 16, !tbaa !149
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !151
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !149
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !154
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.b, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !149
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !156
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %i.ac, ptr %.sroa.10.0..sroa_idx.i, align 16, !tbaa !156
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr %i.a, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !151
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store ptr %i.g, ptr %.sroa.12.0..sroa_idx.i, align 16, !tbaa !149
  store ptr %i.ar, ptr %5, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_", ptr %i.as, align 8, !tbaa !157
  store ptr @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.ap, align 8, !tbaa !160
  store i32 %i.ab, ptr %6, align 8, !tbaa !3
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 0, ptr %.sroa.58.0..sroa_idx.i, align 4, !tbaa !161
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 1, ptr %.sroa.69.0..sroa_idx.i, align 2, !tbaa !163
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %.sroa.710.0..sroa_idx.i, align 8, !tbaa !145
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %.sroa.811.0..sroa_idx.i, align 8, !tbaa !165
  %.sroa.912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %.sroa.912.0..sroa_idx.i, align 8, !tbaa !167
  invoke void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef 0, i64 noundef %i.av, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %6)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #36
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.bb, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !43
  switch i32 %i.bf, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread132 [
    i32 2, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit
  %i.bg = icmp sgt i32 %3, 0
  %i.bh = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bg, %i.bh
  br i1 %or.cond, label %.preheader144.preheader, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread132

.preheader144.preheader:                          ; preds = %bb.p
  %i.bi = zext nneg i32 %2 to i64                 ; 2 uses
  %wide.trip.count179 = zext nneg i32 %3 to i64
  br label %.preheader144

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge
  %indvars.iv176 = phi i64 [ 0, %.preheader144.preheader ], [ %indvars.iv.next177, %._crit_edge ] ; 2 uses
  %i.bj = mul nuw nsw i64 %indvars.iv176, %i.bi
  br label %bb.q

._crit_edge:                                      ; preds = %bb.s
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not.a = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not.a, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread132, label %.preheader144, !llvm.loop !168

bb.q:                                             ; preds = %.preheader144, %bb.s
  %indvars.iv.a = phi i64 [ 0, %.preheader144 ], [ %indvars.iv.next.a, %bb.s ] ; 2 uses
  %i.bk = add nuw nsw i64 %indvars.iv.a, %i.bj
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = getelementptr i8, ptr %1, i64 %i.bl     ; 5 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 2 uses
  %.not108 = icmp eq i8 %i.bo, 0
  br i1 %.not108, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bq = zext i8 %i.bp to i16
  %i.br = mul nuw i16 %i.bq, 255
  %i.bs = zext i8 %i.bo to i16                    ; 3 uses
  %i.bt = udiv i16 %i.br, %i.bs
  %i.bu = trunc i16 %i.bt to i8
  store i8 %i.bu, ptr %i.bm, align 1, !tbaa !9
  %i.bv = getelementptr i8, ptr %i.bm, i64 1      ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = zext i8 %i.bw to i16
  %i.by = mul nuw i16 %i.bx, 255
  %i.bz = udiv i16 %i.by, %i.bs
  %i.ca = trunc i16 %i.bz to i8
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !9
  %i.cb = getelementptr i8, ptr %i.bm, i64 2      ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = zext i8 %i.cc to i16
  %i.ce = mul nuw i16 %i.cd, 255
  %i.cf = udiv i16 %i.ce, %i.bs
  %i.cg = trunc i16 %i.cf to i8
  store i8 %i.cg, ptr %i.cb, align 1, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !169

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread132

bb.t:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !170 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !107 ; 2 uses
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %.preheader143, label %.critedge

.preheader143:                                    ; preds = %bb.t
  %.not142148 = icmp sgt i32 %i.ci, 0
  br i1 %.not142148, label %.lr.ph, label %.thread138

.lr.ph:                                           ; preds = %.preheader143
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 260
  %wide.trip.count184 = zext nneg i32 %i.ci to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.x
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.thread138, label %bb.v, !llvm.loop !171

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv181 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next182, %bb.u ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv181
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = shl nuw nsw i64 %indvars.iv181, 3       ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl i32 255, %i.cs
  %.not103 = icmp eq i32 %i.cq, %i.ct
  br i1 %.not103, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv181
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %.not104 = icmp eq i64 %i.cr, %i.cw
  br i1 %.not104, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv181
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %.not105 = icmp eq i32 %i.cy, 8
  br i1 %.not105, label %bb.u, label %.critedge

.thread138:                                       ; preds = %bb.u, %.preheader143
  %i.cz = mul nsw i32 %i.ci, %2
  %i.da = sext i32 %i.cz to i64
  %i.db = sext i32 %3 to i64
  %i.dc = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i64 noundef %i.da, i64 noundef %i.db)
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit113.thread132

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.x, %bb.t
  %i.dd = mul nsw i32 %i.ck, %2
  %i.de = sext i32 %i.dd to i64
  %i.df = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #38 ; 6 uses
  %i.dg = icmp sgt i32 %4, 0
  br i1 %i.dg, label %.preheader.lr.ph, label %.thread141

.preheader.lr.ph:                                 ; preds = %.critedge
  %.not106159 = icmp sgt i32 %3, 0
  %i.dh = sext i32 %2 to i64                      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 260
  br i1 %.not106159, label %.preheader.lr.ph.split, label %.thread141

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.dl = icmp sgt i32 %2, 0
  br i1 %i.dl, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge162.split.us.us
  %.085167.us = phi i32 [ %i.fc, %._crit_edge162.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %i.dm = mul nuw nsw i32 %.085167.us, %3
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge158.us.us, %.preheader.us
  %.084160.us.us = phi i32 [ 0, %.preheader.us ], [ %i.fb, %._crit_edge158.us.us ] ; 2 uses
  %i.dn = load i32, ptr %i.cj, align 8, !tbaa !107
  %i.do = sext i32 %i.dn to i64
  %i.dp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.df, i64 noundef %i.dh, i64 noundef %i.do)
          to label %bb.z unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit116.split.us.split.us

bb.z:                                             ; preds = %bb.y
  br i1 %i.dp, label %.lr.ph157.us.us, label %.split.us

.lr.ph157.us.us:                                  ; preds = %bb.z
  %i.dq = load i32, ptr %i.ch, align 4, !tbaa !170 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph157.split.us166.us.preheader, label %._crit_edge158.us.us

.lr.ph157.split.us166.us.preheader:               ; preds = %.lr.ph157.us.us
  %i.ds = add nuw i32 %.084160.us.us, %i.dm
  %i.dt = mul i32 %i.ds, %2
  %i.du = mul nsw i32 %i.dt, %i.dq
  %i.dv = sext i32 %i.du to i64
  br label %.lr.ph157.split.us166.us

.lr.ph157.split.us166.us:                         ; preds = %.lr.ph157.split.us166.us.preheader, %._crit_edge153.us.us
  %i.dw = phi i32 [ %i.ex, %._crit_edge153.us.us ], [ %i.dq, %.lr.ph157.split.us166.us.preheader ] ; 3 uses
  %.082155.us163.us = phi i32 [ %i.ey, %._crit_edge153.us.us ], [ 0, %.lr.ph157.split.us166.us.preheader ] ; 2 uses
  %.083154.us164.us = phi i64 [ %i.ez, %._crit_edge153.us.us ], [ %i.dv, %.lr.ph157.split.us166.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4, !tbaa !3
  %i.dx = load i32, ptr %i.cj, align 8, !tbaa !107 ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %.082155.us163.us
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.df, i64 %i.dz
  %i.eb = sext i32 %i.dx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 1 %i.ea, i64 %i.eb, i1 false)
  %i.ec = icmp sgt i32 %i.dw, 0
  br i1 %i.ec, label %.lr.ph152.us.us, label %.lr.ph157.split.us166.us.._crit_edge153.us.us_crit_edge

.lr.ph157.split.us166.us.._crit_edge153.us.us_crit_edge: ; preds = %.lr.ph157.split.us166.us
  %.pre = sext i32 %i.dw to i64
  br label %._crit_edge153.us.us

bb.aa:                                            ; preds = %.lr.ph152.us.us, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us
  %indvars.iv193 = phi i64 [ 0, %.lr.ph152.us.us ], [ %indvars.iv.next194, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv193
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = and i32 %i.ee, %.0..0..0..0..us.us
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv193
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = lshr i32 %i.ef, %i.eh                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv193
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3  ; 3 uses
  %.not.i117.us.us = icmp eq i32 %i.ek, 0
  br i1 %.not.i117.us.us, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.aa
  %.015.i.us.us = sub i32 8, %i.ek                ; 3 uses
  %i.el = icmp sgt i32 %.015.i.us.us, 0
  br i1 %i.el, label %.lr.ph.i.us.us, label %._crit_edge.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.preheader.i.us.us, %.lr.ph.i.us.us
  %.017.i.us.us = phi i32 [ %.0.i.us.us, %.lr.ph.i.us.us ], [ %.015.i.us.us, %.preheader.i.us.us ] ; 2 uses
  %.01316.i.us.us = phi i32 [ %i.en, %.lr.ph.i.us.us ], [ 0, %.preheader.i.us.us ]
  %i.em = shl i32 %i.ei, %.017.i.us.us
  %i.en = or i32 %i.em, %.01316.i.us.us           ; 2 uses
  %.0.i.us.us = sub i32 %.017.i.us.us, %i.ek      ; 3 uses
  %i.eo = icmp sgt i32 %.0.i.us.us, 0
  br i1 %i.eo, label %.lr.ph.i.us.us, label %._crit_edge.i.us.us, !llvm.loop !172

._crit_edge.i.us.us:                              ; preds = %.lr.ph.i.us.us, %.preheader.i.us.us
  %.013.lcssa.i.us.us = phi i32 [ 0, %.preheader.i.us.us ], [ %i.en, %.lr.ph.i.us.us ]
  %.0.lcssa.i.us.us = phi i32 [ %.015.i.us.us, %.preheader.i.us.us ], [ %.0.i.us.us, %.lr.ph.i.us.us ]
  %i.ep = sub nsw i32 0, %.0.lcssa.i.us.us
  %i.eq = lshr i32 %i.ei, %i.ep
  %i.er = or i32 %i.eq, %.013.lcssa.i.us.us
  %i.es = trunc i32 %i.er to i8
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us: ; preds = %._crit_edge.i.us.us, %bb.aa
  %.1.i.us.us = phi i8 [ %i.es, %._crit_edge.i.us.us ], [ 0, %bb.aa ]
  %i.et = getelementptr i8, ptr %i.fa, i64 %indvars.iv193
  store i8 %.1.i.us.us, ptr %i.et, align 1, !tbaa !9
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.eu = load i32, ptr %i.ch, align 4, !tbaa !170 ; 2 uses
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
end_hunk_0
