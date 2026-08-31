Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb:bb.a
.lr.ph65:                                         ; preds = %.lr.ph.i.i.i.i11.preheader, %.lr.ph.i.i.i.i11
  %indvars.iv.i.i.i.i1264 = phi i64 [ %indvars.iv.next.i.i.i.i14, %.lr.ph.i.i.i.i11 ], [ %i.co, %.lr.ph.i.i.i.i11.preheader ]
  %indvars.iv.next.i.i.i.i14 = add nuw nsw i64 %indvars.iv.i.i.i.i1264, 1 ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.i14
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !232 ; 2 uses
  %.not22.i.i.i.i15 = icmp eq i64 %i.cx, 0
  br i1 %.not22.i.i.i.i15, label %.lr.ph.i.i.i.i11, label %.critedge.loopexit.i.i.i.i16, !llvm.loop !678

.critedge.loopexit.i.i.i.i16:                     ; preds = %.lr.ph65
  %i.cy = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i14 to i32
  br label %.critedge.i.i.i.i8

.critedge.i.i.i.i8:                               ; preds = %.critedge.loopexit.i.i.i.i16, %bb.g
  %.016.lcssa.i.i.i.i9 = phi i32 [ %i.cl, %bb.g ], [ %i.cy, %.critedge.loopexit.i.i.i.i16 ]
  %.0.lcssa.i.i.i.i10 = phi i64 [ %i.cv, %bb.g ], [ %i.cx, %.critedge.loopexit.i.i.i.i16 ]
  %i.cz = shl nuw nsw i32 %.016.lcssa.i.i.i.i9, 6
  %i.da = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i10, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit17

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit17: ; preds = %bb.f, %.critedge.i.i.i.i8
  %.118.i.i.i.i6 = phi i32 [ %i.dc, %.critedge.i.i.i.i8 ], [ %i.ck, %bb.f ] ; 3 uses
  store i32 %.118.i.i.i.i6, ptr %i.ac, align 8, !tbaa !676
  %.not34 = icmp eq i32 %.118.i.i.i.i6, 4096
  br i1 %.not34, label %._crit_edge42, label %.lr.ph41, !llvm.loop !680

