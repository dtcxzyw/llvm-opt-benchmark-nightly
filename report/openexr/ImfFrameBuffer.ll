Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfFrameBuffer?download=true
inline.NumInlined: 249
inline.NumDeleted: 123
begin_hunk_0_@_ZN7Imf_3_45Slice4MakeENS_9PixelTypeEPKvRKN9Imath_3_24Vec2IiEEllmmiidbb:bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.d = call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.f, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ 4, %bb.c ], [ 2, %bb.d ], [ %6, %bb.a ] ; 3 uses
  %i.g = icmp eq i64 %7, 0
  %i.h = sext i32 %8 to i64                       ; 2 uses
  br i1 %i.g, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.i = sdiv i64 %4, %i.h
  %i.j = mul i64 %i.i, %.0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %.027 = phi i64 [ %i.j, %bb.k ], [ %7, %bb.j ]  ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = load i32, ptr %3, align 4, !tbaa !42
  %i.m = sext i32 %i.l to i64
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  %i.q = sext i32 %i.p to i64
  %i.r = sext i32 %9 to i64
  %i.s = sdiv i64 %i.q, %i.r
  %.neg = mul i64 %i.n, %.0
  %.neg33 = mul i64 %i.s, %.027
  %reass.add = add i64 %.neg33, %.neg
  %i.t = sub i64 %i.k, %reass.add
  %i.u = inttoptr i64 %i.t to ptr
  tail call void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %0, i32 noundef %1, ptr noundef %i.u, i64 noundef %.0, i64 noundef %.027, i32 noundef %8, i32 noundef %9, double noundef %10, i1 noundef zeroext %11, i1 noundef zeroext %12)
  ret void

bb.l:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_Z13iex_debugTrapv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_46ArgExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Slice4MakeENS_9PixelTypeEPKvRKN9Imath_3_23BoxINS4_4Vec2IiEEEEmmiidbb(ptr dead_on_unwind noalias writable sret(%"struct.Imf_3_4::Slice") align 8 %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, double noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %3, align 4, !tbaa !46
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.c, 1
  %i.g = sub nsw i64 %i.f, %i.e
  tail call void @_ZN7Imf_3_45Slice4MakeENS_9PixelTypeEPKvRKN9Imath_3_24Vec2IiEEllmmiidbb(ptr dead_on_unwind writable sret(%"struct.Imf_3_4::Slice") align 8 %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef %i.g, i64 poison, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, double noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.3", align 1      ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.e) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %6, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 255) #19 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 255
  store i8 0, ptr %i.i, align 1, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.m, ptr noundef nonnull align 1 dereferenceable(256) %6) #21
  %i.o = icmp slt i32 %i.n, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.p, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %6, ptr noundef nonnull align 1 dereferenceable(256) %i.q) #21
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, %bb.g
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %6, ptr %3, align 8, !tbaa !26, !alias.scope !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.t = call ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit: ; preds = %bb.h, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.t, %.critedge.i ], [ %.19.i.i.i.i, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.u, ptr noundef nonnull align 8 dereferenceable(50) %2, i64 50, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_411FrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  tail call void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(50) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(50) ptr @_ZN7Imf_3_411FrameBufferixEPKc(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 255) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.h = icmp slt i32 %i.g, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread: ; preds = %bb.a, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.b

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.j) #21
  %i.l = icmp slt i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.2, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.q = call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 288
  ret ptr %i.t

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_411FrameBufferixEPKc(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 255) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.h = icmp slt i32 %i.g, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit

_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread: ; preds = %bb.a, %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.b

_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.j) #21
  %i.l = icmp slt i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.2, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.q = call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #19
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZN7Imf_3_411FrameBuffer4findEPKc:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.h = icmp slt i32 %i.g, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.j) #21
  %i.l = icmp slt i32 %i.k, 0
  %spec.select.i.i = select i1 %i.l, ptr %i.e, ptr %.19.i.i.i
  br label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %spec.select.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @_ZNK7Imf_3_411FrameBuffer4findEPKc(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 255) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.h = icmp slt i32 %i.g, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.j) #21
  %i.l = icmp slt i32 %i.k, 0
  %spec.select.i.i = select i1 %i.l, ptr %i.e, ptr %.19.i.i.i
  br label %_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit

_ZNKSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %bb.a, %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %spec.select.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @_ZN7Imf_3_411FrameBuffer4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull readonly dereferenceable(1) %i.a, i64 noundef 255) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %_ZN7Imf_3_411FrameBuffer4findEPKc.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.i = icmp slt i32 %i.h, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %_ZN7Imf_3_411FrameBuffer4findEPKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.k) #21
  %i.m = icmp slt i32 %i.l, 0
  %spec.select.i.i.i = select i1 %i.m, ptr %i.f, ptr %.19.i.i.i.i
  br label %_ZN7Imf_3_411FrameBuffer4findEPKc.exit

_ZN7Imf_3_411FrameBuffer4findEPKc.exit:           ; preds = %bb.a, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.f, %bb.a ], [ %i.f, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @_ZNK7Imf_3_411FrameBuffer4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull readonly dereferenceable(1) %i.a, i64 noundef 255) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %_ZNK7Imf_3_411FrameBuffer4findEPKc.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.i = icmp slt i32 %i.h, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %_ZNK7Imf_3_411FrameBuffer4findEPKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.k) #21
  %i.m = icmp slt i32 %i.l, 0
  %spec.select.i.i.i = select i1 %i.m, ptr %i.f, ptr %.19.i.i.i.i
  br label %_ZNK7Imf_3_411FrameBuffer4findEPKc.exit

