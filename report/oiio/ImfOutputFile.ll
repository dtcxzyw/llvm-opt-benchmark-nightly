inline.NumInlined: 605
inline.NumDeleted: 305
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFileC2EPKcRKNS_6HeaderEi:bb.a
  br i1 %i.av, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  br i1 %.not28, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52 ; 3 uses
  %.not29 = icmp eq ptr %i.az, null
  br i1 %.not29, label %thread-pre-split36.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %thread-pre-split36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bb) #23
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.pre40, i64 312
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !52 ; 2 uses
  %i.bg = icmp eq ptr %.pre42, null
  br i1 %i.bg, label %thread-pre-split36.thread, label %thread-pre-split36

bb.v:                                             ; preds = %bb.q
  br i1 %.not28, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 3 uses
  %.not27 = icmp eq ptr %i.bi, null
  br i1 %.not27, label %thread-pre-split.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %thread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bk) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 312
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52 ; 2 uses
  %i.bp = icmp eq ptr %.pre38, null
  br i1 %i.bp, label %thread-pre-split.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.x, %bb.y
  %i.bq = phi ptr [ %.pre38, %bb.y ], [ %i.bi, %bb.x ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 56) #26
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %i.br = icmp eq ptr %.pr.pre, null
  br i1 %i.br, label %bb.z, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.w, %bb.y, %thread-pre-split
  %i.bs = phi ptr [ %.pr.pre, %thread-pre-split ], [ %i.ax, %bb.w ], [ %.pre, %bb.y ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.bs) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 328) #26
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %thread-pre-split.thread, %bb.v
  invoke void @__cxa_rethrow() #27
          to label %bb.an unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

thread-pre-split36:                               ; preds = %bb.t, %bb.u
  %i.bu = phi ptr [ %.pre42, %bb.u ], [ %i.az, %bb.t ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 56) #26
  %.pr37.pre = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %i.bv = icmp eq ptr %.pr37.pre, null
  br i1 %i.bv, label %bb.ab, label %thread-pre-split36.thread

thread-pre-split36.thread:                        ; preds = %bb.s, %bb.u, %thread-pre-split36
  %i.bw = phi ptr [ %.pr37.pre, %thread-pre-split36 ], [ %i.ax, %bb.s ], [ %.pre40, %bb.u ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.bw) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 328) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %thread-pre-split36.thread, %thread-pre-split36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.7, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ac
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %1)
          to label %bb.ad unwind label %bb.ah     ; 2 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.8, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.ad
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(72) %i.aw) #23
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.ce)
          to label %bb.ae unwind label %bb.ah     ; 0 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.cg = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.af unwind label %bb.ah     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.an unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn30 = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %i.ch, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn32 = phi { ptr, i32 } [ %i.cj, %bb.aj ], [ %.pn30, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aa, %bb.n, %bb.m
  %.pn32.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.bt, %bb.aa ], [ %i.aq, %bb.m ], [ %.pn32, %bb.ak ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  resume { ptr, i32 } %.pn32.pn

bb.am:                                            ; preds = %bb.ak, %bb.aa
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

bb.an:                                            ; preds = %bb.af, %bb.z
  unreachable
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_511StdOFStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10initializeERKNS_6HeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull align 8 dereferenceable(49) %1) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.e = tail call noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header7setTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %1) ; 3 uses
  %i.h = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  %i.i = load i32, ptr %i.h, align 4, !tbaa !90
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %.val34 = load i32, ptr %i.k, align 4           ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %2 = select i1 %i.j, i32 %.val34, i32 %i.m
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i32 %2, ptr %i.o, align 8, !tbaa !91
  %i.p = add i32 %i.m, 1
  %i.q = sub i32 %i.p, %.val34
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  store i32 %i.q, ptr %i.r, align 4, !tbaa !92
  %i.s = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  %i.t = load i32, ptr %i.s, align 4, !tbaa !90
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !77   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i32 %i.t, ptr %i.v, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  %i.x = load <4 x i32>, ptr %i.g, align 4, !tbaa !3
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.y, ptr %i.w, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.aa = tail call noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_517bytesPerLineTableERKNS_6HeaderERSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(49) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.z) ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %.val2945 = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 272
  %.val3046 = load ptr, ptr %i.ad, align 8, !tbaa !57
  %.not = icmp eq ptr %.val3046, %.val2945
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit, %bb.c
  %.val29.lcssa = phi ptr [ %.val2945, %bb.c ], [ %.val33, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit ]
  %i.ae = load ptr, ptr %.val29.lcssa, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_513defaultFormatEPNS_10CompressorE(ptr noundef %i.ag)
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  store i32 %i.ah, ptr %i.aj, align 8, !tbaa !94
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.al = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_516numLinesInBufferEPNS_10CompressorE(ptr noundef %i.ak) ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !77  ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  store i32 %i.al, ptr %i.an, align 8, !tbaa !95
  %i.ao = sext i32 %i.al to i64
  %i.ap = mul i64 %i.aa, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 296
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 264
  %.val48 = load ptr, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.as = getelementptr i8, ptr %i.am, i64 272
  %.val2849 = load ptr, ptr %i.as, align 8, !tbaa !57
  %.not56 = icmp eq ptr %.val2849, %.val48
  br i1 %.not56, label %._crit_edge54, label %.lr.ph53

.lr.ph:                                           ; preds = %bb.c, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit
  %i.at = phi ptr [ %i.bq, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit ], [ %i.ab, %bb.c ]
  %.047 = phi i64 [ %i.bt, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit ], [ 0, %bb.c ] ; 2 uses
  %i.au = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #24 ; 13 uses
  %i.av = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.at)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !97
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.ay = invoke noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_513newCompressorENS_11CompressionEmRKNS_6HeaderE(i32 noundef %i.aw, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(49) %i.ax)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.au, i8 0, i64 28, i1 false)
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i8 0, ptr %i.ba, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 65
  store i8 0, ptr %i.bb, align 1, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 88 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !101
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store i64 0, ptr %i.be, align 8, !tbaa !102
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !72 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bi
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !73
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.body, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bo) #26
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferC2EPNS_10CompressorE.exit: ; preds = %bb.e
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 264
  %.val33 = load ptr, ptr %i.br, align 8, !tbaa !56 ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val33, i64 %.047
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !54
  %i.bt = add nuw i64 %.047, 1                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 272
  %.val30 = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bv = ptrtoint ptr %.val30 to i64
  %i.bw = ptrtoint ptr %.val33 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bt, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !103

bb.h:                                             ; preds = %bb.d, %.lr.ph
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.h ], [ %i.bg, %bb.g ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 144) #26
  resume { ptr, i32 } %eh.lpad-body

._crit_edge54.loopexit:                           ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dh, i64 288
  %.pre61 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !95
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %._crit_edge
  %i.cb = phi i32 [ %i.al, %._crit_edge ], [ %.pre61, %._crit_edge54.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.am, %._crit_edge ], [ %i.dh, %._crit_edge54.loopexit ] ; 5 uses
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !104
  %i.cd = load i32, ptr %i.k, align 4, !tbaa !107
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = add nsw i32 %i.ce, %i.cb
  %i.cg = sdiv i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %.lcssa, i64 152 ; 2 uses
  %i.ci = sext i32 %i.cg to i64                   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 160 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !108 ; 2 uses
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !59 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %i.ci
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge54
  %i.cr = sub nuw nsw i64 %i.ci, %i.cp
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef %i.cr)
  %.pre62 = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 288
  %.pre64 = load i32, ptr %.phi.trans.insert63, align 8, !tbaa !95
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.j:                                             ; preds = %._crit_edge54
  %i.cs = icmp ugt i64 %i.cp, %i.ci
  br i1 %i.cs, label %bb.k, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.ct
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !108
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.cu = phi i32 [ %.pre64, %bb.i ], [ %i.cb, %bb.j ], [ %i.cb, %bb.k ], [ %i.cb, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %i.cv = phi ptr [ %.pre62, %bb.i ], [ %.lcssa, %bb.j ], [ %.lcssa, %bb.k ], [ %.lcssa, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 200
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_523offsetInLineBufferTableERKSt6vectorImSaImEEiRS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i32 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cx)
  ret void

.lr.ph53:                                         ; preds = %._crit_edge, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit
  %i.cy = phi ptr [ %i.dh, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit ], [ %i.am, %._crit_edge ] ; 2 uses
  %.val51 = phi ptr [ %.val, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit ], [ %.val48, %._crit_edge ]
  %.02750 = phi i64 [ %i.di, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit ], [ 0, %._crit_edge ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val51, i64 %.02750
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 296
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !96 ; 2 uses
  %i.dd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #24
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !74 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph53
  tail call void @_ZdaPv(ptr noundef nonnull %i.df) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcE11resizeEraseEl.exit: ; preds = %.lr.ph53, %bb.l
  %i.dh = phi ptr [ %i.cy, %.lr.ph53 ], [ %.pre, %bb.l ] ; 5 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !109
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !74
  %i.di = add nuw i64 %.02750, 1                  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 264
  %.val = load ptr, ptr %i.dj, align 8, !tbaa !56 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dh, i64 272
  %.val28 = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dl = ptrtoint ptr %.val28 to i64
  %i.dm = ptrtoint ptr %.val to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 3
  %i.dp = icmp ult i64 %i.di, %i.do
  br i1 %i.dp, label %.lr.ph53, label %._crit_edge54.loopexit, !llvm.loop !110
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFile31writeMagicNumberAndVersionFieldERNS_7OStreamERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef i64 @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7writeToERNS_7OStreamEb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116writeLineOffsetsERNS_7OStreamERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 44, ptr %i.b, align 8, !tbaa !111
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !72
  %i.j = load i64, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.i, ptr noundef nonnull align 1 dereferenceable(44) @.str.37, i64 44, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN7Iex_3_313throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !73
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.c
  %i.t = load i64, ptr %i.h, align 8, !tbaa !73
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.x = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  ret i64 %i.f

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.y = phi ptr [ %i.ai, %.lr.ph ], [ %i.x, %bb.d ]
  %i.z = phi i64 [ %i.ag, %.lr.ph ], [ 0, %bb.d ]
  %.017 = phi i32 [ %i.af, %.lr.ph ], [ 0, %bb.d ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.af = add i32 %.017, 1                        ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.ai = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ugt i64 %i.am, %i.ag
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !113
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFileC2ERNS_7OStreamERKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_510OutputFileE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #24
          to label %bb.b unwind label %bb.k       ; 5 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataC2Ei(ptr noundef nonnull align 8 dereferenceable(321) %i.b, i32 noundef %3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store i8 0, ptr %i.e, align 8, !tbaa !53
  invoke void @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49) %2, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %1, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !86
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10initializeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.s, ptr %i.w, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFile31writeMagicNumberAndVersionFieldERNS_7OStreamERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(49) %i.t)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ae = invoke noundef i64 @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7writeToERNS_7OStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 312
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.am = invoke fastcc noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116writeLineOffsetsERNS_7OStreamERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !89
  ret void

bb.k:                                             ; preds = %bb.c, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 328) #26
  br label %bb.ag

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_37BaseExcE
          catch ptr null                          ; 2 uses
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = extractvalue { ptr, i32 } %i.ar, 1
  %i.au = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7Iex_3_37BaseExcE) #23
  %i.av = icmp eq i32 %i.at, %i.au
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %i.as) #23 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !77  ; 5 uses
  %.not22 = icmp eq ptr %i.ax, null               ; 2 uses
  br i1 %i.av, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not22, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52 ; 2 uses
  %.not23 = icmp eq ptr %i.az, null
  br i1 %.not23, label %.thread35, label %bb.u