bb.h:                                             ; preds = %bb.b, %._crit_edge42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !521
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !375
  store i8 0, ptr %i.b, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !371    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !185
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !185
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !324, !noalias !681
  %i.c = add nsw i32 %i.b, 7                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !324, !noalias !681
  %i.f = add nsw i32 %i.e, 7                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !324, !noalias !681 ; 3 uses
  %i.i = add nsw i32 %i.h, 7                      ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.f to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.09.sroa.0.0.extract.trunc = trunc i64 %.sroa.09.0.copyload to i32 ; 2 uses
  %.sroa.09.sroa.10.0.extract.shift = lshr i64 %.sroa.09.0.copyload, 32
  %.sroa.09.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.09.sroa.10.0.extract.shift to i32 ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !324
  %i.k = icmp sgt i32 %i.j, %.sroa.09.sroa.0.0.extract.trunc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, %.sroa.09.sroa.10.0.extract.trunc
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.h, %i.p
  %or.cond55 = select i1 %or.cond, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %i.s, %i.c
  %or.cond58 = select i1 %or.cond55, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.v, %i.f
  %or.cond95 = select i1 %or.cond58, i1 true, i1 %i.w
  br i1 %or.cond95, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !324
  %.not = icmp slt i32 %i.y, %i.i
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.h

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !686 ; 2 uses
  %.not59 = icmp eq i32 %i.aa, 512
  br i1 %.not59, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  br i1 %2, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !689 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %.sroa.09.sroa.10.066 = phi i32 [ 2147483647, %.lr.ph ], [ %i.aj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.09.sroa.0.065 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ai, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.16.064 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ak, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.23.063 = phi i64 [ -9223372034707292160, %.lr.ph ], [ %.sroa.23.16.insert.insert, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ] ; 2 uses
  %.sroa.37.062 = phi i32 [ -2147483648, %.lr.ph ], [ %i.an, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %i.ad = phi i32 [ %i.aa, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ] ; 4 uses
  %i.ae = lshr i32 %i.ad, 6                       ; 2 uses
  %i.af = lshr i32 %i.ad, 3
  %i.ag = and i32 %i.af, 7                        ; 2 uses
  %i.ah = and i32 %i.ad, 7                        ; 2 uses
  %i.ai = call i32 @llvm.smin.i32(i32 %i.ae, i32 %.sroa.09.sroa.0.065) ; 2 uses
  %i.aj = call i32 @llvm.smin.i32(i32 %i.ag, i32 %.sroa.09.sroa.10.066) ; 2 uses
  %i.ak = call i32 @llvm.smin.i32(i32 %i.ah, i32 %.sroa.16.064) ; 2 uses
  %.sroa.23.12.extract.trunc25 = trunc i64 %.sroa.23.063 to i32
  %i.al = call i32 @llvm.smax.i32(i32 %.sroa.23.12.extract.trunc25, i32 %i.ae) ; 2 uses
  %.sroa.23.12.insert.ext = zext nneg i32 %i.al to i64
  %.sroa.23.16.extract.shift35 = lshr i64 %.sroa.23.063, 32
  %.sroa.23.16.extract.trunc36 = trunc nuw i64 %.sroa.23.16.extract.shift35 to i32
  %i.am = call i32 @llvm.smax.i32(i32 %.sroa.23.16.extract.trunc36, i32 %i.ag) ; 2 uses
  %.sroa.23.16.insert.ext = zext nneg i32 %i.am to i64
  %.sroa.23.16.insert.shift = shl nuw nsw i64 %.sroa.23.16.insert.ext, 32
  %.sroa.23.16.insert.insert = or disjoint i64 %.sroa.23.16.insert.shift, %.sroa.23.12.insert.ext
  %i.an = call i32 @llvm.smax.i32(i32 %.sroa.37.062, i32 %i.ah) ; 2 uses
  %i.ao = add i32 %i.ad, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 511
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !232 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.e
  %exitcond.not.i.i.i.i109.a = icmp eq i32 %i.ap, 7
  br i1 %exitcond.not.i.i.i.i109.a, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph111
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111, !llvm.loop !690

.lr.ph111:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i110 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.as, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i110, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !232 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !690

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph111
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.e
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ap, %bb.e ], [ %i.bc, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bb, %.critedge.loopexit.i.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.be = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.d, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bg, %.critedge.i.i.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  %.not60 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not60, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %bb.c, !llvm.loop !691

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread: ; preds = %bb.c, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !324 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.ai
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !324 ; 2 uses
  %i.bk = add nsw i32 %i.bj, %i.aj
  %i.bl = load i32, ptr %i.g, align 8, !tbaa !324 ; 2 uses
  %i.bm = add nsw i32 %i.bl, %i.ak
  %i.bn = add nsw i32 %i.bh, %i.al
  %.sroa.23.12.insert.ext29 = zext i32 %i.bn to i64
  %i.bo = add nsw i32 %i.bj, %i.am
  %.sroa.23.16.insert.ext41 = zext i32 %i.bo to i64
  %.sroa.23.16.insert.shift42 = shl nuw i64 %.sroa.23.16.insert.ext41, 32
  %.sroa.23.16.insert.insert44 = or disjoint i64 %.sroa.23.16.insert.shift42, %.sroa.23.12.insert.ext29
  %i.bp = add nsw i32 %i.bl, %i.an
  br label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, %bb.b
  %.sroa.37.1 = phi i32 [ %i.bp, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %i.i, %bb.b ]
  %.sroa.23.1 = phi i64 [ %.sroa.23.16.insert.insert44, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.16.1 = phi i32 [ %i.bm, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %i.h, %bb.b ]
  %.sroa.09.sroa.0.1 = phi i32 [ %i.bi, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.0.0.extract.trunc, %bb.b ]
  %.sroa.09.sroa.10.1 = phi i32 [ %i.bk, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.10.0.extract.trunc, %bb.b ]
  %i.bq = load i32, ptr %1, align 4, !tbaa !324
  %i.br = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.0.1, i32 %i.bq)
  store i32 %i.br, ptr %1, align 4, !tbaa !324
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !324
  %i.bt = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.10.1, i32 %i.bs)
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !324
  %i.bu = load i32, ptr %i.o, align 4, !tbaa !324
  %i.bv = call i32 @llvm.smin.i32(i32 %.sroa.16.1, i32 %i.bu)
  store i32 %i.bv, ptr %i.o, align 4, !tbaa !324
  %i.bw = load i32, ptr %i.r, align 4, !tbaa !324
  %.sroa.23.12.extract.trunc33 = trunc i64 %.sroa.23.1 to i32
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 %.sroa.23.12.extract.trunc33)
  store i32 %i.bx, ptr %i.r, align 4, !tbaa !324
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !324
  %.sroa.23.16.extract.shift46 = lshr i64 %.sroa.23.1, 32
  %.sroa.23.16.extract.trunc47 = trunc nuw i64 %.sroa.23.16.extract.shift46 to i32
  %i.ca = call i32 @llvm.smax.i32(i32 %i.bz, i32 %.sroa.23.16.extract.trunc47)
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !324
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !324
  %i.cd = call i32 @llvm.smax.i32(i32 %i.cc, i32 %.sroa.37.1)
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !232
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !232
  %.not.1 = icmp eq i64 %i.c, 0
  br i1 %.not.1, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !232
  %.not.2 = icmp eq i64 %i.e, 0
  br i1 %.not.2, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !232
  %.not.3 = icmp eq i64 %i.g, 0
  br i1 %.not.3, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !232
  %.not.4 = icmp eq i64 %i.i, 0
  br i1 %.not.4, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !232
  %.not.5 = icmp eq i64 %i.k, 0
  br i1 %.not.5, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !232
  %.not.6 = icmp eq i64 %i.m, 0
  br i1 %.not.6, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !232
  %.not.7 = icmp eq i64 %i.o, 0
  br i1 %.not.7, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !232
  %.not.8 = icmp eq i64 %i.q, 0
  br i1 %.not.8, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !232
  %.not.9 = icmp eq i64 %i.s, 0
  br i1 %.not.9, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !232
  %.not.10 = icmp eq i64 %i.u, 0
  br i1 %.not.10, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !232
  %.not.11 = icmp eq i64 %i.w, 0
  br i1 %.not.11, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !232
  %.not.12 = icmp eq i64 %i.y, 0
  br i1 %.not.12, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !232
  %.not.13 = icmp eq i64 %i.aa, 0
  br i1 %.not.13, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !232
  %.not.14 = icmp eq i64 %i.ac, 0
  br i1 %.not.14, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !232
  %.not.15 = icmp eq i64 %i.ae, 0
  br i1 %.not.15, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !232
  %.not.16 = icmp eq i64 %i.ag, 0
  br i1 %.not.16, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !232
  %.not.17 = icmp eq i64 %i.ai, 0
  br i1 %.not.17, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !232
  %.not.18 = icmp eq i64 %i.ak, 0
  br i1 %.not.18, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !232
  %.not.19 = icmp eq i64 %i.am, 0
  br i1 %.not.19, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !232
  %.not.20 = icmp eq i64 %i.ao, 0
  br i1 %.not.20, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !232
  %.not.21 = icmp eq i64 %i.aq, 0
  br i1 %.not.21, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !232
  %.not.22 = icmp eq i64 %i.as, 0
  br i1 %.not.22, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !232
  %.not.23 = icmp eq i64 %i.au, 0
  br i1 %.not.23, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb:bb.a
