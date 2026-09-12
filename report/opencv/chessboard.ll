Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN2cv23findChessboardCornersSBERKNS_11_InputArrayENS_5Size_IiEERKNS_12_OutputArrayEiS7_:bb.a
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !71     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.l = load i64, ptr %i.j, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn118 = phi { ptr, i32 } [ %i.g, %bb.k ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.da

bb.m:                                             ; preds = %bb.g
  %i.n = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -27, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv23findChessboardCornersSBERKNS_11_InputArrayENS_5Size_IiEERKNS_12_OutputArrayEiS7_, ptr noundef nonnull @.str.1, i32 noundef 3852) #32
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.s:                                             ; preds = %bb.p
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %10, align 8, !tbaa !71    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.s
  %i.t = load i64, ptr %i.r, align 8, !tbaa !72
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.r
  %.pn = phi { ptr, i32 } [ %i.o, %bb.r ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.p, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.da

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #33
  %i.v = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.x, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !62
  store ptr %12, ptr %i.w, align 8, !tbaa !63
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ag

bb.x:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.y:                                             ; preds = %bb.v
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.cz

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.aa = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.z
  %i.ab = icmp eq i32 %i.aa, 65536
  br i1 %i.ab, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !820
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ad

bb.ab:                                            ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ad

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.aa, %bb.ab
  %i.ae = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #33
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn87 = phi { ptr, i32 } [ %i.ag, %bb.ae ], [ %i.af, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.cz

bb.ag:                                            ; preds = %bb.w, %bb.ac
  %i.ah = shl nuw i32 %.sroa.0.0.extract.trunc, 1
  %i.ai = mul i32 %i.ah, %.sroa.5.0.extract.trunc
  %i.aj = and i32 %3, 2
  %.not91 = icmp eq i32 %i.aj, 0
  br i1 %.not91, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !137
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !138
  store i32 16842752, ptr %16, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %12, ptr %i.am, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.ao, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !62
  store ptr %15, ptr %i.an, align 8, !tbaa !63
  invoke void @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  invoke void @_ZN2cv4swapERNS_3MatES1_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ap = and i32 %3, -3
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.an

bb.ak:                                            ; preds = %bb.ah
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn95 = phi { ptr, i32 } [ %i.ar, %bb.al ], [ %i.aq, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.cz

bb.an:                                            ; preds = %bb.aj, %bb.ag
  %.081 = phi i32 [ %i.ap, %bb.aj ], [ %3, %bb.ag ] ; 5 uses
  %i.as = and i32 %.081, 16
  %.not97 = icmp eq i32 %i.as, 0                  ; 2 uses
  %.sroa.16.0 = select i1 %.not97, i32 30, i32 100
  %minmaxop = select i1 %.not97, i32 100, i32 1000
  %.sroa.11.0 = call i32 @llvm.umax.i32(i32 %minmaxop, i32 %i.ai)
  %31 = lshr i32 %.081, 5
  %i.at = trunc i32 %31 to i8
  %.sroa.19.0 = and i8 %i.at, 1
  %32 = lshr i32 %.081, 6
  %33 = trunc i32 %32 to i8
  %.sroa.22.0 = and i8 %33, 1
  %i.au = and i32 %.081, 128                      ; 2 uses
  %.not100 = icmp ne i32 %i.au, 0
  %i.av = lshr exact i32 %i.au, 6
  %.sroa.11.1 = shl nsw i32 %.sroa.11.0, %i.av
  %.sroa.24.0 = zext i1 %.not100 to i8
  %.485 = and i32 %.081, -241                     ; 2 uses
  %.not101 = icmp eq i32 %.485, 0
  br i1 %.not101, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.73, i32 noundef %.485)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv23findChessboardCornersSBERKNS_11_InputArrayENS_5Size_IiEERKNS_12_OutputArrayEiS7_, ptr noundef nonnull @.str.1, i32 noundef 3899) #32
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.as:                                            ; preds = %bb.ap
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %18, align 8, !tbaa !71   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.as
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !72
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ar
  %.pn114 = phi { ptr, i32 } [ %i.aw, %bb.ar ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.ax, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.cz

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  invoke void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %20)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN2cv7details10ChessboardE, i64 16), ptr %20, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 34
  store i64 %1, ptr %i.bd, align 8
  store i32 2, ptr %i.be, align 8, !tbaa !48
  store i32 4, ptr %i.bf, align 4, !tbaa !48
  store i32 %.sroa.11.1, ptr %i.bh, align 8, !tbaa !48
  store i32 %.sroa.16.0, ptr %i.bi, align 4, !tbaa !48
  store i8 %.sroa.19.0, ptr %i.bg, align 8, !tbaa !49
  store i8 %.sroa.22.0, ptr %i.bj, align 1, !tbaa !49
  store i8 %.sroa.24.0, ptr %i.bk, align 2, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #33
  invoke void @_ZNK2cv7details10Chessboard10detectImplERKNS_3MatERSt6vectorIS2_SaIS2_EES4_(ptr dead_on_unwind nonnull writable sret(%"class.cv::details::Chessboard::Board") align 8 %22, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  invoke void @_ZNK2cv7details10Chessboard5Board12getKeyPointsEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %24, ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  %i.bl = load ptr, ptr %19, align 8, !tbaa !95   ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140
  %i.bp = load ptr, ptr %24, align 8, !tbaa !95   ; 2 uses
  store ptr %i.bp, ptr %19, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !142
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !94
  store <2 x ptr> %i.br, ptr %i.bm, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bv) #34
  %.pre = load ptr, ptr %19, align 8, !tbaa !142
  %.pre227 = load ptr, ptr %i.bm, align 8, !tbaa !142
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit:     ; preds = %bb.ax, %bb.aw
  %i.bw = phi ptr [ %.pre227, %bb.ax ], [ %i.bs, %bb.aw ]
  %i.bx = phi ptr [ %.pre, %bb.ax ], [ %i.bp, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %i.by = icmp ne ptr %i.bx, %i.bw                ; 2 uses
  br i1 %i.by, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.bz = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  br i1 %i.bz, label %bb.bb, label %bb.cq

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cq unwind label %bb.bf

bb.bc:                                            ; preds = %bb.at
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bd:                                            ; preds = %bb.au
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.cw

bb.be:                                            ; preds = %bb.av
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.cv

bb.bf:                                            ; preds = %bb.bb, %bb.az, %bb.ay
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bg:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv8KeyPoint7convertERKSt6vectorIS0_SaIS0_EERS1_INS_6Point_IfEESaIS7_EERKS1_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.bh unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  %i.ce = load ptr, ptr %26, align 8, !tbaa !236  ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cf = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !235
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store i32 1124024357, ptr %27, align 8, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !139
  %i.cl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 1, ptr %i.cl, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !214
  %i.cp = load ptr, ptr %25, align 8, !tbaa !215
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 3
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !74
  %i.cv = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 153, ptr %i.cv, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 72
end_hunk_0
