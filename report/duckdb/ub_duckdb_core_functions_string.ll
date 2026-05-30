inline.NumInlined: 11296
inline.NumDeleted: 2901
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ah

bb.s:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !2296 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = icmp ne i8 %i.bq, 0
  %or.cond = select i1 %i.bo, i1 %i.br, i1 false
  %i.bs = select i1 %or.cond, i32 6, i32 %i.bn
  %i.bt = icmp eq i8 %i.aw, 1
  %i.bu = zext i1 %i.bt to i32
  %spec.select82 = add nsw i32 %i.bs, %i.bu       ; 4 uses
  %i.bv = or i32 %.sroa.8.2, 402653184
  %i.bw = fpext float %.0 to double
  %.sroa.8.0.insert.ext21 = zext i32 %i.bv to i64
  %.sroa.8.0.insert.shift22 = shl nuw i64 %.sroa.8.0.insert.ext21, 32 ; 2 uses
  %.sroa.014.0.insert.ext15 = and i64 %i.a, 4294967295
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.bx = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %i.bw, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %i.bz = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.bz, 0
  br i1 %.not76, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !13
  %i.cb = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.x:                                             ; preds = %bb.u
  %i.cd = and i32 %.sroa.8.2, 16711680
  %i.ce = icmp eq i32 %i.cd, 3014656
  %. = select i1 %i.ce, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.v, %bb.x
  %.056 = phi i8 [ %., %bb.x ], [ %i.cb, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !2273
  %i.cg = load i64, ptr %i.au, align 8, !tbaa !2284
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.cf, ptr %7, align 8, !tbaa !3343
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !3347
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.bx, ptr %i.cj, align 4, !tbaa !3348
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.ck, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.cl, align 8, !tbaa !3349
  %i.cm = and i32 %.sroa.8.2, 255
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.co = icmp sgt i32 %spec.select82, 0
  %i.cp = select i1 %i.co, i32 %spec.select82, i32 16
  %i.cq = add nsw i32 %i.bx, %i.ch                ; 2 uses
  %i.cr = icmp slt i32 %i.cq, -3
  %.not.i = icmp sgt i32 %i.cq, %i.cp
  %or.cond.i = or i1 %i.cr, %.not.i
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = or i32 %.sroa.8.2, 402653185
  store i32 %i.cs, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.ct = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.cv, 0
  %i.cw = zext i1 %.not10.i to i64
  %i.cx = add i64 %i.ct, %i.cw
  store i64 %i.cx, ptr %i.cu, align 8, !tbaa !3350
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.cy = load ptr, ptr %i.as, align 8, !tbaa !2273 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %i.av
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cy) #29, !inline_history !2285
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.af

