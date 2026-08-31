Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.13?download=true
inline.NumInlined: 1910
inline.NumDeleted: 823
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs6_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !3623, !noalias !3628, !nonnull !3, !noundef !3 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !3623, !noalias !3628, !noundef !3 ; 4 uses
  %i.bb = icmp ult i64 %.sroa.038.0.i, %i.ba
  br i1 %i.bb, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bc = add nuw nsw i64 %i.av, 1
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.038.0.i
  %i.be = load i64, ptr %i.bd, align 8, !noalias !3626, !noundef !3 ; 3 uses
  %.not.i = icmp ne i64 %i.be, 0
  %i.bf = icmp ult i64 %.sroa.040.0.i, %i.ba
  %or.cond.i = select i1 %.not.i, i1 %i.bf, i1 false
  br i1 %or.cond.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.040.0.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3626, !noundef !3 ; 3 uses
  %.not44.i = icmp eq i64 %i.bh, 0
  br i1 %.not44.i, label %.thread, label %bb.ad

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3629
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 58, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc136 unwind label %bb.g

.noexc136:                                        ; preds = %bb.q
  %i.bi = load i64, ptr %i.d, align 8, !range !4, !noalias !3629, !noundef !3
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !5, !noalias !3629, !noundef !3 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s, !prof !6

bb.r:                                             ; preds = %.noexc136
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !3629
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bn) #25
          to label %.noexc137 unwind label %bb.g

.noexc137:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc136
  %i.bo = load ptr, ptr %i.bm, align 8, !noalias !3629, !nonnull !3, !noundef !3 ; 2 uses
  %i.bp = icmp samesign ugt i64 %i.bl, 57
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bo, ptr noundef nonnull align 1 dereferenceable(58) @34, i64 58, i1 false), !noalias !3629
  store i64 %i.bl, ptr %i.e, align 8, !noalias !3629
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3629
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 58, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3629
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.u unwind label %bb.t, !noalias !3629

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.body unwind label %bb.z, !noalias !3629

bb.u:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.c, align 8, !range !4, !noalias !3629, !noundef !3
  %i.bs = trunc nuw i64 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !5, !noalias !3629, !noundef !3 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !3629
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bw) #25
          to label %bb.y unwind label %bb.t, !noalias !3629

bb.w:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !3629, !nonnull !3, !noundef !3 ; 2 uses
  %i.by = icmp ule i64 %i.ad, %i.bu
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3629
  %.not.i135 = icmp eq i64 %i.ad, 0
  br i1 %.not.i135, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !3633
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  unreachable

bb.z:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3629
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7)
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4232.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bu, ptr %.sroa.5233.0..sroa_idx, align 8
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bx, ptr %.sroa.6234.0..sroa_idx, align 8
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %.sroa.7235.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit154

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit154: ; preds = %bb.az, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.n)
          to label %bb.ce unwind label %.split.thread

bb.ab:                                            ; preds = %bb.by, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %i.gn, %bb.by ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %.body unwind label %bb.cj

bb.ac:                                            ; preds = %.invoke344, %.invoke, %.thread280, %.thread, %bb.bu, %bb.br, %.loopexit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.p
  %i.cb = add i64 %i.be, -1                       ; 11 uses
  %i.cc = add i64 %i.bh, -1                       ; 10 uses
  %.not.i.i139 = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not.i.i139, label %.invoke344, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not5.i.i = icmp ult i64 %i.cb, %.sroa.566.0.copyload
  br i1 %.not5.i.i, label %bb.ah, label %.split.i.i

bb.ag:                                            ; preds = %bb.ah, %.split.i.i, %bb.ae
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %bb.ak, label %bb.ai

.split.i.i:                                       ; preds = %bb.af
  %i.cf = icmp eq i64 %i.cb, %.sroa.566.0.copyload
  br i1 %i.cf, label %bb.ag, label %.invoke344

bb.ah:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cb
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !3634, !noalias !3637, !noundef !3
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.ag, label %.invoke344

bb.ai:                                            ; preds = %bb.ag
  %.not6.i.i = icmp ult i64 %i.cc, %.sroa.566.0.copyload
  br i1 %.not6.i.i, label %bb.aj, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.ai
  %i.cj = icmp eq i64 %i.cc, %.sroa.566.0.copyload
  br i1 %i.cj, label %bb.ak, label %.invoke344

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cc
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !3634, !noalias !3637, !noundef !3
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %bb.ak, label %.invoke344

bb.ak:                                            ; preds = %bb.aj, %.split7.i.i, %bb.ag
  %i.cn = sub nuw i64 %i.bh, %i.be                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cb ; 3 uses
  switch i64 %i.cn, label %thread-pre-split.i.i [
    i64 0, label %.thread
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !3640, !noalias !3637, !noundef !3 ; 2 uses
  switch i8 %i.cp, label %bb.am [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i.i:                             ; preds = %bb.ak
  %.pr.i.i = load i8, ptr %i.co, align 1, !alias.scope !3640, !noalias !3637
  br label %bb.am

bb.am:                                            ; preds = %thread-pre-split.i.i, %bb.al
  %i.cq = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.cp, %bb.al ]
  %cond.i.i = icmp eq i8 %i.cq, 43                ; 2 uses
  %i.cr = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.cn, %i.cr      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i9.i = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.cs = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.cs, label %.preheader.i.i, label %.preheader60.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.am
  %.not5668.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5668.i.i, label %.loopexit341, label %.lr.ph.i.i.a

.preheader60.i.i:                                 ; preds = %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i352, i64 1
  %i.cu = add nsw i64 %.sroa.15.1.i.i351, -1      ; 2 uses
  %.not55.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not55.i.i, label %.loopexit341, label %.preheader60.i.i.preheader

.preheader60.i.i.preheader:                       ; preds = %bb.am, %.preheader60.i.i
  %.sroa.0.1.i.i352 = phi ptr [ %i.ct, %.preheader60.i.i ], [ %.sroa.0.0.i9.i, %bb.am ] ; 2 uses
  %.sroa.15.1.i.i351 = phi i64 [ %i.cu, %.preheader60.i.i ], [ %.sroa.15.0.i.i, %bb.am ]
  %.sroa.045.0.i.i350 = phi i32 [ %i.dc, %.preheader60.i.i ], [ 0, %bb.am ]
  %i.cv = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i350, i32 10) ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  br i1 %i.cw, label %.thread, label %bb.an, !prof !6