.lr.ph65:                                         ; preds = %.lr.ph.i.i.i.i11.preheader, %.lr.ph.i.i.i.i11
  %indvars.iv.i.i.i.i1264 = phi i64 [ %indvars.iv.next.i.i.i.i14, %.lr.ph.i.i.i.i11 ], [ %i.co, %.lr.ph.i.i.i.i11.preheader ]
  %indvars.iv.next.i.i.i.i14 = add nuw nsw i64 %indvars.iv.i.i.i.i1264, 1 ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.i14
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !232 ; 2 uses
  %.not22.i.i.i.i15 = icmp eq i64 %i.cx, 0
  br i1 %.not22.i.i.i.i15, label %.lr.ph.i.i.i.i11, label %.critedge.loopexit.i.i.i.i16, !llvm.loop !678

.critedge.loopexit.i.i.i.i16:                     ; preds = %.lr.ph65
  %i.cy = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i14 to i32
  br label %.critedge.i.i.i.i8

.critedge.i.i.i.i8:                               ; preds = %.critedge.loopexit.i.i.i.i16, %bb.g
  %.016.lcssa.i.i.i.i9 = phi i32 [ %i.cl, %bb.g ], [ %i.cy, %.critedge.loopexit.i.i.i.i16 ]
  %.0.lcssa.i.i.i.i10 = phi i64 [ %i.cv, %bb.g ], [ %i.cx, %.critedge.loopexit.i.i.i.i16 ]
  %i.cz = shl nuw nsw i32 %.016.lcssa.i.i.i.i9, 6
  %i.da = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i10, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit17

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit17: ; preds = %bb.f, %.critedge.i.i.i.i8
  %.118.i.i.i.i6 = phi i32 [ %i.dc, %.critedge.i.i.i.i8 ], [ %i.ck, %bb.f ] ; 3 uses
  store i32 %.118.i.i.i.i6, ptr %i.ac, align 8, !tbaa !676
  %.not34 = icmp eq i32 %.118.i.i.i.i6, 4096
  br i1 %.not34, label %._crit_edge42, label %.lr.ph41, !llvm.loop !972

