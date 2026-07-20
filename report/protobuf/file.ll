inline.NumInlined: 5513
inline.NumDeleted: 2439
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EEC2IN4absl12lts_2025051218container_internal12raw_hash_setINSA_17FlatHashSetPolicyIS4_EENSA_6HashEqIS4_vE4HashENSF_2EqES5_E8iteratorEvEET_SK_RKS5_:bb.a
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler10objectivec13FileGeneratorC2ENS0_7EditionEPKNS0_14FileDescriptorERKNS2_17GenerationOptionsERNS3_11CommonStateE(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 4), (8, 32)) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(172) %3, ptr noundef nonnull align 8 dereferenceable(33) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::unique_ptr.33", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr.41", align 8 ; 5 uses
  store i32 %1, ptr %0, align 8, !tbaa !191
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN6google8protobuf8compiler10objectivec13FileClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.d, ptr noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  invoke void @_ZN6google8protobuf8compiler10objectivec20FileUniqueSymbolNameB5cxx11EPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.e, ptr noundef %2, i64 0, ptr nonnull @.str)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  invoke void @_ZN6google8protobuf8compiler10objectivec29ExtensionRegistryFunctionNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.f, ptr noundef %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN6google8protobuf8compiler10objectivec13FileClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !178, !noalias !213
  %i.j = and i64 %i.i, -16
  %i.k = icmp eq i64 %i.j, 4611686018427387888
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, i64 noundef 16)
          to label %.noexc54 unwind label %bb.l   ; 6 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !216, !alias.scope !213
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !182  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc54
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !178  ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc54
  store ptr %i.n, ptr %i.g, align 8, !tbaa !182, !alias.scope !213
  %i.u = load i64, ptr %i.o, align 8, !tbaa !12
  store i64 %i.u, ptr %i.m, align 8, !tbaa !12, !alias.scope !213
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !178
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.v = phi i64 [ %i.r, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.v, ptr %i.x, align 8, !tbaa !178, !alias.scope !213
  store ptr %i.o, ptr %i.l, align 8, !tbaa !182
  store i64 0, ptr %i.w, align 8, !tbaa !178
  store i8 0, ptr %i.o, align 8, !tbaa !12
  %i.y = load ptr, ptr %5, align 8, !tbaa !182    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !12
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ad = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec33IsProtobufLibraryBundledProtoFileEPKNS0_14FileDescriptorE(ptr noundef %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !217
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !210 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !218
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.n

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit, %bb.h
  %i.ap = phi ptr [ %i.aj, %bb.h ], [ %i.cx, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 97
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.j:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.k:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !182   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.l
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.az, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.n:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.bg = phi ptr [ %i.aj, %.lr.ph ], [ %i.cx, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !219
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.bj = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc59 unwind label %bb.t   ; 4 uses

.noexc59:                                         ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [88 x i8], ptr %i.bi, i64 %indvars.iv
  invoke void @_ZN6google8protobuf8compiler10objectivec13EnumGeneratorC1EPKNS0_14EnumDescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(172) %3)
          to label %bb.p unwind label %bb.o, !noalias !220

bb.o:                                             ; preds = %.noexc59
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 128) #33, !noalias !220
  br label %.body

bb.p:                                             ; preds = %.noexc59
  store ptr %i.bj, ptr %6, align 8, !tbaa !223, !alias.scope !220
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !225 ; 6 uses
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !226
  %.not.i = icmp eq ptr %i.bm, %i.bn
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  br i1 %.not.i, label %bb.q, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread: ; preds = %bb.p
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !223
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bp, ptr %i.an, align 8, !tbaa !225
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !227 ; 10 uses
  %i.br = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc88 unwind label %.loopexit.split-lp138

.noexc88:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i87 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i87)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #32
          to label %.noexc89 unwind label %.loopexit137 ; 10 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !223
  %.not10.i.i.i.i = icmp eq ptr %i.bq, %i.bm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc89
  %i.cd = sub i64 %i.br, %i.bs
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader310, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cb, i64 8
  %i.ch = add i64 %i.br, -8
  %i.ci = sub i64 %i.ch, %i.bs
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %scevgep245 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %scevgep246 = getelementptr i8, ptr %i.bq, i64 8
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.cj
  %bound0 = icmp ult ptr %i.cb, %scevgep247
  %bound1 = icmp ult ptr %i.bq, %scevgep245
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader310, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ck = shl i64 %n.vec, 3                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cn ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.bq, i64 %i.cn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.co = getelementptr i8, ptr %next.gep248, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep248, align 8, !tbaa !223, !alias.scope !233, !noalias !228
  %wide.load249 = load <2 x i64>, ptr %i.co, align 8, !tbaa !223, !alias.scope !233, !noalias !228
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !223, !alias.scope !236, !noalias !233
  store <2 x i64> %wide.load249, ptr %i.cp, align 8, !tbaa !223, !alias.scope !236, !noalias !233
  %i.cq = getelementptr i8, ptr %next.gep248, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep248, align 8, !tbaa !223, !alias.scope !233, !noalias !228
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !223, !alias.scope !233, !noalias !228
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i.preheader310

.lr.ph.i.i.i.i.preheader310:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader310, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader310 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader310 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.cs = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !223, !alias.scope !231, !noalias !228
  store i64 %i.cs, ptr %.012.i.i.i.i, align 8, !tbaa !223, !alias.scope !228, !noalias !231
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !223, !alias.scope !231, !noalias !228
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.bm
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !241

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc89
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cb, %.noexc89 ], [ %i.cl, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, %bb.s
  store ptr %i.cb, ptr %i.ag, align 8, !tbaa !227
  store ptr %i.cv, ptr %i.an, align 8, !tbaa !225
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cw, ptr %i.ao, align 8, !tbaa !226
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !210 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 68
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !218
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.n, label %.preheader, !llvm.loop !242

bb.t:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit137:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp138:                            ; preds = %bb.r
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp138, %.loopexit137
  %lpad.phi141 = phi { ptr, i32 } [ %lpad.loopexit139, %.loopexit137 ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp138 ]
  call void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %.body

.body:                                            ; preds = %bb.t, %bb.o, %bb.u
  %.pn47 = phi { ptr, i32 } [ %lpad.phi141, %bb.u ], [ %i.dc, %bb.t ], [ %i.bl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.au

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %i.dd = phi ptr [ %i.ap, %.preheader ], [ %i.fn, %bb.ah ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !243
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !244
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !245
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !56
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %bb.ai

bb.v:                                             ; preds = %.lr.ph156, %bb.ah
  %indvars.iv175 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next176, %bb.ah ] ; 2 uses
  %i.dr = phi ptr [ %i.ap, %.lr.ph156 ], [ %i.fn, %bb.ah ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw [88 x i8], ptr %i.dt, i64 %indvars.iv175 ; 2 uses
  %i.dv = load i8, ptr %i.at, align 1, !tbaa !246, !range !52, !noundef !16
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec23ExtensionIsCustomOptionEPKNS0_15FieldDescriptorE(ptr noundef %i.du)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  br i1 %i.dx, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.dy = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #32
          to label %.noexc63 unwind label %bb.af  ; 4 uses

.noexc63:                                         ; preds = %bb.y
  invoke void @_ZN6google8protobuf8compiler10objectivec18ExtensionGeneratorC1EPKNS0_15FieldDescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(112) %i.dy, ptr noundef %i.du, ptr noundef nonnull align 8 dereferenceable(172) %3)
          to label %bb.aa unwind label %bb.z, !noalias !249

bb.z:                                             ; preds = %.noexc63
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 112) #33, !noalias !249
  br label %.body64

bb.aa:                                            ; preds = %.noexc63
  store ptr %i.dy, ptr %7, align 8, !tbaa !252, !alias.scope !249
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !243 ; 6 uses
  %i.eb = load ptr, ptr %i.av, align 8, !tbaa !254
  %.not.i.i = icmp eq ptr %i.ea, %i.eb
  %i.ec = ptrtoint ptr %i.dy to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.ab, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread: ; preds = %bb.aa
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !252
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ed, ptr %i.au, align 8, !tbaa !243
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %i.ai, align 8, !tbaa !244 ; 10 uses
  %i.ef = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.eg = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 4 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775800
  br i1 %i.ei, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc105 unwind label %.loopexit.split-lp133

.noexc105:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.ej = ashr exact i64 %i.eh, 3                 ; 3 uses
  %.sroa.speculated.i.i90 = call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i90, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = call i64 @llvm.umin.i64(i64 %i.ek, i64 1152921504606846975)
  %i.en = select i1 %i.el, i64 1152921504606846975, i64 %i.em ; 3 uses
  %.not.i.i91 = icmp ne i64 %i.en, 0
  call void @llvm.assume(i1 %.not.i.i91)
  %i.eo = shl nuw nsw i64 %i.en, 3
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #32
          to label %.noexc106 unwind label %.loopexit132 ; 10 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh
  store i64 %i.ec, ptr %i.eq, align 8, !tbaa !252
  %.not10.i.i.i.i92 = icmp eq ptr %i.ee, %i.ea
  br i1 %.not10.i.i.i.i92, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i93.preheader

.lr.ph.i.i.i.i93.preheader:                       ; preds = %.noexc106
  %i.er = sub i64 %i.ef, %i.eg
  %i.es = add i64 %i.er, -8                       ; 2 uses
  %i.et = lshr i64 %i.es, 3
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.es, 56
  br i1 %min.iters.check260, label %.lr.ph.i.i.i.i93.preheader304, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph.i.i.i.i93.preheader
  %scevgep252 = getelementptr i8, ptr %i.ep, i64 8
  %i.ev = add i64 %i.ef, -8
  %i.ew = sub i64 %i.ev, %i.eg
  %i.ex = and i64 %i.ew, -8                       ; 2 uses
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %i.ex
  %scevgep254 = getelementptr i8, ptr %i.ee, i64 8
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.ex
  %bound0256 = icmp ult ptr %i.ep, %scevgep255
  %bound1257 = icmp ult ptr %i.ee, %scevgep253
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i.i.i.i93.preheader304, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck251
  %n.vec263 = and i64 %i.eu, 4611686018427387900  ; 3 uses
  %i.ey = shl i64 %n.vec263, 3                    ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ep, i64 %i.ey  ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ee, i64 %i.ey
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.fb = shl i64 %index265, 3                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.ep, i64 %i.fb ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.ee, i64 %i.fb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.fc = getelementptr i8, ptr %next.gep267, i64 16
  %wide.load268 = load <2 x i64>, ptr %next.gep267, align 8, !tbaa !252, !alias.scope !260, !noalias !255
  %wide.load269 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !252, !alias.scope !260, !noalias !255
  %i.fd = getelementptr i8, ptr %next.gep266, i64 16
  store <2 x i64> %wide.load268, ptr %next.gep266, align 8, !tbaa !252, !alias.scope !263, !noalias !260
  store <2 x i64> %wide.load269, ptr %i.fd, align 8, !tbaa !252, !alias.scope !263, !noalias !260
  %i.fe = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep267, align 8, !tbaa !252, !alias.scope !260, !noalias !255
  store <2 x ptr> splat (ptr null), ptr %i.fe, align 8, !tbaa !252, !alias.scope !260, !noalias !255
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.ff, label %middle.block271, label %vector.body264, !llvm.loop !265

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.eu, %n.vec263
  br i1 %cmp.n272, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i93.preheader304

.lr.ph.i.i.i.i93.preheader304:                    ; preds = %vector.memcheck251, %.lr.ph.i.i.i.i93.preheader, %middle.block271
  %.012.i.i.i.i94.ph = phi ptr [ %i.ep, %vector.memcheck251 ], [ %i.ep, %.lr.ph.i.i.i.i93.preheader ], [ %i.ez, %middle.block271 ]
  %.0911.i.i.i.i95.ph = phi ptr [ %i.ee, %vector.memcheck251 ], [ %i.ee, %.lr.ph.i.i.i.i93.preheader ], [ %i.fa, %middle.block271 ]
  br label %.lr.ph.i.i.i.i93

.lr.ph.i.i.i.i93:                                 ; preds = %.lr.ph.i.i.i.i93.preheader304, %.lr.ph.i.i.i.i93
  %.012.i.i.i.i94 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i93 ], [ %.012.i.i.i.i94.ph, %.lr.ph.i.i.i.i93.preheader304 ] ; 2 uses
  %.0911.i.i.i.i95 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i93 ], [ %.0911.i.i.i.i95.ph, %.lr.ph.i.i.i.i93.preheader304 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.fg = load i64, ptr %.0911.i.i.i.i95, align 8, !tbaa !252, !alias.scope !258, !noalias !255
  store i64 %i.fg, ptr %.012.i.i.i.i94, align 8, !tbaa !252, !alias.scope !255, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i95, align 8, !tbaa !252, !alias.scope !258, !noalias !255
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i95, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i94, i64 8 ; 2 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.fh, %i.ea
  br i1 %.not.i.i.i.i96, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i93, !llvm.loop !266

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i93, %middle.block271, %.noexc106
  %.0.lcssa.i.i.i.i97 = phi ptr [ %i.ep, %.noexc106 ], [ %i.ez, %middle.block271 ], [ %i.fi, %.lr.ph.i.i.i.i93 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i97, i64 8
  %.not.i23.i104 = icmp eq ptr %i.ee, null
  br i1 %.not.i23.i104, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.eh) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, %bb.ad
  store ptr %i.ep, ptr %i.ai, align 8, !tbaa !244
  store ptr %i.fj, ptr %i.au, align 8, !tbaa !243
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.en
  store ptr %i.fk, ptr %i.av, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ah

bb.ae:                                            ; preds = %bb.w
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.af:                                            ; preds = %bb.y
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body64

.loopexit132:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp133:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp133, %.loopexit132
  %lpad.phi136 = phi { ptr, i32 } [ %lpad.loopexit134, %.loopexit132 ], [ %lpad.loopexit.split-lp135, %.loopexit.split-lp133 ]
  call void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %.body64

.body64:                                          ; preds = %bb.af, %bb.z, %bb.ag
  %.pn44 = phi { ptr, i32 } [ %lpad.phi136, %bb.ag ], [ %i.fm, %bb.af ], [ %i.dz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.au

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev.exit, %bb.x
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !210 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !53
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next176, %i.fq
  br i1 %i.fr, label %bb.v, label %._crit_edge, !llvm.loop !267

._crit_edge160:                                   ; preds = %bb.ar, %._crit_edge
  ret void

bb.ai:                                            ; preds = %.lr.ph159, %bb.ar
  %i.fs = phi ptr [ %i.dd, %.lr.ph159 ], [ %i.hp, %bb.ar ] ; 2 uses
  %indvars.iv178 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next179, %bb.ar ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !58
  %i.fv = getelementptr inbounds nuw [160 x i8], ptr %i.fu, i64 %indvars.iv178 ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 40
  %.val = load ptr, ptr %i.fw, align 8, !tbaa !268
  %i.fx = getelementptr i8, ptr %.val, i64 51
  %.val.val = load i8, ptr %i.fx, align 1, !tbaa !12, !range !52, !noundef !16
  %i.fy = trunc nuw i8 %.val.val to i1
  br i1 %i.fy, label %bb.ar, label %bb.ak

bb.aj:                                            ; preds = %bb.aq, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.ga = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #32
          to label %.noexc68 unwind label %bb.as  ; 4 uses

.noexc68:                                         ; preds = %bb.ak
  invoke void @_ZN6google8protobuf8compiler10objectivec16MessageGeneratorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_10DescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(196) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %i.fv, ptr noundef nonnull align 8 dereferenceable(172) %3)
          to label %bb.am unwind label %bb.al, !noalias !277

bb.al:                                            ; preds = %.noexc68
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 200) #33, !noalias !277
  br label %.body69

