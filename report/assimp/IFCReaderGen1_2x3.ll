inline.NumInlined: 30568
inline.NumDeleted: 15922
begin_hunk_0_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5554", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2300, !noalias !2297
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2300, !noalias !2297
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2297, !noalias !2300
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2297, !noalias !2300
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2300, !noalias !2297
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2297, !noalias !2300
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2305

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2309, !noalias !2306
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2309, !noalias !2306
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2306, !noalias !2309
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2306, !noalias !2309
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2311

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2309, !noalias !2306
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2306, !noalias !2309
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2312

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5557", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2320, !noalias !2317
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2320, !noalias !2317
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2317, !noalias !2320
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2317, !noalias !2320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2320, !noalias !2317
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2317, !noalias !2320
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2323

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2327, !noalias !2324
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2327, !noalias !2324
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2324, !noalias !2327
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2324, !noalias !2327
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2329

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2327, !noalias !2324
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2324, !noalias !2327
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2330

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcCompositeCurveSegmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5565", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2338, !noalias !2335
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2338, !noalias !2335
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2335, !noalias !2338
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2335, !noalias !2338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2338, !noalias !2335
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2335, !noalias !2338
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2341

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2345, !noalias !2342
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2345, !noalias !2342
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2342, !noalias !2345
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2342, !noalias !2345
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2347

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2345, !noalias !2342
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2342, !noalias !2345
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2348

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x310IfcElementEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x310IfcProductEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5578", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2356, !noalias !2353
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2356, !noalias !2353
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2353, !noalias !2356
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2353, !noalias !2356
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2356, !noalias !2353
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2353, !noalias !2356
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2359

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2363, !noalias !2360
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2363, !noalias !2360
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2360, !noalias !2363
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2360, !noalias !2363
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2365

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2363, !noalias !2360
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2360, !noalias !2363
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2366

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x315IfcBoundedCurveEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5553", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2378, !noalias !2375
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2378, !noalias !2375
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2375, !noalias !2378
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2375, !noalias !2378
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2378, !noalias !2375
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2375, !noalias !2378
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2381

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2385, !noalias !2382
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2385, !noalias !2382
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2382, !noalias !2385
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2382, !noalias !2385
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2387

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2385, !noalias !2382
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2382, !noalias !2385
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2388

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.r, align 8
  store <2 x ptr> %i.s, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !2406, !noalias !2403
  store ptr null, ptr %i.t, align 8, !alias.scope !2406, !noalias !2403
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !alias.scope !2403, !noalias !2406
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !2406, !noalias !2403
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2398

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !alias.scope !2411, !noalias !2408
  store ptr null, ptr %i.y, align 8, !alias.scope !2411, !noalias !2408
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !alias.scope !2408, !noalias !2411
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !2411, !noalias !2408
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2398

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x39IfcObjectEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5598", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2416, !noalias !2413
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2416, !noalias !2413
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2413, !noalias !2416
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2413, !noalias !2416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2416, !noalias !2413
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2413, !noalias !2416
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2419

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2423, !noalias !2420
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2423, !noalias !2420
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2420, !noalias !2423
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2420, !noalias !2423
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2425

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2423, !noalias !2420
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2420, !noalias !2423
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2426

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_5
begin_hunk_6_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5600", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2434, !noalias !2431
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2434, !noalias !2431
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2431, !noalias !2434
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2431, !noalias !2434
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2434, !noalias !2431
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2431, !noalias !2434
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2437

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2441, !noalias !2438
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2441, !noalias !2438
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2438, !noalias !2441
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2438, !noalias !2441
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2443

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2441, !noalias !2438
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2438, !noalias !2441
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2444

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_6
begin_hunk_7_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.en = load ptr, ptr %8, align 8               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ag
  %i.eq = load i64, ptr %i.eo, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.es = load ptr, ptr %9, align 8               ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %9, align 8               ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #26
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.fb = load i64, ptr %i.et, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.fc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ah, label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ah, label %bb.ai

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread
  %.pn35.pn56.ph = phi { ptr, i32 } [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn35.pn56 = phi { ptr, i32 } [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn35.pn56.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.eg) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn35.pn55 = phi { ptr, i32 } [ %.pn35.pn56, %bb.ah ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ab, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.merged = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn52, %bb.f ], [ %i.ea, %bb.ab ], [ %.pn35.pn55, %bb.ai ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.ak:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #27
  unreachable

bb.al:                                            ; preds = %bb.af, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5569", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 17
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.pre73 = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70 to i64
  %.pre76 = sub i64 %.pre73, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.aw = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !2452, !noalias !2449
  %wide.load100 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2452, !noalias !2449
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2449, !noalias !2452
  store <2 x i64> %wide.load100, ptr %i.ax, align 8, !alias.scope !2449, !noalias !2452
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2452, !noalias !2449
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2449, !noalias !2452
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2455

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.v, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check103 = icmp ugt i64 %i.ce, -32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.ci = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.cj = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !2459, !noalias !2456
  %wide.load114 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2459, !noalias !2456
  %i.ck = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !alias.scope !2456, !noalias !2459
  store <2 x i64> %wide.load114, ptr %i.ck, align 8, !alias.scope !2456, !noalias !2459
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cl, label %middle.block116, label %vector.body109, !llvm.loop !2461

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cd, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2459, !noalias !2456
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2456, !noalias !2459
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2462

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block116 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x334IfcCartesianTransformationOperatorEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2296

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x37IfcFaceEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5611", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2470, !noalias !2467
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2470, !noalias !2467
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2467, !noalias !2470
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2467, !noalias !2470
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2470, !noalias !2467
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2467, !noalias !2470
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2473

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2477, !noalias !2474
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2477, !noalias !2474
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2474, !noalias !2477
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2474, !noalias !2477
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2479

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2477, !noalias !2474
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2474, !noalias !2477
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2480

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_8
begin_hunk_9_@_ZN6Assimp4STEP24InternGenericConvertListINS0_7EXPRESS8DataTypeELm1ELm0EEclERNS0_6ListOfIS3_Lm1ELm0EEERKSt10shared_ptrIKS3_ERKNS0_2DBE:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.ae ], [ %i.de, %bb.af ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.ag, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !412

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ac, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.ca, ptr %i.cp, align 8
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  br i1 %.not.i.i.i.i40, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dg, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.dk, align 4
  %i.dl = load ptr, ptr %i.ca, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !411
  %i.do = load ptr, ptr %i.ca, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

bb.aj:                                            ; preds = %bb.ah
  %i.dr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i43 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i43, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

bb.al:                                            ; preds = %bb.aj
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i45 = phi i32 [ %i.dj, %bb.ak ], [ %i.dt, %bb.al ]
  %i.du = icmp eq i32 %.0.i.i.i.i45, 1
  br i1 %i.du, label %bb.am, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, !prof !412

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44, %bb.am
  %i.dv = add nuw i64 %.02357, 1                  ; 2 uses
  %i.dw = load ptr, ptr %i.m, align 8
  %i.dx = load ptr, ptr %i.l, align 8
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 4
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %bb.m, label %._crit_edge, !llvm.loop !2493

bb.an:                                            ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.merged = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn56, %bb.f ], [ %i.ed, %bb.an ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.ap:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5618", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1592, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = sub i64 %i.ai, %i.ac
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 72
  %i.ar = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2497, !noalias !2494
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2497, !noalias !2494
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2494, !noalias !2497
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2494, !noalias !2497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2497, !noalias !2494
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2494, !noalias !2497
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2500

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bn, %i.bo
  %i.cb = add i64 %i.ca, -8                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bo, %i.bz
  %diff.check99 = icmp ugt i64 %i.ce, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2504, !noalias !2501
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2504, !noalias !2501
  %i.ck = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2501, !noalias !2504
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !2501, !noalias !2504
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !2506

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2504, !noalias !2501
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2501, !noalias !2504
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2507

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
end_hunk_9
