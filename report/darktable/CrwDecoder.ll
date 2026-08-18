inline.NumInlined: 453
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed10CrwDecoder17decodeRawInternalEv:bb.a
  %i.g = icmp ult i32 %i.f, 6
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.i = load i16, ptr %i.h, align 2, !tbaa !25
  %.not50 = icmp eq i16 %i.i, 4096
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CrwDecoder17decodeRawInternalEv) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef zeroext i16 @_ZNK8rawspeed9CiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 1) ; 4 uses
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = tail call noundef zeroext i16 @_ZNK8rawspeed9CiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 2) ; 4 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4109.0.insert.ext = zext i16 %i.l to i64
  %.sroa.4109.0.insert.shift = shl nuw nsw i64 %.sroa.4109.0.insert.ext, 32
  %.sroa.0108.0.insert.ext = zext i16 %i.j to i64
  %.sroa.0108.0.insert.insert = or disjoint i64 %.sroa.4109.0.insert.shift, %.sroa.0108.0.insert.ext
  store i64 %.sroa.0108.0.insert.insert, ptr %i.p, align 8
  %i.q = icmp eq i16 %i.j, 0
  %i.r = icmp eq i16 %i.l, 0
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.k, 3
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp ugt i16 %i.j, 4104
  %or.cond3 = or i1 %i.u, %i.t
  %i.v = icmp ugt i16 %i.l, 3048
  %or.cond5 = or i1 %i.v, %or.cond3
  br i1 %or.cond5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = mul nuw nsw i32 %i.m, %i.k               ; 3 uses
  %i.x = and i32 %i.w, 60
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CrwDecoder17decodeRawInternalEv, i32 noundef %i.k, i32 noundef %i.m) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.z = tail call noundef ptr @_ZNK8rawspeed7CiffIFD17getEntryRecursiveENS_7CiffTagE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, i16 noundef zeroext 6197) #27 ; 3 uses
  %.not52 = icmp eq ptr %i.z, null
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !25
  %.not53 = icmp eq i16 %i.ab, 6144
  br i1 %.not53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CrwDecoder17decodeRawInternalEv) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l
  %i.ac = tail call noundef i32 @_ZNK8rawspeed9CiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 0)
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ad, ptr noundef nonnull align 1 dereferenceable(23) @.str.4, i64 23, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  store i8 0, ptr %i.ae, align 1, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !38 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 23)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = tail call i32 @memcmp(ptr noundef %i.am, ptr noundef nonnull %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ao = add i64 %i.aj, -23
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %.19.i.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i.i, %i.ah
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !38 ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 23)
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = tail call i32 @memcmp(ptr noundef nonnull %i.ad, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.n
  %i.ax = sub i64 23, %i.as
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ay = icmp sgt i32 %.0.i.i.i.i.i.i.i, -1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %.sroa.0.0.i.i.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.ay, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 24) #30
  %.sroa.098.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6100.0.copyload = load i32, ptr %.sroa.6100.0..sroa_idx, align 8 ; 7 uses
  %.sroa.10104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10104.0.copyload = load i32, ptr %.sroa.10104.0..sroa_idx, align 8 ; 3 uses
  br i1 %.sroa.0.0.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = zext i32 %.sroa.6100.0.copyload to i64
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = lshr exact i32 %i.w, 2                  ; 3 uses
  %i.ba = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = zext i32 %.sroa.10104.0.copyload to i64 ; 2 uses
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc
  %i.be = zext i32 %.sroa.6100.0.copyload to i64  ; 2 uses
  %.not.i.i.i.i60 = icmp samesign ugt i64 %i.bd, %i.be
  br i1 %.not.i.i.i.i60, label %bb.p, label %_ZN8rawspeed10ByteStream9getStreamEj.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20, !noalias !45
  unreachable