bb.am:                                            ; preds = %.noexc68
  store ptr %i.ga, ptr %8, align 8, !tbaa !280, !alias.scope !277
  %i.gc = load ptr, ptr %i.dp, align 8, !tbaa !282 ; 7 uses
  %i.gd = load ptr, ptr %i.dq, align 8, !tbaa !283
  %.not.i71 = icmp eq ptr %i.gc, %i.gd
  %i.ge = ptrtoint ptr %i.ga to i64               ; 2 uses
  br i1 %.not.i71, label %bb.an, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread: ; preds = %bb.am
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.dp, align 8, !tbaa !282
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.gg = load ptr, ptr %i.ah, align 8, !tbaa !284 ; 10 uses
  %i.gh = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 4 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.ao, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.an
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i107 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i107, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i108 = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i108)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32
          to label %.noexc123 unwind label %.loopexit ; 10 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj
  store i64 %i.ge, ptr %i.gs, align 8, !tbaa !280
  %.not10.i.i.i.i109 = icmp eq ptr %i.gg, %i.gc
  br i1 %.not10.i.i.i.i109, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i110.preheader

.lr.ph.i.i.i.i110.preheader:                      ; preds = %.noexc123
  %i.gt = sub i64 %i.gh, %i.gi
  %i.gu = add i64 %i.gt, -8                       ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %i.gu, 56
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i110.preheader299, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i.i.i110.preheader
  %scevgep276 = getelementptr i8, ptr %i.gr, i64 8
  %i.gx = add i64 %i.gh, -8
  %i.gy = sub i64 %i.gx, %i.gi
  %i.gz = and i64 %i.gy, -8                       ; 2 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.gz
  %scevgep278 = getelementptr i8, ptr %i.gg, i64 8
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.gz
  %bound0280 = icmp ult ptr %i.gr, %scevgep279
  %bound1281 = icmp ult ptr %i.gg, %scevgep277
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %.lr.ph.i.i.i.i110.preheader299, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck275
  %n.vec287 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.ha = shl i64 %n.vec287, 3                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gr, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gg, i64 %i.ha
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph285
  %index289 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %i.hd = shl i64 %index289, 3                    ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.gr, i64 %i.hd ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.gg, i64 %i.hd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.he = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load292 = load <2 x i64>, ptr %next.gep291, align 8, !tbaa !280, !alias.scope !290, !noalias !285
  %wide.load293 = load <2 x i64>, ptr %i.he, align 8, !tbaa !280, !alias.scope !290, !noalias !285
  %i.hf = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x i64> %wide.load292, ptr %next.gep290, align 8, !tbaa !280, !alias.scope !293, !noalias !290
  store <2 x i64> %wide.load293, ptr %i.hf, align 8, !tbaa !280, !alias.scope !293, !noalias !290
  %i.hg = getelementptr i8, ptr %next.gep291, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep291, align 8, !tbaa !280, !alias.scope !290, !noalias !285
  store <2 x ptr> splat (ptr null), ptr %i.hg, align 8, !tbaa !280, !alias.scope !290, !noalias !285
  %index.next294 = add nuw i64 %index289, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.hh, label %middle.block295, label %vector.body288, !llvm.loop !295

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %i.gw, %n.vec287
  br i1 %cmp.n296, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i110.preheader299

