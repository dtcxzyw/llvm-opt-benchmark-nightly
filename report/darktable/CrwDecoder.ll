Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/CrwDecoder?download=true
inline.NumInlined: 453
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed10CrwDecoder17decodeRawInternalEv:bb.a

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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !31
  %i.ae = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !33
  store i64 23, ptr %i.ad, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ae, ptr noundef nonnull align 1 dereferenceable(23) @.str.4, i64 23, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 23, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 23
  store i8 0, ptr %i.ag, align 1, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !37 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 23)
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.ap = call i32 @memcmp(ptr noundef %i.ao, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aq = add i64 %i.al, -23
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %.19.i.i.i.i = select i1 %i.ar, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ar, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %i.as = icmp eq ptr %.19.i.i.i.i, %i.aj
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !37 ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 23)
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = call i32 @memcmp(ptr noundef nonnull %i.ae, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.n
  %i.az = sub i64 23, %i.au
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ba = icmp sgt i32 %.0.i.i.i.i.i.i.i, -1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %.sroa.0.0.i.i.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.ba, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
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
  %i.bb = lshr exact i32 %i.w, 2                  ; 3 uses
  %i.bc = icmp ne i32 %i.w, 0
  call void @llvm.assume(i1 %i.bc)
  %i.bd = zext i32 %.sroa.10104.0.copyload to i64 ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = add nuw nsw i64 %i.bd, %i.be
  %i.bg = zext i32 %.sroa.6100.0.copyload to i64  ; 2 uses
  %.not.i.i.i.i60 = icmp samesign ugt i64 %i.bf, %i.bg
  br i1 %.not.i.i.i.i60, label %bb.p, label %_ZN8rawspeed10ByteStream9getStreamEj.exit

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20, !noalias !46
  unreachable

_ZN8rawspeed10ByteStream9getStreamEj.exit:        ; preds = %bb.o
  %i.bh = icmp sgt i32 %.sroa.6100.0.copyload, -1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i32 %.sroa.10104.0.copyload, %i.bb ; 2 uses
  %i.bj = icmp samesign ule i32 %i.bi, %.sroa.6100.0.copyload
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 %i.bd
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZN8rawspeed10ByteStream9getStreamEj.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bg, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.797.0 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ 1, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.595.0 = phi i32 [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bb, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.094.0 = phi ptr [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bk, %_ZN8rawspeed10ByteStream9getStreamEj.exit ]
  %.sroa.10104.0 = phi i32 [ %.sroa.10104.0.copyload, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.bi, %_ZN8rawspeed10ByteStream9getStreamEj.exit ] ; 2 uses
  %i.bl = zext i32 %.sroa.10104.0 to i64
  %i.bm = add nuw nsw i64 %i.bl, 514
  %.not.i.i = icmp samesign ugt i64 %i.bm, %.pre-phi
  br i1 %.not.i.i, label %bb.r, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #20
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.q
  %i.bn = add nuw nsw i32 %.sroa.10104.0, 514     ; 3 uses
  %i.bo = icmp uge i32 %.sroa.6100.0.copyload, %i.bn
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp sgt i32 %.sroa.6100.0.copyload, -1
  call void @llvm.assume(i1 %i.bp)
  %i.bq = zext i32 %i.bn to i64
  %6 = sub nuw i32 %.sroa.6100.0.copyload, %i.bn
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.n, align 8, !tbaa !54
  store <2 x ptr> %i.bu, ptr %4, align 16, !tbaa !54
  %.not.i.i.i.i64 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i64, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !55
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !55
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.u:                                             ; preds = %bb.s
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.t, %bb.u
  store ptr %.sroa.094.0, ptr %5, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.595.0, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.797.0, ptr %.sroa.797.0..sroa_idx, align 8
  invoke void @_ZN8rawspeed15CrwDecompressorC1ENS_8RawImageEjNS_10Array1DRefIKhEENS_8OptionalIS4_EE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr noundef nonnull align 8 %4, i32 noundef %i.ac, ptr nonnull %7, i32 %6, ptr noundef nonnull byval(%"class.rawspeed::Optional.71") align 8 %5)
          to label %bb.v unwind label %bb.az

bb.v:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !58
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !call_target !59, !inline_history !66
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !call_target !67, !inline_history !66
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i65 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cp, label %bb.ab, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !68

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !26
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.cq)
          to label %bb.ac unwind label %bb.ba

bb.ac:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void @_ZN8rawspeed15CrwDecompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(360) %3)
          to label %bb.ad unwind label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.n, align 8, !tbaa !54
  store <2 x ptr> %i.cs, ptr %0, align 8, !tbaa !54
  %.not.i.i.i.i66 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i66, label %_ZN8rawspeed8RawImageC2ERKS0_.exit68, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i67 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !55
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !55
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit68

bb.ag:                                            ; preds = %bb.ae
  %i.cx = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit68

_ZN8rawspeed8RawImageC2ERKS0_.exit68:             ; preds = %bb.ad, %bb.af, %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i76, label %bb.ah

bb.ah:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit68
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i76

_ZNSt6vectorIiSaIiEED2Ev.exit.i76:                ; preds = %bb.ah, %_ZN8rawspeed8RawImageC2ERKS0_.exit68
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i77, label %_ZNSt6vectorItSaItEED2Ev.exit.i.i78, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i76
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i.i78

_ZNSt6vectorItSaItEED2Ev.exit.i.i78:              ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit.i76
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i1.i.i79 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i1.i.i79, label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i.i78
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !76
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80

_ZNSt6vectorItSaItEED2Ev.exit2.i.i80:             ; preds = %bb.aj, %_ZNSt6vectorItSaItEED2Ev.exit.i.i78
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !80
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #30
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82: ; preds = %bb.ak, %_ZNSt6vectorItSaItEED2Ev.exit2.i.i80
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i1.i.i.i.i83 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i1.i.i.i.i83, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !83
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84:          ; preds = %bb.al, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i82
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev.exit86, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i84
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !86
  %i.el = ptrtoint ptr %i.ek to i64
end_hunk_0
