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
end_hunk_1