.lr.ph.i.i.i.i110.preheader299:                   ; preds = %vector.memcheck275, %.lr.ph.i.i.i.i110.preheader, %middle.block295
  %.012.i.i.i.i111.ph = phi ptr [ %i.gr, %vector.memcheck275 ], [ %i.gr, %.lr.ph.i.i.i.i110.preheader ], [ %i.hb, %middle.block295 ]
  %.0911.i.i.i.i112.ph = phi ptr [ %i.gg, %vector.memcheck275 ], [ %i.gg, %.lr.ph.i.i.i.i110.preheader ], [ %i.hc, %middle.block295 ]
  br label %.lr.ph.i.i.i.i110

.lr.ph.i.i.i.i110:                                ; preds = %.lr.ph.i.i.i.i110.preheader299, %.lr.ph.i.i.i.i110
  %.012.i.i.i.i111 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i110 ], [ %.012.i.i.i.i111.ph, %.lr.ph.i.i.i.i110.preheader299 ] ; 2 uses
  %.0911.i.i.i.i112 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i110 ], [ %.0911.i.i.i.i112.ph, %.lr.ph.i.i.i.i110.preheader299 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.hi = load i64, ptr %.0911.i.i.i.i112, align 8, !tbaa !280, !alias.scope !288, !noalias !285
  store i64 %i.hi, ptr %.012.i.i.i.i111, align 8, !tbaa !280, !alias.scope !285, !noalias !288
  store ptr null, ptr %.0911.i.i.i.i112, align 8, !tbaa !280, !alias.scope !288, !noalias !285
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i112, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i111, i64 8 ; 2 uses
  %.not.i.i.i.i113 = icmp eq ptr %i.hj, %i.gc
  br i1 %.not.i.i.i.i113, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i110, !llvm.loop !296

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i110, %middle.block295, %.noexc123
  %.0.lcssa.i.i.i.i114 = phi ptr [ %i.gr, %.noexc123 ], [ %i.hb, %middle.block295 ], [ %i.hk, %.lr.ph.i.i.i.i110 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i114, i64 8
  %.not.i23.i121 = icmp eq ptr %i.gg, null
  br i1 %.not.i23.i121, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, %bb.ap
  store ptr %i.gr, ptr %i.ah, align 8, !tbaa !284
  store ptr %i.hl, ptr %i.dp, align 8, !tbaa !282
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.hm, ptr %i.dq, align 8, !tbaa !283
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread
  %i.hn = phi ptr [ %i.gc, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread ], [ %.0.lcssa.i.i.i.i114, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !280
  invoke void @_ZN6google8protobuf8compiler10objectivec16MessageGenerator22AddExtensionGeneratorsEPSt6vectorISt10unique_ptrINS2_18ExtensionGeneratorESt14default_deleteIS6_EESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(196) %i.ho, ptr noundef nonnull %i.ai)
          to label %bb.aq unwind label %bb.aj

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit
  invoke fastcc void @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_115MakeDescriptorsEPKNS0_10DescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISt10unique_ptrINS2_13EnumGeneratorESt14default_deleteISH_EESaISK_EEPSF_ISG_INS2_18ExtensionGeneratorESI_ISO_EESaISQ_EEPSF_ISG_INS2_16MessageGeneratorESI_ISU_EESaISW_EERKNS2_17GenerationOptionsE(ptr noundef nonnull %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(172) %3)
          to label %._crit_edge181 unwind label %bb.aj

._crit_edge181:                                   ; preds = %bb.aq
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !210
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge181, %bb.ai
  %i.hp = phi ptr [ %.pre, %._crit_edge181 ], [ %i.fs, %bb.ai ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !56
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next179, %i.hs
  br i1 %i.ht, label %bb.ai, label %._crit_edge160, !llvm.loop !297

bb.as:                                            ; preds = %bb.ak
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %.body69

.body69:                                          ; preds = %bb.as, %bb.al, %bb.at
  %.pn40 = phi { ptr, i32 } [ %lpad.phi, %bb.at ], [ %i.hu, %bb.as ], [ %i.gb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %.body69, %bb.ae, %.body64, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %.body ], [ %i.fl, %bb.ae ], [ %.pn44, %.body64 ], [ %i.fz, %bb.aj ], [ %.pn40, %.body69 ]
  call void @_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #29
  call void @_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #29
  call void @_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.m
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %bb.au ], [ %i.bf, %bb.m ] ; 2 uses
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !182 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.m
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.av
  %i.hx = load i64, ptr %i.m, align 8, !tbaa !12
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn47.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn47.pn.pn, %bb.av ] ; 2 uses
  %i.hz = load ptr, ptr %i.f, align 8, !tbaa !182 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !12
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.j
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn47.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 2 uses
  %i.ie = load ptr, ptr %i.e, align 8, !tbaa !182 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !12
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.i
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn47.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn47.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !182 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !12
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn
}