bb.h:                                             ; preds = %bb.b, %._crit_edge42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !951    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !521
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !375
  store i8 0, ptr %i.b, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !371    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !185
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !185
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !324, !noalias !973
  %i.c = add nsw i32 %i.b, 7                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !324, !noalias !973
  %i.f = add nsw i32 %i.e, 7                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !324, !noalias !973 ; 3 uses
  %i.i = add nsw i32 %i.h, 7                      ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.f to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.09.sroa.0.0.extract.trunc = trunc i64 %.sroa.09.0.copyload to i32 ; 2 uses
  %.sroa.09.sroa.10.0.extract.shift = lshr i64 %.sroa.09.0.copyload, 32
  %.sroa.09.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.09.sroa.10.0.extract.shift to i32 ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !324
  %i.k = icmp sgt i32 %i.j, %.sroa.09.sroa.0.0.extract.trunc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, %.sroa.09.sroa.10.0.extract.trunc
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.h, %i.p
  %or.cond55 = select i1 %or.cond, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %i.s, %i.c
  %or.cond58 = select i1 %or.cond55, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.v, %i.f
  %or.cond95 = select i1 %or.cond58, i1 true, i1 %i.w
  br i1 %or.cond95, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !324
  %.not = icmp slt i32 %i.y, %i.i
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.h

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !686 ; 2 uses
  %.not59 = icmp eq i32 %i.aa, 512
  br i1 %.not59, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  br i1 %2, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !689 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %.sroa.09.sroa.10.066 = phi i32 [ 2147483647, %.lr.ph ], [ %i.aj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ]
  %.sroa.09.sroa.0.065 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ai, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ]
  %.sroa.16.064 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ak, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ]
  %.sroa.23.063 = phi i64 [ -9223372034707292160, %.lr.ph ], [ %.sroa.23.16.insert.insert, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ] ; 2 uses
  %.sroa.37.062 = phi i32 [ -2147483648, %.lr.ph ], [ %i.an, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ]
  %i.ad = phi i32 [ %i.aa, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ] ; 4 uses
  %i.ae = lshr i32 %i.ad, 6                       ; 2 uses
  %i.af = lshr i32 %i.ad, 3
  %i.ag = and i32 %i.af, 7                        ; 2 uses
  %i.ah = and i32 %i.ad, 7                        ; 2 uses
  %i.ai = call i32 @llvm.smin.i32(i32 %i.ae, i32 %.sroa.09.sroa.0.065) ; 2 uses
  %i.aj = call i32 @llvm.smin.i32(i32 %i.ag, i32 %.sroa.09.sroa.10.066) ; 2 uses
  %i.ak = call i32 @llvm.smin.i32(i32 %i.ah, i32 %.sroa.16.064) ; 2 uses
  %.sroa.23.12.extract.trunc25 = trunc i64 %.sroa.23.063 to i32
  %i.al = call i32 @llvm.smax.i32(i32 %.sroa.23.12.extract.trunc25, i32 %i.ae) ; 2 uses
  %.sroa.23.12.insert.ext = zext nneg i32 %i.al to i64
  %.sroa.23.16.extract.shift35 = lshr i64 %.sroa.23.063, 32
  %.sroa.23.16.extract.trunc36 = trunc nuw i64 %.sroa.23.16.extract.shift35 to i32
  %i.am = call i32 @llvm.smax.i32(i32 %.sroa.23.16.extract.trunc36, i32 %i.ag) ; 2 uses
  %.sroa.23.16.insert.ext = zext nneg i32 %i.am to i64
  %.sroa.23.16.insert.shift = shl nuw nsw i64 %.sroa.23.16.insert.ext, 32
  %.sroa.23.16.insert.insert = or disjoint i64 %.sroa.23.16.insert.shift, %.sroa.23.12.insert.ext
  %i.an = call i32 @llvm.smax.i32(i32 %.sroa.37.062, i32 %i.ah) ; 2 uses
  %i.ao = add i32 %i.ad, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 511
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !232 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.e
  %exitcond.not.i.i.i.i109.a = icmp eq i32 %i.ap, 7
  br i1 %exitcond.not.i.i.i.i109.a, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread, label %.lr.ph111

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph111
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread, label %.lr.ph111, !llvm.loop !690

