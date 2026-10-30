Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_attribute_encoders_controller?download=true
inline.NumInlined: 624
inline.NumDeleted: 375
begin_hunk_0_@_ZN5draco37SequentialAttributeEncodersController24CreateSequentialEncodersEv:bb.a
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = and i64 %i.bx, 4294967295
  %.not17 = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %.not17, label %bb.e, label %_ZNSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS1_EED2Ev.exit._crit_edge, !llvm.loop !75

_ZNSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS1_EED2Ev.exit._crit_edge: ; preds = %bb.i, %_ZNSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit
  %.lcssa = phi i1 [ true, %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit ], [ %.not.i14.not.not, %_ZNSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS1_EED2Ev.exit ], [ %.not.i14.not.not, %bb.i ]
  ret i1 %.lcssa
}

declare void @_ZN5draco26SequentialAttributeEncoder19MarkParentAttributeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5draco37SequentialAttributeEncodersController23CreateSequentialEncoderEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.16") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23   ; 2 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = sext i32 %i.g to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !100
  switch i32 %i.r, label %bb.m [
    i32 2, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 6, label %bb.b
    i32 5, label %bb.b
    i32 9, label %.noexc.i
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14 ; 3 uses
  invoke void @_ZN5draco33SequentialIntegerAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.s)
          to label %bb.o unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 80) #15
  br label %bb.p

.noexc.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 17, ptr %i.a, align 8, !tbaa !35
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %3, align 8, !tbaa !40
  %i.y = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) @.str, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !41
  %i.aa = load ptr, ptr %3, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ac = invoke noundef i32 @_ZNK5draco12DracoOptionsIiE15GetAttributeIntERKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !30
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.ad, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !103
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.al = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #14 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.al, i8 0, i64 96, i1 false)
  invoke void @_ZN5draco33SequentialIntegerAttributeEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5draco32SequentialNormalAttributeEncoderE, i64 16), ptr %i.al, align 16, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco28AttributeOctahedronTransformE, i64 16), ptr %i.am, align 16, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !106
  br label %bb.o

bb.h:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.as = load i64, ptr %i.w, align 8, !tbaa !30
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 96) #15
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.av = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #14 ; 3 uses
  invoke void @_ZN5draco38SequentialQuantizationAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.av)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 128) #15
  br label %bb.p

bb.m:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #14 ; 3 uses
  invoke void @_ZN5draco26SequentialAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ax)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 72) #15
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.b, %bb.g
  %.sink = phi ptr [ %i.av, %bb.k ], [ %i.s, %bb.b ], [ %i.al, %bb.g ], [ %i.ax, %bb.m ]
  store ptr %.sink, ptr %0, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret void

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.t, %bb.c ], [ %i.au, %bb.j ], [ %i.aw, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN5draco33SequentialIntegerAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5draco12DracoOptionsIiE15GetAttributeIntERKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !23     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN5draco7OptionsEESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %bb.b, !llvm.loop !107

_ZNKSt8_Rb_treeIiSt4pairIKiN5draco7OptionsEESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.h, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread, label %_ZNKSt3mapIiN5draco7OptionsESt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i

_ZNKSt3mapIiN5draco7OptionsESt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN5draco7OptionsEESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %i.k = icmp slt i32 %i.d, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  br i1 %i.k, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.a

_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.a: ; preds = %_ZNKSt3mapIiN5draco7OptionsESt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i11 = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i.i11, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 4 uses
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i12
  %.012.i.i.i.i13 = phi ptr [ %i.n, %.lr.ph.i.i.i.i12 ], [ %.1.i.i.i.i18, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i14 = phi ptr [ %i.o, %.lr.ph.i.i.i.i12 ], [ %.19.i.i.i.i15, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i13, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i13, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = tail call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #13 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.y = sub i64 %i.t, %i.q
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i15 = select i1 %i.z, ptr %.0811.i.i.i.i14, ptr %.012.i.i.i.i13 ; 4 uses
  %.1.in.v.i.i.i.i16 = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i13, i64 %.1.in.v.i.i.i.i16
  %.1.i.i.i.i18 = load ptr, ptr %.1.in.i.i.i.i17, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %.1.i.i.i.i18, null
  br i1 %.not.i.i.i.i19, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.c, !llvm.loop !108

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i.i15, %i.o
  br i1 %i.aa, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i15, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.q) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i15, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #13 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.ah = sub i64 %i.q, %i.ac
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ai = icmp sgt i32 %.0.i.i.i.i.i.i, -1
  br i1 %i.ai, label %bb.e, label %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread

_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.a, %_ZNKSt3mapIiN5draco7OptionsESt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i, %bb.a, %_ZNKSt8_Rb_treeIiSt4pairIKiN5draco7OptionsEESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread
  %.sink = phi ptr [ %0, %_ZNK5draco12DracoOptionsIiE20FindAttributeOptionsERKi.exit.thread ], [ %i.l, %_ZNK5draco7Options11IsOptionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.aj = tail call noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48) %.sink, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN5draco38SequentialQuantizationAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

declare void @_ZN5draco26SequentialAttributeEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco37SequentialAttributeEncodersControllerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5draco37SequentialAttributeEncodersControllerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco15PointsSequencerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco15PointsSequencerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco15PointsSequencerEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !115
  br label %_ZNSt10unique_ptrIN5draco15PointsSequencerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco15PointsSequencerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5draco15PointsSequencerEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5draco15PointsSequencerESt14default_deleteIS1_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5draco15PointsSequencerESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.s) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EED2Ev.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5draco26SequentialAttributeEncoderEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5draco26SequentialAttributeEncoderEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(72) %i.aa) #13, !inline_history !116
  br label %_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5draco26SequentialAttributeEncoderEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ae, %i.z
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.w, align 8, !tbaa !26
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #15
  br label %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco17AttributesEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !121
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN5draco26SequentialAttributeEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i, label %_ZN5draco17AttributesEncoderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !121
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #15
  br label %_ZN5draco17AttributesEncoderD2Ev.exit

_ZN5draco17AttributesEncoderD2Ev.exit:            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco37SequentialAttributeEncodersControllerD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5draco37SequentialAttributeEncodersControllerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i8 @_ZNK5draco37SequentialAttributeEncodersController11GetUniqueIdEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5draco37SequentialAttributeEncodersController19NumParentAttributesEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %.not.i = icmp slt i32 %1, %i.i
  br i1 %.not.i, label %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit, label %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit.thread

_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit: ; preds = %bb.a
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = zext nneg i32 %i.l to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32
  br label %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit.thread

_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit.thread: ; preds = %bb.a, %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit, %bb.b
  %.0 = phi i32 [ %i.aa, %bb.b ], [ 0, %_ZNK5draco17AttributesEncoder27GetLocalIdForPointAttributeEi.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5draco37SequentialAttributeEncodersController20GetParentAttributeIdEii(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
