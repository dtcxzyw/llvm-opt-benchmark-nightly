Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/enriched_string?download=true
inline.NumInlined: 573
inline.NumDeleted: 237
begin_hunk_0_@_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_:bb.a
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bb ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !25
  %wide.load42 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25
  store <4 x i32> %wide.load42, ptr %i.bd, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !25
  store i32 %i.bf, ptr %.011.i.i.i.i, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bi = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ak, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedStringC2ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i8 0, i64 25, i1 false)
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  store i32 0, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.sroa.0.0.copyload = load i32, ptr %3, align 4, !tbaa !25
  invoke void @_ZN14EnrichedString8addAtEndESt17basic_string_viewIwSt11char_traitsIwEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.i, ptr %i.g, i32 %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !34
  %i.v = shl i64 %i.u, 2
  %i.w = add i64 %i.v, 4
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12 ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14, %bb.f
  %i.ad = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.af = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ag = shl i64 %i.af, 2
  %i.ah = add i64 %i.ag, 4
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedString8addAtEndESt17basic_string_viewIwSt11char_traitsIwEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, i32 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.video::SColor", align 4     ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 8 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %3, ptr %5, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %3
  %narrow = select i1 %i.f, i1 %i.i, i1 false
  %i.j = zext i1 %narrow to i8                    ; 2 uses
  %i.k = add i64 %i.e, %1
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add i64 %i.s, %1                         ; 4 uses
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.q
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = icmp ult i64 %i.z, %i.t
  br i1 %i.aa, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ab = shl nuw nsw i64 %i.t, 2
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #22 ; 7 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !30  ; 8 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !31  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i
  %11 = ptrtoaddr ptr %i.ad to i64                ; 2 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %11                      ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 44
  %12 = sub i64 %11, %i.af
  %diff.check = icmp ugt i64 %12, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader232, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.ad, i64 %i.ao ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ap = getelementptr i8, ptr %next.gep197, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep197, align 4, !tbaa !25, !alias.scope !62, !noalias !61
  %wide.load198 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !25, !alias.scope !62, !noalias !61
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25, !alias.scope !61, !noalias !62
  store <4 x i32> %wide.load198, ptr %i.aq, align 4, !tbaa !25, !alias.scope !61, !noalias !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader232

.lr.ph.i.i.i.i.preheader232:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader232, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader232 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader232 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.as = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !25, !alias.scope !62, !noalias !61
  store i32 %i.as, ptr %.012.i.i.i.i, align 4, !tbaa !25, !alias.scope !61, !noalias !62
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.ad to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ay) #20
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r
  store ptr %i.az, ptr %i.m, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.t
  store ptr %i.ba, ptr %i.v, align 8, !tbaa !33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.not104 = icmp eq i64 %1, 0
  br i1 %.not104, label %.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE7reserveEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.bj = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gz, %.outer ]
  %.0.ph102 = phi i8 [ %i.j, %.lr.ph.lr.ph ], [ %.2, %.outer ] ; 8 uses
  %.029.ph101 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.332, %.outer ] ; 3 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.029.ph101
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %.not192 = icmp eq i32 %i.bm, 27
  br i1 %.not192, label %._crit_edge, label %.lr.ph194

bb.e:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dp
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29 ; 2 uses
  %.not = icmp eq i32 %i.bp, 27
  br i1 %.not, label %._crit_edge, label %.lr.ph194, !llvm.loop !54