bb.p:                                             ; preds = %bb.m
  br i1 %.not22, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %.not21 = icmp eq ptr %i.bb, null
  br i1 %.not21, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.bc = icmp eq ptr %.pre, null
  br i1 %i.bc, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.q, %bb.r
  %i.bd = phi ptr [ %.pre, %bb.r ], [ %i.ax, %bb.q ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.bd) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 328) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread, %bb.p
  invoke void @__cxa_rethrow() #27
          to label %bb.ai unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.u:                                             ; preds = %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 56) #26
  %.pre29 = load ptr, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %i.bf = icmp eq ptr %.pre29, null
  br i1 %i.bf, label %bb.v, label %.thread35

.thread35:                                        ; preds = %bb.o, %bb.u
  %i.bg = phi ptr [ %.pre29, %bb.u ], [ %i.ax, %bb.o ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.bg) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 328) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %.thread35, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.7, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  %i.bj = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bj)
          to label %bb.y unwind label %bb.ac      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.8, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.y
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(72) %i.aw) #23
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bp)
          to label %bb.z unwind label %bb.ac      ; 0 uses

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.br = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.ai unwind label %bb.ae

bb.ab:                                            ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.w, %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.ac ], [ %i.bs, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn25 = phi { ptr, i32 } [ %i.bu, %bb.ae ], [ %.pn, %bb.ad ]
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.t, %bb.l, %bb.k
  %.pn25.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.be, %bb.t ], [ %i.ap, %bb.k ], [ %.pn25, %bb.af ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  resume { ptr, i32 } %.pn25.pn

bb.ah:                                            ; preds = %bb.af, %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable

bb.ai:                                            ; preds = %bb.aa, %bb.s
  unreachable
}

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFileC2EPKNS_14OutputPartDataE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_510OutputFileE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !77
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !102
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.h = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !72
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !72
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.i, ptr %i.h, i64 %i.d)
  %.not31 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not31, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.ad unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_37BaseExcE
          catch ptr null
  br label %bb.k

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.l = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_37BaseExcE
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #23
  br label %bb.k

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.m = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #24
          to label %bb.g unwind label %bb.e       ; 6 uses

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataC2Ei(ptr noundef nonnull align 8 dereferenceable(321) %i.m, i32 noundef %i.o)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr %i.m, ptr %i.a, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  store ptr %i.q, ptr %i.r, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  store i8 0, ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load i8, ptr %i.t, align 8, !tbaa !117, !range !118, !noundef !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i8 %i.u, ptr %i.v, align 8, !tbaa !86
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10initializeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !120
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 304
  store i32 %i.x, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !88
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_37BaseExcE
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 328) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.ag, %bb.j ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %.016 = extractvalue { ptr, i32 } %.pn, 1
  %i.ah = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7Iex_3_37BaseExcE) #23
  %i.ai = icmp eq i32 %.016, %i.ah
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !77  ; 5 uses
  %.not23 = icmp eq ptr %i.ak, null               ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not23, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.ak) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 328) #26
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  br i1 %.not23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %i.ak) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 328) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  invoke void @__cxa_rethrow() #27
          to label %bb.ad unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.r:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.10, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !120
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %i.ap)
          to label %bb.t unwind label %bb.x       ; 2 uses

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.8, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %bb.t
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(72) %i.aj) #23
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.av)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.ax = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.ad unwind label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn24 = phi { ptr, i32 } [ %i.az, %bb.x ], [ %i.ay, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn26 = phi { ptr, i32 } [ %i.ba, %bb.z ], [ %.pn24, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %.pn26.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %.pn26, %bb.aa ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  resume { ptr, i32 } %.pn26.pn

bb.ac:                                            ; preds = %bb.aa, %bb.q
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

bb.ad:                                            ; preds = %bb.v, %bb.p, %bb.d
  unreachable
}
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

bb.bi:                                            ; preds = %bb.bh
  %i.ey = icmp sgt i64 %reass.sub.fr.i, 48
  br i1 %i.ey, label %bb.bj, label %bb.bk, !prof !155

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %.sroa.0.0, i64 %reass.sub.fr.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.ez = icmp eq i64 %reass.sub.fr.i, 48
  br i1 %i.ez, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread: ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %.sroa.0.0, i64 41, i1 false), !tbaa.struct !136
  %i.fa = load ptr, ptr %i.ef, align 8, !tbaa !151
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %reass.sub.fr.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !154
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bh
  %i.fd = icmp sgt i64 %i.ex, 48
  br i1 %i.fd, label %bb.bm, label %bb.bn, !prof !155

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %.sroa.0.0, i64 %i.ex, i1 false)
  br label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.fe = icmp eq i64 %i.ex, 48
  br i1 %i.fe, label %bb.bo, label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %.sroa.0.0, i64 41, i1 false), !tbaa.struct !136
  br label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.val25.i = load ptr, ptr %i.ef, align 8, !tbaa !151
  %.val26.i = load ptr, ptr %i.ev, align 8, !tbaa !154 ; 2 uses
  %i.ff = ptrtoint ptr %.val26.i to i64
  %i.fg = ptrtoint ptr %.val25.i to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.fh ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fi, %i.bm
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %.val26.i, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %i.fi, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.0810.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !156

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %bb.bk, %bb.bj, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.fl = load ptr, ptr %i.ef, align 8, !tbaa !151
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %reass.sub.fr.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !154
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.fo = ptrtoint ptr %i.bl to i64
  %i.fp = sub i64 %i.fo, %i.eh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.fp) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bp
  %i.fq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret void

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, %bb.bf, %bb.an
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.ao, %bb.ay, %bb.ax, %bb.bq, %.loopexit.split-lp143, %.loopexit142, %.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cv, %bb.ax ], [ %i.cw, %bb.ay ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp143 ], [ %i.fr, %bb.bq ], [ %i.bs, %bb.ao ], [ %lpad.loopexit144, %.loopexit142 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fs = ptrtoint ptr %i.bl to i64
  %i.ft = ptrtoint ptr %.sroa.0.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.fu) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66: ; preds = %bb.bs, %bb.br, %.thread, %.loopexit148, %.loopexit.split-lp149, %bb.g, %bb.h, %bb.ak, %bb.x, %bb.l, %bb.f
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %.pn29.pn, %bb.x ], [ %i.r, %bb.l ], [ %.pn26.pn, %bb.ak ], [ %lpad.loopexit150, %.loopexit148 ], [ %i.br, %.thread ], [ %.pn.pn.pn.ph, %bb.br ], [ %.pn.pn.pn.ph, %bb.bs ]
  %i.fv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn

bb.bt:                                            ; preds = %bb.af, %bb.s
  unreachable
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

declare void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile11writePixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::TaskGroup", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %.val130 = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.h = getelementptr i8, ptr %i.f, i64 240
  %.val131 = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.i = icmp eq ptr %.val131, %.val130
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bo unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.bb

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #23
  br label %bb.ba

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.ba

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !157
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.t = load i32, ptr %i.s, align 8, !tbaa !95
  %i.u = sdiv i32 %i.r, %i.t                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !77   ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load i32, ptr %i.w, align 8, !tbaa !93
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !91  ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %1, -1
  %i.ae = add i32 %i.ad, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !157
  %i.ah = sub i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ac                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %.val127 = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.ak = getelementptr i8, ptr %i.v, i64 272
  %.val128 = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.al = ptrtoint ptr %.val128 to i64
  %i.am = ptrtoint ptr %.val127 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr i64 %i.an, 3
  %i.ap = trunc i64 %i.ao to i32
  %reass.sub = sub i32 %i.ai, %i.u
  %i.aq = add i32 %reass.sub, 1
  %.sroa.speculated189 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ap)
  %.sroa.speculated185 = call i32 @llvm.smax.i32(i32 %.sroa.speculated189, i32 1) ; 2 uses
  %i.ar = sext i32 %i.u to i64
  %wide.trip.count273 = zext nneg i32 %.sroa.speculated185 to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.r
  %i.as = add nsw i32 %.sroa.speculated185, %i.u
  %i.at = add nsw i32 %i.ai, 1
  br label %bb.ae

bb.l:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.av

bb.m:                                             ; preds = %bb.j, %bb.r
  %indvars.iv269 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next270, %bb.r ] ; 2 uses
  %i.av = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %bb.n unwind label %bb.s       ; 7 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.ax = add nsw i64 %indvars.iv269, %i.ar       ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull %2)
          to label %.noexc135 unwind label %bb.t

.noexc135:                                        ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 264
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 272
  %.val6.i = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bc = ptrtoint ptr %.val6.i to i64
  %i.bd = ptrtoint ptr %.val.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = urem i64 %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 2 uses
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i unwind label %bb.p

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i: ; preds = %.noexc135
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !162 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !99, !range !118, !noundef !119
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i, label %bb.o

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !3
  %.phi.trans.insert19.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 4, !tbaa !3
  br label %bb.q

bb.o:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !163
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !158 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 140
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !157
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 288
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !95 ; 2 uses
  %i.bw = trunc nsw i64 %i.ax to i32
  %i.bx = mul nsw i32 %i.bv, %i.bw
  %i.by = add nsw i32 %i.bx, %i.bt                ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !164
  %i.ca = add i32 %i.bv, -1
  %i.cb = add i32 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !3
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.cb) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  store i32 %.sroa.speculated.i, ptr %i.ce, align 4, !tbaa !165
  store i8 1, ptr %i.bl, align 8, !tbaa !99
  br label %bb.q

bb.p:                                             ; preds = %.noexc135
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.av) #23
  br label %.body

bb.q:                                             ; preds = %bb.o, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i
  %i.cg = phi i32 [ %.pre20.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i ], [ %.sroa.speculated.i, %bb.o ]
  %i.ch = phi i32 [ %.pre.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i ], [ %i.by, %bb.o ]
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %i.aa)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i32 %.sroa.speculated16.i, ptr %i.ci, align 8, !tbaa !166
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.cg)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store i32 %.sroa.speculated11.i, ptr %i.cj, align 4, !tbaa !167
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.av)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count273
  br i1 %exitcond274.not, label %bb.k, label %bb.m, !llvm.loop !168

bb.s:                                             ; preds = %bb.q, %bb.m
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

bb.t:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body