bb.an:                                            ; preds = %.preheader60.i.i.preheader
  %i.cx = extractvalue { i32, i1 } %i.cv, 0       ; 2 uses
  %i.cy = load i8, ptr %.sroa.0.1.i.i352, align 1, !alias.scope !3640, !noalias !3637, !noundef !3
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nsw i32 %i.cz, -48                  ; 2 uses
  %i.db = icmp ugt i32 %i.da, 9
  %i.dc = add i32 %i.da, %i.cx                    ; 2 uses
  %i.dd = icmp ult i32 %i.dc, %i.cx
  %or.cond = select i1 %i.db, i1 true, i1 %i.dd, !prof !1751
  br i1 %or.cond, label %.thread, label %.preheader60.i.i, !prof !1751

.lr.ph.i.i.a:                                     ; preds = %.preheader.i.i, %bb.ao
  %.sroa.0.271.i.i = phi ptr [ %3, %bb.ao ], [ %.sroa.0.0.i9.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.270.i.i = phi i64 [ %2, %bb.ao ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %i.de = load i8, ptr %.sroa.0.271.i.i, align 1, !alias.scope !3640, !noalias !3637, !noundef !3
  %i.df = add i8 %i.de, -48
  %i.dg = icmp ult i8 %i.df, 10
  br i1 %i.dg, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %.lr.ph.i.i.a
  %2 = add nsw i64 %.sroa.15.270.i.i, -1          ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i.i, i64 1
  %.not56.i.i = icmp eq i64 %2, 0
  br i1 %.not56.i.i, label %.loopexit341, label %.lr.ph.i.i.a

.thread:                                          ; preds = %.preheader60.i.i.preheader, %bb.an, %.lr.ph.i.i.a, %bb.ak, %bb.al, %bb.al, %bb.p, %bb.o, %bb.k, %bb.i, %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3643
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc143 unwind label %bb.ac

.noexc143:                                        ; preds = %.thread
  %i.dh = load i64, ptr %i.b, align 8, !range !4, !noalias !3643, !noundef !3
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !5, !noalias !3643, !noundef !3 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.di, label %bb.ap, label %bb.aq, !prof !6

bb.ap:                                            ; preds = %.noexc143
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !3643
  br label %.invoke

bb.aq:                                            ; preds = %.noexc143
  %i.dn = load ptr, ptr %i.dl, align 8, !noalias !3643, !nonnull !3, !noundef !3 ; 2 uses
  %i.do = icmp ule i64 %i.ad, %i.dk
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3643
  %.not.i141 = icmp eq i64 %i.ad, 0
  br i1 %.not.i141, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !3647
  br label %bb.ay

.loopexit341:                                     ; preds = %.preheader60.i.i, %bb.ao, %.preheader.i.i
  br i1 %i.am, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.loopexit341
  %i.dp = icmp samesign ugt i64 %i.ak, %i.ag
  br i1 %i.dp, label %bb.at, label %.thread280

bb.at:                                            ; preds = %bb.as
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.465.sroa.6.0.copyload, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !3648, !nonnull !3, !noundef !3
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ag ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !noalias !3648, !noundef !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = load i32, ptr %i.ds, align 4, !noalias !3648, !noundef !3
  %i.dx = zext i32 %i.dw to i64                   ; 3 uses
  %i.dy = sub nsw i64 %i.dv, %i.dx
  %.not.i.i146 = icmp ult i64 %i.dy, 4
  br i1 %.not.i.i146, label %.thread280, label %bb.av

bb.au:                                            ; preds = %.loopexit341, %bb.av
  %.sroa.038.0.i147 = phi i64 [ %i.ea, %bb.av ], [ 4, %.loopexit341 ] ; 2 uses
  %.sroa.040.0.i148 = phi i64 [ %i.eb, %bb.av ], [ 5, %.loopexit341 ] ; 2 uses
  %i.dz = icmp ult i64 %.sroa.038.0.i147, %i.ba
  br i1 %i.dz, label %bb.aw, label %.thread280

bb.av:                                            ; preds = %bb.at
  %i.ea = add nuw nsw i64 %i.dx, 2
  %i.eb = add nuw nsw i64 %i.dx, 3
  br label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.038.0.i147
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !3648, !noundef !3 ; 3 uses
  %.not.i149 = icmp ne i64 %i.ed, 0
  %i.ee = icmp ult i64 %.sroa.040.0.i148, %i.ba
  %or.cond.i150 = select i1 %.not.i149, i1 %i.ee, i1 false
  br i1 %or.cond.i150, label %bb.ax, label %.thread280

bb.ax:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.040.0.i148
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !3648, !noundef !3 ; 3 uses
  %.not44.i151 = icmp eq i64 %i.eg, 0
  br i1 %.not44.i151, label %.thread280, label %bb.ba

bb.ay:                                            ; preds = %bb.ar, %bb.aq
  store i64 1, ptr %0, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dk, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.sroa.4.0..sroa.598.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dn, ptr %.sroa.598.sroa.4.0..sroa.598.0..sroa_idx.sroa_idx, align 8
  %.sroa.598.sroa.5.0..sroa.598.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %.sroa.598.sroa.5.0..sroa.598.0..sroa_idx.sroa_idx, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.cc, %bb.bp, %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit154 unwind label %bb.g

bb.ba:                                            ; preds = %bb.ax
  %i.eh = add i64 %i.ed, -1                       ; 11 uses
  %i.ei = add i64 %i.eg, -1                       ; 10 uses
  %.not.i.i155 = icmp ugt i64 %i.eh, %i.ei
  br i1 %.not.i.i155, label %.invoke344, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not5.i.i156 = icmp ult i64 %i.eh, %.sroa.566.0.copyload
  br i1 %.not5.i.i156, label %bb.be, label %.split.i.i157

bb.bd:                                            ; preds = %bb.be, %.split.i.i157, %bb.bb
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %bb.bh, label %bb.bf

.split.i.i157:                                    ; preds = %bb.bc
  %i.el = icmp eq i64 %i.eh, %.sroa.566.0.copyload
  br i1 %i.el, label %bb.bd, label %.invoke344

bb.be:                                            ; preds = %bb.bc
  %i.em = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !3652, !noalias !3655, !noundef !3
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %bb.bd, label %.invoke344

bb.bf:                                            ; preds = %bb.bd
  %.not6.i.i158 = icmp ult i64 %i.ei, %.sroa.566.0.copyload
  br i1 %.not6.i.i158, label %bb.bg, label %.split7.i.i159

.split7.i.i159:                                   ; preds = %bb.bf
  %i.ep = icmp eq i64 %i.ei, %.sroa.566.0.copyload
  br i1 %i.ep, label %bb.bh, label %.invoke344

bb.bg:                                            ; preds = %bb.bf
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ei
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !3652, !noalias !3655, !noundef !3
  %i.es = icmp sgt i8 %i.er, -65
  br i1 %i.es, label %bb.bh, label %.invoke344

bb.bh:                                            ; preds = %bb.bg, %.split7.i.i159, %bb.bd
  %i.et = sub nuw i64 %i.eg, %i.ed                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 3 uses
  switch i64 %i.et, label %thread-pre-split.i.i184 [
    i64 0, label %.thread280
    i64 1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !3658, !noalias !3655, !noundef !3 ; 2 uses
  switch i8 %i.ev, label %bb.bj [
    i8 43, label %.thread280
    i8 45, label %.thread280
  ]

thread-pre-split.i.i184:                          ; preds = %bb.bh
  %.pr.i.i185 = load i8, ptr %i.eu, align 1, !alias.scope !3658, !noalias !3655
  br label %bb.bj

bb.bj:                                            ; preds = %thread-pre-split.i.i184, %bb.bi
  %i.ew = phi i8 [ %.pr.i.i185, %thread-pre-split.i.i184 ], [ %i.ev, %bb.bi ]
  %cond.i.i165 = icmp eq i8 %i.ew, 43             ; 2 uses
  %i.ex = sext i1 %cond.i.i165 to i64
  %.sroa.15.0.i.i166 = add nsw i64 %i.et, %i.ex   ; 4 uses
  %.sroa.0.0.idx.i.i167 = zext i1 %cond.i.i165 to i64
  %.sroa.0.0.i9.i168 = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.0.0.idx.i.i167 ; 2 uses
  %i.ey = icmp samesign ult i64 %.sroa.15.0.i.i166, 9
  br i1 %i.ey, label %.preheader.i.i177, label %.preheader60.i.i169.preheader

.preheader.i.i177:                                ; preds = %bb.bj
  %.not5668.i.i178 = icmp eq i64 %.sroa.15.0.i.i166, 0
  br i1 %.not5668.i.i178, label %.loopexit, label %.lr.ph.i.i179.a

.preheader60.i.i169:                              ; preds = %bb.bk
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i172355, i64 1
  %i.fa = add nsw i64 %.sroa.15.1.i.i171354, -1   ; 2 uses
  %.not55.i.i173 = icmp eq i64 %i.fa, 0
  br i1 %.not55.i.i173, label %.loopexit, label %.preheader60.i.i169.preheader

.preheader60.i.i169.preheader:                    ; preds = %bb.bj, %.preheader60.i.i169
  %.sroa.0.1.i.i172355 = phi ptr [ %i.ez, %.preheader60.i.i169 ], [ %.sroa.0.0.i9.i168, %bb.bj ] ; 2 uses
  %.sroa.15.1.i.i171354 = phi i64 [ %i.fa, %.preheader60.i.i169 ], [ %.sroa.15.0.i.i166, %bb.bj ]
  %.sroa.045.0.i.i170353 = phi i32 [ %i.fi, %.preheader60.i.i169 ], [ 0, %bb.bj ]
  %i.fb = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i170353, i32 10) ; 2 uses
  %i.fc = extractvalue { i32, i1 } %i.fb, 1
  br i1 %i.fc, label %.thread280, label %bb.bk, !prof !6

bb.bk:                                            ; preds = %.preheader60.i.i169.preheader
  %i.fd = extractvalue { i32, i1 } %i.fb, 0       ; 2 uses
  %i.fe = load i8, ptr %.sroa.0.1.i.i172355, align 1, !alias.scope !3658, !noalias !3655, !noundef !3
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ugt i32 %i.fg, 9
  %i.fi = add i32 %i.fg, %i.fd                    ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %i.fd
  %or.cond288 = select i1 %i.fh, i1 true, i1 %i.fj, !prof !1751
  br i1 %or.cond288, label %.thread280, label %.preheader60.i.i169, !prof !1751

.lr.ph.i.i179.a:                                  ; preds = %.preheader.i.i177, %bb.bl
  %.sroa.0.271.i.i180 = phi ptr [ %5, %bb.bl ], [ %.sroa.0.0.i9.i168, %.preheader.i.i177 ] ; 2 uses
  %.sroa.15.270.i.i181 = phi i64 [ %4, %bb.bl ], [ %.sroa.15.0.i.i166, %.preheader.i.i177 ]
  %i.fk = load i8, ptr %.sroa.0.271.i.i180, align 1, !alias.scope !3658, !noalias !3655, !noundef !3
  %i.fl = add i8 %i.fk, -48
  %i.fm = icmp ult i8 %i.fl, 10
  br i1 %i.fm, label %bb.bl, label %.thread280

bb.bl:                                            ; preds = %.lr.ph.i.i179.a
  %4 = add nsw i64 %.sroa.15.270.i.i181, -1       ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i.i180, i64 1
  %.not56.i.i183 = icmp eq i64 %4, 0
  br i1 %.not56.i.i183, label %.loopexit, label %.lr.ph.i.i179.a

.invoke344:                                       ; preds = %bb.ba, %.split.i.i157, %bb.be, %.split7.i.i159, %bb.bg, %bb.ad, %.split.i.i, %bb.ah, %.split7.i.i, %bb.aj
  %i.fn = phi i64 [ %i.cb, %bb.ad ], [ %i.cb, %bb.aj ], [ %i.cb, %.split7.i.i ], [ %i.cb, %bb.ah ], [ %i.cb, %.split.i.i ], [ %i.eh, %bb.bg ], [ %i.eh, %.split7.i.i159 ], [ %i.eh, %bb.be ], [ %i.eh, %.split.i.i157 ], [ %i.eh, %bb.ba ]
  %i.fo = phi i64 [ %i.cc, %bb.ad ], [ %i.cc, %bb.aj ], [ %i.cc, %.split7.i.i ], [ %i.cc, %bb.ah ], [ %i.cc, %.split.i.i ], [ %i.ei, %bb.bg ], [ %i.ei, %.split7.i.i159 ], [ %i.ei, %bb.be ], [ %i.ei, %.split.i.i157 ], [ %i.ei, %bb.ba ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.566.0.copyload, i64 noundef %i.fn, i64 noundef %i.fo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #25
          to label %.cont345 unwind label %bb.ac

.cont345:                                         ; preds = %.invoke344
  unreachable

.thread280:                                       ; preds = %.preheader60.i.i169.preheader, %bb.bk, %.lr.ph.i.i179.a, %bb.bh, %bb.bi, %bb.bi, %bb.ax, %bb.aw, %bb.as, %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3661
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc190 unwind label %bb.ac

.noexc190:                                        ; preds = %.thread280
  %i.fp = load i64, ptr %i.a, align 8, !range !4, !noalias !3661, !noundef !3
  %i.fq = trunc nuw i64 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !5, !noalias !3661, !noundef !3 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fq, label %bb.bm, label %bb.bn, !prof !6

bb.bm:                                            ; preds = %.noexc190
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !3661
  br label %.invoke

.invoke:                                          ; preds = %bb.bw, %bb.ap, %bb.bm
  %i.fv = phi i64 [ %i.fs, %bb.bm ], [ %i.dk, %bb.ap ], [ %i.gi, %bb.bw ]
  %i.fw = phi i64 [ %i.fu, %bb.bm ], [ %i.dm, %bb.ap ], [ %i.gk, %bb.bw ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fv, i64 %i.fw) #25
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.bn:                                            ; preds = %.noexc190
  %i.fx = load ptr, ptr %i.ft, align 8, !noalias !3661, !nonnull !3, !noundef !3 ; 2 uses
  %i.fy = icmp ule i64 %i.ad, %i.fs
  call void @llvm.assume(i1 %i.fy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3661
  %.not.i187 = icmp eq i64 %i.ad, 0
  br i1 %.not.i187, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !3665
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store i64 2, ptr %0, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fs, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fx, ptr %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx, align 8
  %.sroa.5117.sroa.5.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %.sroa.5117.sroa.5.0..sroa.5117.0..sroa_idx.sroa_idx, align 8
  br label %bb.az

.loopexit:                                        ; preds = %.preheader60.i.i169, %bb.bl, %.preheader.i.i177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ad, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.ab, ptr %.sroa.5111.0..sroa_idx, align 8
  %.sroa.5111.sroa.4.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.ad, ptr %.sroa.5111.sroa.4.0..sroa.5111.0..sroa_idx.sroa_idx, align 8
  %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 0, ptr %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx, align 8
  %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.ad, ptr %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx, align 8
  %.sroa.5111.sroa.7.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 47, ptr %.sroa.5111.sroa.7.0..sroa.5111.0..sroa_idx.sroa_idx, align 8
  %.sroa.5111.sroa.8.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 47, ptr %.sroa.5111.sroa.8.0..sroa.5111.0..sroa_idx.sroa_idx, align 4
  %.sroa.5111.sroa.9.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 1, ptr %.sroa.5111.sroa.9.0..sroa.5111.0..sroa_idx.sroa_idx, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 1, ptr %.sroa.6112.0..sroa_idx, align 8
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  store i8 0, ptr %.sroa.7113.0..sroa_idx, align 1
  %i.fz = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %bb.bq unwind label %bb.ac     ; 2 uses

bb.bq:                                            ; preds = %.loopexit
  %i.ga = extractvalue { ptr, i64 } %i.fz, 0      ; 3 uses
  %i.gb = extractvalue { ptr, i64 } %i.fz, 1      ; 6 uses
  %.not129 = icmp eq ptr %i.ga, null
  br i1 %.not129, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gc = invoke { i64, i64 } @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath21parse_sequence_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gb)
          to label %bb.bt unwind label %bb.ac

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit193 unwind label %bb.g

bb.bt:                                            ; preds = %bb.br
  %i.ge = extractvalue { i64, i64 } %i.gc, 0
  %.not130 = icmp eq i64 %i.ge, 1
  br i1 %.not130, label %bb.bs, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %bb.ac

bb.bv:                                            ; preds = %bb.bu
  %i.gf = load i64, ptr %i.i, align 8, !range !4, !noundef !3
  %i.gg = trunc nuw i64 %i.gf to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !5, !noundef !3 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.gg, label %bb.bw, label %bb.bx, !prof !6

bb.bw:                                            ; preds = %bb.bv
  %i.gk = load i64, ptr %i.gj, align 8
  br label %.invoke

bb.bx:                                            ; preds = %bb.bv
  %i.gl = load ptr, ptr %i.gj, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.gm = icmp samesign ugt i64 %i.gi, 13
  call void @llvm.assume(i1 %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gl, ptr noundef nonnull align 1 dereferenceable(14) @634, i64 14, i1 false)
  store i64 %i.gi, ptr %i.j, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.gl, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 14, ptr %.sroa.6120.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.gb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #26
          to label %bb.ab unwind label %bb.cj

bb.bz:                                            ; preds = %bb.bx
  %i.go = load i64, ptr %i.h, align 8, !range !4, !noundef !3
  %i.gp = trunc nuw i64 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !range !5, !noundef !3 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.gp, label %bb.ca, label %bb.cb, !prof !6

bb.ca:                                            ; preds = %bb.bz
  %i.gt = load i64, ptr %i.gs, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gr, i64 %i.gt) #25
          to label %bb.ci unwind label %bb.by

bb.cb:                                            ; preds = %bb.bz
  %i.gu = load ptr, ptr %i.gs, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.gv = icmp ule i64 %i.gb, %i.gr
  call void @llvm.assume(i1 %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not131 = icmp eq i64 %i.gb, 0
  br i1 %.not131, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.461.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 3, ptr %0, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gr, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.562.sroa.4.0..sroa.562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.gu, ptr %.sroa.562.sroa.4.0..sroa.562.0..sroa_idx.sroa_idx, align 8
  %.sroa.562.sroa.5.0..sroa.562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.gb, ptr %.sroa.562.sroa.5.0..sroa.562.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.az

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gu, ptr nonnull align 1 %i.ga, i64 %i.gb, i1 false)
  br label %bb.cc

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.ck, %bb.cf
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.cf ], [ %.pn.pn, %bb.c ], [ %.pn.pn.pn265, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.ce
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit193, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit
  ret void

bb.ci:                                            ; preds = %bb.ca
  unreachable

bb.cj:                                            ; preds = %bb.ab, %bb.ck, %bb.by, %.body
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit193: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ch

bb.ck:                                            ; preds = %.split.thread, %bb.c
  %.pn.pn.pn265 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn.pn, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.cj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6c_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_13ExtractSyntaxNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !55, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 5, i64 4
  %.1 = select i1 %i.b, ptr @638, ptr @637
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6m_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !62, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6m_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6m_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.220, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from:bb.a

bb.m:                                             ; preds = %bb.j, %bb.n
  %.sroa.038.0.i = phi i64 [ %i.ar, %bb.n ], [ 2, %bb.j ] ; 2 uses
  %.sroa.040.0.i = phi i64 [ %i.ay, %bb.n ], [ 3, %bb.j ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !3680, !noalias !3685, !nonnull !3, !noundef !3 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !3680, !noalias !3685, !noundef !3 ; 4 uses
  %i.ax = icmp ult i64 %.sroa.038.0.i, %i.aw
  br i1 %i.ax, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ay = add nuw nsw i64 %i.ar, 1
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.038.0.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !3683, !noundef !3 ; 3 uses
  %.not.i = icmp ne i64 %i.ba, 0
  %i.bb = icmp ult i64 %.sroa.040.0.i, %i.aw
  %or.cond.i = select i1 %.not.i, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.040.0.i
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !3683, !noundef !3 ; 3 uses
  %.not44.i = icmp eq i64 %i.bd, 0
  br i1 %.not44.i, label %.thread, label %bb.ac

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3686
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 47, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc112 unwind label %bb.g

.noexc112:                                        ; preds = %bb.q
  %i.be = load i64, ptr %i.d, align 8, !range !4, !noalias !3686, !noundef !3
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !5, !noalias !3686, !noundef !3 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.r, label %bb.s, !prof !6

bb.r:                                             ; preds = %.noexc112
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !3686
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #25
          to label %.noexc113 unwind label %bb.g

.noexc113:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc112
  %i.bk = load ptr, ptr %i.bi, align 8, !noalias !3686, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = icmp samesign ugt i64 %i.bh, 46
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.bk, ptr noundef nonnull align 1 dereferenceable(47) @35, i64 47, i1 false), !noalias !3686
  store i64 %i.bh, ptr %i.e, align 8, !noalias !3686
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3686
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 47, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3686
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.u unwind label %bb.t, !noalias !3686

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.body unwind label %bb.z, !noalias !3686

bb.u:                                             ; preds = %bb.s
  %i.bn = load i64, ptr %i.c, align 8, !range !4, !noalias !3686, !noundef !3
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !5, !noalias !3686, !noundef !3 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.w, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.bs = load i64, ptr %i.br, align 8, !noalias !3686
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.bs) #25
          to label %bb.y unwind label %bb.t, !noalias !3686

bb.w:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !3686, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = icmp ule i64 %i.z, %i.bq
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3686
  %.not.i111 = icmp eq i64 %i.z, 0
  br i1 %.not.i111, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false), !noalias !3690
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  unreachable