bb.af:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.ag:                                            ; preds = %bb.aa, %bb.ab
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.t, %bb.ag, %bb.w, %bb.r, %bb.n
  %.pn80 = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.bd, %bb.n ], [ %i.by, %bb.t ], [ %i.cc, %bb.w ], [ %i.cz, %bb.ag ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !2273 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.da, %i.av
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.da) #29, !inline_history !2285
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn80
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 4, !tbaa !2298
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 16                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.lobit = lshr i8 %i.f, 7
  %i.g = zext nneg i8 %.lobit to i32
  %i.h = shl nuw nsw i32 %i.g, 29                 ; 3 uses
  %i.i = or disjoint i32 %i.h, %i.d               ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !2297  ; 2 uses
  switch i8 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 0, label %bb.b
    i8 71, label %bb.c
    i8 103, label %bb.q
    i8 69, label %bb.d
    i8 101, label %bb.e
    i8 70, label %bb.f
    i8 102, label %bb.g
    i8 65, label %bb.h
    i8 97, label %bb.i
    i8 110, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2296
  %i.n = icmp ne i32 %i.m, 0
  %i.o = icmp slt i8 %i.f, 0
  %i.p = or i1 %i.o, %i.n
  %i.q = select i1 %i.p, i32 536870912, i32 0
  %i.r = or disjoint i32 %i.q, %i.d
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.s = or disjoint i32 %i.i, 16777216
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.t = or disjoint i32 %i.i, 16777216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.2.1 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2296
  %5 = or i32 %i.h, %i.v
  %.not49 = icmp eq i32 %5, 0
  %i.w = select i1 %.not49, i32 0, i32 536870912
  %i.x = and i32 %.sroa.2.1, -536870914
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or disjoint i32 %i.y, 1
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.aa = or disjoint i32 %i.i, 16777216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.sroa.2.2 = phi i32 [ %i.aa, %bb.f ], [ %i.i, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2296
  %6 = or i32 %i.h, %i.ac
  %.not = icmp eq i32 %6, 0
  %i.ad = select i1 %.not, i32 0, i32 536870912
  %i.ae = and i32 %.sroa.2.2, -536870915
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, 2
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ah = or disjoint i32 %i.i, 16777216
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.sroa.2.3 = phi i32 [ %i.ah, %bb.h ], [ %i.i, %bb.a ]
  %i.ai = or i32 %.sroa.2.3, 3
  br label %bb.q

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = or disjoint i32 %i.i, 33554432
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !316
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %i.k)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.83)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2) #27
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.o:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !328   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.an, %bb.p ] ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ak
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @_ZdlPv(ptr noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %bb.c, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sroa.2.4 = phi i32 [ %i.r, %bb.b ], [ %i.aj, %bb.j ], [ %i.z, %bb.e ], [ %i.ag, %bb.g ], [ %i.ai, %bb.i ], [ %i.s, %bb.c ], [ %i.i, %bb.a ]
  %.sroa.2.0.insert.ext = zext nneg i32 %.sroa.2.4 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !2291
  %i.b = load i32, ptr %2, align 8, !tbaa !3340   ; 2 uses
  %.not.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.not.i, i64 3, i64 4      ; 3 uses
  %i.d = zext i32 %i.a to i64                     ; 3 uses
  %.not39 = icmp samesign ult i64 %i.c, %i.d
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %0, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2284 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2275 ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, %i.c                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.i), !inline_history !2456
  %.pre = load i32, ptr %2, align 8, !tbaa !3340
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  store i64 %i.i, ptr %i.e, align 8, !tbaa !2284
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2273
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIPcEEvOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.s, ptr %i.p, align 1, !tbaa !66
  br label %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIPcEEvOT_.exit

_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIPcEEvOT_.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit, %bb.d
  %.0 = phi ptr [ %i.p, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ], [ %i.t, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3342 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !66
  store i8 %i.w, ptr %.0, align 1, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.011.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %.011.i.i.ptr.1.i, align 1, !tbaa !66
  store i8 %i.y, ptr %i.x, align 1, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %.011.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.aa = load i8, ptr %.011.i.i.ptr.2.i, align 1, !tbaa !66
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !66
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52

bb.e:                                             ; preds = %bb.a
  %i.ab = add i64 %i.f, %i.d                      ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %i.h
  br i1 %i.ac, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !59
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.ab), !inline_history !2456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41: ; preds = %bb.e, %bb.f
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !2284
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2273
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !66  ; 4 uses
  %i.ak = sub nuw nsw i64 %i.d, %i.c              ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 15
  switch i8 %i.an, label %bb.k [
    i8 2, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
    i8 3, label %bb.h
  ]

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit:              ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 %i.aj, i64 %i.ak, i1 false)
  %i.ap = load i32, ptr %2, align 8, !tbaa !3340  ; 2 uses
  %.not.i42 = icmp eq i32 %i.ap, 0
  br i1 %.not.i42, label %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.as, ptr %i.ao, align 1, !tbaa !66
  br label %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit

_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit, %bb.g
  %.073 = phi ptr [ %i.ao, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit ], [ %i.at, %bb.g ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3342 ; 3 uses
end_hunk_0
