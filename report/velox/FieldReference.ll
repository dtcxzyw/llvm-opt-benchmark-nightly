inline.NumInlined: 1039
inline.NumDeleted: 632
begin_hunk_0_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !274, !range !66, !noundef !67
  %i.s = load ptr, ptr %2, align 8, !tbaa !271
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !252
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !274, !range !66, !noundef !67
  %i.al = load ptr, ptr %2, align 8, !tbaa !271
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !252
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !66
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !252 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !274, !range !66, !noundef !67
  %i.bw = load ptr, ptr %2, align 8, !tbaa !271
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !252
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !273, !nonnull !67, !align !359
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !360
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !361    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !281
  store i64 %i.r, ptr %i.q, align 8, !tbaa !281
  store ptr null, ptr %2, align 8, !tbaa !281
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %i.t, 120
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 4611686018427387888      ; 4 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.c, i64 %i.ad ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.ae = getelementptr i8, ptr %next.gep37, i64 32
  %i.af = getelementptr i8, ptr %next.gep37, i64 64
  %i.ag = getelementptr i8, ptr %next.gep37, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep37, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %wide.load38 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %wide.load39 = load <4 x i64>, ptr %i.af, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %wide.load40 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %i.ah = getelementptr i8, ptr %next.gep, i64 32
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !281, !alias.scope !370, !noalias !367
  store <4 x i64> %wide.load38, ptr %i.ah, align 8, !tbaa !281, !alias.scope !370, !noalias !367
  store <4 x i64> %wide.load39, ptr %i.ai, align 8, !tbaa !281, !alias.scope !370, !noalias !367
  store <4 x i64> %wide.load40, ptr %i.aj, align 8, !tbaa !281, !alias.scope !370, !noalias !367
  %i.ak = getelementptr i8, ptr %next.gep37, i64 32
  %i.al = getelementptr i8, ptr %next.gep37, i64 64
  %i.am = getelementptr i8, ptr %next.gep37, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep37, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  store <4 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !232

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.v, 4611686018427387900    ; 3 uses
  %i.ao = shl i64 %n.vec43, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.p, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.p, i64 %i.ar
  %next.gep46 = getelementptr i8, ptr %i.c, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %wide.load47 = load <4 x i64>, ptr %next.gep46, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  store <4 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !281, !alias.scope !370, !noalias !367
  store <4 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !281, !alias.scope !367, !noalias !362
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.v, %n.vec43
  br i1 %cmp.n49, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.at = load i64, ptr %.0911.i.i.i, align 8, !tbaa !281, !alias.scope !365, !noalias !362
  store i64 %i.at, ptr %.012.i.i.i, align 8, !tbaa !281, !alias.scope !362, !noalias !365
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !281, !alias.scope !365, !noalias !362
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !374

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %iter.check77

