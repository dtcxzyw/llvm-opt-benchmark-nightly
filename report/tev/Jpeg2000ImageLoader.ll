Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Jpeg2000ImageLoader?download=true
inline.NumInlined: 7231
inline.NumDeleted: 2820
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeE:.from.
  %i.am = icmp ne i32 %i.al, 1887007846
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = icmp ne i32 %i.aq, 846228077
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %select.unfold, label %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit

_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit: ; preds = %bb.h
  %i.au = load i32, ptr %i.ap, align 1
  %i.av = icmp ne i32 %i.au, 544043114
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %select.unfold, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i

_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit.thread270: ; preds = %bb.e, %bb.a, %bb.d
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull @.str.6)
          to label %bb.i unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.i:                                             ; preds = %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit.thread270
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.ay, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.dq unwind label %.thread

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit.thread270
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.878.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bb = load i8, ptr %11, align 8
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %.split, label %.from.878.sink.split

.thread:                                          ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.be = load i8, ptr %11, align 8
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit875

.split:                                           ; preds = %.thread, %bb.k
  %i.bg = phi { ptr, i32 } [ %i.bd, %.thread ], [ %i.ba, %bb.k ]
  %.074940 = phi i1 [ false, %.thread ], [ true, %bb.k ]
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  %i.bj = load i64, ptr %11, align 8
  %i.bk = and i64 %i.bj, -2
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bk) #41
  %.0278 = extractvalue { ptr, i32 } %i.bg, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.074940, label %.from.878, label %.from..split873

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit875: ; preds = %.thread
  %.0944 = extractvalue { ptr, i32 } %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %.from..split873

.from.878.sink.split:                             ; preds = %bb.k, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.sink = phi { ptr, i32 } [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.ba, %bb.k ]
  %.0276 = extractvalue { ptr, i32 } %.sink, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %.from.878

.from.878:                                        ; preds = %.from.878.sink.split, %.split
  %.0277 = phi ptr [ %.0278, %.split ], [ %.0276, %.from.878.sink.split ]
  call void @__cxa_free_exception(ptr %i.ay) #37
  br label %.from..split873

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i: ; preds = %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit, %bb.g, %bb.f, %bb.c
  %i.bl = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ true, %bb.f ], [ true, %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit ]
  %.off0.ph = phi i32 [ 0, %bb.c ], [ 2, %bb.g ], [ 2, %bb.f ], [ 2, %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr929, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 952 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 960 ; 2 uses
  %i.bo = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39
          to label %.noexc120 unwind label %.from.871 ; 5 uses

.noexc120:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %2, ptr %i.bo, align 8, !tbaa !93
  %.sroa.11258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %3, ptr %.sroa.11258.0..sroa_idx, align 8, !tbaa !95
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.br = load ptr, ptr %.reload.addr929, align 8, !tbaa !101 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc120, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bs = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %.noexc120 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bq, %.noexc120 ]
  %i.bt = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !102, !noalias !580
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc120, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %.noexc120 ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %.reload.addr929, align 8, !tbaa !104
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !104
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !104
  %.not.i5.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i5.i.i, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.by) #41
  br label %bb.ac

.from.871:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  br label %.from..split283860

select.unfold:                                    ; preds = %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr929, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !581
  invoke fastcc void @_ZN3tevL22collectCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEERNS0_6vectorIS3_NS0_9allocatorIS3_EEEE(ptr nonnull %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN3tevL22findAllCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEE.exit unwind label %bb.m

bb.m:                                             ; preds = %select.unfold
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = load ptr, ptr %12, align 8, !tbaa !101, !alias.scope !581 ; 4 uses
  %.not.i.i.i121 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i121, label %.from..body122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !100, !alias.scope !581
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104, !alias.scope !581
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ci) #41
  br label %.from..body122

_ZN3tevL22findAllCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEE.exit: ; preds = %select.unfold
  %i.cj = load ptr, ptr %.reload.addr929, align 8, !tbaa !101 ; 4 uses
  %.not.i.i.i124 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i124, label %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3tevL22findAllCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !100
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !104
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cp) #41
  br label %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %bb.o, %_ZN3tevL22findAllCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEE.exit
  %i.cq = load ptr, ptr %12, align 8, !tbaa !101  ; 2 uses
  store ptr %i.cq, ptr %.reload.addr929, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 952 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 960 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !104
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !100
  store <2 x ptr> %i.cu, ptr %i.cs, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.cw = icmp eq ptr %i.cq, %i.cv
  br i1 %i.cw, label %.from..lr.ph47.i, label %.thread504