declare void @_ZN6google8protobuf8compiler10objectivec13FileClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler10objectivec20FileUniqueSymbolNameB5cxx11EPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i64, ptr) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler10objectivec29ExtensionRegistryFunctionNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec33IsProtobufLibraryBundledProtoFileEPKNS0_14FileDescriptorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !223    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec13EnumGeneratorEEclEPS4_.exit

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec13EnumGeneratorEEclEPS4_.exit: ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler10objectivec13EnumGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #33
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec13EnumGeneratorEEclEPS4_.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec23ExtensionIsCustomOptionEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !252    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !12
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !12
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !12
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !280    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec16MessageGeneratorEEclEPS4_.exit

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec16MessageGeneratorEEclEPS4_.exit: ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler10objectivec16MessageGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #33
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec16MessageGeneratorEEclEPS4_.exit, %bb.a
  ret void
}

declare void @_ZN6google8protobuf8compiler10objectivec16MessageGenerator22AddExtensionGeneratorsEPSt6vectorISt10unique_ptrINS2_18ExtensionGeneratorESt14default_deleteIS6_EESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_115MakeDescriptorsEPKNS0_10DescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISt10unique_ptrINS2_13EnumGeneratorESt14default_deleteISH_EESaISK_EEPSF_ISG_INS2_18ExtensionGeneratorESI_ISO_EESaISQ_EEPSF_ISG_INS2_16MessageGeneratorESI_ISU_EESaISW_EERKNS2_17GenerationOptionsE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef nonnull %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef nonnull align 8 dereferenceable(172) %5) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::unique_ptr.41", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !298
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !299  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !300
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.m, i64 %indvars.iv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.o = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !301 ; 4 uses
  invoke void @_ZN6google8protobuf8compiler10objectivec13EnumGeneratorC1EPKNS0_14EnumDescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(172) %5)
          to label %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec13EnumGeneratorEJPKNS1_14EnumDescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.c, !noalias !301

