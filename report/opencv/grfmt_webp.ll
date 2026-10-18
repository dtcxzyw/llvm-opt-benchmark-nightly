Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_webp?download=true
inline.NumInlined: 1094
inline.NumDeleted: 521
begin_hunk_0_@_ZN2cv11WebPEncoder14writeanimationERKNS_9AnimationERKSt6vectorIiSaIiEE:bb.a
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11WebPEncoder14writeanimationERKNS_9AnimationERKSt6vectorIiSaIiEEE15__cv_check__605) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.j = call noundef i32 @WebPAnimEncoderOptionsInitInternal(ptr noundef nonnull %3, i32 noundef 264)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef i32 @WebPConfigInitInternal(ptr noundef nonnull %4, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 527)
  %.not109 = icmp eq i32 %i.k, 0
  br i1 %.not109, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 @WebPPictureInitInternal(ptr noundef nonnull %5, i32 noundef 527)
  %.not110 = icmp eq i32 %i.l, 0
  br i1 %.not110, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not111 = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %.not111, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !152
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.56, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  br i1 %.not111, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !153
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.t = phi ptr [ %i.s, %bb.i ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.u, ptr %8, align 8, !tbaa !125, !alias.scope !269
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !97, !alias.scope !269
  store i8 0, ptr %i.u, align 8, !tbaa !95, !alias.scope !269
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !154, !noalias !269 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !noalias !269 ; 2 uses
  %i.aa = icmp ugt ptr %i.x, %i.z
  %.08.i.i.i = select i1 %i.aa, ptr %i.x, ptr %i.z ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155, !noalias !269 ; 2 uses
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !94, !alias.scope !269 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.al = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.t, ptr noundef nonnull @.str.3, i32 noundef 619, ptr noundef nonnull @__func__._ZN2cv11WebPEncoder14writeanimationERKNS_9AnimationERKSt6vectorIiSaIiEE, ptr noundef %i.al)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !95
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !11
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %7, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !11
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.av, ptr %i.q, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !95
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #19
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !11
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %7, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !156
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.u
  br i1 %i.bo, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.ai, %bb.l ], [ %i.bn, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.bm, %bb.p ]
  %i.bp = load i64, ptr %i.u, align 8, !tbaa !95
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bq) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.bm, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bl, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt10unique_ptrI15WebPAnimEncoderPFvPS0_EED2Ev.exit195

bb.r:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.br = load ptr, ptr %6, align 8, !tbaa !118
  call void @WebPFree(ptr noundef %i.br)
  br label %_ZNSt10unique_ptrI15WebPAnimEncoderPFvPS0_EED2Ev.exit

bb.s:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load double, ptr %i.bs, align 8, !tbaa !122
  %21 = fptosi double %20 to i32
  %22 = shl i32 %21, 24
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %24 = load double, ptr %23, align 8, !tbaa !122
  %25 = fptosi double %24 to i32
  %26 = shl i32 %25, 16
  %27 = and i32 %26, 16711680
  %28 = or disjoint i32 %27, %22
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %30 = load double, ptr %29, align 8, !tbaa !122
  %31 = fptosi double %30 to i32
  %32 = shl i32 %31, 8
  %33 = and i32 %32, 65280
  %34 = or disjoint i32 %28, %33
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %36 = load double, ptr %35, align 8, !tbaa !122
  %37 = fptosi double %36 to i32
  %38 = and i32 %37, 255
  %39 = or disjoint i32 %34, %38
  store i32 %39, ptr %3, align 4, !tbaa !272
  %i.bt = load i32, ptr %1, align 8, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !274
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bv, align 4, !tbaa !275
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !136
  %i.by = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %.not226 = icmp eq ptr %i.bx, %i.by
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.cj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 -24
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 128
  br label %bb.v

._crit_edge:                                      ; preds = %bb.an, %bb.s
  %i.cv = call noundef ptr @WebPAnimEncoderNewInternal(i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %3, i32 noundef 264) ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.g, ptr %i.cw, align 8, !tbaa !164
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.i, ptr %i.cx, align 4, !tbaa !165
  store i32 1, ptr %5, align 8, !tbaa !166
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 %i.g, ptr %i.cy, align 8, !tbaa !276
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !90  ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !126 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !127 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !91
  %.not227 = icmp eq ptr %i.df, %i.cz
  br i1 %.not227, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %._crit_edge
  %i.dg = load i32, ptr %i.cz, align 8, !tbaa !115
  %.fr = freeze i32 %i.dg
  %i.dh = and i32 %.fr, 4064
  %i.di = icmp eq i32 %i.dh, 96
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %i.di, label %.lr.ph219.split.us, label %.lr.ph219.split