.from..lr.ph47.i:                                 ; preds = %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr917, i8 0, i64 24, i1 false), !alias.scope !582
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.from.624, %.from..lr.ph47.i
  %i.cz = phi ptr [ null, %.from..lr.ph47.i ], [ %i.ey, %.from.624 ] ; 9 uses
  %i.da = phi ptr [ null, %.from..lr.ph47.i ], [ %i.ez, %.from.624 ] ; 5 uses
  %i.db = phi ptr [ null, %.from..lr.ph47.i ], [ %i.fa, %.from.624 ] ; 9 uses
  %i.dc = phi i64 [ 1, %.from..lr.ph47.i ], [ %i.fb, %.from.624 ] ; 3 uses
  %.046.i = phi i64 [ 0, %.from..lr.ph47.i ], [ %.1.i, %.from.624 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %.046.i ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !75, !noalias !582
  %i.df = icmp eq i8 %i.de, -1
  br i1 %i.df, label %bb.q, label %.from.624

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !75, !noalias !582
  %i.di = icmp eq i8 %i.dh, 79
  br i1 %i.di, label %bb.r, label %.from.624

bb.r:                                             ; preds = %bb.q
  %i.dj = add i64 %.046.i, 3                      ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %3
  br i1 %i.dk, label %.lr.ph.i.from..lr.ph.preheader.i, label %.critedge.i

.lr.ph.i.from..lr.ph.preheader.i:                 ; preds = %bb.r
  %20 = add i64 %.046.i, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge22.i, %.lr.ph.i.from..lr.ph.preheader.i
  %i.dl = phi i64 [ %i.dq, %.critedge22.i ], [ %i.dj, %.lr.ph.i.from..lr.ph.preheader.i ] ; 3 uses
  %.01845.i = phi i64 [ %i.dl, %.critedge22.i ], [ %20, %.lr.ph.i.from..lr.ph.preheader.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %.01845.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !75, !noalias !582
  %i.do = icmp eq i8 %i.dn, -1
  br i1 %i.do, label %bb.s, label %.critedge22.i

bb.s:                                             ; preds = %.lr.ph.i
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl
  %i.dp = load i8, ptr %21, align 1, !tbaa !75, !noalias !582
  %.not.i = icmp eq i8 %i.dp, -39
  br i1 %.not.i, label %.critedge.i.from., label %.critedge22.i

.critedge22.i:                                    ; preds = %bb.s, %.lr.ph.i
  %i.dq = add nuw i64 %i.dl, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %3
  br i1 %exitcond.not.i, label %.critedge.i.from..critedge22.i, label %.lr.ph.i, !llvm.loop !551

.critedge.i.from..critedge22.i:                   ; preds = %.critedge22.i
  br label %.critedge.i, !llvm.loop !551

.critedge.i.from.:                                ; preds = %bb.s
  %i.dr = add i64 %.01845.i, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.critedge.i.from..critedge22.i, %.critedge.i.from.
  %i.ds = phi i64 [ %i.dr, %.critedge.i.from. ], [ %3, %.critedge.i.from..critedge22.i ], [ %3, %bb.r ] ; 2 uses
  %i.dt = sub i64 %i.ds, %.046.i                  ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
  %i.dv = sub i64 %3, %.046.i
  %.sroa.3.0.i.i = select i1 %i.du, i64 %i.dv, i64 %i.dt ; 2 uses
  %i.dw = icmp ult ptr %i.db, %i.da
  br i1 %i.dw, label %.from.607, label %bb.t

.from.607:                                        ; preds = %.critedge.i
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !93, !noalias !582
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %.sroa.3.0.i.i, ptr %.sroa.6.0..sroa_idx26.i, align 8, !tbaa !95, !noalias !582
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  br label %.from.613

bb.t:                                             ; preds = %.critedge.i
  %i.dy = ptrtoint ptr %i.db to i64
  %i.dz = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = ashr exact i64 %i.ea, 4
  %i.ec = add nsw i64 %i.eb, 1                    ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 1152921504606846975
  br i1 %i.ed, label %bb.u, label %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr917) #40
          to label %.noexc.i unwind label %.from..loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.u
  unreachable

_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i.i: ; preds = %bb.t
  %i.ee = ptrtoint ptr %i.da to i64
  %i.ef = sub i64 %i.ee, %i.dz                    ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ef, 9223372036854775792
  %i.eg = ashr exact i64 %i.ef, 3
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.ec)
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 1152921504606846975 ; 4 uses
  %i.eh = icmp ne i64 %.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp ugt i64 %.0.i.i.i.i, 1152921504606846975
  br i1 %i.ei, label %bb.v, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #40
          to label %.noexc23.i unwind label %.from..loopexit.split-lp.i, !noalias !582

.noexc23.i:                                       ; preds = %bb.v
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i.i
  %i.ej = shl nuw i64 %.0.i.i.i.i, 4
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #39
          to label %.noexc24.i unwind label %.from..loopexit.i, !noalias !582 ; 2 uses

.noexc24.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ea ; 5 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.0.i.i.i.i ; 3 uses
  store ptr %i.dd, ptr %i.el, align 8, !tbaa !93, !noalias !582
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.sroa.3.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !95, !noalias !582
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.cz
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc24.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eo = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.el, %.noexc24.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.db, %.noexc24.i ]
  %i.ep = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !102, !noalias !583
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i: ; preds = %.noexc24.i, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.el, %.noexc24.i ] ; 3 uses
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i.i, ptr %.reload.addr917, align 8, !tbaa !104, !alias.scope !582
  store ptr %i.em, ptr %i.cy, align 8, !tbaa !104, !alias.scope !582
  %.not.i5.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i5.i.i.i, label %.from.613, label %.from.600

