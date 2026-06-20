inline.NumInlined: 1374
inline.NumDeleted: 615
begin_hunk_0_@_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE:bb.a
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !44
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #24
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !44
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !388
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13DecodedVector22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS3_E(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.88, align 8             ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(94) %i.a)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(94) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !88
  %i.l = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(94) %i.l, i32 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.p, ptr %i.q, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !124, !range !81, !noundef !82
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %i.u, i32 noundef 0)
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 1, ptr %i.z, align 1, !tbaa !86
  store i8 0, ptr %i.r, align 1, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !52
  %i.ab = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %i.ab, i32 noundef 0)
  %i.ag = select i1 %i.af, ptr @_ZN8facebook5velox13DecodedVector17constantNullMask_E, ptr null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !123
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 6 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.aj
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ar = icmp uge ptr %i.ao, %i.aq
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i, label %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit

_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i: ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %0, align 8, !tbaa !18
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 4 uses
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = ptrtoint ptr %i.aj to i64               ; 4 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %spec.select.i
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i
  %i.ay = sub nuw nsw i64 %spec.select.i, %i.aw
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.ay)
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %.pre2.i = load ptr, ptr %i.ak, align 8, !tbaa !13
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i
  %i.az = icmp ugt i64 %i.aw, %spec.select.i
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %spec.select.i ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.ba
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.j
  store ptr %i.ba, ptr %i.ak, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.j, %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %.pre3.i, %bb.h ], [ %i.au, %bb.i ], [ %i.au, %bb.j ], [ %i.au, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.bb = phi ptr [ %.pre2.i, %bb.h ], [ %i.al, %bb.i ], [ %i.al, %bb.j ], [ %i.ba, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.bc = phi ptr [ %.pre.i, %bb.h ], [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ %i.aj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.bf, %.pre-phi.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 4 %i.be, i64 %i.bg, i1 false)
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !8
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !52
  br label %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit

_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %0, ptr %4, align 8, !tbaa !390
  call void @_ZNK8facebook5velox13DecodedVector11applyToRowsIZNS1_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS4_EEUliE_EEvSC_OS7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bi = load ptr, ptr %1, align 8, !tbaa !37
  call void @_ZN8facebook5velox13DecodedVector12setFlatNullsERKNS0_10BaseVectorEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(94) %i.bi, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit, %bb.e
  %i.bj = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 304
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(94) %i.bj)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !375
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !123
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.br, i32 noundef 0) ; 2 uses
  %i.bw = select i1 %i.bv, ptr @_ZN8facebook5velox13DecodedVector17constantNullMask_E, ptr null
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %5 = phi i1 [ %i.bv, %bb.l ], [ true, %bb.k ]
  %i.bx = load i8, ptr %i.r, align 1, !tbaa !124, !range !81, !noundef !82
  %6 = trunc nuw i8 %i.bx to i1
  %narrow = or i1 %5, %6
  %7 = zext i1 %narrow to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %7, ptr %i.by, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13DecodedVector11applyToRowsIZNS1_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS4_EEUliE_EEvSC_OS7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.92, align 8             ; 6 uses
  %4 = alloca %class.anon.93, align 8             ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit

.lr.ph:                                           ; preds = %.preheader
  %i.c = load ptr, ptr %2, align 8, !tbaa !390    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %.pre = load i32, ptr %i.d, align 8, !tbaa !36
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.i = load i8, ptr %i.h, align 1, !tbaa !133, !range !81, !noundef !82
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.c

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.b
  %.0.in.pre.i.i = load i8, ptr %i.g, align 1, !tbaa !134, !range !81
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !132
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !112  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !135
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.o, 2147483584                 ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %.not37.i.i.not.i.i17.not = icmp eq i32 %i.t, 0
  br i1 %.not37.i.i.not.i.i17.not, label %.critedge.i.i.i.i, label %.lr.ph19

bb.g:                                             ; preds = %.lr.ph19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i18, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.u
  br i1 %.not37.i.i.not.i.i, label %.lr.ph19, label %.critedge.i.i.i.i, !llvm.loop !136

