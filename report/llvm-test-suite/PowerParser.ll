Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PowerParser?download=true
inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2PP11PowerParser10list_funcsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.p
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.o
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !55
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.br, %bb.o ] ; 2 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.c
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.by = load i64, ptr %i.c, align 8, !tbaa !55
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.p:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  br i1 %i.cc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.bf, %bb.k ], [ %i.cb, %bb.p ]
  %.pn6.ph = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.ca, %bb.p ]
  %i.cd = load i64, ptr %i.ar, align 8, !tbaa !55
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ce) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.k
  %.pn6 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.ca, %bb.p ], [ %.pn6.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cf = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !143
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !143
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !143
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cm, align 8, !tbaa !143
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !53 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !55
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cm, align 8, !tbaa !143
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ct) #29
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !143
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %3, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !143
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !144
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %.body, %bb.m
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.bp, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN2PP8WhenthenC1ERiRNS_3CmdERbS4_bRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !916
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -568
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2PP8WhenthenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(568) %i.b, ptr noundef nonnull align 8 dereferenceable(568) %1)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr %i.g, ptr %i.a, align 8, !tbaa !287
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2PP8WhenthenD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZNSt5dequeIN2PP3CmdESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt5dequeIbSaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.06.i.i.i, align 8, !tbaa !190
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 512) #32
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.l = icmp ult ptr %.06.i.i.i, %i.g
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i, !llvm.loop !5

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !187
  br label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i ], [ %i.c, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %_ZNSt5dequeIbSaIbEED2Ev.exit

_ZNSt5dequeIbSaIbEED2Ev.exit:                     ; preds = %bb.a, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.s) #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.t) #29
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #29
  ret void
}

declare void @_ZN2PP3Cmd9handle_ifERbRSt5dequeIbSaIbEES5_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd9handle_doERbRSt5dequeIiSaIiEERiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP11PowerParser11end_do_loopERiRSt5dequeIiSaIiEERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::_Deque_iterator.52", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"struct.std::_Deque_iterator.52", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.c = load i32, ptr %1, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.k = sext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ %i.k, %bb.a ]
  %.028 = phi i32 [ %.1, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ -1, %bb.a ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !135
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 432
  %i.z = add nsw i64 %i.s, %i.y
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !134 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 432
  %i.ag = add nsw i64 %i.z, %i.af
  %i.ah = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %i.ah, 32
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 0, ptr %i.b, align 1, !tbaa !255
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !934
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.ad, %i.al
  %i.an = sdiv exact i64 %i.am, 432
  %i.ao = add nsw i64 %i.an, %indvars.iv.next     ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds [432 x i8], ptr %i.ab, i64 %indvars.iv.next
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ao
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47, !noalias !934
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit:           ; preds = %bb.d, %bb.e
  %storemerge.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.aq, %bb.d ]
  %i.at = call noundef zeroext i1 @_ZN2PP3Cmd19find_matching_enddoERiRb(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 2 uses
  %i.au = load i8, ptr %i.b, align 1, !range !257
  %i.av = trunc nuw i8 %i.au to i1
  %7 = trunc nsw i64 %indvars.iv.next to i32
  %.1 = select i1 %i.at, i32 %7, i32 %.028        ; 2 uses
  %i.aw = select i1 %i.at, i1 true, i1 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %i.aw, label %bb.f, label %bb.b, !llvm.loop !919

bb.f:                                             ; preds = %bb.b, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit
  %.2 = phi i32 [ %.1, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ %.028, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !261 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !261 ; 4 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp ne ptr %i.ba, null
  %.neg.i.i31 = sext i1 %i.bh to i64
  %i.bi = add nsw i64 %i.bg, %.neg.i.i31
  %i.bj = shl nsw i64 %i.bi, 7
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !288
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = add nsw i64 %i.bj, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !290
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = add nsw i64 %i.br, %i.by                ; 3 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp ne i32 %.2, -1                     ; 2 uses
  %i.cc = icmp sgt i32 %i.ca, 0                   ; 2 uses
  br i1 %i.cb, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cc, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.cd = add i64 %i.bz, 4294967295
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !289, !noalias !935
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = add nsw i64 %i.cj, %i.ce                ; 5 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  br i1 %i.cl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cm = icmp samesign ult i64 %i.ck, 128
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ce
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

bb.k:                                             ; preds = %bb.i
  %i.co = lshr i64 %i.ck, 7
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cp = ashr i64 %i.ck, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = phi i64 [ %i.co, %bb.k ], [ %i.cp, %bb.l ] ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !185, !noalias !935
  %i.ct = shl nsw i64 %i.cq, 7
  %i.cu = sub nsw i64 %i.ck, %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

_ZNSt5dequeIiSaIiEEixEm.exit:                     ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i32 = phi ptr [ %i.cv, %bb.m ], [ %i.cn, %bb.j ]
  %i.cw = load i32, ptr %storemerge.i.i.i.i32, align 4, !tbaa !31
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !134, !noalias !936 ; 2 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !936
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 432
  %i.de = add nsw i64 %i.dd, %i.cx                ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.dg = getelementptr inbounds [432 x i8], ptr %i.cy, i64 %i.cx
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

bb.o:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !133, !noalias !936
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.de
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47, !noalias !936
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34:         ; preds = %bb.n, %bb.o
  %storemerge.i.i.i.i33 = phi ptr [ %i.dj, %bb.o ], [ %i.dg, %bb.n ]
  call void @_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i33, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34, %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.102, i64 noundef 32) ; 0 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !143
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !168
  %.not.i1.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 67
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dr)
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !143
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef signext i8 %i.dy(ptr noundef nonnull align 8 dereferenceable(570) %i.dr, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.dv, %bb.r ], [ %i.dz, %bb.s ]
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i)
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 0 uses
  store i32 2, ptr %4, align 4, !tbaa !31
  %i.ec = call noundef i32 @_ZN2PP11PowerParser24process_error_return_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.103, i64 noundef 16) ; 0 uses
  %i.ef = load ptr, ptr @_ZSt4cout, align 8, !tbaa !143
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 240
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i35, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i8, ptr %i.el, align 8, !tbaa !168
  %.not.i1.i.i37 = icmp eq i8 %i.em, 0
  br i1 %.not.i1.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 67
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ek)
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !143
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef signext i8 %i.er(ptr noundef nonnull align 8 dereferenceable(570) %i.ek, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.v, %bb.w
  %.0.i.i.i38 = phi i8 [ %i.eo, %bb.v ], [ %i.es, %bb.w ]
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i38)
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %bb.f
  br i1 %i.cc, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !289, !noalias !937
  %i.ex = and i64 %i.bz, 2147483647               ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = sub i64 %i.bw, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2
  %i.fb = add nsw i64 %i.fa, %i.ex                ; 5 uses
  %i.fc = icmp sgt i64 %i.fb, -1
end_hunk_0