.body:                                            ; preds = %bb.p, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.cf, %bb.p ]
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #26
  br label %bb.au

bb.u:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !157
  %i.co = add i32 %i.aa, 1
  %i.cp = add i32 %1, %i.cn
  %i.cq = sub i32 %i.co, %i.cp
  %i.cr = sdiv i32 %i.cq, %i.ac                   ; 2 uses
  %i.cs = sub nsw i32 %i.aa, %1
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %.val125 = load ptr, ptr %i.cu, align 8, !tbaa !56
  %i.cv = getelementptr i8, ptr %i.v, i64 272
  %.val126 = load ptr, ptr %i.cv, align 8, !tbaa !57
  %i.cw = ptrtoint ptr %.val126 to i64
  %i.cx = ptrtoint ptr %.val125 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr i64 %i.cy, 3
  %i.da = trunc i64 %i.cz to i32
  %i.db = add i32 %i.u, 1
  %i.dc = sub i32 %i.db, %i.cr
  %.sroa.speculated178 = call i32 @llvm.smin.i32(i32 %i.dc, i32 %i.da)
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.sroa.speculated178, i32 1) ; 2 uses
  %i.dd = sext i32 %i.u to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.ab
  %i.de = sub nsw i32 %i.u, %.sroa.speculated
  %i.df = add nsw i32 %i.cr, -1
  br label %bb.ae

bb.w:                                             ; preds = %bb.u, %bb.ab
  %indvars.iv = phi i64 [ 0, %bb.u ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.dg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %bb.x unwind label %bb.ac      ; 7 uses

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.di = sub nsw i64 %i.dd, %indvars.iv          ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull %2)
          to label %.noexc149 unwind label %bb.ad

.noexc149:                                        ; preds = %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %i.dg, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !158
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 264
  %.val.i138 = load ptr, ptr %i.dl, align 8, !tbaa !56 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dh, i64 272
  %.val6.i139 = load ptr, ptr %i.dm, align 8, !tbaa !57
  %i.dn = ptrtoint ptr %.val6.i139 to i64
  %i.do = ptrtoint ptr %.val.i138 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = urem i64 %i.di, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val.i138, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 2 uses
  store ptr %i.dt, ptr %i.dk, align 8, !tbaa !162
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.du)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i140 unwind label %bb.z

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i140: ; preds = %.noexc149
  %i.dv = load ptr, ptr %i.dk, align 8, !tbaa !162 ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !99, !range !118, !noundef !119
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i144, label %bb.y

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i144: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i140
  %.phi.trans.insert.i145 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %.pre.i146 = load i32, ptr %.phi.trans.insert.i145, align 8, !tbaa !3
  %.phi.trans.insert19.i147 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  %.pre20.i148 = load i32, ptr %.phi.trans.insert19.i147, align 4, !tbaa !3
  br label %bb.aa

bb.y:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i140
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !163
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !158 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 140
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !157
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !95 ; 2 uses
  %i.eh = trunc nsw i64 %i.di to i32
  %i.ei = mul nsw i32 %i.eg, %i.eh
  %i.ej = add nsw i32 %i.ei, %i.ee                ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !164
  %i.el = add i32 %i.eg, -1
  %i.em = add i32 %i.el, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 144
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !3
  %.sroa.speculated.i141 = call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.em) ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  store i32 %.sroa.speculated.i141, ptr %i.ep, align 4, !tbaa !165
  store i8 1, ptr %i.dw, align 8, !tbaa !99
  br label %bb.aa

bb.z:                                             ; preds = %.noexc149
  %i.eq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.dg) #23
  br label %.body150

bb.aa:                                            ; preds = %bb.y, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i144
  %i.er = phi i32 [ %.pre20.i148, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i144 ], [ %.sroa.speculated.i141, %bb.y ]
  %i.es = phi i32 [ %.pre.i146, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i144 ], [ %i.ej, %bb.y ]
  %.sroa.speculated16.i142 = call i32 @llvm.smax.i32(i32 %i.es, i32 %i.ct)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store i32 %.sroa.speculated16.i142, ptr %i.et, align 8, !tbaa !166
  %.sroa.speculated11.i143 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.er)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 52
  store i32 %.sroa.speculated11.i143, ptr %i.eu, align 4, !tbaa !167
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.dg)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.v, label %bb.w, !llvm.loop !169

bb.ac:                                            ; preds = %bb.aa, %bb.w
  %i.ev = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

bb.ad:                                            ; preds = %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body150

.body150:                                         ; preds = %bb.z, %bb.ad
  %eh.lpad-body151 = phi { ptr, i32 } [ %i.ew, %bb.ad ], [ %i.eq, %bb.z ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #26
  br label %bb.au

bb.ae:                                            ; preds = %bb.v, %bb.k
  %.099 = phi i32 [ %i.ae, %bb.k ], [ %i.aa, %bb.v ]
  %.098 = phi i32 [ %i.aa, %bb.k ], [ %i.ct, %bb.v ]
  %.096 = phi i32 [ 1, %bb.k ], [ -1, %bb.v ]     ; 4 uses
  %.095 = phi i32 [ %i.at, %bb.k ], [ %i.df, %bb.v ] ; 3 uses
  %.091 = phi i32 [ %i.as, %bb.k ], [ %i.de, %bb.v ]
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 124
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !92
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.fb = sext i32 %i.u to i64
  %i.fc = sext i32 %.096 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit, %bb.ae
  %i.fd = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fd, ptr noundef nonnull @.str.17)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bo unwind label %bb.ah

bb.ag:                                            ; preds = %._crit_edge
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.fd) #23
  br label %bb.au

bb.ah:                                            ; preds = %bb.af
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit
  %indvars.iv275 = phi i64 [ %i.fb, %.lr.ph.preheader ], [ %indvars.iv.next276, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit ] ; 2 uses
  %i.fg = phi ptr [ %i.ex, %.lr.ph.preheader ], [ %i.io, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit ] ; 2 uses
  %.192235 = phi i32 [ %.091, %.lr.ph.preheader ], [ %.293, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 264
  %.val132 = load ptr, ptr %i.fh, align 8, !tbaa !56 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 272
  %.val133 = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.fj = ptrtoint ptr %.val133 to i64
  %i.fk = ptrtoint ptr %.val132 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3
  %i.fn = urem i64 %indvars.iv275, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val132, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !54 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104 ; 3 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit unwind label %bb.aj

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit: ; preds = %.lr.ph
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 52
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !167
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !166
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = add nsw i32 %i.fv, 1                    ; 3 uses
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !77  ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 124 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !92
  %i.ga = sub nsw i32 %i.fz, %i.fw
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !99, !range !118, !noundef !119
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 120 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !91
  %i.gg = mul nsw i32 %i.fw, %.096
  %i.gh = add nsw i32 %i.gf, %i.gg
  store i32 %i.gh, ptr %i.ge, align 8, !tbaa !91
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq)
          to label %.thread unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.ai
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %._crit_edge241.thread

bb.aj:                                            ; preds = %.lr.ph
  %i.gi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

.loopexit:                                        ; preds = %bb.am, %bb.aq, %bb.ak, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEPKNS0_10LineBufferE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.au

bb.ak:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 312
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !52
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !164
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !170
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !171
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEiPKci(ptr noundef %i.gk, ptr noundef nonnull readonly %i.fx, i32 noundef %i.gm, ptr noundef %i.go, i32 noundef %i.gq)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEPKNS0_10LineBufferE.exit unwind label %.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEPKNS0_10LineBufferE.exit: ; preds = %bb.ak
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, %i.fc ; 2 uses
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 120 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !91
  %i.gu = mul nsw i32 %i.fw, %.096
  %i.gv = add nsw i32 %i.gt, %i.gu
  store i32 %i.gv, ptr %i.gs, align 8, !tbaa !91
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit157 unwind label %.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit157: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEPKNS0_10LineBufferE.exit
  %i.gw = trunc nsw i64 %indvars.iv.next276 to i32
  %i.gx = icmp eq i32 %.095, %i.gw
  br i1 %i.gx, label %bb.at, label %bb.al

bb.al:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit157
  %i.gy = icmp eq i32 %.192235, %.095
  br i1 %i.gy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit, label %bb.am, !llvm.loop !172

bb.am:                                            ; preds = %bb.al
  %i.gz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %bb.an unwind label %.loopexit ; 7 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull %2)
          to label %.noexc169 unwind label %bb.as

.noexc169:                                        ; preds = %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %i.gz, align 8, !tbaa !69
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !158
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.ha, i64 264
  %.val.i158 = load ptr, ptr %i.hd, align 8, !tbaa !56 ; 2 uses
  %i.he = getelementptr i8, ptr %i.ha, i64 272
  %.val6.i159 = load ptr, ptr %i.he, align 8, !tbaa !57
  %i.hf = sext i32 %.192235 to i64
  %i.hg = ptrtoint ptr %.val6.i159 to i64
  %i.hh = ptrtoint ptr %.val.i158 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 3
  %i.hk = urem i64 %i.hf, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i158, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !54 ; 2 uses
  store ptr %i.hm, ptr %i.hc, align 8, !tbaa !162
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hn)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i160 unwind label %bb.ap

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i160: ; preds = %.noexc169
  %i.ho = load ptr, ptr %i.hc, align 8, !tbaa !162 ; 9 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 64 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !99, !range !118, !noundef !119
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i164, label %bb.ao

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i164: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i160
  %.phi.trans.insert.i165 = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %.pre.i166 = load i32, ptr %.phi.trans.insert.i165, align 8, !tbaa !3
  %.phi.trans.insert19.i167 = getelementptr inbounds nuw i8, ptr %i.ho, i64 44
  %.pre20.i168 = load i32, ptr %.phi.trans.insert19.i167, align 4, !tbaa !3
  br label %bb.aq

bb.ao:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i160
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !163
  %i.hv = load ptr, ptr %i.hb, align 8, !tbaa !158 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 140
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !157
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 288
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !95 ; 2 uses
  %i.ia = mul nsw i32 %i.hz, %.192235
  %i.ib = add nsw i32 %i.ia, %i.hx                ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !164
  %i.id = add i32 %i.hz, -1
  %i.ie = add i32 %i.id, %i.ib
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 144
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !3
  %.sroa.speculated.i161 = call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.ie) ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 44
  store i32 %.sroa.speculated.i161, ptr %i.ih, align 4, !tbaa !165
  store i8 1, ptr %i.hp, align 8, !tbaa !99
  br label %bb.aq

bb.ap:                                            ; preds = %.noexc169
  %i.ii = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.gz) #23
  br label %.body170