.lr.ph111:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i110 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.as, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i110, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !232 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !690

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph111
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.e
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ap, %bb.e ], [ %i.bc, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bb, %.critedge.loopexit.i.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.be = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.d, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bg, %.critedge.i.i.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  %.not60 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not60, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread, label %bb.c, !llvm.loop !978

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread: ; preds = %bb.c, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !324 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.ai
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !324 ; 2 uses
  %i.bk = add nsw i32 %i.bj, %i.aj
  %i.bl = load i32, ptr %i.g, align 8, !tbaa !324 ; 2 uses
  %i.bm = add nsw i32 %i.bl, %i.ak
  %i.bn = add nsw i32 %i.bh, %i.al
  %.sroa.23.12.insert.ext29 = zext i32 %i.bn to i64
  %i.bo = add nsw i32 %i.bj, %i.am
  %.sroa.23.16.insert.ext41 = zext i32 %i.bo to i64
  %.sroa.23.16.insert.shift42 = shl nuw i64 %.sroa.23.16.insert.ext41, 32
  %.sroa.23.16.insert.insert44 = or disjoint i64 %.sroa.23.16.insert.shift42, %.sroa.23.12.insert.ext29
  %i.bp = add nsw i32 %i.bl, %i.an
  br label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread, %bb.b
  %.sroa.37.1 = phi i32 [ %i.bp, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread ], [ %i.i, %bb.b ]
  %.sroa.23.1 = phi i64 [ %.sroa.23.16.insert.insert44, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread ], [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.16.1 = phi i32 [ %i.bm, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread ], [ %i.h, %bb.b ]
  %.sroa.09.sroa.0.1 = phi i32 [ %i.bi, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.0.0.extract.trunc, %bb.b ]
  %.sroa.09.sroa.10.1 = phi i32 [ %i.bk, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.10.0.extract.trunc, %bb.b ]
  %i.bq = load i32, ptr %1, align 4, !tbaa !324
  %i.br = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.0.1, i32 %i.bq)
  store i32 %i.br, ptr %1, align 4, !tbaa !324
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !324
  %i.bt = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.10.1, i32 %i.bs)
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !324
  %i.bu = load i32, ptr %i.o, align 4, !tbaa !324
  %i.bv = call i32 @llvm.smin.i32(i32 %.sroa.16.1, i32 %i.bu)
  store i32 %i.bv, ptr %i.o, align 4, !tbaa !324
  %i.bw = load i32, ptr %i.r, align 4, !tbaa !324
  %.sroa.23.12.extract.trunc33 = trunc i64 %.sroa.23.1 to i32
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 %.sroa.23.12.extract.trunc33)
  store i32 %i.bx, ptr %i.r, align 4, !tbaa !324
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !324
  %.sroa.23.16.extract.shift46 = lshr i64 %.sroa.23.1, 32
  %.sroa.23.16.extract.trunc47 = trunc nuw i64 %.sroa.23.16.extract.shift46 to i32
  %i.ca = call i32 @llvm.smax.i32(i32 %i.bz, i32 %.sroa.23.16.extract.trunc47)
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !324
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !324
  %i.cd = call i32 @llvm.smax.i32(i32 %i.cc, i32 %.sroa.37.1)
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !966    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !521
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !375
  store i8 0, ptr %i.b, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !371    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !185
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !185
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind noalias writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %.critedge.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !232  ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !232  ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !232  ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i, label %bb.e, label %.critedge.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !232  ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i, label %bb.f, label %.critedge.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !232  ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i, label %bb.g, label %.critedge.thread.i.i
end_hunk_1