common.resume:                                    ; preds = %bb.g, %bb.o, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.bl, %bb.j ], [ %lpad.phi60, %bb.g ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 128) #33, !noalias !301
  br label %common.resume

_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec13EnumGeneratorEJPKNS1_14EnumDescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.o, ptr %6, align 8, !tbaa !223, !alias.scope !301
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !225  ; 6 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !226
  %.not.i = icmp eq ptr %i.q, %i.r
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread: ; preds = %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec13EnumGeneratorEJPKNS1_14EnumDescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.s, ptr %i.q, align 8, !tbaa !223
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.e, align 8, !tbaa !225
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec13EnumGeneratorEJPKNS1_14EnumDescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !227    ; 10 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc32 unwind label %.loopexit.split-lp57

.noexc32:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32
          to label %.noexc33 unwind label %.loopexit56 ; 10 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !223
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc33
  %i.ah = sub i64 %i.v, %i.w
  %i.ai = add i64 %i.ah, -8                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader141, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.al = add i64 %i.v, -8
  %i.am = sub i64 %i.al, %i.w
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %scevgep107 = getelementptr i8, ptr %scevgep, i64 %i.an
  %scevgep108 = getelementptr i8, ptr %i.u, i64 8
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.an
  %bound0 = icmp ult ptr %i.af, %scevgep109
  %bound1 = icmp ult ptr %i.u, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader141, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ar ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.u, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.as = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 8, !tbaa !223, !alias.scope !309, !noalias !304
  %wide.load111 = load <2 x i64>, ptr %i.as, align 8, !tbaa !223, !alias.scope !309, !noalias !304
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !223, !alias.scope !312, !noalias !309
  store <2 x i64> %wide.load111, ptr %i.at, align 8, !tbaa !223, !alias.scope !312, !noalias !309
  %i.au = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep110, align 8, !tbaa !223, !alias.scope !309, !noalias !304
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !223, !alias.scope !309, !noalias !304
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i.preheader141