iter.check77:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ax = add i64 %i.d, -8
  %i.ay = sub i64 %i.ax, %i.m                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check58, label %.lr.ph.i.i.i17.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %iter.check77
  %i.bb = add i64 %i.d, -8
  %i.bc = sub i64 %i.bb, %i.m
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %i.be = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bd
  %scevgep53 = getelementptr i8, ptr %i.be, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 8
  %bound055 = icmp ult ptr %i.aw, %scevgep54
  %bound156 = icmp ult ptr %1, %scevgep53
  %found.conflict57 = and i1 %bound055, %bound156
  br i1 %found.conflict57, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %vector.memcheck52
  %min.iters.check60 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.ba, 12
  %n.vec63 = and i64 %i.ba, 4611686018427387888   ; 4 uses
  %i.bg = shl i64 %n.vec63, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %i.bj = shl i64 %index65, 3                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.aw, i64 %i.bj ; 4 uses
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bj ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.bk = getelementptr i8, ptr %next.gep67, i64 32
  %i.bl = getelementptr i8, ptr %next.gep67, i64 64
  %i.bm = getelementptr i8, ptr %next.gep67, i64 96
  %wide.load68 = load <4 x i64>, ptr %next.gep67, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %wide.load69 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %wide.load70 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %wide.load71 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %i.bn = getelementptr i8, ptr %next.gep66, i64 32
  %i.bo = getelementptr i8, ptr %next.gep66, i64 64
  %i.bp = getelementptr i8, ptr %next.gep66, i64 96
  store <4 x i64> %wide.load68, ptr %next.gep66, align 8, !tbaa !281, !alias.scope !383, !noalias !380
  store <4 x i64> %wide.load69, ptr %i.bn, align 8, !tbaa !281, !alias.scope !383, !noalias !380
  store <4 x i64> %wide.load70, ptr %i.bo, align 8, !tbaa !281, !alias.scope !383, !noalias !380
  store <4 x i64> %wide.load71, ptr %i.bp, align 8, !tbaa !281, !alias.scope !383, !noalias !380
  %i.bq = getelementptr i8, ptr %next.gep67, i64 32
  %i.br = getelementptr i8, ptr %next.gep67, i64 64
  %i.bs = getelementptr i8, ptr %next.gep67, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  store <4 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %index.next72 = add nuw i64 %index65, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bt, label %middle.block73, label %vector.body64, !llvm.loop !385

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.ba, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block73
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check80, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph81, !prof !232

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec63, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec83 = and i64 %i.ba, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec83, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aw, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.bx = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.aw, i64 %i.bx
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %wide.load88 = load <4 x i64>, ptr %next.gep87, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  store <4 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !281, !alias.scope !383, !noalias !380
  store <4 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !281, !alias.scope !380, !noalias !375
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.by, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !386

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %i.ba, %n.vec83
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck52, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.012.i.i.i18.ph = phi ptr [ %i.aw, %iter.check77 ], [ %i.aw, %vector.memcheck52 ], [ %i.bh, %vec.epilog.iter.check79 ], [ %i.bv, %vec.epilog.middle.block90 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bi, %vec.epilog.iter.check79 ], [ %i.bw, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ca, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.bz = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !281, !alias.scope !378, !noalias !375
  store i64 %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !281, !alias.scope !375, !noalias !378
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !281, !alias.scope !378, !noalias !375
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !387

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %vec.epilog.middle.block90, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aw, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bv, %vec.epilog.middle.block90 ], [ %i.bh, %middle.block73 ], [ %i.cb, %.lr.ph.i.i.i17 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !280
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !361
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !279
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !280
  ret void
}

declare void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(94), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !218    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !71
  store i64 %i.r, ptr %i.q, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %i.t, 120
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 4611686018427387888      ; 4 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.c, i64 %i.ad ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ae = getelementptr i8, ptr %next.gep37, i64 32
  %i.af = getelementptr i8, ptr %next.gep37, i64 64
  %i.ag = getelementptr i8, ptr %next.gep37, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep37, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %wide.load38 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %wide.load39 = load <4 x i64>, ptr %i.af, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %wide.load40 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %i.ah = getelementptr i8, ptr %next.gep, i64 32
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !396, !noalias !393
  store <4 x i64> %wide.load38, ptr %i.ah, align 8, !tbaa !71, !alias.scope !396, !noalias !393
  store <4 x i64> %wide.load39, ptr %i.ai, align 8, !tbaa !71, !alias.scope !396, !noalias !393
  store <4 x i64> %wide.load40, ptr %i.aj, align 8, !tbaa !71, !alias.scope !396, !noalias !393
  %i.ak = getelementptr i8, ptr %next.gep37, i64 32
  %i.al = getelementptr i8, ptr %next.gep37, i64 64
  %i.am = getelementptr i8, ptr %next.gep37, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep37, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  store <4 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !232

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.v, 4611686018427387900    ; 3 uses
  %i.ao = shl i64 %n.vec43, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.p, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.p, i64 %i.ar
  %next.gep46 = getelementptr i8, ptr %i.c, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %wide.load47 = load <4 x i64>, ptr %next.gep46, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  store <4 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !71, !alias.scope !396, !noalias !393
  store <4 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !71, !alias.scope !393, !noalias !388
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.v, %n.vec43
  br i1 %cmp.n49, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.at = load i64, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !391, !noalias !388
  store i64 %i.at, ptr %.012.i.i.i, align 8, !tbaa !71, !alias.scope !388, !noalias !391
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !391, !noalias !388
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !400

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %iter.check77