bb.aq:                                            ; preds = %bb.ao, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i164
  %i.ij = phi i32 [ %.pre20.i168, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i164 ], [ %.sroa.speculated.i161, %bb.ao ]
  %i.ik = phi i32 [ %.pre.i166, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit._crit_edge.i164 ], [ %i.ib, %bb.ao ]
  %.sroa.speculated16.i162 = call i32 @llvm.smax.i32(i32 %i.ik, i32 %.098)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  store i32 %.sroa.speculated16.i162, ptr %i.il, align 8, !tbaa !166
  %.sroa.speculated11.i163 = call i32 @llvm.smin.i32(i32 %.099, i32 %i.ij)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 52
  store i32 %.sroa.speculated11.i163, ptr %i.im, align 4, !tbaa !167
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.gz)
          to label %bb.ar unwind label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.in = add nsw i32 %.192235, %.096
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit: ; preds = %bb.al, %bb.ar
  %.293 = phi i32 [ %i.in, %bb.ar ], [ %.095, %bb.al ]
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 124
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !92
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %._crit_edge, label %.lr.ph

bb.as:                                            ; preds = %bb.an
  %i.is = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body170

.body170:                                         ; preds = %bb.ap, %bb.as
  %eh.lpad-body171 = phi { ptr, i32 } [ %i.is, %bb.as ], [ %i.ii, %bb.ap ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 32) #26
  br label %bb.au

bb.at:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit157
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.it = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 264
  %.val = load ptr, ptr %i.iu, align 8, !tbaa !56 ; 5 uses
  %i.iv = getelementptr i8, ptr %i.it, i64 272
  %.val124 = load ptr, ptr %i.iv, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %.val124, %.val
  br i1 %.not, label %._crit_edge241.thread, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %bb.at
  %i.iw = ptrtoint ptr %.val124 to i64
  %i.ix = ptrtoint ptr %.val to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = ashr exact i64 %i.iy, 3                 ; 2 uses
  %i.ja = icmp eq i64 %i.iy, 8
  br i1 %i.ja, label %.lr.ph240.epil.preheader, label %.lr.ph240.preheader.new

.lr.ph240.preheader.new:                          ; preds = %.lr.ph240.preheader
  %unroll_iter = and i64 %i.iz, -2
  br label %.lr.ph240

._crit_edge241.unr-lcssa:                         ; preds = %.lr.ph240
  %i.jb = and i64 %i.iy, 8
  %lcmp.mod.not = icmp eq i64 %i.jb, 0
  br i1 %lcmp.mod.not, label %._crit_edge241, label %.lr.ph240.epil.preheader

.lr.ph240.epil.preheader:                         ; preds = %._crit_edge241.unr-lcssa, %.lr.ph240.preheader
  %.084238.epil.init = phi i64 [ 0, %.lr.ph240.preheader ], [ %i.jy, %._crit_edge241.unr-lcssa ]
  %.085237.epil.init = phi ptr [ null, %.lr.ph240.preheader ], [ %spec.select.1, %._crit_edge241.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i64 %i.iz to i1
  call void @llvm.assume(i1 %lcmp.mod360)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.084238.epil.init
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !54 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 65 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !100, !range !118, !noundef !119
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = icmp eq ptr %.085237.epil.init, null
  %or.cond.not.epil = select i1 %i.jg, i1 %i.jh, i1 false
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %spec.select.epil = select i1 %or.cond.not.epil, ptr %i.ji, ptr %.085237.epil.init
  store i8 0, ptr %i.je, align 1, !tbaa !100
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %._crit_edge241.unr-lcssa, %.lr.ph240.epil.preheader
  %spec.select.lcssa = phi ptr [ %spec.select.1, %._crit_edge241.unr-lcssa ], [ %spec.select.epil, %.lr.ph240.epil.preheader ] ; 2 uses
  %.not108 = icmp eq ptr %spec.select.lcssa, null
  br i1 %.not108, label %._crit_edge241.thread, label %bb.aw

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %.body170, %bb.ac, %.body150, %bb.s, %.body, %bb.ah, %bb.ag
  %.pn112.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ff, %bb.ah ], [ %i.fe, %bb.ag ], [ %eh.lpad-body151, %.body150 ], [ %i.ck, %bb.s ], [ %i.ev, %bb.ac ], [ %i.gi, %bb.aj ], [ %eh.lpad-body171, %.body170 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.l
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %bb.au ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ba

.lr.ph240:                                        ; preds = %.lr.ph240, %.lr.ph240.preheader.new
  %.084238 = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %i.jy, %.lr.ph240 ] ; 3 uses
  %.085237 = phi ptr [ null, %.lr.ph240.preheader.new ], [ %spec.select.1, %.lr.ph240 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %niter.next.1, %.lr.ph240 ]
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.084238
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !54 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 65 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !100, !range !118, !noundef !119
  %i.jn = trunc nuw i8 %i.jm to i1
  %i.jo = icmp eq ptr %.085237, null
  %or.cond.not = select i1 %i.jn, i1 %i.jo, i1 false
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 72
  %spec.select = select i1 %or.cond.not, ptr %i.jp, ptr %.085237 ; 2 uses
  store i8 0, ptr %i.jl, align 1, !tbaa !100
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.084238
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !54 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 65 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !100, !range !118, !noundef !119
  %i.jv = trunc nuw i8 %i.ju to i1
  %i.jw = icmp eq ptr %spec.select, null
  %or.cond.not.1 = select i1 %i.jv, i1 %i.jw, i1 false
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %spec.select.1 = select i1 %or.cond.not.1, ptr %i.jx, ptr %spec.select ; 3 uses
  store i8 0, ptr %i.jt, align 1, !tbaa !100
  %i.jy = add nuw i64 %.084238, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge241.unr-lcssa, label %.lr.ph240, !llvm.loop !173

bb.aw:                                            ; preds = %._crit_edge241
  %i.jz = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jz, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.lcssa)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.jz, ptr nonnull @_ZTIN7Iex_3_35IoExcE, ptr nonnull @_ZN7Iex_3_35IoExcD1Ev) #27
          to label %bb.bo unwind label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ka = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.jz) #23
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.kb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.ba

._crit_edge241.thread:                            ; preds = %bb.at, %.thread, %._crit_edge241
  %i.kc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret void

bb.ba:                                            ; preds = %bb.av, %bb.az, %bb.ay, %bb.g, %bb.f
  %.pn117 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ], [ %.pn112.pn.pn, %bb.av ], [ %i.kb, %bb.az ], [ %i.ka, %bb.ay ]
  %i.kd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.e
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %bb.ba ], [ %i.k, %bb.e ] ; 3 uses
  %.980 = extractvalue { ptr, i32 } %.pn117.pn, 1
  %i.ke = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7Iex_3_37BaseExcE) #23
  %i.kf = icmp eq i32 %.980, %i.ke
  br i1 %i.kf, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %.9 = extractvalue { ptr, i32 } %.pn117.pn, 0
  %i.kg = call ptr @__cxa_begin_catch(ptr %.9) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.18, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bd
  %i.kj = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 312
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !52
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !81
  %i.ko = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.kn)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit unwind label %bb.bi

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef %i.ko)
          to label %bb.be unwind label %bb.bi     ; 2 uses

bb.be:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.8, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176: ; preds = %bb.be
  %i.kr = load ptr, ptr %i.kg, align 8, !tbaa !69
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = call noundef ptr %i.kt(ptr noundef nonnull align 8 dereferenceable(72) %i.kg) #23
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef %i.ku)
          to label %bb.bf unwind label %bb.bi     ; 0 uses

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176
  %i.kw = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.kg, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.bg unwind label %bb.bi     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.bo unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bc
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bd, %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn120 = phi { ptr, i32 } [ %i.ky, %bb.bi ], [ %i.kx, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn122 = phi { ptr, i32 } [ %i.kz, %bb.bk ], [ %.pn120, %bb.bj ]
  invoke void @__cxa_end_catch()
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bb
  %.merged = phi { ptr, i32 } [ %.pn117.pn, %bb.bb ], [ %.pn122, %bb.bl ]
  resume { ptr, i32 } %.merged

bb.bn:                                            ; preds = %bb.bl
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #25
  unreachable

bb.bo:                                            ; preds = %bb.bg, %bb.ax, %bb.af, %bb.d
  unreachable
}

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN7Iex_3_35IoExcC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_35IoExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile15currentScanLineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputFileE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !77   ; 5 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.m       ; 6 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull @.str.19)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.k = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputFileE:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ag = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.w unwind label %bb.m       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.ah = load <2 x i32>, ptr %i.af, align 4
  %i.ai = load <2 x i32>, ptr %i.ag, align 4
  %i.aj = icmp eq <2 x i32> %i.ah, %i.ai          ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = extractelement <2 x i1> %i.aj, i64 1
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit, label %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit.thread

_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit:    ; preds = %bb.w
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load <2 x i32>, ptr %i.an, align 4
  %i.aq = load <2 x i32>, ptr %i.ao, align 4
  %i.ar = icmp eq <2 x i32> %i.ap, %i.aq          ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %bb.ai, label %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit.thread

_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit.thread: ; preds = %bb.w, %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.20, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.y
  %i.ax = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax)
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.aa
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.bf = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit63 unwind label %bb.ae

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.bf)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit63
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.23, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.ab
  %i.bi = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.ae

bb.ad:                                            ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.aa, %bb.y, %bb.ac, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit63, %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bi) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn39 = phi { ptr, i32 } [ %i.bk, %bb.ae ], [ %i.bl, %bb.af ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.ag ], [ %i.bj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cw

bb.ai:                                            ; preds = %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEeqERKS3_.exit
  %i.bm = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.aj unwind label %bb.m

bb.aj:                                            ; preds = %bb.ai
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !90
  %i.bo = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !90
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_Z13iex_debugTrapv()
          to label %bb.am unwind label %bb.m

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.an
  %i.bt = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bt)
          to label %bb.ap unwind label %bb.at     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.ap
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 312
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81
  %i.cb = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ca)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit67 unwind label %bb.at

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.cb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit67
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.25, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %bb.aq
  %i.ce = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.at

bb.as:                                            ; preds = %bb.am
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %bb.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %bb.ap, %bb.an, %bb.ar, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit67, %bb.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn42 = phi { ptr, i32 } [ %i.cg, %bb.at ], [ %i.ch, %bb.au ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.av ], [ %i.cf, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cw

bb.ax:                                            ; preds = %bb.ak
  %i.ci = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.ay unwind label %bb.m

bb.ay:                                            ; preds = %bb.ax
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !97
  %i.ck = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.az unwind label %bb.m

bb.az:                                            ; preds = %bb.ay
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !97
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.bm, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_Z13iex_debugTrapv()
          to label %bb.bb unwind label %bb.m

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.bc
  %i.cp = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cp)
          to label %bb.be unwind label %bb.bi     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %bb.be
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 312
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !81
  %i.cx = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cw)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71 unwind label %bb.bi

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef %i.cx)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.26, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.bf
  %i.da = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  invoke void @__cxa_throw(ptr nonnull %i.da, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bb
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %bb.be, %bb.bc, %bb.bg, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71, %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.da) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn45 = phi { ptr, i32 } [ %i.dc, %bb.bi ], [ %i.dd, %bb.bj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.bk ], [ %i.db, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.cw

bb.bm:                                            ; preds = %bb.az
  %i.de = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.bn unwind label %bb.m

bb.bn:                                            ; preds = %bb.bm
  %i.df = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.bo unwind label %bb.m

bb.bo:                                            ; preds = %bb.bn
  %i.dg = invoke noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %i.df)
          to label %bb.bp unwind label %bb.m

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.dg, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_Z13iex_debugTrapv()
          to label %bb.br unwind label %bb.m

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.bs
  %i.dj = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.dj)
          to label %bb.bu unwind label %bb.by     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %bb.bu
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 312
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !81
  %i.dr = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dq)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75 unwind label %bb.by

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dr)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.27, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.bv
  %i.du = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.by