.lr.ph19:                                         ; preds = %bb.f, %bb.g
  %indvars.iv.i.i18 = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = lshr exact i64 %indvars.iv.i.i18, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !131
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !136

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.not38.i.i.i.i = icmp eq i32 %i.o, %i.t
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.z = lshr i32 %i.o, 6
  %i.aa = and i32 %i.o, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ab
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !131
  %.demorgan.i.i = or i64 %i.ae, %notmask.i40.i.i.i.i
  %i.af = icmp eq i64 %.demorgan.i.i, -1
  %i.ag = zext i1 %i.af to i16
  %i.ah = or disjoint i16 %i.ag, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph19, %bb.h, %.critedge.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.d ], [ 256, %bb.c ], [ 257, %bb.e ], [ 257, %.critedge.i.i.i.i ], [ %i.ah, %bb.h ], [ 256, %.lr.ph19 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.g, align 4
  %i.ai = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ai, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !132 ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.ak
  br i1 %i.an, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit

iter.check:                                       ; preds = %bb.i
  %i.ao = load ptr, ptr %2, align 8, !tbaa !390   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 3 uses
  %i.as = sext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.ak to i64      ; 2 uses
  %.pre.i = load i32, ptr %i.ap, align 8, !tbaa !36 ; 3 uses
  %i.at = sub nsw i64 %wide.trip.count.i, %i.as   ; 7 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 24
  %n.vec = and i64 %i.at, -32                     ; 4 uses
  %i.au = add nsw i64 %n.vec, %i.as
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.av, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !144

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.at, -8                    ; 3 uses
  %i.az = add nsw i64 %n.vec22, %i.as
  %broadcast.splatinsert23 = insertelement <8 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat24 = shufflevector <8 x i32> %broadcast.splatinsert23, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep30 = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %gep31 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %index25
  store <8 x i32> %broadcast.splat24, ptr %gep31, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index25, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.at, %n.vec22
  br i1 %cmp.n27, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.as, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i32 %.pre.i, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.scalar.ph, !llvm.loop !395

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bc = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !132
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %3, align 8, !tbaa !396
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !399
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.bi, align 8, !tbaa !175
  store i8 1, ptr %4, align 8, !tbaa !400
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !402
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.bk, align 8, !tbaa !175
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS4_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS7_EEUliE_EEvSF_OSA_EUliE_EEvPKmiibSA_EUlimE_ZNS3_ISL_EEvSN_iibSA_EUliE_EEviiSA_T0_(i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull byval(%class.anon.92) align 8 %3, ptr noundef nonnull byval(%class.anon.93) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %.pre, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %0, align 8, !tbaa !18
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.k, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit, !llvm.loop !403

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKS1_RSt10shared_ptrIS6_EEUliE_EEvSD_OS9_EUliE_EEvS9_.exit: ; preds = %vec.epilog.scalar.ph, %bb.k, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS4_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS7_EEUliE_EEvSF_OSA_EUliE_EEvPKmiibSA_EUlimE_ZNS3_ISL_EEvSN_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.92) align 8 %2, ptr noundef byval(%class.anon.93) align 8 %3) local_unnamed_addr #16 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !396, !range !81, !noundef !82
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !399
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !131
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !404, !nonnull !82, !align !255
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !390 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %.pre.i = load i32, ptr %i.ae, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ah to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %6
  store i32 %.pre.i, ptr %i.ai, align 4, !tbaa !3
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !405

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !396, !range !81, !noundef !82
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !399
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !131
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !404, !nonnull !82, !align !255
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !390 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %.pre.i38 = load i32, ptr %i.bh, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %7 = trunc nuw nsw i64 %i.bk to i32
  %8 = or disjoint i32 %i.be, %7
  %9 = sext i32 %8 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %9
  store i32 %.pre.i38, ptr %i.bl, align 4, !tbaa !3
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !405

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !400, !range !81, !noundef !82
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !402
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !82, !align !255 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit
  %i.bx = phi i32 [ %i.bo, %.lr.ph ], [ %i.dz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.054 = phi i32 [ %i.c, %.lr.ph ], [ %i.bx, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit ] ; 2 uses
  %i.by = sdiv i32 %.054, 64                      ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !131
  %i.cc = xor i64 %i.cb, %i.bu                    ; 2 uses
  switch i64 %i.cc, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cd = shl nsw i32 %i.by, 6
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !390 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %.pre24.i = load i32, ptr %i.cf, align 8, !tbaa !36
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = shl nsw i32 %i.by, 6                    ; 3 uses
  %i.cj = add i32 %i.ci, 64
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %.0.off = add i32 %.054, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cl = sext i32 %i.ci to i64                   ; 9 uses
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !390 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8  ; 3 uses
  %.pre.i42 = load i32, ptr %i.cn, align 8, !tbaa !36 ; 2 uses
  %i.cq = or disjoint i64 %i.cl, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.ck) ; 2 uses
  %i.cr = sub i64 %umax70, %i.cl                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cs = or disjoint i64 %i.cl, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.ck)
  %i.ct = xor i64 %i.cl, -1
  %i.cu = add i64 %umax, %i.ct                    ; 2 uses
  %i.cv = sext i32 %i.ci to i34                   ; 2 uses
  %i.cw = shl nsw i34 %i.cv, 2
  %i.cx = trunc i64 %i.cu to i34
  %i.cy = add i34 %i.cv, %i.cx
  %i.cz = shl i34 %i.cy, 2
  %i.da = icmp slt i34 %i.cz, %i.cw
  %i.db = icmp ugt i64 %i.cu, 4294967295
  %i.dc = or i1 %i.da, %i.db
  br i1 %i.dc, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check71 = icmp ult i64 %i.cr, 32
  %n.mod.vf72 = and i64 %umax70, 1                ; 3 uses
  %n.vec73 = sub i64 %i.cr, %n.mod.vf72           ; 3 uses
  %i.dd = add i64 %n.vec73, %i.cl                 ; 2 uses
  %broadcast.splatinsert74 = insertelement <8 x i32> poison, i32 %.pre.i42, i64 0
  %broadcast.splat75 = shufflevector <8 x i32> %broadcast.splatinsert74, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check71, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.de = add i64 %index, %i.cl
  %i.df = shl i64 %i.de, 32
  %i.dg = ashr exact i64 %i.df, 30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  store <8 x i32> %broadcast.splat75, ptr %i.dh, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.di, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.dj, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.dk, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dm = add i64 %index76, %i.cl
  %i.dn = shl i64 %i.dm, 32
  %i.do = ashr exact i64 %i.dn, 30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.do
  store <8 x i32> %broadcast.splat75, ptr %i.dp, align 4, !tbaa !3
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !407

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n78, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dd, %middle.block ], [ %i.cl, %vector.scevcheck ], [ %i.cl, %iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dt, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dr = ashr exact i64 %sext.i, 30
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dr
  store i32 %.pre.i42, ptr %i.ds, align 4, !tbaa !3
  %i.dt = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ck
  br i1 %i.du, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, !llvm.loop !408

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %i.dy, %bb.j ] ; 3 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.dv to i32
  %11 = or disjoint i32 %i.cd, %10
  %12 = sext i32 %11 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %12
  store i32 %.pre24.i, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add i64 %.01519.i, -1
  %i.dy = and i64 %i.dx, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !409

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dz = add nsw i32 %i.bx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !410