bb.z:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3686
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7)
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4208.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bq, ptr %.sroa.5209.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %.sroa.6210.0..sroa_idx, align 8
  %.sroa.7211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.z, ptr %.sroa.7211.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit130

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit130: ; preds = %bb.aw, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %bb.bl unwind label %.split.thread

bb.ab:                                            ; preds = %.invoke310, %.invoke, %.thread248, %.thread
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %.body unwind label %bb.bp

bb.ac:                                            ; preds = %bb.p
  %i.bx = add i64 %i.ba, -1                       ; 11 uses
  %i.by = add i64 %i.bd, -1                       ; 10 uses
  %.not.i.i115 = icmp ugt i64 %i.bx, %i.by
  br i1 %.not.i.i115, label %.invoke310, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not5.i.i = icmp ult i64 %i.bx, %.sroa.559.0.copyload
  br i1 %.not5.i.i, label %bb.ag, label %.split.i.i

bb.af:                                            ; preds = %bb.ag, %.split.i.i, %bb.ad
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %bb.aj, label %bb.ah

.split.i.i:                                       ; preds = %bb.ae
  %i.cb = icmp eq i64 %i.bx, %.sroa.559.0.copyload
  br i1 %i.cb, label %bb.af, label %.invoke310

bb.ag:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bx
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !3691, !noalias !3694, !noundef !3
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.af, label %.invoke310