.lr.ph194:                                        ; preds = %.lr.ph, %bb.e
  %i.bq = phi i32 [ %i.bp, %bb.e ], [ %i.bm, %.lr.ph ]
  %.02994193 = phi i64 [ %i.dp, %bb.e ], [ %.029.ph101, %.lr.ph ]
  %i.br = load i64, ptr %i.d, align 8, !tbaa !26  ; 4 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bb
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph194
  %i.bv = icmp ult i64 %i.br, 4
  call void @llvm.assume(i1 %i.bv)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph194
  %i.bw = load i64, ptr %i.bb, align 8, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.bx = phi i64 [ %i.bw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.by = icmp ugt i64 %i.bs, %i.bx
  br i1 %i.by, label %bb.f, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i, %bb.f
  %i.bz = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.br
  store i32 %i.bq, ptr %i.ca, align 4, !tbaa !29
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bs
  store i32 0, ptr %i.cb, align 4, !tbaa !29
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !31  ; 6 uses
  %i.cd = load ptr, ptr %i.v, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.ce = load i32, ptr %5, align 4, !tbaa !25
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store ptr %i.cf, ptr %i.m, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !30  ; 7 uses
  %i.ch = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 4 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775804
  br i1 %i.ck, label %bb.i, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cl = ashr exact i64 %i.cj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 2305843009213693951)
  %i.cp = select i1 %i.cn, i64 2305843009213693951, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #22 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  %i.ct = load i32, ptr %5, align 4, !tbaa !25
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !25
  %.not10.i.i.i.i.i = icmp eq ptr %i.cg, %i.cc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = ptrtoaddr ptr %i.cr to i64
  %i.cv = add i64 %i.ch, -4
  %i.cw = sub i64 %i.cv, %i.ci                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check203 = icmp ult i64 %i.cw, 28
  %i.cz = sub i64 %i.ci, %i.cu
  %diff.check201 = icmp ugt i64 %i.cz, -32
  %or.cond217 = or i1 %min.iters.check203, %diff.check201
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i.preheader218, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec205 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.da = shl i64 %n.vec205, 2                    ; 2 uses
  %i.db = getelementptr i8, ptr %i.cr, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cg, i64 %i.da
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %i.dd = shl i64 %index207, 2                    ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.cr, i64 %i.dd ; 2 uses
  %next.gep209 = getelementptr i8, ptr %i.cg, i64 %i.dd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
end_hunk_0
begin_hunk_1_@_Z5splitIwESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_:bb.a
  %i.bv = icmp eq ptr %i.ab, %i.c
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i38: ; preds = %bb.r
  %i.bw = icmp ult i64 %i.ac, 4
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.r
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i35, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i38
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i35 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i38 ]
  %i.bz = icmp ugt i64 %i.bu, %i.by
  br i1 %i.bz, label %bb.s, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ac, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc39 unwind label %bb.j