bb.k:                                             ; preds = %._crit_edge
  %i.ea = ashr i32 %1, 6
  %i.eb = and i32 %1, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i44 = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i44, -1
  %i.ee = load i8, ptr %2, align 8, !tbaa !396, !range !81, !noundef !82
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !399
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !131
  %i.ek = xor i8 %i.ee, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = and i64 %i.en, %i.ed                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eo, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !404, !nonnull !82, !align !255
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !390 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %.pre.i47 = load i32, ptr %i.es, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.eo, %.preheader.i46 ], [ %i.ey, %bb.l ] ; 3 uses
  %i.ev = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %13 = trunc nuw nsw i64 %i.ev to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %15
  store i32 %.pre.i47, ptr %i.ew, align 4, !tbaa !3
  %i.ex = add nsw i64 %.011.i48, -1
  %i.ey = and i64 %i.ex, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ey, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !405

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantIPKNS0_10BaseVectorEEEvRKT_PKNS0_17SelectivityVectorERSt10shared_ptrIS6_EEUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox14VectorEncodinglsERSoRKNS1_6SimpleE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !84
  switch i32 %i.a, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.66, i64 noundef 6) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.67, i64 noundef 8) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.68, i64 noundef 10) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.69, i64 noundef 4) ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70, i64 noundef 8) ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.71, i64 noundef 3) ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.72, i64 noundef 3) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.73, i64 noundef 8) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.74, i64 noundef 5) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.75, i64 noundef 4) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.76, i64 noundef 8) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !106

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47
  store i8 %i.v, ptr %i.t, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.w, ptr %i.m, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !104
  %i.x = load ptr, ptr %0, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !47
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox13DecodedVector22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS5_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.q = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !43
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !107
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !107
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i9.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !48

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.j, ptr %i.h, align 8, !tbaa !38
  %.pre = load ptr, ptr %3, align 8, !tbaa !87
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ag = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !88
  %i.ai = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.am, ptr %i.an, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !124, !range !81, !noundef !82
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(94) %i.ar, i32 noundef 0)
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 1, ptr %i.aw, align 1, !tbaa !86
  store i8 0, ptr %i.ao, align 1, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !52
  %i.ay = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(94) %i.ay, i32 noundef 0)
  %i.bd = select i1 %i.bc, ptr @_ZN8facebook5velox13DecodedVector17constantNullMask_E, ptr null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !123
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 6 uses
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !52 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.bg
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bo = icmp uge ptr %i.bl, %i.bn
  %or.cond.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i, label %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit

_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i: ; preds = %bb.q, %bb.p
  %i.bp = load i32, ptr %0, align 8, !tbaa !18
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 4 uses
  %i.bq = ptrtoint ptr %i.bi to i64
  %i.br = ptrtoint ptr %i.bg to i64               ; 4 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %spec.select.i
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i
  %i.bv = sub nuw nsw i64 %spec.select.i, %i.bt
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.bv)
  %.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !8 ; 2 uses
  %.pre2.i = load ptr, ptr %i.bh, align 8, !tbaa !13
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector16indicesNotCopiedEv.exit.thread.i
  %i.bw = icmp ugt i64 %i.bt, %spec.select.i
  br i1 %i.bw, label %bb.t, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %spec.select.i ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bi, %i.bx
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.t
  store ptr %i.bx, ptr %i.bh, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.t, %bb.s, %bb.r
  %.pre-phi.i = phi i64 [ %.pre3.i, %bb.r ], [ %i.br, %bb.s ], [ %i.br, %bb.t ], [ %i.br, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.by = phi ptr [ %.pre2.i, %bb.r ], [ %i.bi, %bb.s ], [ %i.bi, %bb.t ], [ %i.bx, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.bz = phi ptr [ %.pre.i, %bb.r ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ], [ %i.bg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cc, %.pre-phi.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.cb, i64 %i.cd, i1 false)
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !8
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !52
  br label %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit

_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %0, ptr %4, align 8, !tbaa !415
  call void @_ZNK8facebook5velox13DecodedVector11applyToRowsIZNS1_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS6_EUliE_EEvSC_OS7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cf = load ptr, ptr %1, align 8, !tbaa !87
  call void @_ZN8facebook5velox13DecodedVector12setFlatNullsERKNS0_10BaseVectorEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(94) %i.cf, ptr noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox13DecodedVector18makeIndicesMutableEv.exit, %bb.o
  %i.cg = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 304
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(94) %i.cg)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !375
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !123
  %.not = icmp eq ptr %i.cn, null
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef 0) ; 2 uses
  %i.ct = select i1 %i.cs, ptr @_ZN8facebook5velox13DecodedVector17constantNullMask_E, ptr null
  store ptr %i.ct, ptr %i.cm, align 8, !tbaa !123
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %5 = phi i1 [ %i.cs, %bb.v ], [ true, %bb.u ]
  %i.cu = load i8, ptr %i.ao, align 1, !tbaa !124, !range !81, !noundef !82
  %6 = trunc nuw i8 %i.cu to i1
  %narrow = or i1 %5, %6
  %7 = zext i1 %narrow to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %7, ptr %i.cv, align 8, !tbaa !97
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector19wrappedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13DecodedVector11applyToRowsIZNS1_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS6_EUliE_EEvSC_OS7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.100, align 8            ; 6 uses
  %4 = alloca %class.anon.101, align 8            ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit

.lr.ph:                                           ; preds = %.preheader
  %i.c = load ptr, ptr %2, align 8, !tbaa !415    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %.pre = load i32, ptr %i.d, align 8, !tbaa !36
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.i = load i8, ptr %i.h, align 1, !tbaa !133, !range !81, !noundef !82
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.c

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.b
  %.0.in.pre.i.i = load i8, ptr %i.g, align 1, !tbaa !134, !range !81
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !132
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !112  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !135
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.o, 2147483584                 ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %.not37.i.i.not.i.i17.not = icmp eq i32 %i.t, 0
  br i1 %.not37.i.i.not.i.i17.not, label %.critedge.i.i.i.i, label %.lr.ph19

bb.g:                                             ; preds = %.lr.ph19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i18, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.u
  br i1 %.not37.i.i.not.i.i, label %.lr.ph19, label %.critedge.i.i.i.i, !llvm.loop !136

.lr.ph19:                                         ; preds = %bb.f, %bb.g
  %indvars.iv.i.i18 = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = lshr exact i64 %indvars.iv.i.i18, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !131
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !136

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.not38.i.i.i.i = icmp eq i32 %i.o, %i.t
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.z = lshr i32 %i.o, 6
  %i.aa = and i32 %i.o, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ab
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !131
  %.demorgan.i.i = or i64 %i.ae, %notmask.i40.i.i.i.i
  %i.af = icmp eq i64 %.demorgan.i.i, -1
  %i.ag = zext i1 %i.af to i16
  %i.ah = or disjoint i16 %i.ag, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph19, %bb.h, %.critedge.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.d ], [ 256, %bb.c ], [ 257, %bb.e ], [ 257, %.critedge.i.i.i.i ], [ %i.ah, %bb.h ], [ 256, %.lr.ph19 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.g, align 4
  %i.ai = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ai, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !132 ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.ak
  br i1 %i.an, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit

iter.check:                                       ; preds = %bb.i
  %i.ao = load ptr, ptr %2, align 8, !tbaa !415   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 3 uses
  %i.as = sext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.ak to i64      ; 2 uses
  %.pre.i = load i32, ptr %i.ap, align 8, !tbaa !36 ; 3 uses
  %i.at = sub nsw i64 %wide.trip.count.i, %i.as   ; 7 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 24
  %n.vec = and i64 %i.at, -32                     ; 4 uses
  %i.au = add nsw i64 %n.vec, %i.as
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.av, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !144

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.at, -8                    ; 3 uses
  %i.az = add nsw i64 %n.vec22, %i.as
  %broadcast.splatinsert23 = insertelement <8 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat24 = shufflevector <8 x i32> %broadcast.splatinsert23, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep30 = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %gep31 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %index25
  store <8 x i32> %broadcast.splat24, ptr %gep31, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index25, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !418

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.at, %n.vec22
  br i1 %cmp.n27, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.as, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i32 %.pre.i, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit, label %vec.epilog.scalar.ph, !llvm.loop !419

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bc = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !132
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %3, align 8, !tbaa !420
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !423
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.bi, align 8, !tbaa !175
  store i8 1, ptr %4, align 8, !tbaa !424
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !426
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.bk, align 8, !tbaa !175
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS4_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS9_EUliE_EEvSF_OSA_EUliE_EEvPKmiibSA_EUlimE_ZNS3_ISJ_EEvSL_iibSA_EUliE_EEviiSA_T0_(i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull byval(%class.anon.100) align 8 %3, ptr noundef nonnull byval(%class.anon.101) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %.pre, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %0, align 8, !tbaa !18
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.k, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit, !llvm.loop !427

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKS1_RS8_EUliE_EEvSD_OS9_EUliE_EEvS9_.exit: ; preds = %vec.epilog.scalar.ph, %bb.k, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS4_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS9_EUliE_EEvSF_OSA_EUliE_EEvPKmiibSA_EUlimE_ZNS3_ISJ_EEvSL_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.100) align 8 %2, ptr noundef byval(%class.anon.101) align 8 %3) local_unnamed_addr #16 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !420, !range !81, !noundef !82
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !423
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !131
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !428, !nonnull !82, !align !255
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !415 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %.pre.i = load i32, ptr %i.ae, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ah to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %6
  store i32 %.pre.i, ptr %i.ai, align 4, !tbaa !3
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !429

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !420, !range !81, !noundef !82
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !423
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !131
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !428, !nonnull !82, !align !255
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !415 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %.pre.i38 = load i32, ptr %i.bh, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %7 = trunc nuw nsw i64 %i.bk to i32
  %8 = or disjoint i32 %i.be, %7
  %9 = sext i32 %8 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %9
  store i32 %.pre.i38, ptr %i.bl, align 4, !tbaa !3
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !429

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !424, !range !81, !noundef !82
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !426
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !82, !align !255 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit41
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit
  %i.bx = phi i32 [ %i.bo, %.lr.ph ], [ %i.dz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.054 = phi i32 [ %i.c, %.lr.ph ], [ %i.bx, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit ] ; 2 uses
  %i.by = sdiv i32 %.054, 64                      ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !131
  %i.cc = xor i64 %i.cb, %i.bu                    ; 2 uses
  switch i64 %i.cc, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cd = shl nsw i32 %i.by, 6
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !415 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %.pre24.i = load i32, ptr %i.cf, align 8, !tbaa !36
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = shl nsw i32 %i.by, 6                    ; 3 uses
  %i.cj = add i32 %i.ci, 64
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %.0.off = add i32 %.054, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cl = sext i32 %i.ci to i64                   ; 9 uses
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !415 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8  ; 3 uses
  %.pre.i42 = load i32, ptr %i.cn, align 8, !tbaa !36 ; 2 uses
  %i.cq = or disjoint i64 %i.cl, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.ck) ; 2 uses
  %i.cr = sub i64 %umax70, %i.cl                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cs = or disjoint i64 %i.cl, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.ck)
  %i.ct = xor i64 %i.cl, -1
  %i.cu = add i64 %umax, %i.ct                    ; 2 uses
  %i.cv = sext i32 %i.ci to i34                   ; 2 uses
  %i.cw = shl nsw i34 %i.cv, 2
  %i.cx = trunc i64 %i.cu to i34
  %i.cy = add i34 %i.cv, %i.cx
  %i.cz = shl i34 %i.cy, 2
  %i.da = icmp slt i34 %i.cz, %i.cw
  %i.db = icmp ugt i64 %i.cu, 4294967295
  %i.dc = or i1 %i.da, %i.db
  br i1 %i.dc, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check71 = icmp ult i64 %i.cr, 32
  %n.mod.vf72 = and i64 %umax70, 1                ; 3 uses
  %n.vec73 = sub i64 %i.cr, %n.mod.vf72           ; 3 uses
  %i.dd = add i64 %n.vec73, %i.cl                 ; 2 uses
  %broadcast.splatinsert74 = insertelement <8 x i32> poison, i32 %.pre.i42, i64 0
  %broadcast.splat75 = shufflevector <8 x i32> %broadcast.splatinsert74, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check71, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.de = add i64 %index, %i.cl
  %i.df = shl i64 %i.de, 32
  %i.dg = ashr exact i64 %i.df, 30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  store <8 x i32> %broadcast.splat75, ptr %i.dh, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.di, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.dj, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat75, ptr %i.dk, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dm = add i64 %index76, %i.cl
  %i.dn = shl i64 %i.dm, 32
  %i.do = ashr exact i64 %i.dn, 30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.do
  store <8 x i32> %broadcast.splat75, ptr %i.dp, align 4, !tbaa !3
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !431

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n78, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dd, %middle.block ], [ %i.cl, %vector.scevcheck ], [ %i.cl, %iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dt, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dr = ashr exact i64 %sext.i, 30
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dr
  store i32 %.pre.i42, ptr %i.ds, align 4, !tbaa !3
  %i.dt = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ck
  br i1 %i.du, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, !llvm.loop !432

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %i.dy, %bb.j ] ; 3 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.dv to i32
  %11 = or disjoint i32 %i.cd, %10
  %12 = sext i32 %11 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %12
  store i32 %.pre24.i, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add i64 %.01519.i, -1
  %i.dy = and i64 %i.dx, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !433

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dz = add nsw i32 %i.bx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !434