.lr.ph.i.i.i.i.preheader141:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader141, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader141 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader141 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !223, !alias.scope !307, !noalias !304
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !223, !alias.scope !304, !noalias !307
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !223, !alias.scope !307, !noalias !304
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !315

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc33
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc33 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, %bb.f
  store ptr %i.af, ptr %2, align 8, !tbaa !227
  store ptr %i.az, ptr %i.e, align 8, !tbaa !225
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !226
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !298
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.b, label %.preheader, !llvm.loop !316

.loopexit56:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp57:                             ; preds = %bb.e
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp57, %.loopexit56
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp57 ]
  call void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec13EnumGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

._crit_edge:                                      ; preds = %bb.n, %.preheader
  ret void

bb.h:                                             ; preds = %.lr.ph70, %bb.n
  %i.be = phi i32 [ %i.h, %.lr.ph70 ], [ %i.cz, %bb.n ]
  %indvars.iv80 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next81, %bb.n ] ; 2 uses
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !317
  %i.bg = getelementptr inbounds nuw [160 x i8], ptr %i.bf, i64 %indvars.iv80 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %.val = load ptr, ptr %i.bh, align 8, !tbaa !268
  %i.bi = getelementptr i8, ptr %.val, i64 51
  %.val.val = load i8, ptr %i.bi, align 1, !tbaa !12, !range !52, !noundef !16
  %i.bj = trunc nuw i8 %.val.val to i1
  br i1 %i.bj, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bk = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #32, !noalias !318 ; 4 uses
  invoke void @_ZN6google8protobuf8compiler10objectivec16MessageGeneratorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_10DescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(196) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(172) %5)
          to label %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec16MessageGeneratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKNS1_10DescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.j, !noalias !318

