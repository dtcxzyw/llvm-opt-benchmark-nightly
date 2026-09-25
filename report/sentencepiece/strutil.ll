Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/strutil?download=true
inline.NumInlined: 763
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6google8protobuf8internal14NoLocaleStrtodEPKcPPc:bb.a
  store ptr %i.bl, ptr %1, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN6google8protobuf8internal12_GLOBAL__N_113LocalizeRadixB5cxx11EPKcS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.bm = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.q
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !21
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi double [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11safe_strtobENS0_11StringPieceEPb(ptr %0, i64 %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 5 uses
  %.not = icmp eq ptr %2, null
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1305)
  %i.a = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull @.str.17)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.f unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.critedge43

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.critedge43

.critedge43:                                      ; preds = %bb.e, %bb.f
  switch i64 %1, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88 [
    i64 4, label %.lr.ph.i.i
    i64 1, label %.lr.ph.i.i47
    i64 3, label %.lr.ph.i.i56.preheader
    i64 5, label %.lr.ph.i.i83.preheader
  ]

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21    ; 3 uses
  %i.e = add i8 %i.d, -65
  %i.f = icmp ult i8 %i.e, 26
  %i.g = add nuw nsw i8 %i.d, 32
  %i.h = select i1 %i.f, i8 %i.g, i8 %i.d
  %.not.i.i.1 = icmp eq i8 %i.h, 114
  br i1 %.not.i.i.1, label %.lr.ph.i.i.2, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21    ; 3 uses
  %i.k = add i8 %i.j, -65
  %i.l = icmp ult i8 %i.k, 26
  %i.m = add nuw nsw i8 %i.j, 32
  %i.n = select i1 %i.l, i8 %i.m, i8 %i.j
  %.not.i.i.2 = icmp eq i8 %i.n, 117
  br i1 %.not.i.i.2, label %.lr.ph.i.i.3, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21    ; 3 uses
  %i.q = add i8 %i.p, -65
  %i.r = icmp ult i8 %i.q, 26
  %i.s = add nuw nsw i8 %i.p, 32
  %i.t = select i1 %i.r, i8 %i.s, i8 %i.p
  %.not.i.i.3 = icmp eq i8 %i.t, 101
  br i1 %.not.i.i.3, label %.sink.split, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

.lr.ph.i.i:                                       ; preds = %.critedge43
  %i.u = load i8, ptr %0, align 1, !tbaa !21      ; 3 uses
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add nuw nsw i8 %i.u, 32
  %i.y = select i1 %i.w, i8 %i.x, i8 %i.u
  %.not.i.i = icmp eq i8 %i.y, 116
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

bb.g:                                             ; preds = %.lr.ph.i.i47
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i48, 1 ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %indvars.iv.next.i.i50, %1
  br i1 %exitcond.not.i.i51, label %.sink.split, label %.lr.ph.i.i47, !llvm.loop !6