bb.bx:                                            ; preds = %bb.br
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.by:                                            ; preds = %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.bu, %bb.bs, %bb.bw, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75, %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.du) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn48 = phi { ptr, i32 } [ %i.dw, %bb.by ], [ %i.dx, %bb.bz ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.ca ], [ %i.dv, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cw

bb.cc:                                            ; preds = %bb.bp
  %i.dy = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.cd unwind label %bb.cm     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 124
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !92 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !104
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !107
  %i.eg = add i32 %i.ed, 1
  %i.eh = sub i32 %i.eg, %i.ef
  %.not = icmp eq i32 %i.eb, %i.eh
  br i1 %.not, label %.preheader, label %bb.ce

.preheader:                                       ; preds = %bb.cd
  %i.ei = icmp sgt i32 %i.eb, 0
  br i1 %i.ei, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !91
  br label %.lr.ph

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z13iex_debugTrapv()
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.cg unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %bb.cg
  %i.el = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.el)
          to label %bb.ci unwind label %bb.co     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.ci
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !81
  %i.et = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79 unwind label %bb.co

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.et)
          to label %bb.cj unwind label %bb.co     ; 2 uses

bb.cj:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.28, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.cj
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 312
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !81
  %i.fb = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fa)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81 unwind label %bb.co

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.fb)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.29, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %bb.ck
  %i.fe = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.fe, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #27
          to label %bb.cx unwind label %bb.co

bb.cm:                                            ; preds = %bb.ce, %bb.cc
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cf
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.co:                                            ; preds = %bb.ck, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80, %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %bb.ci, %bb.cg, %bb.cl, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fe) #23
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn51 = phi { ptr, i32 } [ %i.fh, %bb.co ], [ %i.fi, %bb.cp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #23
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.cq ], [ %i.fg, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cw

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cu
  %i.fj = phi i32 [ %i.gg, %bb.cu ], [ %.pre, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %.lr.ph
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !77  ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 312
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !91
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 140
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !157
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 288
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !95
  %i.ft = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef %i.fo, i32 noundef %i.fq, i32 noundef %i.fs)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.fv = load i32, ptr %i.b, align 4, !tbaa !3
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEiPKci(ptr noundef %i.fm, ptr noundef nonnull %i.fk, i32 noundef %i.ft, ptr noundef %i.fu, i32 noundef %i.fv)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !77  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !93
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 288
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !95 ; 3 uses
  %i.gc = sub nsw i32 0, %i.gb
  %i.gd = select i1 %i.fz, i32 %i.gb, i32 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 120 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !91
  %i.gg = add nsw i32 %i.gf, %i.gd                ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !91
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 124 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !92
  %i.gj = sub nsw i32 %i.gi, %i.gb                ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph, label %._crit_edge, !llvm.loop !174

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %.lr.ph
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.cw

._crit_edge:                                      ; preds = %bb.cu, %.preheader
  %i.gm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  ret void

bb.cw:                                            ; preds = %bb.n, %bb.o, %bb.cm, %bb.cr, %bb.cv, %bb.cb, %bb.bl, %bb.aw, %bb.ah, %bb.t, %bb.m
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.t ], [ %i.z, %bb.m ], [ %i.gl, %bb.cv ], [ %.pn48.pn, %bb.cb ], [ %.pn45.pn, %bb.bl ], [ %.pn42.pn, %bb.aw ], [ %.pn39.pn, %bb.ah ], [ %.pn51.pn, %bb.cr ], [ %i.ff, %bb.cm ], [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  %i.gn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  resume { ptr, i32 } %.pn55.pn.pn

bb.cx:                                            ; preds = %bb.cl, %bb.bw, %bb.bg, %bb.ar, %bb.ac, %bb.l
  unreachable
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38LogicExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEiPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !157
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.t = load i32, ptr %i.s, align 8, !tbaa !95
  %i.u = sdiv i32 %i.r, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store i64 %.0, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !86, !range !118, !noundef !119
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 %i.ae, ptr %i.c, align 4
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull %i.c, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %2, ptr %i.b, align 4
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %4, ptr %i.a, align 4
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %3, i32 noundef %4)
  %i.av = sext i32 %4 to i64
  %i.aw = add nsw i64 %i.av, 8
  %i.ax = add i64 %i.aw, %.0                      ; 2 uses
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !87
  %i.ay = load i8, ptr %i.y, align 8, !tbaa !86, !range !118, !noundef !119
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = add i64 %i.ax, 4
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputPartE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !176
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputFileE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.30, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit unwind label %bb.j

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.r)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.31, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.f
  %i.u = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #27
          to label %bb.aj unwind label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.g, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn31 = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.y, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.l ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.n:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull @.str.32)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.n
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.z, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEEE, i64 0) #23 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit

bb.o:                                             ; preds = %.noexc
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull @.str.42)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #27
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #23
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit: ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile18updatePreviewImageEPKNS_11PreviewRgbaE:bb.a
.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bi, align 1
  store i32 %i.bk, ptr %i.bj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.bn = load i32, ptr %i.bl, align 1
  store i32 %i.bn, ptr %i.bm, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.1
  %i.bq = load i32, ptr %i.bo, align 1
  store i32 %i.bq, ptr %i.bp, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.2
  %i.bt = load i32, ptr %i.br, align 1
  store i32 %i.bt, ptr %i.bs, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !189

bb.s:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 312
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !81 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !88
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 noundef %i.ca)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !81
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 60
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !190
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i32 noundef %i.ck)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 312
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !69
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 noundef %i.bg)
          to label %bb.ah unwind label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE       ; 3 uses
  %i.cy = extractvalue { ptr, i32 } %i.cx, 1
  %i.cz = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7Iex_3_37BaseExcE) #23
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  %i.db = extractvalue { ptr, i32 } %i.cx, 0
  %i.dc = tail call ptr @__cxa_begin_catch(ptr %i.db) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.33, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.y
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 312
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !81
  %i.dk = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dj)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit41 unwind label %bb.ad

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.dk)
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit41
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.8, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.z
  %i.dn = load ptr, ptr %i.dc, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(72) %i.dc) #23
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dq)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.ds = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.aj unwind label %bb.af

bb.ac:                                            ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.y, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit41
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.du, %bb.ad ], [ %i.dt, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn29 = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %.pn, %bb.ae ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.u
  %i.dw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  ret void

.body:                                            ; preds = %bb.r, %bb.q, %bb.ag, %bb.w, %bb.v, %bb.m, %bb.h
  %.merged = phi { ptr, i32 } [ %.pn31.pn, %bb.m ], [ %i.v, %bb.h ], [ %.pn29, %bb.ag ], [ %i.cw, %bb.v ], [ %i.cx, %bb.w ], [ %i.bh, %bb.r ], [ %i.ad, %bb.q ]
  %i.dx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  resume { ptr, i32 } %.merged

bb.ai:                                            ; preds = %bb.ag
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

bb.aj:                                            ; preds = %bb.ab, %bb.g
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile13breakScanLineEiiic(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  store i8 %4, ptr %i.a, align 1, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !77   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !157
  %i.k = sub nsw i32 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95
  %i.n = sdiv i32 %i.k, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.34, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %1)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.35, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %bb.f
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit unwind label %bb.k

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.ab)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %bb.g
  %i.ae = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.o, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %bb.f, %bb.e, %bb.h, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ai, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 0, ptr %i.al, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81 ; 2 uses
  %i.ao = sext i32 %2 to i64
  %i.ap = add i64 %i.r, %i.ao
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i64 noundef %i.ap)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.o
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %.022 = phi i32 [ %i.bd, %bb.p ], [ 0, %.preheader ]
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull %i.a, i32 noundef 1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.bd = add nuw nsw i32 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !191

