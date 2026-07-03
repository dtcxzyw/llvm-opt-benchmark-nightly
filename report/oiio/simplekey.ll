inline.NumInlined: 311
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4YAML7Scanner15VerifySimpleKeyEv:bb.a
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.n, i64 -44
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %.sroa.58.0..sroa_idx = getelementptr inbounds i8, ptr %i.n, i64 -32
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !128
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.n, i64 -24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %i.n, i64 -16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !124 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !124 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ne ptr %i.s, null
  %.neg.i.i.i.i = sext i1 %i.z to i64
  %i.aa = add nsw i64 %i.y, %.neg.i.i.i.i
  %i.ab = shl nsw i64 %i.aa, 7
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ab, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aj, %i.aq
  %.not = icmp eq i64 %.sroa.58.0.copyload, %i.ar
  br i1 %.not, label %bb.d, label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit

bb.d:                                             ; preds = %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3topEv.exit
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %i.c, i64 -48
  br label %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef %i.g) #17
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !91
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92 ; 3 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 480
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !134
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 432
  br label %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i.i = phi ptr [ %i.as, %bb.e ], [ %i.az, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !138
  %.not4 = icmp eq i32 %i.bb, %.sroa.4.0.copyload
  br i1 %.not4, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !139
  %i.be = sub nsw i32 %i.bd, %.sroa.0.0.copyload
  %i.bf = icmp sgt i32 %i.be, 1024
  br i1 %i.bf, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  store i32 0, ptr %i.bg, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not3.i = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.8.0.copyload, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not4.i = icmp eq ptr %.sroa.10.0.copyload, null
  br i1 %.not4.i, label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit, label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit.sink.split

bb.m:                                             ; preds = %bb.g, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit
  %.not.i5 = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  store i32 1, ptr %i.bh, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not3.i6 = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %.not3.i6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %.sroa.8.0.copyload, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not4.i7 = icmp eq ptr %.sroa.10.0.copyload, null
  br i1 %.not4.i7, label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit, label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit.sink.split

_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit.sink.split: ; preds = %bb.q, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ 1, %bb.q ]
  %.1.ph = phi i1 [ true, %bb.l ], [ false, %bb.q ]
  store i32 %.sink, ptr %.sroa.10.0.copyload, align 8, !tbaa !25
  br label %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit

_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit:       ; preds = %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit.sink.split, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3topEv.exit, %bb.l, %bb.q, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3topEv.exit ], [ false, %bb.q ], [ true, %bb.l ], [ %.1.ph, %_ZN4YAML7Scanner9SimpleKey8ValidateEv.exit.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML7Scanner16PopAllSimpleKeysEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(480) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !140
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.r, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.s, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit ] ; 3 uses
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %storemerge.i.i, %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -48
  br label %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.j) #17
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !91
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92   ; 4 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  store ptr %i.p, ptr %i.h, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  %.pre1 = load ptr, ptr %i.b, align 8, !tbaa !86
  br label %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.i, %bb.c ], [ %.pre1, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ]
  %storemerge.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !125
  %i.t = icmp eq ptr %storemerge.i.i, %i.r
  br i1 %i.t, label %._crit_edge, label %bb.b, !llvm.loop !141

._crit_edge:                                      ; preds = %_ZNSt5stackIN4YAML7Scanner9SimpleKeyESt5dequeIS2_SaIS2_EEE3popEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !142
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 88
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 104811045873349725
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ag = load ptr, ptr %0, align 8, !tbaa !144
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !145
  br label %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %3 = tail call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.am, align 8, !tbaa !124
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !109 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.an, ptr noundef nonnull align 8 dereferenceable(84) %1, i64 20, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !106
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !7  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZN4YAML5TokenC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !7
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !108
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !108
  br label %_ZN4YAML5TokenC2EOS0_.exit

_ZN4YAML5TokenC2EOS0_.exit:                       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !107
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !7
  store i64 0, ptr %i.az, align 8, !tbaa !107
  store i8 0, ptr %i.as, align 8, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !111
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !111
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !113
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !113
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !123
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !124 ; 3 uses
  store ptr %i.bn, ptr %i.o, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 440
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !142
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !143  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !144
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !124
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !124
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN4YAML5TokenESaIS1_EE15_M_allocate_mapEm.exit, !prof !148

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIN4YAML5TokenESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !147

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML5TokenESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML5TokenESaIS1_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !124
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24:  ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !144
  tail call void @_ZdlPv(ptr noundef %i.bc) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !144
  store i64 %i.am, ptr %i.k, align 8, !tbaa !143
  br label %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit:    ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN4YAML5TokenES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !123
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !124  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !122
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 440
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !142
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !123
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 440
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !142
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 10
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 48
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !134
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 192153584101141162
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !149
  %i.ag = load ptr, ptr %0, align 8, !tbaa !150
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !133
  br label %_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %3 = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.am, align 8, !tbaa !92
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !127
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !91
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92 ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 480
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !134
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML7Scanner9SimpleKeyESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !149  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !150
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !92
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !92
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN4YAML7Scanner9SimpleKeyESaIS2_EE15_M_allocate_mapEm.exit, !prof !148

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIN4YAML7Scanner9SimpleKeyESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !147

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML7Scanner9SimpleKeyESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML7Scanner9SimpleKeyESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !92
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !150
  tail call void @_ZdlPv(ptr noundef %i.bc) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !150
  store i64 %i.am, ptr %i.k, align 8, !tbaa !149
  br label %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN4YAML7Scanner9SimpleKeyES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !91
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !92   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 480
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !134
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !91
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 480
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !134
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_simplekey.cpp() #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 16), ptr @_ZN4YAMLL10TokenNamesB5cxx11E, align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 8), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 25), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 32), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 40), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 57), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 64), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 80), ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 72), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 87), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 96), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 112), ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 104), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 127), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 128), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 136), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 159), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 160), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 176), ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 168), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 189), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 192), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 200), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 221), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 240), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 224), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 240), ptr noundef nonnull align 1 dereferenceable(11) @.str.7, i64 11, i1 false)
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 232), align 8, !tbaa !107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 251), align 1, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 272), ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 256), align 16, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 272), ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN4YAMLL10TokenNamesB5cxx11E, i64 264), align 8, !tbaa !107
end_hunk_0