.lr.ph.i.i47:                                     ; preds = %.critedge43, %bb.g
  %indvars.iv.i.i48 = phi i64 [ %indvars.iv.next.i.i50, %bb.g ], [ 0, %.critedge43 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i48
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21   ; 3 uses
  %i.ab = add i8 %i.aa, -65
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = add nuw nsw i8 %i.aa, 32
  %i.ae = select i1 %i.ac, i8 %i.ad, i8 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr @.str.19, i64 %indvars.iv.i.i48
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21  ; 3 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = add nuw nsw i8 %i.ag, 32
  %i.ak = select i1 %i.ai, i8 %i.aj, i8 %i.ag
  %.not.i.i49 = icmp eq i8 %i.ae, %i.ak
  br i1 %.not.i.i49, label %bb.g, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52

_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52: ; preds = %.lr.ph.i.i47
  switch i64 %1, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88 [
    i64 3, label %.lr.ph.i.i56.preheader
    i64 1, label %.lr.ph.i.i65.preheader
    i64 5, label %.lr.ph.i.i83.preheader
  ]

.lr.ph.i.i56.preheader:                           ; preds = %.critedge43, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52
  br label %.lr.ph.i.i56

bb.h:                                             ; preds = %.lr.ph.i.i56
  %indvars.iv.next.i.i59 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %indvars.iv.next.i.i59, %1
  br i1 %exitcond.not.i.i60, label %.sink.split, label %.lr.ph.i.i56, !llvm.loop !6

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader, %bb.h
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i59, %bb.h ], [ 0, %.lr.ph.i.i56.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i57
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21  ; 3 uses
  %i.an = add i8 %i.am, -65
  %i.ao = icmp ult i8 %i.an, 26
  %i.ap = add nuw nsw i8 %i.am, 32
  %i.aq = select i1 %i.ao, i8 %i.ap, i8 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr @.str.20, i64 %indvars.iv.i.i57
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21  ; 3 uses
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = add nuw nsw i8 %i.as, 32
  %i.aw = select i1 %i.au, i8 %i.av, i8 %i.as
  %.not.i.i58 = icmp eq i8 %i.aq, %i.aw
  br i1 %.not.i.i58, label %bb.h, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit61

_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit61: ; preds = %.lr.ph.i.i56
  switch i64 %1, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88 [
    i64 1, label %.lr.ph.i.i65.preheader
    i64 5, label %.lr.ph.i.i83.preheader
  ]

.lr.ph.i.i65.preheader:                           ; preds = %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit61
  br label %.lr.ph.i.i65

bb.i:                                             ; preds = %.lr.ph.i.i65
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %1
  br i1 %exitcond.not.i.i69, label %.sink.split, label %.lr.ph.i.i65, !llvm.loop !6

.lr.ph.i.i65:                                     ; preds = %.lr.ph.i.i65.preheader, %bb.i
  %indvars.iv.i.i66 = phi i64 [ %indvars.iv.next.i.i68, %bb.i ], [ 0, %.lr.ph.i.i65.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i66
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21  ; 3 uses
  %i.az = add i8 %i.ay, -65
  %i.ba = icmp ult i8 %i.az, 26
  %i.bb = add nuw nsw i8 %i.ay, 32
  %i.bc = select i1 %i.ba, i8 %i.bb, i8 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.21, i64 %indvars.iv.i.i66
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21  ; 3 uses
  %i.bf = add i8 %i.be, -65
  %i.bg = icmp ult i8 %i.bf, 26
  %i.bh = add nuw nsw i8 %i.be, 32
  %i.bi = select i1 %i.bg, i8 %i.bh, i8 %i.be
  %.not.i.i67 = icmp eq i8 %i.bc, %i.bi
  br i1 %.not.i.i67, label %bb.i, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit70

_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit70: ; preds = %.lr.ph.i.i65
  switch i64 %1, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88 [
    i64 1, label %.lr.ph.i.i74
    i64 5, label %.lr.ph.i.i83.preheader
  ]

.lr.ph.i.i83.preheader:                           ; preds = %.critedge43, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit61, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit70
  br label %.lr.ph.i.i83

.lr.ph.i.i74:                                     ; preds = %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit70
  %i.bj = load i8, ptr %0, align 1, !tbaa !21
  %.not.i.i76 = icmp eq i8 %i.bj, 49
  br i1 %.not.i.i76, label %.sink.split, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.bk, %bb.j ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %.lr.ph.i.i83
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i84, 1 ; 2 uses
  %exitcond.not.i.i87 = icmp eq i64 %indvars.iv.next.i.i86, %1
  br i1 %exitcond.not.i.i87, label %.sink.split, label %.lr.ph.i.i83, !llvm.loop !6

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83.preheader, %bb.m
  %indvars.iv.i.i84 = phi i64 [ %indvars.iv.next.i.i86, %bb.m ], [ 0, %.lr.ph.i.i83.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i84
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21  ; 3 uses
  %i.bo = add i8 %i.bn, -65
  %i.bp = icmp ult i8 %i.bo, 26
  %i.bq = add nuw nsw i8 %i.bn, 32
  %i.br = select i1 %i.bp, i8 %i.bq, i8 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr @.str.23, i64 %indvars.iv.i.i84
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21  ; 3 uses
  %i.bu = add i8 %i.bt, -65
  %i.bv = icmp ult i8 %i.bu, 26
  %i.bw = add nuw nsw i8 %i.bt, 32
  %i.bx = select i1 %i.bv, i8 %i.bw, i8 %i.bt
  %.not.i.i85 = icmp eq i8 %i.br, %i.bx
  br i1 %.not.i.i85, label %bb.m, label %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88

_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88: ; preds = %.lr.ph.i.i83, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i74, %.critedge43, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit52, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit61, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit70
  %i.by = call noundef zeroext i1 @_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_(ptr %0, i64 %1, ptr nonnull @.str.24, i64 1)
  br i1 %i.by, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88
  %i.bz = call noundef zeroext i1 @_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_(ptr %0, i64 %1, ptr nonnull @.str.25, i64 2)
  br i1 %i.bz, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = call noundef zeroext i1 @_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_(ptr %0, i64 %1, ptr nonnull @.str.26, i64 1)
  br i1 %i.ca, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call noundef zeroext i1 @_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_(ptr %0, i64 %1, ptr nonnull @.str.27, i64 1)
  br i1 %i.cb, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.m, %.lr.ph.i.i.3, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88, %bb.n, %bb.o, %bb.p, %.lr.ph.i.i74
  %.sink = phi i8 [ 1, %.lr.ph.i.i74 ], [ 1, %.lr.ph.i.i.3 ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_.exit88 ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %bb.g ]
  store i8 %.sink, ptr %2, align 1, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %.0 = phi i1 [ false, %bb.p ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf9CaseEqualENS0_11StringPieceES1_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #17 comdat {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.b, label %_ZN6google8protobufL10memcasecmpEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %.not1920.not.i = icmp eq i64 %1, 0
  br i1 %.not1920.not.i, label %_ZN6google8protobufL10memcasecmpEPKcS2_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 3 uses
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 26
  %i.e = add nuw nsw i8 %i.b, 32
  %i.f = select i1 %i.d, i8 %i.e, i8 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21    ; 3 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = add nuw nsw i8 %i.h, 32
  %i.l = select i1 %i.j, i8 %i.k, i8 %i.h
  %.not.i = icmp eq i8 %i.f, %i.l                 ; 2 uses
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %1
  %or.cond.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN6google8protobufL10memcasecmpEPKcS2_m.exit, !llvm.loop !6

_ZN6google8protobufL10memcasecmpEPKcS2_m.exit:    ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define noundef zeroext i1 @_ZN6google8protobuf11safe_strtofEPKcPf(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call ptr @__errno_location() #32    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.c = call float @strtof(ptr noundef %0, ptr noundef nonnull %i.a) #29
  store float %i.c, ptr %1, align 4, !tbaa !96
  %i.d = load i8, ptr %0, align 1, !tbaa !21
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 4, !tbaa !31
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %i.j
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11safe_strtodEPKcPd(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = call noundef double @_ZN6google8protobuf8internal14NoLocaleStrtodEPKcPPc(ptr noundef %0, ptr noundef nonnull %i.a)
  store double %i.b, ptr %1, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not = icmp eq ptr %i.c, %0
  br i1 %.not, label %_ZN6google8protobuf13ascii_isspaceEc.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  switch i8 %i.e, label %_ZN6google8protobuf13ascii_isspaceEc.exit.loopexit [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.preheader, !llvm.loop !97

_ZN6google8protobuf13ascii_isspaceEc.exit.loopexit: ; preds = %.preheader
  store ptr %i.d, ptr %i.a, align 8
  br label %_ZN6google8protobuf13ascii_isspaceEc.exit

_ZN6google8protobuf13ascii_isspaceEc.exit:        ; preds = %_ZN6google8protobuf13ascii_isspaceEc.exit.loopexit, %bb.a
  %i.g = phi ptr [ %i.d, %_ZN6google8protobuf13ascii_isspaceEc.exit.loopexit ], [ %i.c, %bb.a ]
  %i.h = load i8, ptr %0, align 1, !tbaa !21
  %.not4 = icmp eq i8 %i.h, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13ascii_isspaceEc.exit
  %i.i = load i8, ptr %i.g, align 1, !tbaa !21
  %i.j = icmp eq i8 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6google8protobuf13ascii_isspaceEc.exit
  %i.k = phi i1 [ false, %_ZN6google8protobuf13ascii_isspaceEc.exit ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf12safe_strto32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
end_hunk_0
