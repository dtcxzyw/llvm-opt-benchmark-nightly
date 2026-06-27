inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.al

bb.w:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3512 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = icmp ne i8 %i.bz, 0
  %or.cond = select i1 %i.bx, i1 %i.ca, i1 false
  %i.cb = select i1 %or.cond, i32 6, i32 %i.bw
  %i.cc = icmp eq i8 %i.bf, 1
  %i.cd = zext i1 %i.cc to i32
  %spec.select82 = add nsw i32 %i.cb, %i.cd       ; 4 uses
  %i.ce = or i32 %.sroa.8.2, 402653184
  %i.cf = fpext float %.0 to double
  %.sroa.8.0.insert.ext21 = zext i32 %i.ce to i64
  %.sroa.8.0.insert.shift22 = shl nuw i64 %.sroa.8.0.insert.ext21, 32 ; 2 uses
  %.sroa.014.0.insert.ext15 = and i64 %i.a, 4294967295
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.cg = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %i.cf, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  %i.ci = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.ci, 0
  br i1 %.not76, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.cj, align 8, !tbaa !363
  %i.ck = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.y
  %i.cm = and i32 %.sroa.8.2, 16711680
  %i.cn = icmp eq i32 %i.cm, 3014656
  %. = select i1 %i.cn, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.z, %bb.ab
  %.056 = phi i8 [ %., %bb.ab ], [ %i.ck, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !3939
  %i.cp = load i64, ptr %i.bd, align 8, !tbaa !3942
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.co, ptr %7, align 8, !tbaa !3943
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !3947
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.cg, ptr %i.cs, align 4, !tbaa !3948
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.ct, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.cu, align 8, !tbaa !3949
  %i.cv = and i32 %.sroa.8.2, 255
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.cx = icmp sgt i32 %spec.select82, 0
  %i.cy = select i1 %i.cx, i32 %spec.select82, i32 16
  %i.cz = add nsw i32 %i.cg, %i.cq                ; 2 uses
  %i.da = icmp slt i32 %i.cz, -3
  %.not.i = icmp sgt i32 %i.cz, %i.cy
  %or.cond.i = or i1 %i.da, %.not.i
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.db = or i32 %.sroa.8.2, 402653185
  store i32 %i.db, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.dc = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.de = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.de, 0
  %i.df = zext i1 %.not10.i to i64
  %i.dg = add i64 %i.dc, %i.df
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !3950
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !412
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !3939 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, %i.be
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.dh) #47, !inline_history !3951
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.ak:                                            ; preds = %bb.ae, %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.al

bb.al:                                            ; preds = %bb.x, %bb.ak, %bb.aa, %bb.v, %bb.r
  %.pn80 = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bm, %bb.r ], [ %i.ch, %bb.x ], [ %i.cl, %bb.aa ], [ %i.di, %bb.ak ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !412
  %i.dj = load ptr, ptr %i.bb, align 8, !tbaa !3939 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.dj, %i.be
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.dj) #47, !inline_history !3951
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  resume { ptr, i32 } %.pn80
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 4, !tbaa !3514
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 16                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.lobit = lshr i8 %i.f, 7
  %i.g = zext nneg i8 %.lobit to i32
  %i.h = shl nuw nsw i32 %i.g, 29                 ; 3 uses
  %i.i = or disjoint i32 %i.h, %i.d               ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !3513  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3512
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3512
  %.not49 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not49, i32 %i.h, i32 536870912
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3512
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not, i32 %i.h, i32 536870912
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %i.k)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.403)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2) #49
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
  %i.ao = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ao) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.an, %bb.p ] ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ak
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @_ZdlPv(ptr noundef %i.au) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %bb.c, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sroa.2.4 = phi i32 [ %i.r, %bb.b ], [ %i.aj, %bb.j ], [ %i.z, %bb.e ], [ %i.ag, %bb.g ], [ %i.ai, %bb.i ], [ %i.s, %bb.c ], [ %i.i, %bb.a ]
  %.sroa.2.0.insert.ext = zext nneg i32 %.sroa.2.4 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3507
  %i.b = load i32, ptr %2, align 8, !tbaa !3936
  %.not.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  %i.d = zext i32 %i.a to i64                     ; 2 uses
  %.not46 = icmp samesign ult i64 %i.c, %i.d
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !153   ; 8 uses
  %i.g = sub nuw nsw i64 %i.d, %i.c               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 15
  switch i8 %i.j, label %.lr.ph.i.i.i76 [
    i8 2, label %.lr.ph.i.i.i
    i8 3, label %bb.j
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2783
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 3 uses
  %.04.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2788
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.f, ptr %i.m, align 1, !tbaa !153
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2783
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !2781 ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t ; 2 uses
  store i8 %i.f, ptr %i.aa, align 1, !tbaa !153
  %i.ab = icmp sgt i64 %i.t, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.z, ptr %.sroa.07.0.copyload, align 8, !tbaa !2781
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !2783
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.e
  %i.ae = phi ptr [ %i.p, %bb.e ], [ %i.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.af = add i64 %.04.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %bb.d, !llvm.loop !3614

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i
  store ptr %.sroa.07.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ac

bb.j:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.g, 1                        ; 3 uses
end_hunk_0