.noexc39:                                         ; preds = %bb.s
  %.pre.i.i37 = load ptr, ptr %3, align 8, !tbaa !27 ; 2 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36, %.noexc39
  %i.ca = phi ptr [ %.pre.i.i37, %.noexc39 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36 ]
  %i.cb = phi ptr [ %.pre.i.i37, %.noexc39 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i36 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ac
  store i32 %i.af, ptr %i.cc, align 4, !tbaa !29
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bu
  store i32 0, ptr %i.cd, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit25, %bb.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit34
  %i.ce = phi ptr [ %i.aa, %bb.q ], [ %i.bs, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit34 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit25 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40 ]
  %i.cf = phi ptr [ %i.ab, %bb.q ], [ %i.bs, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit34 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit25 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40 ]
  %i.cg = phi i64 [ %i.ac, %bb.q ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit34 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit25 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40 ] ; 6 uses
  %.1 = phi i1 [ true, %bb.q ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit34 ], [ false, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit25 ], [ false, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit40 ]
  %i.ch = add nuw i64 %.01445, 1                  ; 2 uses
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !26
  %i.cj = icmp ult i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.e, label %._crit_edge, !llvm.loop !73

_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit.i, %._crit_edge.thread
  %i.ck = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.c
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !34
  %i.cn = shl i64 %i.cm, 2
  %i.co = add i64 %i.cn, 4
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.u:                                             ; preds = %._crit_edge.thread, %.noexc.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.az, %bb.j ], [ %i.cp, %bb.u ]
  %i.cq = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.c
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ct = shl i64 %i.cs, 2
  %i.cu = add i64 %i.ct, 4
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.8") align 8, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = shl i64 %i.g, 2
  %i.i = add i64 %i.h, 4
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedString7addCharERKS_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %2
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i, %bb.b
  %i.n = phi ptr [ %.pre.i.i, %bb.b ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.e
  store i32 %i.c, ptr %i.o, align 4, !tbaa !29
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f
  store i32 0, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.y = load i32, ptr %i.t, align 4, !tbaa !25
  store i32 %i.y, ptr %i.v, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.z, ptr %i.u, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !30  ; 7 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.e, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i32, ptr %i.t, align 4, !tbaa !25
  store i32 %i.an, ptr %i.am, align 4, !tbaa !25
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.ab, -4
  %i.ap = sub i64 %i.ao, %i.ac                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 44
  %4 = sub i64 %i.ac, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.aw = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep7, align 4, !tbaa !25, !alias.scope !80, !noalias !79
  %wide.load8 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !25, !alias.scope !80, !noalias !79
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25, !alias.scope !79, !noalias !80
  store <4 x i32> %wide.load8, ptr %i.ax, align 4, !tbaa !25, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.az = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !25, !alias.scope !80, !noalias !79
  store i32 %i.az, ptr %.012.i.i.i.i.i, align 4, !tbaa !25, !alias.scope !79, !noalias !80
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !78

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.al, ptr %i.q, align 8, !tbaa !30
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bg, ptr %i.w, align 8, !tbaa !33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedString14addCharNoColorEw(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef signext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.g = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.i = phi i64 [ %i.h, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  store i32 %1, ptr %i.l, align 4, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.c
  store i32 0, ptr %i.m, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 9 uses
  %i.r = icmp eq ptr %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.t
  br i1 %.not.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  store i32 %i.v, ptr %i.q, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.w, ptr %i.p, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %bb.c
  %i.x = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 3 uses
  %i.y = load i32, ptr %i.u, align 4, !tbaa !25
  store i32 %i.y, ptr %i.x, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ad) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.x, ptr %i.n, align 8, !tbaa !30
  store ptr %i.z, ptr %i.p, align 8, !tbaa !31
  store ptr %i.z, ptr %i.s, align 8, !tbaa !33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEw.exit
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %.not.i1 = icmp eq ptr %i.q, %i.t
  br i1 %.not.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  store i32 %i.af, ptr %i.q, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ai = ptrtoint ptr %i.o to i64                ; 4 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2: ; preds = %bb.h
  %i.al = ashr exact i64 %i.aj, 2
  %i.am = ashr exact i64 %i.aj, 1                 ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #22 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !25
  store i32 %i.at, ptr %i.as, align 4, !tbaa !25
  %i.au = add i64 %i.ah, -4
  %i.av = sub i64 %i.au, %i.ai                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 44
  %2 = ptrtoaddr ptr %i.ar to i64
  %3 = sub i64 %i.ai, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i6.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ar, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.o, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bb ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.o, i64 %i.bb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.bc = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !25, !alias.scope !87, !noalias !86
  %wide.load17 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !25, !alias.scope !87, !noalias !86
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25, !alias.scope !86, !noalias !87
  store <4 x i32> %wide.load17, ptr %i.bd, align 4, !tbaa !25, !alias.scope !86, !noalias !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.az, i64 -4
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i10, label %.lr.ph.i.i.i.i.i6.preheader

.lr.ph.i.i.i.i.i6.preheader:                      ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2, %middle.block
  %.012.i.i.i.i.i7.ph = phi ptr [ %i.ar, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2 ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i8.ph = phi ptr [ %i.o, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i2 ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.lr.ph.i.i.i.i.i6.preheader, %.lr.ph.i.i.i.i.i6
  %.012.i.i.i.i.i7 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i6 ], [ %.012.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i6.preheader ] ; 3 uses
  %.0911.i.i.i.i.i8 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i6 ], [ %.0911.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i6.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.bf = load i32, ptr %.0911.i.i.i.i.i8, align 4, !tbaa !25, !alias.scope !87, !noalias !86
  store i32 %i.bf, ptr %.012.i.i.i.i.i7, align 4, !tbaa !25, !alias.scope !86, !noalias !87
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i8, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i7, i64 4
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bg, %i.q
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i10, label %.lr.ph.i.i.i.i.i6, !llvm.loop !85

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i10: ; preds = %.lr.ph.i.i.i.i.i6, %middle.block
  %.012.i.i.i.i.i7.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.012.i.i.i.i.i7, %.lr.ph.i.i.i.i.i6 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i7.lcssa, i64 8
  %.not.i23.i.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i12, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i10
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bl) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i10
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !30
  store ptr %i.bi, ptr %i.p, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bm, ptr %i.s, align 8, !tbaa !33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14EnrichedStringplERKS_(ptr dead_on_unwind noalias nonnull writable sret(%class.EnrichedString) align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14EnrichedStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #23
  resume { ptr, i32 } %i.a

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !45
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !27
  %i.h = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi i64 [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 4 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %i.c, align 4, !tbaa !29
  store i32 %i.k, ptr %i.j, align 4, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef %i.j, ptr noundef %i.c, i64 noundef %i.e) #23 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !45
  %.pre7.i.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.n = phi i64 [ %i.i, %._crit_edge.i.i ], [ %i.i, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 0, ptr %i.p, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5video6SColorEE8allocateEmPKv.exit.i.i.i.i, !prof !35

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5video6SColorEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN5video6SColorEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorIN5video6SColorEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !33
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !46  ; 5 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !46  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc5
  %i.ag = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ah = ptrtoaddr ptr %i.aa to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ai, -4
  %i.ak = sub i64 %i.aj, %i.ag                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 44
  %i.an = sub i64 %i.ag, %i.ah
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 2                       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5video6SColorESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  br i1 %i.ab, label %middle.block151, label %vector.body144, !llvm.loop !112

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.u, %n.vec143
  br i1 %cmp.n152, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block151
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.w, %middle.block151 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.x, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !25
  store i32 %i.ac, ptr %.013.i.i.i.i.i, align 4, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !113

_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block151
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.af, ptr %i.h, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = sub i64 %i.ag, %i.m                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.am = icmp eq i64 %i.ah, 4
  br i1 %i.am, label %bb.g, label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.ao = load i32, ptr %1, align 4, !tbaa !25
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !25
  br label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = icmp sgt i64 %i.d, 4
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit
  %i.aq = icmp eq i64 %i.d, 4
  br i1 %i.aq, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %2, align 4, !tbaa !25
  store i32 %i.ar, ptr %1, align 4, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.as, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = add i64 %i.b, %i.m
  %i.au = add i64 %i.at, -4
  %i.av = add i64 %i.k, %i.c
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 44
  %i.az = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond208.a = or i1 %min.iters.check, %diff.check
  br i1 %or.cond208.a, label %.lr.ph.i.i.i.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bd ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !25
  %wide.load119 = load <4 x i32>, ptr %i.be, align 4, !tbaa !25
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25
  store <4 x i32> %wide.load119, ptr %i.bf, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader218

.lr.ph.i.i.i.i.preheader218:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader218, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader218 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader218 ] ; 2 uses
  %i.bh = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !25
  store i32 %i.bh, ptr %.09.i.i.i.i, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bi, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !115

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bk = sub nuw nsw i64 %i.e, %i.o
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk ; 3 uses
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bm = add i64 %i.k, -4
  %i.bn = sub i64 %i.bm, %i.m                     ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check124 = icmp ult i64 %i.bn, 76
  %diff.check122 = icmp ult i64 %i.d, 32
  %or.cond209.a = or i1 %min.iters.check124, %diff.check122
  br i1 %or.cond209.a, label %.lr.ph.i.i.i.i.i52.preheader217, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %n.vec126 = and i64 %i.bp, 9223372036854775800  ; 3 uses
  %i.bq = shl i64 %n.vec126, 2                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.bt = shl i64 %index128, 2                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 2 uses
  %next.gep130 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <4 x i32>, ptr %next.gep130, align 4, !tbaa !25
  %wide.load132 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !25
  %i.bv = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !25
  store <4 x i32> %wide.load132, ptr %i.bv, align 4, !tbaa !25
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.bw, label %middle.block134, label %vector.body127, !llvm.loop !116

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.bp, %n.vec126
  br i1 %cmp.n135, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader217

.lr.ph.i.i.i.i.i52.preheader217:                  ; preds = %.lr.ph.i.i.i.i.i52.preheader, %middle.block134
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.br, %middle.block134 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bs, %middle.block134 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader217, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader217 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader217 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.08.012.i.i.i.i.i54, align 4, !tbaa !25
  store i32 %i.bx, ptr %.013.i.i.i.i.i53, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 4
  %.not.i.i.i.i.i55 = icmp eq ptr %i.by, %i.i
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52, !llvm.loop !117

_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block134, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !31
  %i.cb = icmp sgt i64 %i.n, 4
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  %i.cc = icmp eq i64 %i.n, 4
  br i1 %i.cc, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr %2, align 4, !tbaa !25
  store i32 %i.cd, ptr %1, align 4, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %0, align 8, !tbaa !30    ; 7 uses
  %i.cf = ptrtoint ptr %i.ce to i64               ; 4 uses
  %i.cg = sub i64 %i.k, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 4 uses
  %i.ci = sub nsw i64 2305843009213693951, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.e
  br i1 %i.cj, label %bb.o, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.e)
  %i.ck = add nsw i64 %.sroa.speculated.i, %i.ch  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ch
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 2305843009213693951)
  %i.cn = select i1 %i.cl, i64 2305843009213693951, i64 %i.cm ; 3 uses
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #22
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cq = phi ptr [ %i.cp, %bb.p ], [ null, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ce, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit
  %4 = ptrtoaddr ptr %i.cq to i64
  %i.cr = ptrtoaddr ptr %1 to i64
  %i.cs = add i64 %i.cr, -4
  %i.ct = sub i64 %i.cs, %i.cf                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.ct, 44
  %5 = sub i64 %i.cf, %4
  %diff.check156 = icmp ugt i64 %5, -32
  %or.cond210 = or i1 %min.iters.check158, %diff.check156
  br i1 %or.cond210, label %.lr.ph.i.i.i.i.i60.preheader215, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec160 = and i64 %i.cv, 9223372036854775800  ; 3 uses
  %i.cw = shl i64 %n.vec160, 2                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cq, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ce, i64 %i.cw
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.cz = shl i64 %index162, 2                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.cq, i64 %i.cz ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.ce, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load165 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !25
  %wide.load166 = load <4 x i32>, ptr %i.da, align 4, !tbaa !25
  %i.db = getelementptr i8, ptr %next.gep163, i64 16
  store <4 x i32> %wide.load165, ptr %next.gep163, align 4, !tbaa !25
  store <4 x i32> %wide.load166, ptr %i.db, align 4, !tbaa !25
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.dc, label %middle.block168, label %vector.body161, !llvm.loop !118

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.cv, %n.vec160
  br i1 %cmp.n169, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader215

.lr.ph.i.i.i.i.i60.preheader215:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block168
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cx, %middle.block168 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cy, %middle.block168 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader215, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader215 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader215 ] ; 2 uses
  %i.dd = load i32, ptr %.sroa.08.012.i.i.i.i.i62, align 4, !tbaa !25
  store i32 %i.dd, ptr %.013.i.i.i.i.i61, align 4, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 4 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.de, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !119

_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block168, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit ], [ %i.cx, %middle.block168 ], [ %i.df, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.dg = add i64 %i.b, -4
  %i.dh = sub i64 %i.dg, %i.c                     ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.dh, 44
  %.0.lcssa.i.i.i.i.i64173 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dk = sub i64 %i.c, %.0.lcssa.i.i.i.i.i64173
  %diff.check174 = icmp ugt i64 %i.dk, -32
  %or.cond211 = select i1 %min.iters.check176, i1 true, i1 %diff.check174
  br i1 %or.cond211, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %n.vec178 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec178, 2                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %2, i64 %i.dl
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body179 ] ; 2 uses
  %i.do = shl i64 %index180, 2                    ; 2 uses
  %next.gep181 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.do ; 2 uses
  %next.gep182 = getelementptr i8, ptr %2, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <4 x i32>, ptr %next.gep182, align 4, !tbaa !25
  %wide.load184 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !25
  %i.dq = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> %wide.load183, ptr %next.gep181, align 4, !tbaa !25
  store <4 x i32> %wide.load184, ptr %i.dq, align 4, !tbaa !25
  %index.next185 = add nuw i64 %index180, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.dr, label %middle.block186, label %vector.body179, !llvm.loop !120

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.dj, %n.vec178
  br i1 %cmp.n187, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block186
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.dm, %middle.block186 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.dn, %middle.block186 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.du, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.ds = load i32, ptr %.sroa.04.08.i.i.i.i68, align 4, !tbaa !25
  store i32 %i.ds, ptr %.09.i.i.i.i67, align 4, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 4 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.dt, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !121

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block186
  %.lcssa116 = phi ptr [ %i.dm, %middle.block186 ], [ %i.du, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71
  %.lcssa116191 = ptrtoaddr ptr %.lcssa116 to i64
  %i.dv = add i64 %i.k, -4
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.dw, 44
  %i.dz = sub i64 %i.a, %.lcssa116191
  %diff.check192 = icmp ugt i64 %i.dz, -32
  %or.cond212 = select i1 %min.iters.check194, i1 true, i1 %diff.check192
  br i1 %or.cond212, label %.lr.ph.i.i.i.i.i73.preheader213, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec196 = and i64 %i.dy, 9223372036854775800  ; 3 uses
  %i.ea = shl i64 %n.vec196, 2                    ; 2 uses
  %i.eb = getelementptr i8, ptr %.lcssa116, i64 %i.ea ; 2 uses
  %i.ec = getelementptr i8, ptr %1, i64 %i.ea
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 2 uses
  %i.ed = shl i64 %index198, 2                    ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.lcssa116, i64 %i.ed ; 2 uses
  %next.gep200 = getelementptr i8, ptr %1, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep200, i64 16
  %wide.load201 = load <4 x i32>, ptr %next.gep200, align 4, !tbaa !25
  %wide.load202 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !25
  %i.ef = getelementptr i8, ptr %next.gep199, i64 16
  store <4 x i32> %wide.load201, ptr %next.gep199, align 4, !tbaa !25
  store <4 x i32> %wide.load202, ptr %i.ef, align 4, !tbaa !25
  %index.next203 = add nuw i64 %index198, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.eg, label %middle.block204, label %vector.body197, !llvm.loop !122

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.dy, %n.vec196
  br i1 %cmp.n205, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader213

.lr.ph.i.i.i.i.i73.preheader213:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block204
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa116, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.eb, %middle.block204 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ec, %middle.block204 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader213, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader213 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader213 ] ; 2 uses
  %i.eh = load i32, ptr %.sroa.08.012.i.i.i.i.i75, align 4, !tbaa !25
  store i32 %i.eh, ptr %.013.i.i.i.i.i74, align 4, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 4 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.ei, %i.i
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !123

