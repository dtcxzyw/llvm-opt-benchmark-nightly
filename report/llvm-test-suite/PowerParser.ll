Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PowerParser?download=true
inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !918
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -568
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2PP8WhenthenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(568) %i.b, ptr noundef nonnull align 8 dereferenceable(568) %1)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr %i.g, ptr %i.a, align 8, !tbaa !288
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
  %sext = shl i64 %i.ag, 32
  %i.ah = ashr exact i64 %sext, 32
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 0, ptr %i.b, align 1, !tbaa !256
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !936
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ad, %i.ak
  %i.am = sdiv exact i64 %i.al, 432
  %i.an = add nsw i64 %i.am, %indvars.iv.next     ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds [432 x i8], ptr %i.ab, i64 %indvars.iv.next
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.an
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47, !noalias !936
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit:           ; preds = %bb.d, %bb.e
  %storemerge.i.i.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.ap, %bb.d ]
  %i.as = call noundef zeroext i1 @_ZN2PP3Cmd19find_matching_enddoERiRb(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 2 uses
  %i.at = load i8, ptr %i.b, align 1, !range !258
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.as, i1 true, i1 %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %i.av, label %.split.loop.exit59, label %bb.b, !llvm.loop !921

.split.loop.exit59:                               ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit
  %7 = trunc nsw i64 %indvars.iv.next to i32
  %.1.le = select i1 %i.as, i32 %7, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.split.loop.exit59
  %.2 = phi i32 [ %.1.le, %.split.loop.exit59 ], [ -1, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !262 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !262 ; 4 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ne ptr %i.az, null
  %.neg.i.i31 = sext i1 %i.bg to i64
  %i.bh = add nsw i64 %i.bf, %.neg.i.i31
  %i.bi = shl nsw i64 %i.bh, 7
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !289
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !290
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = add nsw i64 %i.bi, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !291
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !289 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = add nsw i64 %i.bq, %i.bx                ; 3 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp ne i32 %.2, -1                     ; 2 uses
  %i.cb = icmp sgt i32 %i.bz, 0                   ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cb, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.cc = add i64 %i.by, 4294967295
  %i.cd = and i64 %i.cc, 4294967295               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !290, !noalias !937
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.bv, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = add nsw i64 %i.ci, %i.cd                ; 5 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cl = icmp samesign ult i64 %i.cj, 128
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cd
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

bb.k:                                             ; preds = %bb.i
  %i.cn = lshr i64 %i.cj, 7
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.co = ashr i64 %i.cj, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cp = phi i64 [ %i.cn, %bb.k ], [ %i.co, %bb.l ] ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !185, !noalias !937
  %i.cs = shl nsw i64 %i.cp, 7
  %i.ct = sub nsw i64 %i.cj, %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

_ZNSt5dequeIiSaIiEEixEm.exit:                     ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i32 = phi ptr [ %i.cu, %bb.m ], [ %i.cm, %bb.j ]
  %i.cv = load i32, ptr %storemerge.i.i.i.i32, align 4, !tbaa !31
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !134, !noalias !938 ; 2 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !938
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 432
  %i.dd = add nsw i64 %i.dc, %i.cw                ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.df = getelementptr inbounds [432 x i8], ptr %i.cx, i64 %i.cw
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

bb.o:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !133, !noalias !938
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !47, !noalias !938
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34:         ; preds = %bb.n, %bb.o
  %storemerge.i.i.i.i33 = phi ptr [ %i.di, %bb.o ], [ %i.df, %bb.n ]
  call void @_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i33, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34, %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.102, i64 noundef 32) ; 0 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !143
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !168
  %.not.i1.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 67
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq)
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !143
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.du, %bb.r ], [ %i.dy, %bb.s ]
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i8 noundef signext %.0.i.i.i)
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) ; 0 uses
  store i32 2, ptr %4, align 4, !tbaa !31
  %i.eb = call noundef i32 @_ZN2PP11PowerParser24process_error_return_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.103, i64 noundef 16) ; 0 uses
  %i.ee = load ptr, ptr @_ZSt4cout, align 8, !tbaa !143
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 240
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i35, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !168
  %.not.i1.i.i37 = icmp eq i8 %i.el, 0
  br i1 %.not.i1.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 67
  %i.en = load i8, ptr %i.em, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ej)
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !143
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef signext i8 %i.eq(ptr noundef nonnull align 8 dereferenceable(570) %i.ej, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.v, %bb.w
  %.0.i.i.i38 = phi i8 [ %i.en, %bb.v ], [ %i.er, %bb.w ]
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i38)
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.es) ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %bb.f
  br i1 %i.cb, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !290, !noalias !939
  %i.ew = and i64 %i.by, 2147483647               ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.bv, %i.ex
  %i.ez = ashr exact i64 %i.ey, 2
  %i.fa = add nsw i64 %i.ez, %i.ew                ; 5 uses
  %i.fb = icmp sgt i64 %i.fa, -1
end_hunk_0
