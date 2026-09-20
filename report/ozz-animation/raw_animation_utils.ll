Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 361
begin_hunk_0_@_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS3_EEDpOT_:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ac, -8                    ; 3 uses
  %i.aq = shl i64 %n.vec53, 1                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.t, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.c, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index54, 1                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.t, i64 %i.at
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.at
  %wide.load57 = load <8 x i16>, ptr %next.gep56, align 2, !tbaa !30
  store <8 x i16> %wide.load57, ptr %next.gep55, align 2, !tbaa !30
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ac, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = load i16, ptr %.sroa.010.014.i.i, align 2, !tbaa !30
  store i16 %i.av, ptr %.015.i.i, align 2, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !131

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.ar, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ax, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i63 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 2 ; 7 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %iter.check83

iter.check83:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit
  %i.az = add i64 %i.d, -2
  %i.ba = sub i64 %i.az, %i.m                     ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.ba, 14
  br i1 %min.iters.check65, label %.lr.ph.i.i29.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %iter.check83
  %i.bd = sub i64 %.0.lcssa.i.i63, %i.m
  %i.be = add i64 %i.bd, 1
  %diff.check64 = icmp ult i64 %i.be, 127
  br i1 %diff.check64, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck62
  %min.iters.check67 = icmp ult i64 %i.ba, 126
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.bf = and i64 %i.bc, 56
  %n.vec69 = and i64 %i.bc, -64                   ; 4 uses
  %i.bg = shl i64 %n.vec69, 1                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.bj = shl i64 %index71, 1                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ay, i64 %i.bj ; 4 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.bj ; 4 uses
  %i.bk = getelementptr i8, ptr %next.gep73, i64 32
  %i.bl = getelementptr i8, ptr %next.gep73, i64 64
  %i.bm = getelementptr i8, ptr %next.gep73, i64 96
  %wide.load74 = load <16 x i16>, ptr %next.gep73, align 2, !tbaa !30
  %wide.load75 = load <16 x i16>, ptr %i.bk, align 2, !tbaa !30
  %wide.load76 = load <16 x i16>, ptr %i.bl, align 2, !tbaa !30
  %wide.load77 = load <16 x i16>, ptr %i.bm, align 2, !tbaa !30
  %i.bn = getelementptr i8, ptr %next.gep72, i64 32
  %i.bo = getelementptr i8, ptr %next.gep72, i64 64
  %i.bp = getelementptr i8, ptr %next.gep72, i64 96
  store <16 x i16> %wide.load74, ptr %next.gep72, align 2, !tbaa !30
  store <16 x i16> %wide.load75, ptr %i.bn, align 2, !tbaa !30
  store <16 x i16> %wide.load76, ptr %i.bo, align 2, !tbaa !30
  store <16 x i16> %wide.load77, ptr %i.bp, align 2, !tbaa !30
  %index.next78 = add nuw i64 %index71, 64        ; 2 uses
  %i.bq = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.bq, label %middle.block79, label %vector.body70, !llvm.loop !132

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.bc, %n.vec69
  br i1 %cmp.n80, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph87, !prof !49

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec69, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec88 = and i64 %i.bc, -8                    ; 3 uses
  %i.br = shl i64 %n.vec88, 1                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 %i.br
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.bu = shl i64 %index90, 1                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.ay, i64 %i.bu
  %next.gep92 = getelementptr i8, ptr %1, i64 %i.bu
  %wide.load93 = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !30
  store <8 x i16> %wide.load93, ptr %next.gep91, align 2, !tbaa !30
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.bv, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !133

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body89
  %cmp.n96 = icmp eq i64 %i.bc, %n.vec88
  br i1 %cmp.n96, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck62, %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.015.i.i30.ph = phi ptr [ %i.ay, %iter.check83 ], [ %i.ay, %vector.memcheck62 ], [ %i.bh, %vec.epilog.iter.check85 ], [ %i.bs, %vec.epilog.middle.block95 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %iter.check83 ], [ %1, %vector.memcheck62 ], [ %i.bi, %vec.epilog.iter.check85 ], [ %i.bt, %vec.epilog.middle.block95 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.by, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bw = load i16, ptr %.sroa.010.014.i.i31, align 2, !tbaa !30
  store i16 %i.bw, ptr %.015.i.i30, align 2, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 2 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !134

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block79, %vec.epilog.middle.block95, %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.ay, %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit ], [ %i.bs, %vec.epilog.middle.block95 ], [ %i.bh, %middle.block79 ], [ %i.by, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34
  %i.bz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #18
  unreachable

_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.l
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !36
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 16 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 115292150460684697)
  %i.k = select i1 %i.i, i64 115292150460684697, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.k, 80
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 16)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.v, ptr noundef nonnull align 16 dereferenceable(80) %2, i64 80, i1 false)
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.015.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.010.014.i.i, i64 80, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !135

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.x, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 80 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.z, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.015.i.i30, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.010.014.i.i31, i64 80, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 80 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !135

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.aa, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ab = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #18
  unreachable