bb.q:                                             ; preds = %.lr.ph
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.be, %bb.q ], [ %i.af, %bb.i ], [ %.pn.pn, %bb.n ]
  %i.bf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  resume { ptr, i32 } %.pn17

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN7Iex_3_313throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<OpenImageIO_v3_1_Imf__3_3_5::Name, std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>, std::_Select1st<std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>>, std::less<OpenImageIO_v3_1_Imf__3_3_5::Name>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !201
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_M_clone_nodeILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_RT0_.exit
  %.0.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.047 = load ptr, ptr %.0.in46, align 8, !tbaa !193 ; 2 uses
  %.not3248 = icmp eq ptr %.047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.050 = phi ptr [ %.0, %bb.x ], [ %.047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink12.i.i36, %bb.x ], [ %.sink12.i.i, %bb.k ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !199  ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !201 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !199
  %.not9.i.i.i35 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !192
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ac, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !193 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !192 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !206

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !193 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !193
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !196
  br label %bb.r

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #24
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ao, ptr noundef nonnull align 8 dereferenceable(312) %i.an, i64 312, i1 false)
  %i.ap = load i32, ptr %.050, align 8, !tbaa !207
  store i32 %i.ap, ptr %.sink12.i.i36, align 8, !tbaa !207
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink12.i.i36, ptr %i.ar, align 8, !tbaa !193
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03149, ptr %i.as, align 8, !tbaa !201
  %i.at = getelementptr inbounds nuw i8, ptr %.050, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !192
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.030) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #27
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.0.in = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !193 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !208

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink12.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #25
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit unwind label %bb.b

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4postEv.exit: ; preds = %bb.a
  tail call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskD2Ev.exit unwind label %bb.b, !inline_history !209

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25, !inline_history !209
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %0) #23, !inline_history !209
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 6 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !167
  %i.p = add nsw i32 %i.o, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !166
  %i.t = add nsw i32 %i.s, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ -1, %bb.c ]
  %.043 = phi i32 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 4 uses
  %.0.in = phi ptr [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !3   ; 2 uses
  %.not76 = icmp eq i32 %.0, %.043
  br i1 %.not76, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph79, %bb.an
  %i.v = phi ptr [ %i.l, %.lr.ph79 ], [ %i.an, %bb.an ] ; 2 uses
  %i.w = phi ptr [ %i.g, %.lr.ph79 ], [ %i.ao, %bb.an ] ; 6 uses
  %.04577 = phi i32 [ %.0, %.lr.ph79 ], [ %i.ev, %bb.an ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 140
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !157
  %i.ac = sub nsw i32 %.04577, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %.val72 = load ptr, ptr %i.ai, align 8, !tbaa !151 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.w, i64 240
  %.val6473 = load ptr, ptr %i.aj, align 8, !tbaa !154
  %.not81 = icmp eq ptr %.val6473, %.val72
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ak = icmp sgt i32 %.04577, -1                ; 2 uses
  %i.al = xor i32 %.04577, -1                     ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.ak
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !162
  %.pre83 = load ptr, ptr %i.c, align 8, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.am = phi ptr [ %.pre83, %._crit_edge.loopexit ], [ %i.ah, %bb.e ] ; 2 uses
  %i.an = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.v, %bb.e ] ; 3 uses
  %i.ao = phi ptr [ %i.en, %._crit_edge.loopexit ], [ %i.w, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !163
  %i.ar = icmp ult ptr %i.aq, %i.am
  br i1 %i.ar, label %bb.am, label %bb.an

bb.f:                                             ; preds = %.lr.ph, %bb.ak
  %.val75 = phi ptr [ %.val72, %.lr.ph ], [ %.val, %bb.ak ]
  %i.as = phi ptr [ %i.w, %.lr.ph ], [ %i.en, %bb.ak ] ; 4 uses
  %i.at = phi i64 [ 0, %.lr.ph ], [ %i.em, %bb.ak ]
  %.04674 = phi i32 [ 0, %.lr.ph ], [ %i.el, %bb.ak ]
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %.val75, i64 %i.at ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !210 ; 14 uses
  %i.ax = icmp sgt i32 %i.aw, -1                  ; 4 uses
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = udiv i32 %.04577, %i.aw
  br label %_ZN9Imath_3_14modpEii.exit

bb.i:                                             ; preds = %bb.g
  %i.az = sub nsw i32 0, %i.aw
  %i.ba = udiv i32 %.04577, %i.az
  %i.bb = sub nsw i32 0, %i.ba
  br label %_ZN9Imath_3_14modpEii.exit

bb.j:                                             ; preds = %bb.f
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw i32 %i.aw, %i.al
  %i.bd = udiv i32 %i.bc, %i.aw
  %i.be = sub nsw i32 0, %i.bd
  br label %_ZN9Imath_3_14modpEii.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = sub nsw i32 0, %i.aw
  %i.bg = xor i32 %i.aw, -1
  %i.bh = sub nsw i32 %i.bg, %.04577
  %i.bi = udiv i32 %i.bh, %i.bf
  br label %_ZN9Imath_3_14modpEii.exit

_ZN9Imath_3_14modpEii.exit:                       ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %i.bj = phi i32 [ %i.bb, %bb.i ], [ %i.ay, %bb.h ], [ %i.be, %bb.k ], [ %i.bi, %bb.l ]
  %i.bk = mul nsw i32 %i.bj, %i.aw
  %.not59 = icmp eq i32 %.04577, %i.bk
  br i1 %.not59, label %bb.m, label %bb.ak

bb.m:                                             ; preds = %_ZN9Imath_3_14modpEii.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 132
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !212 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !213 ; 13 uses
  %i.bp = icmp sgt i32 %i.bm, -1
  %i.bq = icmp sgt i32 %i.bo, -1                  ; 4 uses
  br i1 %i.bp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = udiv i32 %i.bm, %i.bo
  br label %_ZN9Imath_3_14divpEii.exit

bb.p:                                             ; preds = %bb.n
  %i.bs = sub nsw i32 0, %i.bo
  %i.bt = udiv i32 %i.bm, %i.bs
  %i.bu = sub nsw i32 0, %i.bt
  br label %_ZN9Imath_3_14divpEii.exit

bb.q:                                             ; preds = %bb.m
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = xor i32 %i.bm, -1
  %i.bw = add nuw i32 %i.bo, %i.bv
  %i.bx = udiv i32 %i.bw, %i.bo
  %i.by = sub nsw i32 0, %i.bx
  br label %_ZN9Imath_3_14divpEii.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = sub nsw i32 0, %i.bo
  %i.ca = xor i32 %i.bo, -1
  %i.cb = sub nsw i32 %i.ca, %i.bm
  %i.cc = udiv i32 %i.cb, %i.bz
  br label %_ZN9Imath_3_14divpEii.exit

_ZN9Imath_3_14divpEii.exit:                       ; preds = %bb.o, %bb.p, %bb.r, %bb.s
  %i.cd = phi i32 [ %i.bu, %bb.p ], [ %i.br, %bb.o ], [ %i.by, %bb.r ], [ %i.cc, %bb.s ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !214 ; 5 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN9Imath_3_14divpEii.exit
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = udiv i32 %i.cf, %i.bo
  br label %_ZN9Imath_3_14divpEii.exit67

bb.v:                                             ; preds = %bb.t
  %i.ci = sub nsw i32 0, %i.bo
  %i.cj = udiv i32 %i.cf, %i.ci
  %i.ck = sub nsw i32 0, %i.cj
  br label %_ZN9Imath_3_14divpEii.exit67

bb.w:                                             ; preds = %_ZN9Imath_3_14divpEii.exit
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = xor i32 %i.cf, -1
  %i.cm = add nuw i32 %i.bo, %i.cl
  %i.cn = udiv i32 %i.cm, %i.bo
  %i.co = sub nsw i32 0, %i.cn
  br label %_ZN9Imath_3_14divpEii.exit67

bb.y:                                             ; preds = %bb.w
  %i.cp = sub nsw i32 0, %i.bo
  %i.cq = xor i32 %i.bo, -1
  %i.cr = sub nsw i32 %i.cq, %i.cf
  %i.cs = udiv i32 %i.cr, %i.cp
  br label %_ZN9Imath_3_14divpEii.exit67

_ZN9Imath_3_14divpEii.exit67:                     ; preds = %bb.u, %bb.v, %bb.x, %bb.y
  %i.ct = phi i32 [ %i.ck, %bb.v ], [ %i.ch, %bb.u ], [ %i.co, %bb.x ], [ %i.cs, %bb.y ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !215, !range !118, !noundef !119
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN9Imath_3_14divpEii.exit67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !94
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !216
  %reass.sub = sub i32 %i.ct, %i.cd
  %i.da = add i32 %reass.sub, 1
  %i.db = sext i32 %i.da to i64
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.cy, i32 noundef %i.cz, i64 noundef %i.db)
          to label %bb.ak unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.al

bb.ab:                                            ; preds = %_ZN9Imath_3_14divpEii.exit67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !217
  %i.df = ptrtoint ptr %i.de to i64
  br i1 %i.ak, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = udiv i32 %.04577, %i.aw
  br label %_ZN9Imath_3_14divpEii.exit68

bb.ae:                                            ; preds = %bb.ac
  %i.dh = sub nsw i32 0, %i.aw
  %i.di = udiv i32 %.04577, %i.dh
  %i.dj = sub nsw i32 0, %i.di
  br label %_ZN9Imath_3_14divpEii.exit68

bb.af:                                            ; preds = %bb.ab
  br i1 %i.ax, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = add nuw i32 %i.aw, %i.al
  %i.dl = udiv i32 %i.dk, %i.aw
  %i.dm = sub nsw i32 0, %i.dl
  br label %_ZN9Imath_3_14divpEii.exit68

bb.ah:                                            ; preds = %bb.af
  %i.dn = sub nsw i32 0, %i.aw
  %i.do = xor i32 %i.aw, -1
  %i.dp = sub nsw i32 %i.do, %.04577
  %i.dq = udiv i32 %i.dp, %i.dn
  br label %_ZN9Imath_3_14divpEii.exit68

_ZN9Imath_3_14divpEii.exit68:                     ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %i.dr = phi i32 [ %i.dj, %bb.ae ], [ %i.dg, %bb.ad ], [ %i.dm, %bb.ag ], [ %i.dq, %bb.ah ]
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !218
  %i.dv = mul i64 %i.du, %i.ds
  %i.dw = add i64 %i.dv, %i.df                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.dx = sext i32 %i.cd to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !219 ; 3 uses
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = add i64 %i.ea, %i.dw
  %i.ec = inttoptr i64 %i.eb to ptr
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !137
  %i.ed = sext i32 %i.ct to i64
  %i.ee = mul i64 %i.dz, %i.ed
  %i.ef = add i64 %i.ee, %i.dw
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !94
  %i.ej = load i32, ptr %i.au, align 8, !tbaa !216
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_519copyFromFrameBufferERPcRPKcS3_mNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.eg, i64 noundef %i.dz, i32 noundef %i.ei, i32 noundef %i.ej)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZN9Imath_3_14divpEii.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN9Imath_3_14divpEii.exit68
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai, %bb.z, %_ZN9Imath_3_14modpEii.exit
  %i.el = add i32 %.04674, 1                      ; 2 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !158 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 232
  %.val = load ptr, ptr %i.eo, align 8, !tbaa !151 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 240
  %.val64 = load ptr, ptr %i.ep, align 8, !tbaa !154
  %i.eq = ptrtoint ptr %.val64 to i64
  %i.er = ptrtoint ptr %.val to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 48
  %i.eu = icmp ugt i64 %i.et, %i.em
  br i1 %i.eu, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !220

bb.al:                                            ; preds = %bb.aj, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %i.ek, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bu

bb.am:                                            ; preds = %._crit_edge
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !163
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ev = add nsw i32 %.04577, %.044              ; 2 uses
  %.not = icmp eq i32 %i.ev, %.043
  br i1 %.not, label %._crit_edge80, label %bb.e, !llvm.loop !221

._crit_edge80:                                    ; preds = %bb.an, %bb.d
  %i.ew = phi ptr [ %i.l, %bb.d ], [ %i.an, %bb.an ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !164 ; 2 uses
  %.not56 = icmp slt i32 %.043, %i.ez
  br i1 %.not56, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge80
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 44
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !165
  %.not57 = icmp sgt i32 %.043, %i.fb
  br i1 %.not57, label %bb.ap, label %bb.cf

bb.ap:                                            ; preds = %bb.ao, %._crit_edge80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !74 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !170
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !163
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !171
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !61 ; 3 uses
  %.not58 = icmp eq ptr %i.fn, null
  br i1 %.not58, label %bb.bt, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !69
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(1112) %i.fn, ptr noundef %i.fd, i32 noundef %i.fk, i32 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ar unwind label %.loopexit.split-lp ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !162 ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !171
  %i.fv = icmp slt i32 %i.fr, %i.fu
  br i1 %i.fv, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  store i32 %i.fr, ptr %i.ft, align 8, !tbaa !171
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !170
  br label %bb.bs

.loopexit:                                        ; preds = %_ZN9Imath_3_14divpEii.exit23.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bu

bb.au:                                            ; preds = %bb.ar
  %i.fy = load ptr, ptr %i.f, align 8, !tbaa !158 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 224
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !94
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.av, label %bb.bs

bb.av:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !164 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !165 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fs, i64 8
  %.val66 = load ptr, ptr %i.gg, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %.val66, ptr %i.a, align 8, !tbaa !137
  %.not5.i = icmp sgt i32 %i.gd, %i.gf
  br i1 %.not5.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.av
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 232 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fy, i64 240    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 132
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 136
  %.val1.pre.i = load ptr, ptr %i.gh, align 8, !tbaa !151 ; 2 uses
  %.val212.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !154 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i, %.lr.ph8.i
  %.val2119.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val2120.i, %._crit_edge.i ] ; 2 uses
  %.val15.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val16.i, %._crit_edge.i ] ; 2 uses
  %.val212.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val21213.i, %._crit_edge.i ] ; 2 uses
  %.val1.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val111.i, %._crit_edge.i ] ; 3 uses
  %.06.i = phi i32 [ %i.gd, %.lr.ph8.i ], [ %i.go, %._crit_edge.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !137
  store ptr %i.gl, ptr %i.b, align 8, !tbaa !137
  %.not10.i = icmp eq ptr %.val212.i, %.val1.i
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw
  %i.gm = icmp sgt i32 %.06.i, -1
  %i.gn = xor i32 %.06.i, -1
  br label %bb.ax

._crit_edge.i:                                    ; preds = %bb.br, %bb.aw
  %.val2120.i = phi ptr [ %.val2119.i, %bb.aw ], [ %.val21.i, %bb.br ]
  %.val16.i = phi ptr [ %.val15.i, %bb.aw ], [ %.val.i, %bb.br ]
  %.val21213.i = phi ptr [ %.val212.i, %bb.aw ], [ %.val21.i, %bb.br ]
  %.val111.i = phi ptr [ %.val1.i, %bb.aw ], [ %.val.i, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.go = add i32 %.06.i, 1
  %exitcond.not.i = icmp eq i32 %.06.i, %i.gf
  br i1 %exitcond.not.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit, label %bb.aw, !llvm.loop !222

bb.ax:                                            ; preds = %bb.br, %.lr.ph.i
  %.val2121.i = phi ptr [ %.val2119.i, %.lr.ph.i ], [ %.val21.i, %bb.br ]
  %.val17.i = phi ptr [ %.val15.i, %.lr.ph.i ], [ %.val.i, %bb.br ]
  %.val4.i = phi ptr [ %.val1.i, %.lr.ph.i ], [ %.val.i, %bb.br ]
  %i.gp = phi i64 [ 0, %.lr.ph.i ], [ %i.is, %bb.br ]
  %.0183.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ir, %bb.br ]
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %.val4.i, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !210 ; 8 uses
  %i.gt = icmp sgt i32 %i.gs, -1                  ; 2 uses
  br i1 %i.gm, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gu = udiv i32 %.06.i, %i.gs
  br label %_ZN9Imath_3_14modpEii.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.gv = sub nsw i32 0, %i.gs
  %i.gw = udiv i32 %.06.i, %i.gv
  %i.gx = sub nsw i32 0, %i.gw
  br label %_ZN9Imath_3_14modpEii.exit.i

bb.bb:                                            ; preds = %bb.ax
  br i1 %i.gt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gy = add nuw i32 %i.gs, %i.gn
  %i.gz = udiv i32 %i.gy, %i.gs
  %i.ha = sub nsw i32 0, %i.gz
  br label %_ZN9Imath_3_14modpEii.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.hb = sub nsw i32 0, %i.gs
  %i.hc = xor i32 %i.gs, -1
  %i.hd = sub nsw i32 %i.hc, %.06.i
  %i.he = udiv i32 %i.hd, %i.hb
  br label %_ZN9Imath_3_14modpEii.exit.i

_ZN9Imath_3_14modpEii.exit.i:                     ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.hf = phi i32 [ %i.gx, %bb.ba ], [ %i.gu, %bb.az ], [ %i.ha, %bb.bc ], [ %i.he, %bb.bd ]
  %i.hg = mul nsw i32 %i.hf, %i.gs
  %.not20.i = icmp eq i32 %.06.i, %i.hg
  br i1 %.not20.i, label %bb.be, label %bb.br

bb.be:                                            ; preds = %_ZN9Imath_3_14modpEii.exit.i
  %i.hh = load i32, ptr %i.gj, align 4, !tbaa !212 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !213 ; 13 uses
  %i.hk = icmp sgt i32 %i.hh, -1
  %i.hl = icmp sgt i32 %i.hj, -1                  ; 4 uses
  br i1 %i.hk, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  br i1 %i.hl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hm = udiv i32 %i.hh, %i.hj
  br label %_ZN9Imath_3_14divpEii.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.hn = sub nsw i32 0, %i.hj
  %i.ho = udiv i32 %i.hh, %i.hn
  %i.hp = sub nsw i32 0, %i.ho
  br label %_ZN9Imath_3_14divpEii.exit.i

bb.bi:                                            ; preds = %bb.be
  br i1 %i.hl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hq = xor i32 %i.hh, -1
  %i.hr = add nuw i32 %i.hj, %i.hq
  %i.hs = udiv i32 %i.hr, %i.hj
  %i.ht = sub nsw i32 0, %i.hs
  br label %_ZN9Imath_3_14divpEii.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.hu = sub nsw i32 0, %i.hj
  %i.hv = xor i32 %i.hj, -1
  %i.hw = sub nsw i32 %i.hv, %i.hh
  %i.hx = udiv i32 %i.hw, %i.hu
  br label %_ZN9Imath_3_14divpEii.exit.i

_ZN9Imath_3_14divpEii.exit.i:                     ; preds = %bb.bk, %bb.bj, %bb.bh, %bb.bg
  %i.hy = phi i32 [ %i.hp, %bb.bh ], [ %i.hm, %bb.bg ], [ %i.ht, %bb.bj ], [ %i.hx, %bb.bk ]
  %i.hz = load i32, ptr %i.gk, align 8, !tbaa !214 ; 5 uses
  %i.ia = icmp sgt i32 %i.hz, -1
  br i1 %i.ia, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %_ZN9Imath_3_14divpEii.exit.i
  br i1 %i.hl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ib = udiv i32 %i.hz, %i.hj
  br label %_ZN9Imath_3_14divpEii.exit23.i

bb.bn:                                            ; preds = %bb.bl
  %i.ic = sub nsw i32 0, %i.hj
  %i.id = udiv i32 %i.hz, %i.ic
  %i.ie = sub nsw i32 0, %i.id
  br label %_ZN9Imath_3_14divpEii.exit23.i

bb.bo:                                            ; preds = %_ZN9Imath_3_14divpEii.exit.i
  br i1 %i.hl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.if = xor i32 %i.hz, -1
  %i.ig = add nuw i32 %i.hj, %i.if
  %i.ih = udiv i32 %i.ig, %i.hj
  %i.ii = sub nsw i32 0, %i.ih
  br label %_ZN9Imath_3_14divpEii.exit23.i

bb.bq:                                            ; preds = %bb.bo
  %i.ij = sub nsw i32 0, %i.hj
  %i.ik = xor i32 %i.hj, -1
  %i.il = sub nsw i32 %i.ik, %i.hz
  %i.im = udiv i32 %i.il, %i.ij
  br label %_ZN9Imath_3_14divpEii.exit23.i

_ZN9Imath_3_14divpEii.exit23.i:                   ; preds = %bb.bq, %bb.bp, %bb.bn, %bb.bm
  %i.in = phi i32 [ %i.ie, %bb.bn ], [ %i.ib, %bb.bm ], [ %i.ii, %bb.bp ], [ %i.im, %bb.bq ]
  %i.io = load i32, ptr %i.gq, align 8, !tbaa !216
  %reass.sub82 = sub i32 %i.in, %i.hy
  %i.ip = add i32 %reass.sub82, 1
  %i.iq = sext i32 %i.ip to i64
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.io, i64 noundef %i.iq)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZN9Imath_3_14divpEii.exit23.i
  %.val.pre.i = load ptr, ptr %i.gh, align 8, !tbaa !151
  %.val21.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !154
  br label %bb.br