bb.j:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 200) #33, !noalias !318
  br label %common.resume

_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec16MessageGeneratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKNS1_10DescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.i
  store ptr %i.bk, ptr %7, align 8, !tbaa !280, !alias.scope !318
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !282 ; 7 uses
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !283
  %.not.i28 = icmp eq ptr %i.bm, %i.bn
  %i.bo = ptrtoint ptr %i.bk to i64               ; 2 uses
  br i1 %.not.i28, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread: ; preds = %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec16MessageGeneratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKNS1_10DescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !280
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bp, ptr %i.k, align 8, !tbaa !282
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit

bb.k:                                             ; preds = %_ZSt11make_uniqueIN6google8protobuf8compiler10objectivec16MessageGeneratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKNS1_10DescriptorERKNS3_17GenerationOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bq = load ptr, ptr %4, align 8, !tbaa !284   ; 10 uses
  %i.br = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i34, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i35)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #32
          to label %.noexc50 unwind label %.loopexit ; 10 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !280
  %.not10.i.i.i.i36 = icmp eq ptr %i.bq, %i.bm
  br i1 %.not10.i.i.i.i36, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i37.preheader

.lr.ph.i.i.i.i37.preheader:                       ; preds = %.noexc50
  %i.cd = sub i64 %i.br, %i.bs
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check122 = icmp ult i64 %i.ce, 56
  br i1 %min.iters.check122, label %.lr.ph.i.i.i.i37.preheader137, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.i37.preheader
  %scevgep114 = getelementptr i8, ptr %i.cb, i64 8
  %i.ch = add i64 %i.br, -8
  %i.ci = sub i64 %i.ch, %i.bs
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.cj
  %scevgep116 = getelementptr i8, ptr %i.bq, i64 8
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.cj
  %bound0118 = icmp ult ptr %i.cb, %scevgep117
  %bound1119 = icmp ult ptr %i.bq, %scevgep115
  %found.conflict120 = and i1 %bound0118, %bound1119
  br i1 %found.conflict120, label %.lr.ph.i.i.i.i37.preheader137, label %vector.ph123

