inline.NumInlined: 505
inline.NumDeleted: 180
begin_hunk_0_@_ZN5zxing6qrcode22DecodedBitStreamParser25decodeAlphanumericSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_12ErrorHandlerE:bb.a
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds i8, ptr %9, i64 %i.jk
  store ptr %i.ji, ptr %i.jl, align 8, !tbaa !15
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jm, align 8, !tbaa !15
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !8  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138: ; preds = %.loopexit144
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !23
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit140

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit140: ; preds = %.loopexit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jm, align 8, !tbaa !15
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jt) #15
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ju) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void

bb.bz:                                            ; preds = %bb.bx, %bb.bt
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bt ], [ %i.jc, %bb.bx ] ; 2 uses
  %i.jv = load ptr, ptr %12, align 8, !tbaa !8    ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.eh
  br i1 %i.jw, label %.body104, label %.body104.sink.split

.body104.sink.split:                              ; preds = %bb.bz, %bb.at
  %.sink = phi ptr [ %i.ev, %bb.at ], [ %i.jv, %bb.bz ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.eu, %bb.at ], [ %.pn.pn.pn, %bb.bz ]
  %i.jx = load i64, ptr %i.eh, align 8, !tbaa !23
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.jy) #16
  br label %.body104

.body104:                                         ; preds = %.body104.sink.split, %bb.bz, %bb.at
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.at ], [ %.pn.pn.pn, %bb.bz ], [ %.pn.pn.pn.pn.ph, %.body104.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.body94

.body94:                                          ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i64, %bb.z, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i88, %.body104, %_ZN5zxing12ErrorHandlerD2Ev.exit85, %_ZN5zxing12ErrorHandlerD2Ev.exit58
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZN5zxing12ErrorHandlerD2Ev.exit58 ], [ %i.dl, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i88 ], [ %.pn.pn.pn.pn, %.body104 ], [ %.pn50, %_ZN5zxing12ErrorHandlerD2Ev.exit85 ], [ %i.bn, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i64 ], [ %i.ar, %_ZN5zxing12ErrorHandlerD2Ev.exit8.i ], [ %i.ch, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing6qrcode22DecodedBitStreamParser6decodeENS_8ArrayRefIcEEPNS0_7VersionERKNS0_20ErrorCorrectionLevelERNS_12ErrorHandlerEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref.7") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %10 = alloca %"class.zxing::ArrayRef.0", align 8 ; 10 uses
  %11 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 13 uses
  %12 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 13 uses
  %13 = alloca %"class.zxing::Ref", align 8       ; 2 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.zxing::Ref", align 8       ; 2 uses
  %16 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.zxing::Ref", align 8       ; 2 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.zxing::Ref", align 8       ; 2 uses
  %21 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.zxing::Ref", align 8       ; 2 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.zxing::FormatErrorHandler", align 8 ; 13 uses
  %26 = alloca %"class.zxing::ArrayRef", align 8  ; 6 uses
  %27 = alloca %"class.zxing::Ref.8", align 8     ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17 ; 46 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 49 uses
  store i32 0, ptr %i.d, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing9BitSourceE, i64 16), ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !27
  %.pre = load i32, ptr %i.d, align 8, !tbaa !27
  %i.m = add i32 %.pre, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  store ptr %i.i, ptr %i.g, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 0, ptr %i.p, align 4, !tbaa !86
  store i32 %i.n, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !14
  store i8 0, ptr %i.q, align 8, !tbaa !23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 50)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 16 uses
  store i64 0, ptr %i.t, align 8, !tbaa !14
  store i8 0, ptr %i.s, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefINS0_IcEEEE, i64 16), ptr %10, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.w = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17
          to label %bb.e unwind label %bb.h       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayINS_8ArrayRefIcEEEE, i64 16), ptr %i.w, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.x, align 8, !tbaa !27
  store ptr %i.w, ptr %i.v, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.7, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  %.081 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader ], [ %.081.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge ] ; 9 uses
  %.079 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader ], [ %.079.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge ] ; 9 uses
  %i.ap = invoke noundef i32 @_ZN5zxing9BitSource9availableEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aq = icmp slt i32 %i.ap, 4
  br i1 %i.aq, label %.critedge144, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.h:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing8ArrayRefINS0_IcEEED2Ev.exit308

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.i, %bb.j, %bb.k, %bb.q, %bb.x, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.critedge144, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.at = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing6qrcode4Mode7forBitsEiRNS_12ErrorHandlerE(i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.k unwind label %.loopexit  ; 17 uses

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %5, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.n:                                             ; preds = %bb.l
  %.not106 = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode10TERMINATORE
  br i1 %.not106, label %.critedge144, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode19FNC1_FIRST_POSITIONE
  %i.ba = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode20FNC1_SECOND_POSITIONE
  %or.cond = or i1 %i.az, %i.ba
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode17STRUCTURED_APPENDE
  br i1 %i.bb, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef i32 @_ZN5zxing9BitSource9availableEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp slt i32 %i.bc, 16
  br i1 %i.bd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.8)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 6, ptr %i.be, align 8, !tbaa !21
  %i.bf = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.v:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit147