bb.br:                                            ; preds = %.noexc, %_ZN9Imath_3_14modpEii.exit.i
  %.val21.i = phi ptr [ %.val2121.i, %_ZN9Imath_3_14modpEii.exit.i ], [ %.val21.pre.i, %.noexc ] ; 4 uses
  %.val.i = phi ptr [ %.val17.i, %_ZN9Imath_3_14modpEii.exit.i ], [ %.val.pre.i, %.noexc ] ; 5 uses
  %i.ir = add i32 %.0183.i, 1                     ; 2 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = ptrtoint ptr %.val21.i to i64
  %i.iu = ptrtoint ptr %.val.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 48
  %i.ix = icmp ugt i64 %i.iw, %i.is
  br i1 %i.ix, label %bb.ax, label %._crit_edge.i, !llvm.loop !223

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre84.pre.pre = load ptr, ptr %i.ex, align 8, !tbaa !162
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit, %bb.av
  %.pre84.pre = phi ptr [ %.pre84.pre.pre, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit ], [ %i.fs, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit, %bb.au, %bb.as
  %.pre84 = phi ptr [ %.pre84.pre, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit ], [ %i.fs, %bb.au ], [ %i.fs, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.ap
  %i.iy = phi ptr [ %.pre84, %bb.bs ], [ %i.ew, %bb.ap ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store i8 0, ptr %i.iz, align 8, !tbaa !99
  br label %bb.cf

bb.bu:                                            ; preds = %bb.at, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %lpad.phi, %bb.at ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %.149 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.ja = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.jb = icmp eq i32 %.1, %i.ja
  %i.jc = call ptr @__cxa_begin_catch(ptr %.149) #23 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !162 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 65
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !100, !range !118, !noundef !119
  %i.jh = trunc nuw i8 %i.jg to i1                ; 2 uses
  br i1 %i.jb, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.jh, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ji = load ptr, ptr %i.jc, align 8, !tbaa !69
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call noundef ptr %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.jc) #23
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !162
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr noundef %i.jl)
          to label %bb.bx unwind label %bb.cd     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.jp = load ptr, ptr %i.jd, align 8, !tbaa !162
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 65
  store i8 1, ptr %i.jq, align 1, !tbaa !100
  br label %bb.ce

bb.by:                                            ; preds = %bb.bu
  br i1 %i.jh, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.js = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull @.str.38)
          to label %bb.ca unwind label %bb.cb     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.jt = load ptr, ptr %i.jd, align 8, !tbaa !162
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 65
  store i8 1, ptr %i.ju, align 1, !tbaa !100
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.ch

bb.cc:                                            ; preds = %bb.ca, %bb.by
  call void @__cxa_end_catch()
  br label %bb.cf

bb.cd:                                            ; preds = %bb.bw
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.ch

bb.ce:                                            ; preds = %bb.bx, %bb.bv
  call void @__cxa_end_catch()
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bt, %bb.ao, %bb.ce, %bb.cc
  ret void