.from.600:                                        ; preds = %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.ef) #41, !noalias !582
  br label %.from.613

.from.613:                                        ; preds = %.from.607, %.from.600, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i
  %i.er = phi ptr [ %i.cz, %.from.607 ], [ %.sroa.436.0.i.i.i.i.i.i.i.i.i, %.from.600 ], [ %.sroa.436.0.i.i.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i ]
  %i.es = phi ptr [ %i.da, %.from.607 ], [ %i.em, %.from.600 ], [ %i.em, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i ]
  %.0.i.i = phi ptr [ %i.dx, %.from.607 ], [ %i.en, %.from.600 ], [ %i.en, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i, ptr %i.cx, align 8, !tbaa !100, !alias.scope !582
  br label %.from.624

.from..loopexit.i:                                ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i:                       ; preds = %bb.u, %bb.v
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  %.pre.i = load ptr, ptr %.reload.addr917, align 8, !tbaa !101, !alias.scope !582
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i, %.from..loopexit.i
  %i.et = phi ptr [ %i.cz, %.from..loopexit.i ], [ %.pre.i, %.from..loopexit.split-lp.i ] ; 4 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.from..loopexit.i ], [ %lpad.loopexit.split-lp.i, %.from..loopexit.split-lp.i ]
  %.not.i.i.i125 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i125, label %.from..body127, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.et, ptr %i.cx, align 8, !tbaa !100, !alias.scope !582
  %i.eu = load ptr, ptr %i.cy, align 8, !tbaa !104, !alias.scope !582
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #41
  br label %.from..body127

.from.624:                                        ; preds = %bb.q, %bb.p, %.from.613
  %i.ey = phi ptr [ %i.er, %.from.613 ], [ %i.cz, %bb.p ], [ %i.cz, %bb.q ]
  %i.ez = phi ptr [ %i.es, %.from.613 ], [ %i.da, %bb.p ], [ %i.da, %bb.q ]
  %i.fa = phi ptr [ %.0.i.i, %.from.613 ], [ %i.db, %bb.p ], [ %i.db, %bb.q ] ; 2 uses
  %.1.i = phi i64 [ %i.ds, %.from.613 ], [ %i.dc, %bb.p ], [ %i.dc, %bb.q ] ; 2 uses
  %i.fb = add i64 %.1.i, 1                        ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %3
  br i1 %i.fc, label %bb.p, label %_ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit, !llvm.loop !560

_ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit: ; preds = %.from.624
  %i.fd = load ptr, ptr %.reload.addr929, align 8, !tbaa !101 ; 4 uses
  %.not.i.i.i129 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i129, label %.from._ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit, label %.from.631

.from.631:                                        ; preds = %_ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit
  store ptr %i.fd, ptr %i.cs, align 8, !tbaa !100
  %i.fe = load ptr, ptr %i.ct, align 8, !tbaa !104
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #41
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !100
  br label %.from._ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit

.from..body122:                                   ; preds = %bb.n, %bb.m
  %i.fi = extractvalue { ptr, i32 } %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %.from..split283860

.from..body127:                                   ; preds = %bb.x, %bb.w
  %i.fj = extractvalue { ptr, i32 } %lpad.phi.i, 0
  br label %.from..split283860

.from._ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit: ; preds = %_ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit, %.from.631
  %i.fk = phi ptr [ %.pre, %.from.631 ], [ %i.fa, %_ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit ] ; 2 uses
  %i.fl = load ptr, ptr %.reload.addr917, align 8, !tbaa !101 ; 2 uses
  store ptr %i.fl, ptr %.reload.addr929, align 8, !tbaa !101
  store ptr %i.fk, ptr %i.cs, align 8, !tbaa !100
  %i.fm = load ptr, ptr %i.cy, align 8, !tbaa !104
  store ptr %i.fm, ptr %i.ct, align 8, !tbaa !104
  %i.fn = icmp eq ptr %i.fl, %i.fk
  br i1 %i.fn, label %bb.y, label %.thread504

bb.y:                                             ; preds = %.from._ZN3tevL17findAllSocMarkersENSt3__14spanIKhLm18446744073709551615EEE.exit
  %i.fo = call ptr @__cxa_allocate_exception(i64 16) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.7)
          to label %bb.z unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.fo, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.dq unwind label %.thread946

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134.thread: ; preds = %bb.y
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.865.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.fr = load i8, ptr %13, align 8
  %i.fs = trunc i8 %i.fr to i1
  br i1 %i.fs, label %.split283, label %.from.865.sink.split

.thread946:                                       ; preds = %bb.aa
  %i.ft = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.fu = load i8, ptr %13, align 8
  %i.fv = trunc i8 %i.fu to i1
  br i1 %i.fv, label %.split283, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134862
end_hunk_0