bb.k:                                             ; preds = %._crit_edge
  %i.ea = ashr i32 %1, 6
  %i.eb = and i32 %1, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i44 = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i44, -1
  %i.ee = load i8, ptr %2, align 8, !tbaa !420, !range !81, !noundef !82
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !423
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !131
  %i.ek = xor i8 %i.ee, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = and i64 %i.en, %i.ed                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eo, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !428, !nonnull !82, !align !255
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !415 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %.pre.i47 = load i32, ptr %i.es, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.eo, %.preheader.i46 ], [ %i.ey, %bb.l ] ; 3 uses
  %i.ev = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %13 = trunc nuw nsw i64 %i.ev to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %15
  store i32 %.pre.i47, ptr %i.ew, align 4, !tbaa !3
  %i.ex = add nsw i64 %.011.i48, -1
  %i.ey = and i64 %i.ex, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ey, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !429

_ZZN8facebook5velox4bits10forEachBitIZNKS0_13DecodedVector11applyToRowsIZNS3_22setBaseDataForConstantISt10shared_ptrINS0_10BaseVectorEEEEvRKT_PKNS0_17SelectivityVectorERS8_EUliE_EEvSE_OS9_EUliE_EEvPKmiibS9_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!9, !10, i64 8}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!19, !4, i64 0}
!19 = !{!"_ZTSN8facebook5velox13DecodedVectorE", !4, i64 0, !10, i64 8, !11, i64 16, !20, i64 24, !21, i64 32, !26, i64 48, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !4, i64 64, !27, i64 72, !30, i64 96}
!20 = !{!"p1 long", !11, i64 0}
!21 = !{!"_ZTSSt8optionalIPKmE", !22, i64 0}
!22 = !{!"_ZTSSt14_Optional_baseIPKmLb1ELb1EE", !23, i64 0}
!23 = !{!"_ZTSSt17_Optional_payloadIPKmLb1ELb1ELb1EE", !24, i64 0}
!24 = !{!"_ZTSSt22_Optional_payload_baseIPKmE", !5, i64 0, !25, i64 8}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !11, i64 0}
!27 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !9, i64 0}
!30 = !{!"_ZTSSt6vectorImSaImEE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseImSaImEE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!34 = !{!24, !25, i64 8}
!35 = !{!19, !25, i64 61}
!36 = !{!19, !4, i64 64}
!37 = !{!26, !26, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!41 = !{!42, !4, i64 8}
!42 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!43 = !{!42, !4, i64 12}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !6, i64 0}
!46 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!47 = !{!5, !5, i64 0}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!33, !20, i64 0}
!50 = !{!33, !20, i64 16}
!51 = !{!10, !10, i64 0}
!52 = !{!19, !10, i64 8}
!53 = !{!19, !25, i64 60}
!54 = !{!55, !60, i64 28}
!55 = !{!"_ZTSN8facebook5velox10BaseVectorE", !56, i64 8, !59, i64 24, !25, i64 25, !60, i64 28, !61, i64 32, !20, i64 40, !63, i64 48, !4, i64 56, !64, i64 60, !64, i64 68, !64, i64 76, !64, i64 84, !68, i64 92, !25, i64 93}
!56 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !57, i64 0}
!57 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !39, i64 8}
!58 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!59 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!60 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!61 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !62, i64 0}
!62 = !{!"p1 _ZTSN8facebook5velox6BufferE", !11, i64 0}
!63 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !11, i64 0}
!64 = !{!"_ZTSSt8optionalIiE", !65, i64 0}
!65 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !66, i64 0}
!66 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !67, i64 0}
!67 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !25, i64 4}
!68 = !{!"_ZTSSt6atomicIbE", !69, i64 0}
!69 = !{!"_ZTSSt13__atomic_baseIbE", !25, i64 0}
!70 = !{!71, !25, i64 104}
!71 = !{!"_ZTSN8facebook5velox10LazyVectorE", !55, i64 0, !72, i64 96, !25, i64 104, !79, i64 112}
!72 = !{!"_ZTSSt10unique_ptrIN8facebook5velox12VectorLoaderESt14default_deleteIS2_EE", !73, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox12VectorLoaderESt14default_deleteIS2_ELb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox12VectorLoaderESt14default_deleteIS2_EE", !75, i64 0}
!75 = !{!"_ZTSSt5tupleIJPN8facebook5velox12VectorLoaderESt14default_deleteIS2_EEE", !76, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox12VectorLoaderESt14default_deleteIS2_EEE", !77, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox12VectorLoaderELb0EE", !78, i64 0}
!78 = !{!"p1 _ZTSN8facebook5velox12VectorLoaderE", !11, i64 0}
!79 = !{!"_ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !80, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !39, i64 8}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = distinct !{null}
!84 = !{!60, !60, i64 0}
!85 = !{!19, !25, i64 58}
!86 = !{!19, !25, i64 59}
!87 = !{!80, !26, i64 0}
!88 = !{!19, !26, i64 48}
!89 = !{!61, !62, i64 0}
!90 = !{!91, !92, i64 16}
!91 = !{!"_ZTSN8facebook5velox6BufferE", !63, i64 8, !92, i64 16, !93, i64 24, !93, i64 32, !94, i64 40, !96, i64 44, !5, i64 48}
!92 = !{!"p1 omnipotent char", !11, i64 0}
!93 = !{!"long", !5, i64 0}
!94 = !{!"_ZTSSt6atomicIiE", !95, i64 0}
!95 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!96 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !5, i64 0}
!97 = !{!19, !25, i64 56}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!100 = distinct !{!100, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!101 = !{!102, !92, i64 0}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !103, i64 0, !93, i64 8, !5, i64 16}
!103 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !92, i64 0}
!104 = !{!102, !93, i64 8}
!105 = distinct !{null, null}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = distinct !{null, null, null, null}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!110 = distinct !{!110, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!111 = !{!55, !4, i64 56}
!112 = !{!113, !4, i64 32}
!113 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !30, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !114, i64 36}
!114 = !{!"_ZTSSt8optionalIbE", !115, i64 0}
!115 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !116, i64 0}
!116 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !117, i64 0}
!117 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !25, i64 1}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!120 = distinct !{!120, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!121 = distinct !{null}
!122 = !{!55, !20, i64 40}
!123 = !{!19, !20, i64 24}
!124 = !{!19, !25, i64 57}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!127 = distinct !{!127, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!128 = distinct !{!128, !15}
!129 = !{!33, !20, i64 8}
!130 = !{!20, !20, i64 0}
end_hunk_1