bb.cg:                                            ; preds = %bb.cd, %bb.cb
  %.pn62 = phi { ptr, i32 } [ %i.jv, %bb.cb ], [ %i.jw, %bb.cd ]
  resume { ptr, i32 } %.pn62

bb.ch:                                            ; preds = %bb.cd, %bb.cb
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #25
  unreachable
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_519copyFromFrameBufferERPcRPKcS3_mNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !111
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !108
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !111
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !111
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

declare void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_37TypeExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfOutputFile.cpp() #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 29), align 1, !tbaa !73
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, ptr nonnull @__dso_handle) #23 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 26), align 2, !tbaa !73
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, ptr nonnull @__dso_handle) #23 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 28), align 4, !tbaa !73
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, ptr nonnull @__dso_handle) #23 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !101
  store i64 7308332244138288484, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 24), align 8, !tbaa !73
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #19 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !15, i64 32}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!12 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!10, !13, i64 8}
!17 = !{!10, !13, i64 16}
!18 = !{!10, !13, i64 24}
!19 = !{!10, !15, i64 32}
!20 = !{!21, !4, i64 304}
!21 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataE", !22, i64 0, !28, i64 56, !4, i64 60, !15, i64 64, !29, i64 72, !4, i64 120, !4, i64 124, !33, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !34, i64 152, !34, i64 176, !34, i64 200, !39, i64 224, !40, i64 232, !15, i64 256, !45, i64 264, !4, i64 288, !15, i64 296, !4, i64 304, !51, i64 312, !28, i64 320}
!22 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_56HeaderE", !23, i64 0, !28, i64 48}
!23 = !{!"_ZTSSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE", !24, i64 0}
!24 = !{!"_ZTSSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE", !25, i64 0}
!25 = !{!"_ZTSNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !26, i64 0, !10, i64 8}
!26 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN27OpenImageIO_v3_1_Imf__3_3_54NameEEE", !27, i64 0}
!27 = !{!"_ZTSSt4lessIN27OpenImageIO_v3_1_Imf__3_3_54NameEE"}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferE", !30, i64 0}
!30 = !{!"_ZTSSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE", !31, i64 0}
!31 = !{!"_ZTSSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE", !32, i64 0}
!32 = !{!"_ZTSNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !26, i64 0, !10, i64 8}
!33 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59LineOrderE", !5, i64 0}
!34 = !{!"_ZTSSt6vectorImSaImEE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseImSaImEE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 long", !14, i64 0}
!39 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_510Compressor6FormatE", !5, i64 0}
!40 = !{!"_ZTSSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoE", !14, i64 0}
!45 = !{!"_ZTSSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferESaIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferESaIS3_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferESaIS3_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferESaIS3_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p2 _ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferE", !50, i64 0}
!50 = !{!"any p2 pointer", !14, i64 0}
!51 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_517OutputStreamMutexE", !14, i64 0}
!52 = !{!21, !51, i64 312}
!53 = !{!21, !28, i64 320}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferE", !14, i64 0}
!56 = !{!48, !49, i64 0}
!57 = !{!48, !49, i64 8}
!58 = !{!48, !49, i64 16}
!59 = !{!37, !38, i64 0}
!60 = !{!37, !38, i64 16}
!61 = !{!62, !65, i64 56}
!62 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBufferE", !63, i64 0, !64, i64 16, !4, i64 24, !64, i64 32, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !65, i64 56, !28, i64 64, !28, i64 65, !66, i64 72, !68, i64 104}
!63 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_55ArrayIcEE", !15, i64 0, !64, i64 8}
!64 = !{!"p1 omnipotent char", !14, i64 0}
!65 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_510CompressorE", !14, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !15, i64 8, !5, i64 16}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!68 = !{!"_ZTSN33OpenImageIO_v3_1_IlmThread__3_3_59SemaphoreE", !5, i64 8}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !6, i64 0}
!71 = distinct !{null}
!72 = !{!66, !64, i64 0}
!73 = !{!5, !5, i64 0}
!74 = !{!63, !64, i64 8}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!78, !80, i64 8}
!78 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_510OutputFileE", !79, i64 0, !80, i64 8}
!79 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileE"}
!80 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_510OutputFile4DataE", !14, i64 0}
!81 = !{!82, !85, i64 40}
!82 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_517OutputStreamMutexE", !83, i64 0, !85, i64 40, !15, i64 48}
!83 = !{!"_ZTSSt5mutex", !84, i64 0}
!84 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!85 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_57OStreamE", !14, i64 0}
!86 = !{!21, !28, i64 56}
!87 = !{!82, !15, i64 48}
!88 = !{!21, !15, i64 64}
!89 = !{!21, !15, i64 256}
!90 = !{!33, !33, i64 0}
!91 = !{!21, !4, i64 120}
!92 = !{!21, !4, i64 124}
!93 = !{!21, !33, i64 128}
!94 = !{!21, !39, i64 224}
!95 = !{!21, !4, i64 288}
!96 = !{!21, !15, i64 296}
!97 = !{!98, !98, i64 0}
!98 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511CompressionE", !5, i64 0}
!99 = !{!62, !28, i64 64}
!100 = !{!62, !28, i64 65}
!101 = !{!67, !64, i64 0}
!102 = !{!66, !15, i64 8}
!103 = distinct !{!103, !76}
!104 = !{!105, !4, i64 12}
!105 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !106, i64 0, !106, i64 8}
!106 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !4, i64 0, !4, i64 4}
!107 = !{!105, !4, i64 4}
!108 = !{!37, !38, i64 8}
!109 = !{!63, !15, i64 0}
!110 = distinct !{!110, !76}
!111 = !{!15, !15, i64 0}
!112 = distinct !{null, null, null}
!113 = distinct !{!113, !76}
!114 = !{!115, !4, i64 72}
!115 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514OutputPartDataE", !22, i64 0, !15, i64 56, !15, i64 64, !4, i64 72, !4, i64 76, !28, i64 80, !51, i64 88}
!116 = !{!115, !51, i64 88}
!117 = !{!115, !28, i64 80}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!115, !4, i64 76}
!121 = !{!115, !15, i64 56}
!122 = !{!115, !15, i64 64}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_57ChannelE", !125, i64 0, !4, i64 4, !4, i64 8, !28, i64 12}
!125 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59PixelTypeE", !5, i64 0}
!126 = !{!127, !125, i64 0}
!127 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_55SliceE", !125, i64 0, !64, i64 8, !15, i64 16, !15, i64 24, !4, i64 32, !4, i64 36, !128, i64 40, !28, i64 48, !28, i64 49}
!128 = !{!"double", !5, i64 0}
!129 = !{!124, !4, i64 4}
!130 = !{!127, !4, i64 32}
!131 = !{!124, !4, i64 8}
!132 = !{!127, !4, i64 36}
!133 = distinct !{!133, !76}
!134 = !{!125, !125, i64 0}
!135 = !{!28, !28, i64 0}
!136 = !{i64 0, i64 4, !134, i64 8, i64 8, !137, i64 16, i64 8, !111, i64 24, i64 8, !111, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 1, !135}
!137 = !{!64, !64, i64 0}
!138 = !{!139, !141}
!139 = distinct !{!139, !140, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!140 = distinct !{!140, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!141 = distinct !{!141, !140, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!142 = distinct !{!142, !76}
!143 = !{!127, !64, i64 8}
!144 = !{!127, !15, i64 16}
!145 = !{!127, !15, i64 24}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!148 = distinct !{!148, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!149 = distinct !{!149, !148, !"_ZSt19__relocate_object_aIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!150 = distinct !{!150, !76}
!151 = !{!43, !44, i64 0}
!152 = !{!43, !44, i64 16}
!153 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!154 = !{!43, !44, i64 8}
!155 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!156 = distinct !{!156, !76}
!157 = !{!21, !4, i64 140}
!158 = !{!159, !80, i64 16}
!159 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE", !160, i64 0, !80, i64 16, !55, i64 24}
!160 = !{!"_ZTSN33OpenImageIO_v3_1_IlmThread__3_3_54TaskE", !161, i64 8}
!161 = !{!"p1 _ZTSN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupE", !14, i64 0}
!162 = !{!159, !55, i64 24}
!163 = !{!62, !64, i64 32}
!164 = !{!62, !4, i64 40}
!165 = !{!62, !4, i64 44}
!166 = !{!62, !4, i64 48}
!167 = !{!62, !4, i64 52}
!168 = distinct !{!168, !76}
!169 = distinct !{!169, !76}
!170 = !{!62, !64, i64 16}
!171 = !{!62, !4, i64 24}
!172 = distinct !{!172, !76}
!173 = distinct !{!173, !76}
!174 = distinct !{!174, !76}
!175 = distinct !{null, null, null}
!176 = !{!177, !178, i64 0}
!177 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59InputPartE", !178, i64 0}
!178 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_59InputFileE", !14, i64 0}
!179 = !{!180, !181, i64 8}
!180 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageE", !4, i64 0, !4, i64 4, !181, i64 8}
!181 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_511PreviewRgbaE", !14, i64 0}
!182 = !{!180, !4, i64 0}
!183 = !{!180, !4, i64 4}
!184 = distinct !{!184, !76, !185, !186}
!185 = !{!"llvm.loop.isvectorized", i32 1}
!186 = !{!"llvm.loop.unroll.runtime.disable"}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = distinct !{!189, !76, !185}
!190 = !{!21, !4, i64 60}
!191 = distinct !{!191, !76}
!192 = !{!11, !13, i64 24}
!193 = !{!11, !13, i64 16}
!194 = distinct !{!194, !76}
!195 = !{!13, !13, i64 0}
!196 = !{!197, !13, i64 0}
!197 = !{!"_ZTSNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_nodeE", !13, i64 0, !13, i64 8, !198, i64 16}
!198 = !{!"p1 _ZTSSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE", !14, i64 0}
!199 = !{!197, !13, i64 8}
!200 = !{!198, !198, i64 0}
!201 = !{!11, !13, i64 8}
!202 = distinct !{!202, !76}
!203 = distinct !{!203, !76}
!204 = !{!197, !198, i64 16}
!205 = !{i64 8}
!206 = distinct !{!206, !76}
!207 = !{!11, !12, i64 0}
!208 = distinct !{!208, !76}
!209 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskD2Ev}
!210 = !{!211, !4, i64 36}
!211 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoE", !125, i64 0, !64, i64 8, !15, i64 16, !15, i64 24, !4, i64 32, !4, i64 36, !28, i64 40}
!212 = !{!21, !4, i64 132}
!213 = !{!211, !4, i64 32}
!214 = !{!21, !4, i64 136}
!215 = !{!211, !28, i64 40}
!216 = !{!211, !125, i64 0}
!217 = !{!211, !64, i64 8}
!218 = !{!211, !15, i64 24}
!219 = !{!211, !15, i64 16}
!220 = distinct !{!220, !76}
!221 = distinct !{!221, !76}
!222 = distinct !{!222, !76}
!223 = distinct !{!223, !76}
end_hunk_4