bb.w:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN5zxing12ErrorHandlerD2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %bb.w
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit147

_ZN5zxing12ErrorHandlerD2Ev.exit147:              ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145, %bb.v
  %.pn131 = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145 ], [ %i.bn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.bu = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.y unwind label %.loopexit  ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %5, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  %.not130 = icmp eq i32 %i.by, 0
  br i1 %.not130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.ab:                                            ; preds = %bb.p
  %i.bz = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode3ECIE
  br i1 %i.bz, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.ca = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.am    ; 6 uses

.noexc:                                           ; preds = %bb.ac
  %i.cb = load ptr, ptr %5, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc148 unwind label %bb.am, !inline_history !90

.noexc148:                                        ; preds = %.noexc
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %bb.ad, label %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit

bb.ad:                                            ; preds = %.noexc148
  %i.cf = and i32 %i.ca, 128
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = and i32 %i.ca, 127
  br label %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit

bb.af:                                            ; preds = %bb.ad
  %i.ci = and i32 %i.ca, 192
  %i.cj = icmp eq i32 %i.ci, 128
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc149 unwind label %bb.am

.noexc149:                                        ; preds = %bb.ag
  %i.cl = load ptr, ptr %5, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc150 unwind label %bb.am, !inline_history !90

.noexc150:                                        ; preds = %.noexc149
  %.not21.i = icmp eq i32 %i.co, 0
  %i.cp = shl i32 %i.ca, 8
  %i.cq = and i32 %i.cp, 16128
  %i.cr = or i32 %i.ck, %i.cq
  %.0.i = select i1 %.not21.i, i32 %i.cr, i32 0
  br label %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit

bb.ah:                                            ; preds = %bb.af
  %i.cs = and i32 %i.ca, 224
  %i.ct = icmp eq i32 %i.cs, 192
  br i1 %i.ct, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cu = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc151 unwind label %bb.am

.noexc151:                                        ; preds = %bb.ai
  %i.cv = load ptr, ptr %5, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc152 unwind label %bb.am, !inline_history !90

.noexc152:                                        ; preds = %.noexc151
  %.not20.i = icmp eq i32 %i.cy, 0
  %i.cz = shl i32 %i.ca, 16
  %i.da = and i32 %i.cz, 2031616
  %i.db = or i32 %i.cu, %i.da
  %.1.i = select i1 %.not20.i, i32 %i.db, i32 0
  br label %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.10)
          to label %.noexc153 unwind label %bb.am

.noexc153:                                        ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !15
  store i32 6, ptr %i.am, align 8, !tbaa !21
  %i.dc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %.noexc153
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !15
  %i.dd = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ao
  br i1 %i.de, label %_ZN5zxing12ErrorHandlerD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.df = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit.i

_ZN5zxing12ErrorHandlerD2Ev.exit.i:               ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit

bb.al:                                            ; preds = %.noexc153
  %i.dh = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !15
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ao
  br i1 %i.dj, label %_ZN5zxing12ErrorHandlerD2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i: ; preds = %bb.al
  %i.dk = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit24.i

_ZN5zxing12ErrorHandlerD2Ev.exit24.i:             ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.body

_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit: ; preds = %_ZN5zxing12ErrorHandlerD2Ev.exit.i, %.noexc152, %.noexc150, %bb.ae, %.noexc148
  %.2.i = phi i32 [ 0, %_ZN5zxing12ErrorHandlerD2Ev.exit.i ], [ %i.ch, %bb.ae ], [ %.0.i, %.noexc150 ], [ %.1.i, %.noexc152 ], [ 0, %.noexc148 ]
  %i.dm = load ptr, ptr %5, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.aj, %.noexc151, %bb.ai, %.noexc149, %bb.ag, %.noexc, %bb.ac, %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit, %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit:      ; preds = %_ZN12_GLOBAL__N_113parseECIValueERN5zxing9BitSourceERNS0_12ErrorHandlerE.exit
  %i.dr = invoke noundef ptr @_ZN5zxing6common15CharacterSetECI29getCharacterSetECIByValueFindEi(i32 noundef %.2.i)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.an:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit
  %.not129 = icmp eq ptr %i.dr, null
  br i1 %.not129, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.8)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %12, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 6, ptr %i.ds, align 8, !tbaa !21
  %i.dt = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.aq unwind label %bb.as     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %12, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !8  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.aq
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158