.lr.ph219.split.us:                               ; preds = %.lr.ph219, %bb.u
  %.079217.us = phi i64 [ %i.eh, %bb.u ], [ 0, %.lr.ph219 ] ; 3 uses
  %.0103216.us = phi i32 [ %i.eg, %bb.u ], [ 0, %.lr.ph219 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #19
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ds = getelementptr inbounds nuw [208 x i8], ptr %i.dr, i64 %.079217.us ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !126
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !127
  %i.dx = icmp eq i32 %i.db, %i.du
  %i.dy = icmp eq i32 %i.dd, %i.dw
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %bb.t, label %.split.us

bb.t:                                             ; preds = %.lr.ph219.split.us
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !114
  store ptr %i.eb, ptr %i.dp, align 8, !tbaa !277
  %i.ec = invoke i32 @WebPAnimEncoderAdd(ptr noundef %i.cv, ptr noundef nonnull %5, i32 noundef %.0103216.us, ptr noundef nonnull %4)
          to label %bb.u unwind label %.split223.us

bb.u:                                             ; preds = %bb.t
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !92
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.079217.us
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !123
  %i.eg = add nsw i32 %i.ef, %.0103216.us         ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.eh = add nuw i64 %.079217.us, 1              ; 2 uses
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !91
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = sdiv exact i64 %i.em, 208
  %i.eo = icmp ult i64 %i.eh, %i.en
  br i1 %i.eo, label %.lr.ph219.split.us, label %._crit_edge220, !llvm.loop !261

.split223.us:                                     ; preds = %bb.t
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.v:                                             ; preds = %.lr.ph, %bb.an
  %i.eq = phi ptr [ %i.by, %.lr.ph ], [ %i.gy, %bb.an ]
  %.081215 = phi i64 [ 0, %.lr.ph ], [ %i.gw, %bb.an ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.081215 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !123 ; 3 uses
  %i.eu = load i32, ptr %i.er, align 4, !tbaa !123
  %i.ev = icmp eq i32 %i.eu, 64
  br i1 %i.ev, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %4, align 4, !tbaa !278
  %i.ew = sitofp i32 %i.et to float               ; 2 uses
  store float %i.ew, ptr %i.bz, align 4, !tbaa !279
  %i.ex = icmp slt i32 %i.et, 1
  br i1 %i.ex, label %bb.x, label %bb.al

bb.x:                                             ; preds = %bb.w
  store float 1.000000e+00, ptr %i.bz, align 4, !tbaa !279
  %i.ey = call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not136 = icmp eq ptr %i.ey, null              ; 2 uses
  br i1 %.not136, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !152
  %i.fb = icmp slt i32 %i.fa, 3
  br i1 %i.fb, label %thread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.41, i32 noundef %i.et)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.fc = load ptr, ptr %10, align 8, !tbaa !94
  %i.fd = load i64, ptr %i.cb, align 8, !tbaa !97
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.fc, i64 noundef %i.fd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ai ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.aa
  %i.ff = load ptr, ptr %10, align 8, !tbaa !94   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cc
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fh = load i64, ptr %i.cc, align 8, !tbaa !95
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %.not136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.fj = load ptr, ptr %i.ey, align 8, !tbaa !153
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.ab
  %i.fk = phi ptr [ %i.fj, %bb.ab ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  store ptr %i.cd, ptr %11, align 8, !tbaa !125, !alias.scope !282
  store i64 0, ptr %i.ce, align 8, !tbaa !97, !alias.scope !282
  store i8 0, ptr %i.cd, align 8, !tbaa !95, !alias.scope !282
  %i.fl = load ptr, ptr %i.cf, align 8, !tbaa !154, !noalias !282 ; 3 uses
  %.not.i.not.i.i153 = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %i.cg, align 8, !noalias !282 ; 2 uses
  %i.fn = icmp ugt ptr %i.fl, %i.fm
  %.08.i.i.i154 = select i1 %i.fn, ptr %i.fl, ptr %i.fm ; 2 uses
  %.not5.i.i155 = icmp eq ptr %.08.i.i.i154, null
  %.not.i.i156 = select i1 %.not.i.not.i.i153, i1 true, i1 %.not5.i.i155
  br i1 %.not.i.i156, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = load ptr, ptr %i.ch, align 8, !tbaa !155, !noalias !282 ; 2 uses
  %i.fp = ptrtoint ptr %.08.i.i.i154 to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.fo, i64 noundef %i.fr)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit162 unwind label %bb.ae ; 0 uses
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv11WebPEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #19
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  invoke void %i.b(ptr noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPvE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !95
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @_ZTSPFvPvE) #19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !128
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !95
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #20
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_grfmt_webp.cpp() #15 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i64 @_ZN2cv5utils30getConfigurationParameterSizeTEPKcm(ptr noundef nonnull @.str, i64 noundef 67108864)
  store i64 %i.a, ptr @_ZN2cvL17param_maxFileSizeE, align 8, !tbaa !113
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !88}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS15WebPAnimDecoder", !12, i64 0}
!14 = !{!"_ZTSSt10_Head_baseILm0EP15WebPAnimDecoderLb0EE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !6, i64 16}
!20 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!21 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!22 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!23 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !22, i64 4, !7, i64 8, !6, i64 12}
!24 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!25 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !20, i64 56, !21, i64 64, !23, i64 72, !24, i64 128}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIhSaIhEE", !29, i64 0}
!31 = !{!"_ZTSSt4lessIiE"}
!32 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !31, i64 0}
!33 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!34 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!35 = !{!"_ZTSSt18_Rb_tree_node_base", !33, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!36 = !{!"_ZTSSt15_Rb_tree_header", !35, i64 0, !18, i64 32}
!37 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !32, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !37, i64 0}
!39 = !{!"_ZTSSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE", !38, i64 0}
!40 = !{!"_ZTSN2cv12Endianness_tE", !6, i64 0}
!41 = !{!"_ZTSN2cv10ExifReaderE", !30, i64 0, !39, i64 24, !40, i64 72}
!42 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!43 = !{!"_ZTSN2cv3VecIdLi4EEE", !42, i64 0}
!44 = !{!"_ZTSN2cv7Scalar_IdEE", !43, i64 0}
!45 = !{!"p1 int", !12, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIiSaIiEE", !48, i64 0}
!50 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !53, i64 0}
!55 = !{!"_ZTSN2cv9AnimationE", !7, i64 0, !44, i64 8, !49, i64 40, !54, i64 64, !25, i64 88}
!56 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !12, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSN2cv16BaseImageDecoderE", !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !19, i64 24, !19, i64 56, !25, i64 88, !26, i64 296, !26, i64 297, !41, i64 304, !18, i64 384, !55, i64 392, !7, i64 688, !60, i64 696}
!62 = !{!61, !26, i64 296}
!63 = !{!"_ZTSSi", !18, i64 8}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !65, i64 56}
!67 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!68 = !{!"_ZTSSt12__basic_fileIcE", !67, i64 0, !26, i64 8}
!69 = !{!"_ZTSSt13_Ios_Openmode", !6, i64 0}
!70 = !{!"_ZTS11__mbstate_t", !7, i64 0, !6, i64 4}
!71 = !{!"p1 _ZTSSt7codecvtIcc11__mbstate_tE", !12, i64 0}
!72 = !{!"_ZTSSt13basic_filebufIcSt11char_traitsIcEE", !66, i64 0, !6, i64 64, !68, i64 104, !69, i64 120, !70, i64 124, !70, i64 132, !70, i64 140, !16, i64 152, !18, i64 160, !26, i64 168, !26, i64 169, !26, i64 170, !6, i64 171, !16, i64 176, !16, i64 184, !26, i64 192, !71, i64 200, !16, i64 208, !18, i64 216, !16, i64 224, !16, i64 232}
!73 = !{!"_ZTSSt14basic_ifstreamIcSt11char_traitsIcEE", !63, i64 0, !72, i64 16}
!74 = !{!"_ZTSSt11_Tuple_implILm0EJP15WebPAnimDecoderN2cv11WebPDecoder16UniquePtrDeleterEEE", !14, i64 0}
!75 = !{!"_ZTSSt5tupleIJP15WebPAnimDecoderN2cv11WebPDecoder16UniquePtrDeleterEEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implI15WebPAnimDecoderN2cv11WebPDecoder16UniquePtrDeleterEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataI15WebPAnimDecoderN2cv11WebPDecoder16UniquePtrDeleterELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt10unique_ptrI15WebPAnimDecoderN2cv11WebPDecoder16UniquePtrDeleterEE", !77, i64 0}
!79 = !{!"_ZTSN2cv11WebPDecoderE", !61, i64 0, !73, i64 720, !18, i64 1240, !25, i64 1248, !78, i64 1456, !26, i64 1464, !7, i64 1468}
!80 = !{!79, !18, i64 1240}
!81 = !{!79, !26, i64 1464}
!82 = !{!79, !7, i64 1468}
!83 = !{!61, !7, i64 688}
!84 = !{!57, !56, i64 0}
!85 = !{!57, !56, i64 8}
!86 = !{!27, !16, i64 0}
!87 = !{!27, !16, i64 16}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!57, !56, i64 16}
!90 = !{!51, !50, i64 0}
!91 = !{!51, !50, i64 8}
!92 = !{!46, !45, i64 0}
!93 = !{!46, !45, i64 16}
!94 = !{!19, !16, i64 0}
!95 = !{!6, !6, i64 0}
!96 = !{!13, !13, i64 0}
!97 = !{!19, !18, i64 8}
!98 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!99 = !{!98, !7, i64 8}
!100 = !{!98, !7, i64 12}
!101 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!102 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !101, i64 0}
!103 = !{!102, !101, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{}
!106 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!107 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!108 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!109 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !18, i64 8}
!110 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!111 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !106, i64 24, !107, i64 28, !107, i64 32, !108, i64 40, !109, i64 48, !6, i64 64, !7, i64 192, !110, i64 200, !65, i64 208}
!112 = !{!111, !107, i64 32}
!113 = !{!18, !18, i64 0}
!114 = !{!25, !16, i64 24}
!115 = !{!25, !7, i64 0}
!116 = !{!79, !7, i64 1256}
!117 = !{!"_ZTS8WebPData", !16, i64 0, !18, i64 8}
!118 = !{!117, !16, i64 0}
!119 = !{!117, !18, i64 8}
!120 = !{!61, !26, i64 297}
!121 = !{!"double", !6, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!7, !7, i64 0}
!124 = !{!61, !7, i64 16}
!125 = !{!17, !16, i64 0}
!126 = !{!25, !7, i64 12}
!127 = !{!25, !7, i64 8}
!128 = !{!27, !16, i64 8}
!129 = !{!16, !16, i64 0}
!130 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!131 = !{!130, !7, i64 0}
!132 = !{!130, !7, i64 4}
!133 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !12, i64 8, !130, i64 16}
!134 = !{!133, !7, i64 0}
!135 = !{!133, !12, i64 8}
!136 = !{!46, !45, i64 8}
!137 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!138 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!139 = !{!"p1 long", !12, i64 0}
!140 = !{!"_ZTSSt18_Bit_iterator_base", !139, i64 0, !7, i64 8}
!141 = !{!"_ZTSSt13_Bit_iterator", !140, i64 0}
!142 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !141, i64 0, !141, i64 16, !139, i64 32}
!143 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !142, i64 0}
!144 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !143, i64 0}
!145 = !{!"_ZTSSt6vectorIbSaIbEE", !144, i64 0}
!146 = !{!"_ZTSN2cv16BaseImageEncoderE", !60, i64 8, !145, i64 32, !19, i64 72, !19, i64 104, !56, i64 136, !26, i64 144, !19, i64 152, !49, i64 184}
!147 = !{!140, !139, i64 0}
!148 = !{!140, !7, i64 8}
!149 = !{!142, !139, i64 32}
!150 = !{!"_ZTSN2cv5utils7logging8LogLevelE", !6, i64 0}
!151 = !{!"_ZTSN2cv5utils7logging6LogTagE", !16, i64 0, !150, i64 8}
!152 = !{!151, !150, i64 8}
!153 = !{!151, !16, i64 0}
!154 = !{!66, !16, i64 40}
!155 = !{!66, !16, i64 32}
!156 = !{!63, !18, i64 8}
!157 = !{!"float", !6, i64 0}
!158 = !{!"_ZTS13WebPImageHint", !6, i64 0}
!159 = !{!"_ZTS10WebPConfig", !7, i64 0, !157, i64 4, !7, i64 8, !158, i64 12, !7, i64 16, !157, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112}
!160 = !{!"_ZTS10WebPEncCSP", !6, i64 0}
!161 = !{!"p1 _ZTS12WebPAuxStats", !12, i64 0}
!162 = !{!"_ZTS17WebPEncodingError", !6, i64 0}
!163 = !{!"_ZTS11WebPPicture", !7, i64 0, !160, i64 4, !7, i64 8, !7, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !7, i64 40, !7, i64 44, !16, i64 48, !7, i64 56, !6, i64 60, !45, i64 72, !7, i64 80, !6, i64 84, !12, i64 96, !12, i64 104, !7, i64 112, !16, i64 120, !161, i64 128, !162, i64 136, !12, i64 144, !12, i64 152, !6, i64 160, !16, i64 176, !16, i64 184, !6, i64 192, !12, i64 224, !12, i64 232, !6, i64 240}
!164 = !{!163, !7, i64 8}
!165 = !{!163, !7, i64 12}
!166 = !{!163, !7, i64 0}
!167 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPvELb0EE", !12, i64 0}
!168 = !{!"_ZTSNSt19_Sp_counted_deleterIPhPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !167, i64 0, !16, i64 8}
!169 = !{!146, !56, i64 136}
!170 = !{!"_ZTSSt9type_info", !16, i64 8}
end_hunk_1