bb.ah:                                            ; preds = %bb.af
  %.not6.i.i = icmp ult i64 %i.by, %.sroa.559.0.copyload
  br i1 %.not6.i.i, label %bb.ai, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.ah
  %i.cf = icmp eq i64 %i.by, %.sroa.559.0.copyload
  br i1 %i.cf, label %bb.aj, label %.invoke310

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.by
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !3691, !noalias !3694, !noundef !3
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.aj, label %.invoke310

bb.aj:                                            ; preds = %bb.ai, %.split7.i.i, %bb.af
  %i.cj = sub nuw i64 %i.bd, %i.ba                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bx ; 3 uses
  switch i64 %i.cj, label %thread-pre-split.i.i [
    i64 0, label %.thread
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !3697, !noalias !3694, !noundef !3 ; 2 uses
  switch i8 %i.cl, label %bb.al [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i.i:                             ; preds = %bb.aj
  %.pr.i.i = load i8, ptr %i.ck, align 1, !alias.scope !3697, !noalias !3694
  br label %bb.al

bb.al:                                            ; preds = %thread-pre-split.i.i, %bb.ak
  %i.cm = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.cl, %bb.ak ]
  %cond.i.i = icmp eq i8 %i.cm, 43                ; 2 uses
  %i.cn = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.cj, %i.cn      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i9.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.co = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.co, label %.preheader.i.i, label %.preheader60.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.al
  %.not5668.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5668.i.i, label %.loopexit307, label %.lr.ph.i.i.a

.preheader60.i.i:                                 ; preds = %bb.am
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i321, i64 1
  %i.cq = add nsw i64 %.sroa.15.1.i.i320, -1      ; 2 uses
  %.not55.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not55.i.i, label %.loopexit307, label %.preheader60.i.i.preheader

.preheader60.i.i.preheader:                       ; preds = %bb.al, %.preheader60.i.i
  %.sroa.0.1.i.i321 = phi ptr [ %i.cp, %.preheader60.i.i ], [ %.sroa.0.0.i9.i, %bb.al ] ; 2 uses
  %.sroa.15.1.i.i320 = phi i64 [ %i.cq, %.preheader60.i.i ], [ %.sroa.15.0.i.i, %bb.al ]
  %.sroa.045.0.i.i319 = phi i32 [ %i.cy, %.preheader60.i.i ], [ 0, %bb.al ]
  %i.cr = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i319, i32 10) ; 2 uses
  %i.cs = extractvalue { i32, i1 } %i.cr, 1
  br i1 %i.cs, label %.thread, label %bb.am, !prof !6