_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %i.k
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 2
  %mul2 = ashr exact i64 %i.f, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.k = select i1 %i.i, i64 2305843009213693951, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.k, 2
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 10 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.w = load float, ptr %2, align 4, !tbaa !12
  store float %i.w, ptr %i.v, align 4, !tbaa !12
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.x = ptrtoaddr ptr %i.s to i64
  %i.y = add i64 %i.l, -4
  %i.z = sub i64 %i.y, %i.e                       ; 3 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  %i.ac = sub i64 %i.e, %i.x
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.z, 124
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 9223372036854775776     ; 4 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ah ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep48, i64 32
  %i.aj = getelementptr i8, ptr %next.gep48, i64 64
  %i.ak = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <8 x float>, ptr %next.gep48, align 4, !tbaa !12
  %wide.load49 = load <8 x float>, ptr %i.ai, align 4, !tbaa !12
  %wide.load50 = load <8 x float>, ptr %i.aj, align 4, !tbaa !12
  %wide.load51 = load <8 x float>, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !12
  store <8 x float> %wide.load49, ptr %i.al, align 4, !tbaa !12
  store <8 x float> %wide.load50, ptr %i.am, align 4, !tbaa !12
  store <8 x float> %wide.load51, ptr %i.an, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ab, 9223372036854775800   ; 3 uses
  %i.ap = shl i64 %n.vec53, 2                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index54, 2                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.s, i64 %i.as
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.as
  %wide.load57 = load <8 x float>, ptr %next.gep56, align 4, !tbaa !12
  store <8 x float> %wide.load57, ptr %next.gep55, align 4, !tbaa !12
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ab, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.au = load float, ptr %.sroa.010.014.i.i, align 4, !tbaa !12
  store float %i.au, ptr %.015.i.i, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !138

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.aq, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i63 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4 ; 7 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %iter.check83

iter.check83:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit
  %i.ay = add i64 %i.d, -4
  %i.az = sub i64 %i.ay, %i.l                     ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.az, 28
  br i1 %min.iters.check65, label %.lr.ph.i.i29.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %iter.check83
  %i.bc = sub i64 %.0.lcssa.i.i63, %i.l
  %i.bd = add i64 %i.bc, 3
  %diff.check64 = icmp ult i64 %i.bd, 127
  br i1 %diff.check64, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck62
  %min.iters.check67 = icmp ult i64 %i.az, 124
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.be = and i64 %i.bb, 24
  %n.vec69 = and i64 %i.bb, 9223372036854775776   ; 4 uses
  %i.bf = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ax, i64 %i.bi ; 4 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.bi ; 4 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 32
  %i.bk = getelementptr i8, ptr %next.gep73, i64 64
  %i.bl = getelementptr i8, ptr %next.gep73, i64 96
  %wide.load74 = load <8 x float>, ptr %next.gep73, align 4, !tbaa !12
  %wide.load75 = load <8 x float>, ptr %i.bj, align 4, !tbaa !12
  %wide.load76 = load <8 x float>, ptr %i.bk, align 4, !tbaa !12
  %wide.load77 = load <8 x float>, ptr %i.bl, align 4, !tbaa !12
  %i.bm = getelementptr i8, ptr %next.gep72, i64 32
  %i.bn = getelementptr i8, ptr %next.gep72, i64 64
  %i.bo = getelementptr i8, ptr %next.gep72, i64 96
  store <8 x float> %wide.load74, ptr %next.gep72, align 4, !tbaa !12
  store <8 x float> %wide.load75, ptr %i.bm, align 4, !tbaa !12
  store <8 x float> %wide.load76, ptr %i.bn, align 4, !tbaa !12
  store <8 x float> %wide.load77, ptr %i.bo, align 4, !tbaa !12
  %index.next78 = add nuw i64 %index71, 32        ; 2 uses
  %i.bp = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.bp, label %middle.block79, label %vector.body70, !llvm.loop !139

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.bb, %n.vec69
  br i1 %cmp.n80, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph87, !prof !33

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec69, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec88 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec88, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.ax, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.bt = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.ax, i64 %i.bt
  %next.gep92 = getelementptr i8, ptr %1, i64 %i.bt
  %wide.load93 = load <8 x float>, ptr %next.gep92, align 4, !tbaa !12
  store <8 x float> %wide.load93, ptr %next.gep91, align 4, !tbaa !12
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.bu, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !140
end_hunk_0