_ZNK7Imf_3_411FrameBuffer4findEPKc.exit:          ; preds = %bb.a, %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.f, %bb.a ], [ %i.f, %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #23 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !26
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef nonnull align 1 dereferenceable(256) %i.d, i64 256, i1 false), !tbaa.struct !60
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.e, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEERSB_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 344) #24
  invoke void @__cxa_rethrow() #20
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEERSB_DpOT_.exit: ; preds = %bb.a
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(256) %i.b)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEERSB_DpOT_.exit
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) %i.q) #21
  %i.s = icmp slt i32 %i.r, 0
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.t = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !31
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEERSB_DpOT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 344) #24
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 344) #24
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.i
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.m, %bb.i ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(256) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.l = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.k) #21
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %.in.v.i = select i1 %i.m, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.m, label %._crit_edge.thread.i, label %bb.f

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq ptr %.019.lcssa29.i, %i.o
  br i1 %i.p, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.e ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.q, %bb.e ], [ %.02024.i, %._crit_edge.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.s = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.r, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.t = icmp slt i32 %i.s, 0                     ; 2 uses
  %spec.select.i = select i1 %i.t, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.t, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.u) #21
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 4 uses
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  %spec.select = select i1 %i.ag, ptr null, ptr %1
  %spec.select71 = select i1 %i.ag, ptr %i.aa, ptr %1
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.k, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.k ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.ai) #21
  %i.ak = icmp slt i32 %i.aj, 0                   ; 2 uses
  %.in.v.i14 = select i1 %i.ak, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !23 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !61

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.ak, label %._crit_edge.thread.i27, label %bb.m

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.k
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.k ] ; 4 uses
  %i.al = icmp eq ptr %.019.lcssa29.i28, %i.y
  br i1 %i.al, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i27
  %i.am = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i18
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.l ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.am, %bb.l ], [ %.02024.i13, %._crit_edge.i18 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i20, i64 32
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.an, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.ap = icmp slt i32 %i.ao, 0                   ; 2 uses
  %spec.select.i21 = select i1 %i.ap, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ap, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

bb.n:                                             ; preds = %bb.g
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.u, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = icmp eq ptr %i.at, %1
  br i1 %i.au, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.aw) #21
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %spec.select72 = select i1 %i.bb, ptr null, ptr %i.av
  %spec.select73 = select i1 %i.bb, ptr %1, ptr %i.av
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.r, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.r ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.be = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.bd) #21
  %i.bf = icmp slt i32 %i.be, 0                   ; 2 uses
  %.in.v.i34 = select i1 %i.bf, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !23 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !61

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bf, label %._crit_edge.thread.i47, label %bb.t

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.r
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.r ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp eq ptr %.019.lcssa29.i48, %i.bh
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i47
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i38
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.s ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bj, %bb.s ], [ %.02024.i33, %._crit_edge.i38 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i40, i64 32
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.bk, ptr noundef nonnull align 1 dereferenceable(256) %2) #21
  %i.bm = icmp slt i32 %i.bl, 0                   ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.t, %._crit_edge.thread.i47, %bb.m, %._crit_edge.thread.i27, %bb.f, %._crit_edge.thread.i, %bb.q, %bb.j, %bb.n, %bb.o, %bb.h, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.o ], [ %spec.select, %bb.j ], [ null, %bb.c ], [ %spec.select72, %bb.q ], [ null, %._crit_edge.thread.i ], [ %i.y, %bb.h ], [ %1, %bb.n ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.f ], [ %spec.select.i21, %bb.m ], [ %spec.select.i41, %bb.t ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.at, %bb.o ], [ %spec.select71, %bb.j ], [ %i.f, %bb.c ], [ %spec.select73, %bb.q ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.y, %bb.h ], [ null, %bb.n ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.f ], [ %spec.select21.i22, %bb.m ], [ %spec.select21.i42, %bb.t ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTSN7Imf_3_49PixelTypeE", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !7, i64 0, !7, i64 4}
!17 = !{!6, !6, i64 0}
!18 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!20 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!21 = !{!"_ZTSSt15_Rb_tree_header", !20, i64 0, !13, i64 32}
!22 = !{!21, !19, i64 8}
!23 = !{!19, !19, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTSN7Imf_3_44NameE", !11, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !13, i64 8, !6, i64 16}
!29 = !{!28, !12, i64 0}
!30 = !{!21, !19, i64 16}
!31 = !{!21, !13, i64 32}
!32 = !{!"_ZTSN7Imf_3_45SliceE", !10, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !7, i64 36, !14, i64 40, !15, i64 48, !15, i64 49}
!33 = !{!32, !10, i64 0}
!34 = !{!32, !12, i64 8}
!35 = !{!32, !13, i64 16}
!36 = !{!32, !13, i64 24}
!37 = !{!32, !7, i64 32}
!38 = !{!32, !7, i64 36}
!39 = !{!32, !14, i64 40}
!40 = !{!32, !15, i64 48}
!41 = !{!32, !15, i64 49}
!42 = !{!16, !7, i64 0}
!43 = !{!16, !7, i64 4}
!44 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !16, i64 0, !16, i64 8}
!45 = !{!44, !7, i64 8}
!46 = !{!44, !7, i64 0}
!50 = !{!10, !10, i64 0}
!51 = !{!12, !12, i64 0}
!52 = !{!13, !13, i64 0}
!53 = !{!7, !7, i64 0}
!54 = !{!14, !14, i64 0}
!55 = !{!15, !15, i64 0}
!56 = !{i64 0, i64 4, !50, i64 8, i64 8, !51, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 4, !53, i64 36, i64 4, !53, i64 40, i64 8, !54, i64 48, i64 1, !55, i64 49, i64 1, !55}
!57 = distinct !{!57, i1 false, !"_ZSt16forward_as_tupleIJN7Imf_3_44NameEEESt5tupleIJDpOT_EES5_"}
!58 = distinct !{!58, !57, !"_ZSt16forward_as_tupleIJN7Imf_3_44NameEEESt5tupleIJDpOT_EES5_: argument 0"}
!59 = !{!58}
!60 = !{i64 0, i64 256, !17}
!61 = distinct !{!61, !24}
!62 = !{!20, !19, i64 24}
end_hunk_1