_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block204, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa116, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71 ], [ %i.eb, %middle.block204 ], [ %i.ej, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ce, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78
  %i.ek = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.em) #20
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, %bb.q
  store ptr %i.cq, ptr %0, align 8, !tbaa !30
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.h, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cn
  store ptr %i.en, ptr %i.f, align 8, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 wchar_t", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !12, i64 0, !14, i64 8, !6, i64 16}
!16 = !{!"p1 _ZTSN5video6SColorE", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !19, i64 0}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"_ZTSN5video6SColorE", !7, i64 0}
!23 = !{!"_ZTS14EnrichedString", !15, i64 0, !20, i64 32, !21, i64 56, !22, i64 60, !22, i64 64, !14, i64 72}
!24 = !{!23, !14, i64 72}
!25 = !{!7, !7, i64 0}
!26 = !{!15, !14, i64 8}
!27 = !{!15, !11, i64 0}
!28 = !{!"wchar_t", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!17, !16, i64 0}
!31 = !{!17, !16, i64 8}
!32 = !{!23, !21, i64 56}
!33 = !{!17, !16, i64 16}
!34 = !{!6, !6, i64 0}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !10, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 0}
!43 = !{!41, !40, i64 8}
!44 = !{!41, !40, i64 16}
!45 = !{!14, !14, i64 0}
!46 = !{!16, !16, i64 0}
!47 = distinct !{!47, !37, !38, !39}
!48 = distinct !{!48, !37, !38}
!49 = distinct !{!49, i1 false, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!52 = distinct !{!52, !37, !38, !39}
!53 = distinct !{!53, !37, !38}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, i1 false, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_"}
!56 = distinct !{!56, !55, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!58 = distinct !{!58, !37, !38, !39}
!59 = distinct !{!59, !37, !38}
!60 = distinct !{!60, !37}
!61 = !{!50}
!62 = !{!51}
!63 = !{!"_ZTSSt17basic_string_viewIwSt11char_traitsIwEE", !14, i64 0, !11, i64 8}
!64 = !{!63, !11, i64 8}
!65 = !{!56}
!66 = !{!57}
!67 = !{!63, !14, i64 0}
!68 = !{!"p1 omnipotent char", !10, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !68, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !69, i64 0, !14, i64 8, !6, i64 16}
!71 = !{!70, !68, i64 0}
!72 = !{!11, !11, i64 0}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, i1 false, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !74, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!77 = distinct !{!77, !37, !38, !39}
!78 = distinct !{!78, !37, !38}
!79 = !{!75}
!80 = !{!76}
!81 = distinct !{!81, i1 false, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!84 = distinct !{!84, !37, !38, !39}
!85 = distinct !{!85, !37, !38}
!86 = !{!82}
!87 = !{!83}
!88 = distinct !{!88, !37, !38, !39}
!89 = distinct !{!89, !37, !38}
!90 = distinct !{!90, !37, !38, !39}
!91 = distinct !{!91, !37, !39, !38}
!92 = distinct !{!92, !37, !38, !39}
!93 = distinct !{!93, !37, !39, !38}
!94 = distinct !{!94, i1 false, !"_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6substrEmm"}
!95 = distinct !{!95, !94, !"_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6substrEmm: argument 0"}
!96 = distinct !{!96, !37, !38, !39}
!97 = distinct !{!97, !37, !39, !38}
!98 = !{!95}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = distinct !{!101, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_"}
!102 = distinct !{!102, !101, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !101, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_"}
!106 = distinct !{!106, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!102}
!109 = !{!103}
!110 = !{!106}
!111 = !{!107}
!112 = distinct !{!112, !37, !38, !39}
!113 = distinct !{!113, !37, !38}
!114 = distinct !{!114, !37, !38, !39}
!115 = distinct !{!115, !37, !38}
!116 = distinct !{!116, !37, !38, !39}
!117 = distinct !{!117, !37, !38}
!118 = distinct !{!118, !37, !38, !39}
!119 = distinct !{!119, !37, !38}
!120 = distinct !{!120, !37, !38, !39}
!121 = distinct !{!121, !37, !38}
!122 = distinct !{!122, !37, !38, !39}
!123 = distinct !{!123, !37, !38}
end_hunk_2