bb.ar:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit162

bb.as:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %12, align 8, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !8  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZN5zxing12ErrorHandlerD2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160: ; preds = %bb.as
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !23
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit162

_ZN5zxing12ErrorHandlerD2Ev.exit162:              ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160, %bb.ar
  %.pn125 = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160 ], [ %i.eb, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.at:                                            ; preds = %bb.ab
  %i.ei = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode5HANZIE
  br i1 %i.ei, label %bb.au, label %bb.bo

bb.au:                                            ; preds = %bb.at
  %i.ej = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.ek = invoke noundef i32 @_ZNK5zxing6qrcode4Mode21getCharacterCountBitsEPNS0_7VersionE(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef %3)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.el = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.em = load ptr, ptr %5, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not119 = icmp eq i32 %i.ep, 0
  br i1 %.not119, label %bb.bb, label %bb.bn

bb.az:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ba:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit165, %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit, %bb.ax, %bb.aw, %bb.av
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %bb.ay
  %i.es = icmp eq i32 %i.ej, 1
  br i1 %i.es, label %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit:       ; preds = %bb.bb
  %i.et = load i32, ptr %i.d, align 8, !tbaa !27
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.d, align 8, !tbaa !27
  store ptr %i.c, ptr %13, align 8, !tbaa !18
  invoke void @_ZN5zxing6qrcode22DecodedBitStreamParser18decodeHanziSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRNS_12ErrorHandlerE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.el, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit
  %i.ev = load i32, ptr %i.d, align 8, !tbaa !27
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ew, ptr %i.d, align 8, !tbaa !27
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit

bb.bd:                                            ; preds = %bb.bc
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit

_ZN5zxing3RefINS_9BitSourceEED2Ev.exit:           ; preds = %bb.bc, %bb.bd
  %i.fb = load ptr, ptr %5, align 8, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = invoke noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit165 unwind label %bb.ba ; 0 uses

bb.be:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !27
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.d, align 8, !tbaa !27
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.bf, label %.body

bb.bf:                                            ; preds = %bb.be
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %.body

_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit165:   ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit
  %i.fm = load i64, ptr %i.z, align 8, !tbaa !14
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.fm, ptr noundef nonnull @.str.9, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit169 unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit169: ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit165
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  invoke void @_ZNK5zxing6qrcode4Mode7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit169
  %i.fo = load ptr, ptr %9, align 8, !tbaa !8     ; 6 uses
  %i.fp = icmp eq ptr %i.fo, %i.s
  %i.fq = load ptr, ptr %14, align 8, !tbaa !8    ; 5 uses
  %i.fr = icmp eq ptr %i.fq, %i.ak                ; 2 uses
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bg
  br i1 %i.fr, label %bb.bh, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bg
  br i1 %i.fr, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fs = load i64, ptr %i.al, align 8, !tbaa !14 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  switch i64 %i.fs, label %bb.bj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !23
  store i8 %i.fu, ptr %i.fo, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr align 1 %i.fq, i64 %i.fs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.fv = load i64, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  store i64 %i.fv, ptr %i.t, align 8, !tbaa !14
  %i.fw = load ptr, ptr %9, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fq, ptr %9, align 8, !tbaa !8
  %i.fy = load <2 x i64>, ptr %i.al, align 8, !tbaa !23
  store <2 x i64> %i.fy, ptr %i.t, align 8, !tbaa !23
  br label %bb.bl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fz = load i64, ptr %i.s, align 8, !tbaa !23
  store ptr %i.fq, ptr %9, align 8, !tbaa !8
  %i.ga = load <2 x i64>, ptr %i.al, align 8, !tbaa !23
  store <2 x i64> %i.ga, ptr %i.t, align 8, !tbaa !23
  %.not.i170 = icmp eq ptr %i.fo, null
  br i1 %.not.i170, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fo, ptr %14, align 8, !tbaa !8
  store i64 %i.fz, ptr %i.ak, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %14, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bk, %bb.bl
  %i.gb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fo, %bb.bk ], [ %i.ak, %bb.bl ]
  store i64 0, ptr %i.al, align 8, !tbaa !14
  store i8 0, ptr %i.gb, align 1, !tbaa !23
  %i.gc = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ak
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ge = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bb, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.o, %bb.z
  %.081.be = phi ptr [ %i.dr, %bb.an ], [ %.081, %bb.z ], [ %.081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %.081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.081, %bb.o ], [ %.081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.081, %bb.bb ], [ %.081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.079.be = phi i1 [ %.079, %bb.an ], [ %.079, %bb.z ], [ %.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ true, %bb.o ], [ %.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.079, %bb.bb ], [ %.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, !llvm.loop !92

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit169
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.body

bb.bn:                                            ; preds = %bb.ay
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.bo:                                            ; preds = %bb.at
  %i.gh = invoke noundef i32 @_ZNK5zxing6qrcode4Mode21getCharacterCountBitsEPNS0_7VersionE(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef %3)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.gi = invoke noundef i32 @_ZN5zxing9BitSource8readBitsEiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.gh, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bq unwind label %bb.bt     ; 4 uses

bb.bq:                                            ; preds = %bb.bp
  %i.gj = load ptr, ptr %5, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = invoke noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %.not107 = icmp eq i32 %i.gm, 0
  br i1 %.not107, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.bt:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit247, %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit221, %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit201, %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit175, %bb.bq, %bb.bp, %bb.bo
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %bb.br
  %i.go = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode7NUMERICE
  br i1 %i.go, label %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit173, label %bb.cn

_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit173:    ; preds = %bb.bu
  %i.gp = load i32, ptr %i.d, align 8, !tbaa !27
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.d, align 8, !tbaa !27
  store ptr %i.c, ptr %15, align 8, !tbaa !18
  invoke void @_ZN5zxing6qrcode22DecodedBitStreamParser20decodeNumericSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRNS_12ErrorHandlerE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit173
  %i.gr = load i32, ptr %i.d, align 8, !tbaa !27
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  store i32 %i.gs, ptr %i.d, align 8, !tbaa !27
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.bw, label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit175

bb.bw:                                            ; preds = %bb.bv
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.gu = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit175

_ZN5zxing3RefINS_9BitSourceEED2Ev.exit175:        ; preds = %bb.bv, %bb.bw
  %i.gx = load ptr, ptr %5, align 8, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = invoke noundef i32 %i.gz(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bx unwind label %bb.bt

bb.bx:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit175
  %.not114 = icmp eq i32 %i.ha, 0
  br i1 %.not114, label %bb.cf, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str.8)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %16, align 8, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 6, ptr %i.hb, align 8, !tbaa !21
  %i.hc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.ca unwind label %bb.ce     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %16, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !8  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZN5zxing12ErrorHandlerD2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %bb.ca
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !23
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit180

_ZN5zxing12ErrorHandlerD2Ev.exit180:              ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.cb:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit173
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load i32, ptr %i.d, align 8, !tbaa !27
  %i.hl = add i32 %i.hk, -1                       ; 2 uses
  store i32 %i.hl, ptr %i.d, align 8, !tbaa !27
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.cc, label %.body

bb.cc:                                            ; preds = %bb.cb
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %.body

bb.cd:                                            ; preds = %bb.by
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit185

bb.ce:                                            ; preds = %bb.bz
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %16, align 8, !tbaa !15
  %i.hs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !8  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5zxing12ErrorHandlerD2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183: ; preds = %bb.ce
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit185

_ZN5zxing12ErrorHandlerD2Ev.exit185:              ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183, %bb.cd
  %.pn115 = phi { ptr, i32 } [ %i.hq, %bb.cd ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183 ], [ %i.hr, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %.body

bb.cf:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  invoke void @_ZNK5zxing6qrcode4Mode7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.cg unwind label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.hy = load ptr, ptr %9, align 8, !tbaa !8     ; 6 uses
  %i.hz = icmp eq ptr %i.hy, %i.s
  %i.ia = load ptr, ptr %17, align 8, !tbaa !8    ; 5 uses
  %i.ib = icmp eq ptr %i.ia, %i.ai                ; 2 uses
  br i1 %i.hz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i192: ; preds = %bb.cg
  br i1 %i.ib, label %bb.ch, label %.thread.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186: ; preds = %bb.cg
  br i1 %i.ib, label %bb.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i192
  %i.ic = load i64, ptr %i.aj, align 8, !tbaa !14 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  switch i64 %i.ic, label %bb.cj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190
    i64 1, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ie = load i8, ptr %i.ia, align 1, !tbaa !23
  store i8 %i.ie, ptr %i.hy, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %i.ia, i64 %i.ic, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.if = load i64, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  store i64 %i.if, ptr %i.t, align 8, !tbaa !14
  %i.ig = load ptr, ptr %9, align 8, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  store i8 0, ptr %i.ih, align 1, !tbaa !23
  %.pre.i191 = load ptr, ptr %17, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194

.thread.i193:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i192
  store ptr %i.ia, ptr %9, align 8, !tbaa !8
  %i.ii = load <2 x i64>, ptr %i.aj, align 8, !tbaa !23
  store <2 x i64> %i.ii, ptr %i.t, align 8, !tbaa !23
  br label %bb.cl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186
  %i.ij = load i64, ptr %i.s, align 8, !tbaa !23
  store ptr %i.ia, ptr %9, align 8, !tbaa !8
  %i.ik = load <2 x i64>, ptr %i.aj, align 8, !tbaa !23
  store <2 x i64> %i.ik, ptr %i.t, align 8, !tbaa !23
  %.not.i188 = icmp eq ptr %i.hy, null
  br i1 %.not.i188, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187
  store ptr %i.hy, ptr %17, align 8, !tbaa !8
  store i64 %i.ij, ptr %i.ai, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187, %.thread.i193
  store ptr %i.ai, ptr %17, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190, %bb.ck, %bb.cl
  %i.il = phi ptr [ %.pre.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i190 ], [ %i.hy, %bb.ck ], [ %i.ai, %bb.cl ]
  store i64 0, ptr %i.aj, align 8, !tbaa !14
  store i8 0, ptr %i.il, align 1, !tbaa !23
  %i.im = load ptr, ptr %17, align 8, !tbaa !8    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ai
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194
  %i.io = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

bb.cm:                                            ; preds = %bb.cf
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %.body

bb.cn:                                            ; preds = %bb.bu
  %i.ir = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode12ALPHANUMERICE
  br i1 %i.ir, label %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit199, label %bb.cz

_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit199:    ; preds = %bb.cn
  %i.is = load i32, ptr %i.d, align 8, !tbaa !27
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.d, align 8, !tbaa !27
  store ptr %i.c, ptr %18, align 8, !tbaa !18
  invoke void @_ZN5zxing6qrcode22DecodedBitStreamParser25decodeAlphanumericSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_12ErrorHandlerE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.gi, i1 noundef zeroext %.079, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit199
  %i.iu = load i32, ptr %i.d, align 8, !tbaa !27
  %i.iv = add i32 %i.iu, -1                       ; 2 uses
  store i32 %i.iv, ptr %i.d, align 8, !tbaa !27
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.cp, label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit201

bb.cp:                                            ; preds = %bb.co
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit201

_ZN5zxing3RefINS_9BitSourceEED2Ev.exit201:        ; preds = %bb.co, %bb.cp
  %i.ja = load ptr, ptr %5, align 8, !tbaa !15
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = invoke noundef i32 %i.jc(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit203 unwind label %bb.bt ; 0 uses

bb.cq:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit199
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load i32, ptr %i.d, align 8, !tbaa !27
  %i.jg = add i32 %i.jf, -1                       ; 2 uses
  store i32 %i.jg, ptr %i.d, align 8, !tbaa !27
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.cr, label %.body

bb.cr:                                            ; preds = %bb.cq
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.ji = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %.body

_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit203:   ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  invoke void @_ZNK5zxing6qrcode4Mode7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.cs unwind label %bb.cy

bb.cs:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit203
  %i.jl = load ptr, ptr %9, align 8, !tbaa !8     ; 6 uses
  %i.jm = icmp eq ptr %i.jl, %i.s
  %i.jn = load ptr, ptr %19, align 8, !tbaa !8    ; 5 uses
  %i.jo = icmp eq ptr %i.jn, %i.ag                ; 2 uses
  br i1 %i.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i212: ; preds = %bb.cs
  br i1 %i.jo, label %bb.ct, label %.thread.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i206: ; preds = %bb.cs
  br i1 %i.jo, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i207

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i212
  %i.jp = load i64, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.jq = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.jq)
  switch i64 %i.jp, label %bb.cv [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210
    i64 1, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !23
  store i8 %i.jr, ptr %i.jl, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr align 1 %i.jn, i64 %i.jp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.js = load i64, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  store i64 %i.js, ptr %i.t, align 8, !tbaa !14
  %i.jt = load ptr, ptr %9, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.js
  store i8 0, ptr %i.ju, align 1, !tbaa !23
  %.pre.i211 = load ptr, ptr %19, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214

.thread.i213:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i212
  store ptr %i.jn, ptr %9, align 8, !tbaa !8
  %i.jv = load <2 x i64>, ptr %i.ah, align 8, !tbaa !23
  store <2 x i64> %i.jv, ptr %i.t, align 8, !tbaa !23
  br label %bb.cx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i207: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i206
  %i.jw = load i64, ptr %i.s, align 8, !tbaa !23
  store ptr %i.jn, ptr %9, align 8, !tbaa !8
  %i.jx = load <2 x i64>, ptr %i.ah, align 8, !tbaa !23
  store <2 x i64> %i.jx, ptr %i.t, align 8, !tbaa !23
  %.not.i208 = icmp eq ptr %i.jl, null
  br i1 %.not.i208, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i207
  store ptr %i.jl, ptr %19, align 8, !tbaa !8
  store i64 %i.jw, ptr %i.ag, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i207, %.thread.i213
  store ptr %i.ag, ptr %19, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210, %bb.cw, %bb.cx
  %i.jy = phi ptr [ %.pre.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i210 ], [ %i.jl, %bb.cw ], [ %i.ag, %bb.cx ]
  store i64 0, ptr %i.ah, align 8, !tbaa !14
  store i8 0, ptr %i.jy, align 1, !tbaa !23
  %i.jz = load ptr, ptr %19, align 8, !tbaa !8    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.ag
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214
  %i.kb = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

bb.cy:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit203
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.body

bb.cz:                                            ; preds = %bb.cn
  %i.ke = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode4BYTEE
  br i1 %i.ke, label %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit219, label %bb.ds

_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit219:    ; preds = %bb.cz
  %i.kf = load i32, ptr %i.d, align 8, !tbaa !27
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.d, align 8, !tbaa !27
  store ptr %i.c, ptr %20, align 8, !tbaa !18
  invoke void @_ZN5zxing6qrcode22DecodedBitStreamParser17decodeByteSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPNS_6common15CharacterSetECIERNS_8ArrayRefINSF_IcEEEERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.gi, ptr noundef %.081, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit219
  %i.kh = load i32, ptr %i.d, align 8, !tbaa !27
  %i.ki = add i32 %i.kh, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.d, align 8, !tbaa !27
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.db, label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit221

bb.db:                                            ; preds = %bb.da
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.kk = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit221

_ZN5zxing3RefINS_9BitSourceEED2Ev.exit221:        ; preds = %bb.da, %bb.db
  %i.kn = load ptr, ptr %5, align 8, !tbaa !15
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = invoke noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.dc unwind label %bb.bt

bb.dc:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit221
  %.not110 = icmp eq i32 %i.kq, 0
  br i1 %.not110, label %bb.dk, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.8)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %21, align 8, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 6, ptr %i.kr, align 8, !tbaa !21
  %i.ks = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.df unwind label %bb.dj     ; 0 uses

bb.df:                                            ; preds = %bb.de
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %21, align 8, !tbaa !15
  %i.kt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !8  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZN5zxing12ErrorHandlerD2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224: ; preds = %bb.df
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !23
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit226

_ZN5zxing12ErrorHandlerD2Ev.exit226:              ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.dg:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit219
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load i32, ptr %i.d, align 8, !tbaa !27
  %i.lb = add i32 %i.la, -1                       ; 2 uses
  store i32 %i.lb, ptr %i.d, align 8, !tbaa !27
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.dh, label %.body

bb.dh:                                            ; preds = %bb.dg
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.ld = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %.body

bb.di:                                            ; preds = %bb.dd
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit231

bb.dj:                                            ; preds = %bb.de
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %21, align 8, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !8  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZN5zxing12ErrorHandlerD2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229: ; preds = %bb.dj
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !23
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit231

_ZN5zxing12ErrorHandlerD2Ev.exit231:              ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229, %bb.di
  %.pn111 = phi { ptr, i32 } [ %i.lg, %bb.di ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229 ], [ %i.lh, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.body

bb.dk:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_ZNK5zxing6qrcode4Mode7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.lo = load ptr, ptr %9, align 8, !tbaa !8     ; 6 uses
  %i.lp = icmp eq ptr %i.lo, %i.s
  %i.lq = load ptr, ptr %22, align 8, !tbaa !8    ; 5 uses
  %i.lr = icmp eq ptr %i.lq, %i.ae                ; 2 uses
  br i1 %i.lp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238: ; preds = %bb.dl
  br i1 %i.lr, label %bb.dm, label %.thread.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i232: ; preds = %bb.dl
  br i1 %i.lr, label %bb.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i233

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238
  %i.ls = load i64, ptr %i.af, align 8, !tbaa !14 ; 3 uses
  %i.lt = icmp ult i64 %i.ls, 16
  call void @llvm.assume(i1 %i.lt)
  switch i64 %i.ls, label %bb.do [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236
    i64 1, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !23
  store i8 %i.lu, ptr %i.lo, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236

bb.do:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 1 %i.lq, i64 %i.ls, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236: ; preds = %bb.do, %bb.dn, %bb.dm
  %i.lv = load i64, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  store i64 %i.lv, ptr %i.t, align 8, !tbaa !14
  %i.lw = load ptr, ptr %9, align 8, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lv
  store i8 0, ptr %i.lx, align 1, !tbaa !23
  %.pre.i237 = load ptr, ptr %22, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

.thread.i239:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238
  store ptr %i.lq, ptr %9, align 8, !tbaa !8
  %i.ly = load <2 x i64>, ptr %i.af, align 8, !tbaa !23
  store <2 x i64> %i.ly, ptr %i.t, align 8, !tbaa !23
  br label %bb.dq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i233: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i232
  %i.lz = load i64, ptr %i.s, align 8, !tbaa !23
  store ptr %i.lq, ptr %9, align 8, !tbaa !8
  %i.ma = load <2 x i64>, ptr %i.af, align 8, !tbaa !23
  store <2 x i64> %i.ma, ptr %i.t, align 8, !tbaa !23
  %.not.i234 = icmp eq ptr %i.lo, null
  br i1 %.not.i234, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i233
  store ptr %i.lo, ptr %22, align 8, !tbaa !8
  store i64 %i.lz, ptr %i.ae, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i233, %.thread.i239
  store ptr %i.ae, ptr %22, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236, %bb.dp, %bb.dq
  %i.mb = phi ptr [ %.pre.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236 ], [ %i.lo, %bb.dp ], [ %i.ae, %bb.dq ]
  store i64 0, ptr %i.af, align 8, !tbaa !14
  store i8 0, ptr %i.mb, align 1, !tbaa !23
  %i.mc = load ptr, ptr %22, align 8, !tbaa !8    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ae
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240
  %i.me = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

bb.dr:                                            ; preds = %bb.dk
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %.body

bb.ds:                                            ; preds = %bb.cz
  %i.mh = icmp eq ptr %i.au, @_ZN5zxing6qrcode4Mode5KANJIE
  br i1 %i.mh, label %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit245, label %bb.ee

_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit245:    ; preds = %bb.ds
  %i.mi = load i32, ptr %i.d, align 8, !tbaa !27
  %i.mj = add i32 %i.mi, 1
  store i32 %i.mj, ptr %i.d, align 8, !tbaa !27
  store ptr %i.c, ptr %23, align 8, !tbaa !18
  invoke void @_ZN5zxing6qrcode22DecodedBitStreamParser18decodeKanjiSegmentENS_3RefINS_9BitSourceEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRNS_12ErrorHandlerE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit245
  %i.mk = load i32, ptr %i.d, align 8, !tbaa !27
  %i.ml = add i32 %i.mk, -1                       ; 2 uses
  store i32 %i.ml, ptr %i.d, align 8, !tbaa !27
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.du, label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit247

bb.du:                                            ; preds = %bb.dt
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.mn = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit247

_ZN5zxing3RefINS_9BitSourceEED2Ev.exit247:        ; preds = %bb.dt, %bb.du
  %i.mq = load ptr, ptr %5, align 8, !tbaa !15
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = invoke noundef i32 %i.ms(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit249 unwind label %bb.bt ; 0 uses

bb.dv:                                            ; preds = %_ZN5zxing3RefINS_9BitSourceEEC2ERKS2_.exit245
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = load i32, ptr %i.d, align 8, !tbaa !27
  %i.mw = add i32 %i.mv, -1                       ; 2 uses
  store i32 %i.mw, ptr %i.d, align 8, !tbaa !27
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.dw, label %.body

bb.dw:                                            ; preds = %bb.dv
  store i32 -559026175, ptr %i.d, align 8, !tbaa !27
  %i.my = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #15, !inline_history !91
  br label %.body

_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit249:   ; preds = %_ZN5zxing3RefINS_9BitSourceEED2Ev.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  invoke void @_ZNK5zxing6qrcode4Mode7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.dx unwind label %bb.ed

bb.dx:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit249
  %i.nb = load ptr, ptr %9, align 8, !tbaa !8     ; 6 uses
  %i.nc = icmp eq ptr %i.nb, %i.s
  %i.nd = load ptr, ptr %24, align 8, !tbaa !8    ; 5 uses
  %i.ne = icmp eq ptr %i.nd, %i.ac                ; 2 uses
  br i1 %i.nc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258: ; preds = %bb.dx
  br i1 %i.ne, label %bb.dy, label %.thread.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i252: ; preds = %bb.dx
  br i1 %i.ne, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i253

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258
  %i.nf = load i64, ptr %i.ad, align 8, !tbaa !14 ; 3 uses
  %i.ng = icmp ult i64 %i.nf, 16
  call void @llvm.assume(i1 %i.ng)
  switch i64 %i.nf, label %bb.ea [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256
    i64 1, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !23
  store i8 %i.nh, ptr %i.nb, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.nd, i64 %i.nf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256: ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.ni = load i64, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  store i64 %i.ni, ptr %i.t, align 8, !tbaa !14
  %i.nj = load ptr, ptr %9, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.ni
  store i8 0, ptr %i.nk, align 1, !tbaa !23
  %.pre.i257 = load ptr, ptr %24, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

.thread.i259:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258
  store ptr %i.nd, ptr %9, align 8, !tbaa !8
  %i.nl = load <2 x i64>, ptr %i.ad, align 8, !tbaa !23
  store <2 x i64> %i.nl, ptr %i.t, align 8, !tbaa !23
  br label %bb.ec

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i253: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i252
  %i.nm = load i64, ptr %i.s, align 8, !tbaa !23
  store ptr %i.nd, ptr %9, align 8, !tbaa !8
  %i.nn = load <2 x i64>, ptr %i.ad, align 8, !tbaa !23
  store <2 x i64> %i.nn, ptr %i.t, align 8, !tbaa !23
  %.not.i254 = icmp eq ptr %i.nb, null
  br i1 %.not.i254, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i253
  store ptr %i.nb, ptr %24, align 8, !tbaa !8
  store i64 %i.nm, ptr %i.ac, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i253, %.thread.i259
  store ptr %i.ac, ptr %24, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256, %bb.eb, %bb.ec
  %i.no = phi ptr [ %.pre.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256 ], [ %i.nb, %bb.eb ], [ %i.ac, %bb.ec ]
  store i64 0, ptr %i.ad, align 8, !tbaa !14
  store i8 0, ptr %i.no, align 1, !tbaa !23
  %i.np = load ptr, ptr %24, align 8, !tbaa !8    ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.ac
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260
  %i.nr = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.ns) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.backedge

bb.ed:                                            ; preds = %_ZN5zxing3RefINS_13DecoderResultEED2Ev.exit249
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %.body

bb.ee:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str.8)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18FormatErrorHandlerE, i64 16), ptr %25, align 8, !tbaa !15
  %i.nu = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 6, ptr %i.nu, align 8, !tbaa !21
  %i.nv = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %25)
          to label %bb.eg unwind label %bb.ei     ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %25, align 8, !tbaa !15
  %i.nw = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !8  ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZN5zxing12ErrorHandlerD2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %bb.eg
  %i.oa = load i64, ptr %i.ny, align 8, !tbaa !23
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit268

_ZN5zxing12ErrorHandlerD2Ev.exit268:              ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %.critedge143

bb.eh:                                            ; preds = %bb.ee
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit271

bb.ei:                                            ; preds = %bb.ef
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %25, align 8, !tbaa !15
  %i.oe = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !8  ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZN5zxing12ErrorHandlerD2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269: ; preds = %bb.ei
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !23
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit271

_ZN5zxing12ErrorHandlerD2Ev.exit271:              ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269, %bb.eh
  %.pn = phi { ptr, i32 } [ %i.oc, %bb.eh ], [ %i.od, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269 ], [ %i.od, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %.body

.critedge144:                                     ; preds = %bb.f, %bb.n
  %i.ok = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #17
          to label %bb.ej unwind label %.loopexit.split-lp ; 4 uses

bb.ej:                                            ; preds = %.critedge144
  %i.ol = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 0, ptr %i.ol, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %26, align 8, !tbaa !15
  %i.om = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.on = load ptr, ptr %i.h, align 8, !tbaa !29  ; 4 uses
  %.not.i.i272 = icmp eq ptr %i.on, null
  br i1 %.not.i.i272, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !27
  %i.oq = add i32 %i.op, 1
  store i32 %i.oq, ptr %i.oo, align 8, !tbaa !27
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  store ptr %i.on, ptr %i.om, align 8, !tbaa !29
  %i.or = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %bb.em unwind label %bb.fa     ; 4 uses

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN5zxing6StringC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.or, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.en unwind label %bb.fb

bb.en:                                            ; preds = %bb.em
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !27
  %i.ou = add i32 %i.ot, 1
  store i32 %i.ou, ptr %i.os, align 8, !tbaa !27
  store ptr %i.or, ptr %27, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.ov = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5zxing6qrcode20ErrorCorrectionLevelcvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.eo unwind label %bb.fc     ; 2 uses

bb.eo:                                            ; preds = %bb.en
  %i.ow = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.ow, ptr %28, align 8, !tbaa !37
  %i.ox = load ptr, ptr %i.ov, align 8, !tbaa !8  ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.oz, ptr %i.b, align 8, !tbaa !96
  %i.pa = icmp ugt i64 %i.oz, 15
  br i1 %i.pa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.eo
  %i.pb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc274 unwind label %bb.fc ; 2 uses

end_hunk_0