vector.ph123:                                     ; preds = %vector.memcheck113
  %n.vec125 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec125, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.ck
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next132, %vector.body126 ] ; 2 uses
  %i.cn = shl i64 %index127, 3                    ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.cb, i64 %i.cn ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.bq, i64 %i.cn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.co = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load130 = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !280, !alias.scope !326, !noalias !321
  %wide.load131 = load <2 x i64>, ptr %i.co, align 8, !tbaa !280, !alias.scope !326, !noalias !321
  %i.cp = getelementptr i8, ptr %next.gep128, i64 16
  store <2 x i64> %wide.load130, ptr %next.gep128, align 8, !tbaa !280, !alias.scope !329, !noalias !326
  store <2 x i64> %wide.load131, ptr %i.cp, align 8, !tbaa !280, !alias.scope !329, !noalias !326
  %i.cq = getelementptr i8, ptr %next.gep129, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep129, align 8, !tbaa !280, !alias.scope !326, !noalias !321
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !280, !alias.scope !326, !noalias !321
  %index.next132 = add nuw i64 %index127, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.cr, label %middle.block133, label %vector.body126, !llvm.loop !331

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.cg, %n.vec125
  br i1 %cmp.n134, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i37.preheader137

.lr.ph.i.i.i.i37.preheader137:                    ; preds = %vector.memcheck113, %.lr.ph.i.i.i.i37.preheader, %middle.block133
  %.012.i.i.i.i38.ph = phi ptr [ %i.cb, %vector.memcheck113 ], [ %i.cb, %.lr.ph.i.i.i.i37.preheader ], [ %i.cl, %middle.block133 ]
  %.0911.i.i.i.i39.ph = phi ptr [ %i.bq, %vector.memcheck113 ], [ %i.bq, %.lr.ph.i.i.i.i37.preheader ], [ %i.cm, %middle.block133 ]
  br label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %.lr.ph.i.i.i.i37.preheader137, %.lr.ph.i.i.i.i37
  %.012.i.i.i.i38 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i37 ], [ %.012.i.i.i.i38.ph, %.lr.ph.i.i.i.i37.preheader137 ] ; 2 uses
  %.0911.i.i.i.i39 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i37 ], [ %.0911.i.i.i.i39.ph, %.lr.ph.i.i.i.i37.preheader137 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.cs = load i64, ptr %.0911.i.i.i.i39, align 8, !tbaa !280, !alias.scope !324, !noalias !321
  store i64 %i.cs, ptr %.012.i.i.i.i38, align 8, !tbaa !280, !alias.scope !321, !noalias !324
  store ptr null, ptr %.0911.i.i.i.i39, align 8, !tbaa !280, !alias.scope !324, !noalias !321
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 8 ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, %i.bm
  br i1 %.not.i.i.i.i40, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i37, !llvm.loop !332

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i37, %middle.block133, %.noexc50
  %.0.lcssa.i.i.i.i41 = phi ptr [ %i.cb, %.noexc50 ], [ %i.cl, %middle.block133 ], [ %i.cu, %.lr.ph.i.i.i.i37 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i41, i64 8
  %.not.i23.i48 = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i48, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, %bb.m
  store ptr %i.cb, ptr %4, align 8, !tbaa !284
  store ptr %i.cv, ptr %i.k, align 8, !tbaa !282
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cw, ptr %i.l, align 8, !tbaa !283
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread
  %i.cx = phi ptr [ %i.bm, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit.thread ], [ %.0.lcssa.i.i.i.i41, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12emplace_backIJS8_EEERS8_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !280
  tail call void @_ZN6google8protobuf8compiler10objectivec16MessageGenerator22AddExtensionGeneratorsEPSt6vectorISt10unique_ptrINS2_18ExtensionGeneratorESt14default_deleteIS6_EESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(196) %i.cy, ptr noundef nonnull %3)
  tail call fastcc void @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_115MakeDescriptorsEPKNS0_10DescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISt10unique_ptrINS2_13EnumGeneratorESt14default_deleteISH_EESaISK_EEPSF_ISG_INS2_18ExtensionGeneratorESI_ISO_EESaISQ_EEPSF_ISG_INS2_16MessageGeneratorESI_ISU_EESaISW_EERKNS2_17GenerationOptionsE(ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(172) %5)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !299
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit
  %i.cz = phi i32 [ %i.be, %bb.h ], [ %.pre, %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next81, %i.da
  br i1 %i.db, label %bb.h, label %._crit_edge, !llvm.loop !333

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec16MessageGeneratorESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !244    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !252 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !12
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !12
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !182  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !12
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #33
  br label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec18ExtensionGeneratorEEclEPS4_.exit.i.i.i.i, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !334

_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !244
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !254
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec18ExtensionGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
end_hunk_0