iter.check77:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ax = add i64 %i.d, -8
  %i.ay = sub i64 %i.ax, %i.m                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check58, label %.lr.ph.i.i.i17.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %iter.check77
  %i.bb = add i64 %i.d, -8
  %i.bc = sub i64 %i.bb, %i.m
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %i.be = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bd
  %scevgep53 = getelementptr i8, ptr %i.be, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 8
  %bound055 = icmp ult ptr %i.aw, %scevgep54
  %bound156 = icmp ult ptr %1, %scevgep53
  %found.conflict57 = and i1 %bound055, %bound156
  br i1 %found.conflict57, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %vector.memcheck52
  %min.iters.check60 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.ba, 12
  %n.vec63 = and i64 %i.ba, 4611686018427387888   ; 4 uses
  %i.bg = shl i64 %n.vec63, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %i.bj = shl i64 %index65, 3                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.aw, i64 %i.bj ; 4 uses
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bj ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.bk = getelementptr i8, ptr %next.gep67, i64 32
  %i.bl = getelementptr i8, ptr %next.gep67, i64 64
  %i.bm = getelementptr i8, ptr %next.gep67, i64 96
  %wide.load68 = load <4 x i64>, ptr %next.gep67, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %wide.load69 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %wide.load70 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %wide.load71 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %i.bn = getelementptr i8, ptr %next.gep66, i64 32
  %i.bo = getelementptr i8, ptr %next.gep66, i64 64
  %i.bp = getelementptr i8, ptr %next.gep66, i64 96
  store <4 x i64> %wide.load68, ptr %next.gep66, align 8, !tbaa !71, !alias.scope !409, !noalias !406
  store <4 x i64> %wide.load69, ptr %i.bn, align 8, !tbaa !71, !alias.scope !409, !noalias !406
  store <4 x i64> %wide.load70, ptr %i.bo, align 8, !tbaa !71, !alias.scope !409, !noalias !406
  store <4 x i64> %wide.load71, ptr %i.bp, align 8, !tbaa !71, !alias.scope !409, !noalias !406
  %i.bq = getelementptr i8, ptr %next.gep67, i64 32
  %i.br = getelementptr i8, ptr %next.gep67, i64 64
  %i.bs = getelementptr i8, ptr %next.gep67, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  store <4 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %index.next72 = add nuw i64 %index65, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bt, label %middle.block73, label %vector.body64, !llvm.loop !411

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.ba, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block73
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check80, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph81, !prof !232

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec63, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec83 = and i64 %i.ba, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec83, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aw, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.bx = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.aw, i64 %i.bx
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %wide.load88 = load <4 x i64>, ptr %next.gep87, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  store <4 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !71, !alias.scope !409, !noalias !406
  store <4 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !71, !alias.scope !406, !noalias !401
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.by, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !412

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %i.ba, %n.vec83
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck52, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.012.i.i.i18.ph = phi ptr [ %i.aw, %iter.check77 ], [ %i.aw, %vector.memcheck52 ], [ %i.bh, %vec.epilog.iter.check79 ], [ %i.bv, %vec.epilog.middle.block90 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bi, %vec.epilog.iter.check79 ], [ %i.bw, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ca, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.bz = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !71, !alias.scope !404, !noalias !401
  store i64 %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !71, !alias.scope !401, !noalias !404
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !71, !alias.scope !404, !noalias !401
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !413

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %vec.epilog.middle.block90, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aw, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bv, %vec.epilog.middle.block90 ], [ %i.bh, %middle.block73 ], [ %i.cb, %.lr.ph.i.i.i17 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !217
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !218
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !216
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !217
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVectoreqERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %i.b, %i.g
  br i1 %.not.i, label %bb.d, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.g, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.g, 6
  %i.q = and i32 %i.g, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !235
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !235
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !252
  %i.ah = xor i64 %i.ag, %i.ad
  %i.ai = and i64 %i.z, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.f:                                             ; preds = %bb.d
  %.not36.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = sdiv i32 %i.b, 64
  %i.al = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i39.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i39.i, -1
  %i.ao = sub nsw i32 64, %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = sext i32 %i.ak to i64                   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !235
end_hunk_0