bb.am:                                            ; preds = %.preheader60.i.i.preheader
  %i.ct = extractvalue { i32, i1 } %i.cr, 0       ; 2 uses
  %i.cu = load i8, ptr %.sroa.0.1.i.i321, align 1, !alias.scope !3697, !noalias !3694, !noundef !3
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 9
  %i.cy = add i32 %i.cw, %i.ct                    ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %i.ct
  %or.cond = select i1 %i.cx, i1 true, i1 %i.cz, !prof !1751
  br i1 %or.cond, label %.thread, label %.preheader60.i.i, !prof !1751

.lr.ph.i.i.a:                                     ; preds = %.preheader.i.i, %bb.an
  %.sroa.0.271.i.i = phi ptr [ %3, %bb.an ], [ %.sroa.0.0.i9.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.270.i.i = phi i64 [ %2, %bb.an ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %i.da = load i8, ptr %.sroa.0.271.i.i, align 1, !alias.scope !3697, !noalias !3694, !noundef !3
  %i.db = add i8 %i.da, -48
  %i.dc = icmp ult i8 %i.db, 10
  br i1 %i.dc, label %bb.an, label %.thread

bb.an:                                            ; preds = %.lr.ph.i.i.a
  %2 = add nsw i64 %.sroa.15.270.i.i, -1          ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i.i, i64 1
  %.not56.i.i = icmp eq i64 %2, 0
  br i1 %.not56.i.i, label %.loopexit307, label %.lr.ph.i.i.a

.thread:                                          ; preds = %.preheader60.i.i.preheader, %bb.am, %.lr.ph.i.i.a, %bb.aj, %bb.ak, %bb.ak, %bb.p, %bb.o, %bb.k, %bb.i, %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3700
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc119 unwind label %bb.ab

.noexc119:                                        ; preds = %.thread
  %i.dd = load i64, ptr %i.b, align 8, !range !4, !noalias !3700, !noundef !3
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !5, !noalias !3700, !noundef !3 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.de, label %bb.ao, label %bb.ap, !prof !6

bb.ao:                                            ; preds = %.noexc119
  %i.di = load i64, ptr %i.dh, align 8, !noalias !3700
  br label %.invoke

bb.ap:                                            ; preds = %.noexc119
  %i.dj = load ptr, ptr %i.dh, align 8, !noalias !3700, !nonnull !3, !noundef !3 ; 2 uses
  %i.dk = icmp ule i64 %i.z, %i.dg
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3700
  %.not.i117 = icmp eq i64 %i.z, 0
  br i1 %.not.i117, label %bb.aw, label %.sink.split

.loopexit307:                                     ; preds = %.preheader60.i.i, %bb.an, %.preheader.i.i
  br i1 %i.ai, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.loopexit307
  %i.dl = icmp samesign ugt i64 %i.ag, %i.ac
  br i1 %i.dl, label %bb.ar, label %.thread248

bb.ar:                                            ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.458.sroa.6.0.copyload, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !3704, !nonnull !3, !noundef !3
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ac ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !3704, !noundef !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load i32, ptr %i.do, align 4, !noalias !3704, !noundef !3
  %i.dt = zext i32 %i.ds to i64                   ; 3 uses
  %i.du = sub nsw i64 %i.dr, %i.dt
  %.not.i.i122 = icmp ult i64 %i.du, 4
  br i1 %.not.i.i122, label %.thread248, label %bb.at

bb.as:                                            ; preds = %.loopexit307, %bb.at
  %.sroa.038.0.i123 = phi i64 [ %i.dw, %bb.at ], [ 4, %.loopexit307 ] ; 2 uses
  %.sroa.040.0.i124 = phi i64 [ %i.dx, %bb.at ], [ 5, %.loopexit307 ] ; 2 uses
  %i.dv = icmp ult i64 %.sroa.038.0.i123, %i.aw
  br i1 %i.dv, label %bb.au, label %.thread248

bb.at:                                            ; preds = %bb.ar
  %i.dw = add nuw nsw i64 %i.dt, 2
  %i.dx = add nuw nsw i64 %i.dt, 3
  br label %bb.as

bb.au:                                            ; preds = %bb.as
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.038.0.i123
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !3704, !noundef !3 ; 3 uses
  %.not.i125 = icmp ne i64 %i.dz, 0
  %i.ea = icmp ult i64 %.sroa.040.0.i124, %i.aw
  %or.cond.i126 = select i1 %.not.i125, i1 %i.ea, i1 false
  br i1 %or.cond.i126, label %bb.av, label %.thread248

bb.av:                                            ; preds = %bb.au
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.040.0.i124
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !3704, !noundef !3 ; 3 uses
  %.not44.i127 = icmp eq i64 %i.ec, 0
  br i1 %.not44.i127, label %.thread248, label %bb.ax

.sink.split:                                      ; preds = %bb.ap, %bb.bk
  %.sink314 = phi ptr [ %i.ft, %bb.bk ], [ %i.dj, %bb.ap ] ; 2 uses
  %.sink313.ph = phi i64 [ 2, %bb.bk ], [ 1, %bb.ap ]
  %.sink312.ph = phi i64 [ %i.fo, %bb.bk ], [ %i.dg, %bb.ap ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink314, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false), !noalias !3
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.ap, %bb.bk
  %.sink313 = phi i64 [ 2, %bb.bk ], [ 1, %bb.ap ], [ %.sink313.ph, %.sink.split ]
  %.sink312 = phi i64 [ %i.fo, %bb.bk ], [ %i.dg, %bb.ap ], [ %.sink312.ph, %.sink.split ]
  %.sink = phi ptr [ %i.ft, %bb.bk ], [ %i.dj, %bb.ap ], [ %.sink314, %.sink.split ]
  store i64 %.sink313, ptr %0, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink312, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx, align 8
  %.sroa.5104.sroa.5.0..sroa.5104.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.z, ptr %.sroa.5104.sroa.5.0..sroa.5104.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit130 unwind label %bb.g

bb.ax:                                            ; preds = %bb.av
  %i.ed = add i64 %i.dz, -1                       ; 11 uses
  %i.ee = add i64 %i.ec, -1                       ; 10 uses
  %.not.i.i131 = icmp ugt i64 %i.ed, %i.ee
  br i1 %.not.i.i131, label %.invoke310, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ef = icmp eq i64 %i.ed, 0
  br i1 %i.ef, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not5.i.i132 = icmp ult i64 %i.ed, %.sroa.559.0.copyload
  br i1 %.not5.i.i132, label %bb.bb, label %.split.i.i133

bb.ba:                                            ; preds = %bb.bb, %.split.i.i133, %bb.ay
  %i.eg = icmp eq i64 %i.ee, 0
  br i1 %i.eg, label %bb.be, label %bb.bc

.split.i.i133:                                    ; preds = %bb.az
  %i.eh = icmp eq i64 %i.ed, %.sroa.559.0.copyload
  br i1 %i.eh, label %bb.ba, label %.invoke310

bb.bb:                                            ; preds = %bb.az
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ed
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !3708, !noalias !3711, !noundef !3
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %bb.ba, label %.invoke310

bb.bc:                                            ; preds = %bb.ba
  %.not6.i.i134 = icmp ult i64 %i.ee, %.sroa.559.0.copyload
  br i1 %.not6.i.i134, label %bb.bd, label %.split7.i.i135

.split7.i.i135:                                   ; preds = %bb.bc
  %i.el = icmp eq i64 %i.ee, %.sroa.559.0.copyload
  br i1 %i.el, label %bb.be, label %.invoke310

bb.bd:                                            ; preds = %bb.bc
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ee
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !3708, !noalias !3711, !noundef !3
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %bb.be, label %.invoke310

bb.be:                                            ; preds = %bb.bd, %.split7.i.i135, %bb.ba
  %i.ep = sub nuw i64 %i.ec, %i.dz                ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ed ; 3 uses
  switch i64 %i.ep, label %thread-pre-split.i.i160 [
    i64 0, label %.thread248
    i64 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !3714, !noalias !3711, !noundef !3 ; 2 uses
  switch i8 %i.er, label %bb.bg [
    i8 43, label %.thread248
    i8 45, label %.thread248
  ]

thread-pre-split.i.i160:                          ; preds = %bb.be
  %.pr.i.i161 = load i8, ptr %i.eq, align 1, !alias.scope !3714, !noalias !3711
  br label %bb.bg

bb.bg:                                            ; preds = %thread-pre-split.i.i160, %bb.bf
  %i.es = phi i8 [ %.pr.i.i161, %thread-pre-split.i.i160 ], [ %i.er, %bb.bf ]
  %cond.i.i141 = icmp eq i8 %i.es, 43             ; 2 uses
  %i.et = sext i1 %cond.i.i141 to i64
  %.sroa.15.0.i.i142 = add nsw i64 %i.ep, %i.et   ; 4 uses
  %.sroa.0.0.idx.i.i143 = zext i1 %cond.i.i141 to i64
  %.sroa.0.0.i9.i144 = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.idx.i.i143 ; 2 uses
  %i.eu = icmp samesign ult i64 %.sroa.15.0.i.i142, 9
  br i1 %i.eu, label %.preheader.i.i153, label %.preheader60.i.i145.preheader

.preheader.i.i153:                                ; preds = %bb.bg
  %.not5668.i.i154 = icmp eq i64 %.sroa.15.0.i.i142, 0
  br i1 %.not5668.i.i154, label %.loopexit, label %.lr.ph.i.i155.a

.preheader60.i.i145:                              ; preds = %bb.bh
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i148324, i64 1
  %i.ew = add nsw i64 %.sroa.15.1.i.i147323, -1   ; 2 uses
  %.not55.i.i149 = icmp eq i64 %i.ew, 0
  br i1 %.not55.i.i149, label %.loopexit, label %.preheader60.i.i145.preheader

.preheader60.i.i145.preheader:                    ; preds = %bb.bg, %.preheader60.i.i145
  %.sroa.0.1.i.i148324 = phi ptr [ %i.ev, %.preheader60.i.i145 ], [ %.sroa.0.0.i9.i144, %bb.bg ] ; 2 uses
  %.sroa.15.1.i.i147323 = phi i64 [ %i.ew, %.preheader60.i.i145 ], [ %.sroa.15.0.i.i142, %bb.bg ]
  %.sroa.045.0.i.i146322 = phi i32 [ %i.fe, %.preheader60.i.i145 ], [ 0, %bb.bg ]
  %i.ex = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i146322, i32 10) ; 2 uses
  %i.ey = extractvalue { i32, i1 } %i.ex, 1
  br i1 %i.ey, label %.thread248, label %bb.bh, !prof !6

bb.bh:                                            ; preds = %.preheader60.i.i145.preheader
  %i.ez = extractvalue { i32, i1 } %i.ex, 0       ; 2 uses
  %i.fa = load i8, ptr %.sroa.0.1.i.i148324, align 1, !alias.scope !3714, !noalias !3711, !noundef !3
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48                  ; 2 uses
  %i.fd = icmp ugt i32 %i.fc, 9
  %i.fe = add i32 %i.fc, %i.ez                    ; 2 uses
  %i.ff = icmp ult i32 %i.fe, %i.ez
  %or.cond256 = select i1 %i.fd, i1 true, i1 %i.ff, !prof !1751
  br i1 %or.cond256, label %.thread248, label %.preheader60.i.i145, !prof !1751

.lr.ph.i.i155.a:                                  ; preds = %.preheader.i.i153, %bb.bi
  %.sroa.0.271.i.i156 = phi ptr [ %5, %bb.bi ], [ %.sroa.0.0.i9.i144, %.preheader.i.i153 ] ; 2 uses
  %.sroa.15.270.i.i157 = phi i64 [ %4, %bb.bi ], [ %.sroa.15.0.i.i142, %.preheader.i.i153 ]
  %i.fg = load i8, ptr %.sroa.0.271.i.i156, align 1, !alias.scope !3714, !noalias !3711, !noundef !3
  %i.fh = add i8 %i.fg, -48
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %bb.bi, label %.thread248

bb.bi:                                            ; preds = %.lr.ph.i.i155.a
  %4 = add nsw i64 %.sroa.15.270.i.i157, -1       ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i.i156, i64 1
  %.not56.i.i159 = icmp eq i64 %4, 0
  br i1 %.not56.i.i159, label %.loopexit, label %.lr.ph.i.i155.a

.invoke310:                                       ; preds = %bb.ax, %.split.i.i133, %bb.bb, %.split7.i.i135, %bb.bd, %bb.ac, %.split.i.i, %bb.ag, %.split7.i.i, %bb.ai
  %i.fj = phi i64 [ %i.bx, %bb.ac ], [ %i.bx, %bb.ai ], [ %i.bx, %.split7.i.i ], [ %i.bx, %bb.ag ], [ %i.bx, %.split.i.i ], [ %i.ed, %bb.bd ], [ %i.ed, %.split7.i.i135 ], [ %i.ed, %bb.bb ], [ %i.ed, %.split.i.i133 ], [ %i.ed, %bb.ax ]
  %i.fk = phi i64 [ %i.by, %bb.ac ], [ %i.by, %bb.ai ], [ %i.by, %.split7.i.i ], [ %i.by, %bb.ag ], [ %i.by, %.split.i.i ], [ %i.ee, %bb.bd ], [ %i.ee, %.split7.i.i135 ], [ %i.ee, %bb.bb ], [ %i.ee, %.split.i.i133 ], [ %i.ee, %bb.ax ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.sroa.559.0.copyload, i64 noundef %i.fj, i64 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #25
          to label %.cont311 unwind label %bb.ab

.cont311:                                         ; preds = %.invoke310
  unreachable

.thread248:                                       ; preds = %.preheader60.i.i145.preheader, %bb.bh, %.lr.ph.i.i155.a, %bb.be, %bb.bf, %bb.bf, %bb.av, %bb.au, %bb.aq, %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3717
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc166 unwind label %bb.ab

.noexc166:                                        ; preds = %.thread248
  %i.fl = load i64, ptr %i.a, align 8, !range !4, !noalias !3717, !noundef !3
  %i.fm = trunc nuw i64 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !5, !noalias !3717, !noundef !3 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fm, label %bb.bj, label %bb.bk, !prof !6

bb.bj:                                            ; preds = %.noexc166
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !3717
  br label %.invoke

.invoke:                                          ; preds = %bb.ao, %bb.bj
  %i.fr = phi i64 [ %i.fo, %bb.bj ], [ %i.dg, %bb.ao ]
  %i.fs = phi i64 [ %i.fq, %bb.bj ], [ %i.di, %bb.ao ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fr, i64 %i.fs) #25
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.bk:                                            ; preds = %.noexc166
  %i.ft = load ptr, ptr %i.fp, align 8, !noalias !3717, !nonnull !3, !noundef !3 ; 2 uses
  %i.fu = icmp ule i64 %i.z, %i.fo
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3717
  %.not.i163 = icmp eq i64 %i.z, 0
  br i1 %.not.i163, label %bb.aw, label %.sink.split

.loopexit:                                        ; preds = %.preheader60.i.i145, %bb.bi, %.preheader.i.i153
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit169 unwind label %bb.g

bb.bl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.bq, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %i.fw, %bb.bm ], [ %.pn, %bb.c ], [ %.pn109233, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.bl
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit169, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string8CapturesECs92BnbMq7p8c_15influxdb3_write.exit169: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bo

bb.bp:                                            ; preds = %bb.ab, %bb.bq, %.body
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bq:                                            ; preds = %.split.thread, %bb.c
  %.pn109233 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb2_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !3
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1237, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @760)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb6_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18CreateTableOptionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !426, !noundef !3
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 4)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1238, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @889, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1239, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsbg_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9FromTableNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1277, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1012)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1276, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1012)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc0_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_14OrderByOptionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1288, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1289, i64 noundef 3, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1205, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1290, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1287)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_14SetConfigValueNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !388, !noundef !3 ; 2 uses
  %i.c = add nsw i64 %i.b, -66
  %i.d = icmp sgt i64 %i.b, 65
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_1