_ZN8rawspeed10ByteStream9getStreamEj.exit:        ; preds = %bb.o
  %i.bf = icmp sgt i32 %.sroa.6100.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i32 %.sroa.10104.0.copyload, %i.az ; 2 uses
  %i.bh = icmp samesign ule i32 %i.bg, %.sroa.6100.0.copyload
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 %i.bb
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZN8rawspeed10ByteStream9getStreamEj.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.be, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.797.0 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ 1, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.595.0 = phi i32 [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.az, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.094.0 = phi ptr [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bi, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.10104.0 = phi i32 [ %.sroa.10104.0.copyload, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bg, %_ZN8rawspeed10ByteStream9getStreamEj.exit ] ; 2 uses
  %i.bj = zext i32 %.sroa.10104.0 to i64
  %i.bk = add nuw nsw i64 %i.bj, 514
  %.not.i.i = icmp samesign ugt i64 %i.bk, %.pre-phi
  br i1 %.not.i.i, label %bb.r, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #20
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.q
  %i.bl = add nuw nsw i32 %.sroa.10104.0, 514     ; 3 uses
  %i.bm = icmp uge i32 %.sroa.6100.0.copyload, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp sgt i32 %.sroa.6100.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bn)
  %5 = sub i32 %.sroa.6100.0.copyload, %i.bl      ; 2 uses
  %i.bo = zext i32 %i.bl to i64
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 %i.bo
  %7 = icmp sgt i32 %5, -1
  tail call void @llvm.assume(i1 %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.n, align 8, !tbaa !53
  store <2 x ptr> %i.bs, ptr %3, align 16, !tbaa !53
  %.not.i.i.i.i64 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i64, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !54
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !54
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.u:                                             ; preds = %bb.s
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.t, %bb.u
  store ptr %.sroa.094.0, ptr %4, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.595.0, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.sroa.797.0, ptr %.sroa.797.0..sroa_idx, align 8
  invoke void @_ZN8rawspeed15CrwDecompressorC1ENS_8RawImageEjNS_10Array1DRefIKhEENS_8OptionalIS4_EE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 %3, i32 noundef %i.ac, ptr nonnull %6, i32 %5, ptr noundef nonnull byval(%"class.rawspeed::Optional.71") align 8 %4)
          to label %bb.v unwind label %bb.az

bb.v:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bz, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !57
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !call_target !58, !inline_history !65
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !call_target !66, !inline_history !65
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i65 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.cc, %bb.z ], [ %i.cm, %bb.aa ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.ab, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !67

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !26
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.co)
          to label %bb.ac unwind label %bb.ba

bb.ac:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void @_ZN8rawspeed15CrwDecompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %bb.ad unwind label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !53
  store <2 x ptr> %i.cq, ptr %0, align 8, !tbaa !53
  %.not.i.i.i.i66 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i66, label %_ZN8rawspeed8RawImageC2ERKS0_.exit68, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i67 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !54
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !54
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit68

bb.ag:                                            ; preds = %bb.ae
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit68

_ZN8rawspeed8RawImageC2ERKS0_.exit68:             ; preds = %bb.ad, %bb.af, %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i76, label %bb.ah

bb.ah:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit68
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i76

_ZNSt6vectorIiSaIiEED2Ev.exit.i76:                ; preds = %bb.ah, %_ZN8rawspeed8RawImageC2ERKS0_.exit68
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i77, label %_ZNSt6vectorItSaItEED2Ev.exit.i.i78, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i76
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !75
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i.i78

_ZNSt6vectorItSaItEED2Ev.exit.i.i78:              ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit.i76
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i1.i.i79 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i1.i.i79, label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i.i78
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !75
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80

_ZNSt6vectorItSaItEED2Ev.exit2.i.i80:             ; preds = %bb.aj, %_ZNSt6vectorItSaItEED2Ev.exit.i.i78
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !79
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #30
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82: ; preds = %bb.ak, %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i1.i.i.i.i83 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i1.i.i.i.i83, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !82
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84:          ; preds = %bb.al, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82
  %i.eg = load ptr, ptr %i.dr, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev.exit86, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !85
  %i.ej = ptrtoint ptr %i.ei to i64
end_hunk_0
