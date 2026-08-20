inline.NumInlined: 1126
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt20__throw_length_errorPKc
; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid14BorderHandlerTILi1EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv4gapi5fluid14BorderHandlerTILi1EEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid14BorderHandlerTILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv4gapi5fluid14BorderHandlerTILi1EEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv4gapi5fluid14BorderHandlerTILi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv4gapi5fluid14BorderHandlerTILi1EED2Ev.exit unwind label %bb.c, !inline_history !257 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31, !inline_history !257
  unreachable

_ZN2cv4gapi5fluid14BorderHandlerTILi1EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv4gapi5fluid14BorderHandlerTILi1EE7inLineBEiRKNS1_23BufferStorageWithBorderEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(224) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = icmp slt i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = sext i32 %i.d to i64
  %i.m = mul i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  br label %_ZNK2cv4gapi5fluid23BufferStorageWithBorder3ptrEi.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %1, 0
  %i.p = add nsw i32 %3, -1
  %i.q = select i1 %i.o, i32 0, i32 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76
  %i.t = srem i32 %i.q, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = mul i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x
  %i.z = sext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.ac = mul i64 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  br label %_ZNK2cv4gapi5fluid23BufferStorageWithBorder3ptrEi.exit

_ZNK2cv4gapi5fluid23BufferStorageWithBorder3ptrEi.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.ad, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4gapi5fluid14BorderHandlerTILi1EE18updateBorderPixelsERNS1_23BufferStorageWithBorderEii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %i.h = load i32, ptr %i.e, align 8, !tbaa !39
  %i.i = lshr i32 %i.h, 5
  %i.j = and i32 %i.i, 127
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = add nsw i32 %3, %2
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNKSt8functionIFvPhiiiEEclES0_iii.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt8functionIFvPhiiiEEclES0_iii.exit
  %.014 = phi i32 [ %2, %.lr.ph ], [ %i.ae, %_ZNKSt8functionIFvPhiiiEEclES0_iii.exit ] ; 2 uses
  %i.u = load i32, ptr %i.n, align 8, !tbaa !76
  %i.v = srem i32 %.014, %i.u
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.x = load i64, ptr %i.p, align 8, !tbaa !27
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !63
  store i32 %i.g, ptr %i.b, align 4, !tbaa !150
  store i32 %i.k, ptr %i.c, align 4, !tbaa !150
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !150
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !70
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFvPhiiiEEclES0_iii.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZNKSt8functionIFvPhiiiEEclES0_iii.exit:          ; preds = %bb.b
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !258
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ae = add nsw i32 %.014, 1                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.l
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv4gapi12_GLOBAL__N_122fillBorderReplicateRowIhEEvPhiii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #17 {
bb.a:
  %i.a = sub i32 %1, %3
  %i.b = mul i32 %i.a, %2
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 10 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge30.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = mul nuw nsw i32 %3, %2
  %i.h = zext nneg i32 %2 to i64                  ; 8 uses
  %i.i = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count35 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 9 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 5 uses
  %i.j = sub nsw i64 %i.c, %i.i
  %min.iters.check = icmp ult i32 %2, 4
  %i.k = add nsw i64 %i.c, -1
  %diff.check = icmp ult i64 %i.k, 31
  %invariant.op = add i64 %i.c, -1
  %invariant.op56 = add i64 %i.j, -1
  %invariant.op58 = add i64 %wide.trip.count, -1
  %min.iters.check45 = icmp ult i32 %2, 32
  %i.l = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec49 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n54 = icmp eq i64 %n.vec49, %wide.trip.count
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %i.h, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.n = mul nuw nsw i64 %indvars.iv32, %i.h      ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.o = mul i64 %indvars.iv32, %wide.trip.count  ; 3 uses
  %.neg = xor i64 %indvars.iv32, -1
  %.neg55 = mul i64 %.neg, %wide.trip.count
  %i.p = sub i64 %i.i, %i.o
  %diff.check38 = icmp ugt i64 %i.p, -32
  %conflict.rdx = or i1 %diff.check, %diff.check38
  %.reass = add i64 %.neg55, %invariant.op
  %diff.check39 = icmp ult i64 %.reass, 31
  %conflict.rdx40 = or i1 %conflict.rdx, %diff.check39
  %.reass57 = add i64 %i.o, %invariant.op56
  %diff.check41 = icmp ult i64 %.reass57, 31
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %.reass59 = add i64 %i.o, %invariant.op58
  %diff.check43 = icmp ult i64 %.reass59, 31
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  br i1 %conflict.rdx44, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !23
  %wide.load46 = load <16 x i8>, ptr %i.r, align 1, !tbaa !23
  %i.s = add nuw nsw i64 %index, %i.n             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 1, !tbaa !23
  store <16 x i8> %wide.load46, ptr %i.u, align 1, !tbaa !23
  %i.v = sub nsw i64 %index, %i.h
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load47 = load <16 x i8>, ptr %i.w, align 1, !tbaa !23
  %wide.load48 = load <16 x i8>, ptr %i.x, align 1, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load47, ptr %i.y, align 1, !tbaa !23
  store <16 x i8> %wide.load48, ptr %i.z, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !263

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index50
  %wide.load51 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !23
  %i.ac = add nuw nsw i64 %index50, %i.n          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i8> %wide.load51, ptr %i.ad, align 1, !tbaa !23
  %i.ae = sub nsw i64 %index50, %i.h
  %i.af = getelementptr inbounds i8, ptr %i.d, i64 %i.ae
  %wide.load52 = load <4 x i8>, ptr %i.af, align 1, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  store <4 x i8> %wide.load52, ptr %i.ag, align 1, !tbaa !23
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n54, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %gep.prol, align 1, !tbaa !23
  %i.aj = add nuw nsw i64 %indvars.iv.ph, %i.n    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !23
  %i.al = sub nsw i64 %indvars.iv.ph, %i.h
  %i.am = getelementptr inbounds i8, ptr %i.d, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ap, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge30.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge30.split, label %iter.check, !llvm.loop !265

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.aq = load i8, ptr %gep, align 1, !tbaa !23
  %i.ar = add nuw nsw i64 %indvars.iv, %i.n       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !23
  %i.at = sub nsw i64 %indvars.iv, %i.h
  %i.au = getelementptr inbounds i8, ptr %i.d, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ar
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ax = load i8, ptr %gep.1, align 1, !tbaa !23
  %i.ay = add nuw nsw i64 %indvars.iv.next, %i.n  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !23
  %i.ba = sub nsw i64 %indvars.iv.next, %i.h
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !266
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv4gapi12_GLOBAL__N_122fillBorderReplicateRowIsEEvPhiii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #17 {
bb.a:
  %i.a = sub i32 %1, %3
  %i.b = mul i32 %i.a, %2
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c ; 10 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge30.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = mul nuw nsw i32 %3, %2
  %i.h = zext nneg i32 %2 to i64                  ; 8 uses
  %i.i = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count35 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 9 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.j = shl nsw i64 %i.c, 1                      ; 2 uses
  %i.k = shl nuw nsw i64 %wide.trip.count, 1
  %i.l = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = mul nsw i64 %wide.trip.count, -2
  %i.o = sub nsw i64 %i.c, %i.i
  %i.p = shl nsw i64 %i.o, 1
  %min.iters.check = icmp ult i32 %2, 4
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.j, -1
  %diff.check = icmp ult i64 %i.r, 31
  %invariant.op = add i64 %i.m, -1
  %invariant.op55 = add i64 %i.p, -1
  %invariant.op57 = add i64 %i.l, -1
  %min.iters.check45 = icmp ult i32 %2, 16
  %i.s = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec49 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n54 = icmp eq i64 %n.vec49, %wide.trip.count
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.t = add nsw i64 %i.h, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.u = mul nuw nsw i64 %indvars.iv32, %i.h      ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.v = mul i64 %i.k, %indvars.iv32              ; 3 uses
  %i.w = mul i64 %i.n, %indvars.iv32
  %i.x = sub i64 %i.q, %i.v
  %diff.check38 = icmp ugt i64 %i.x, -32
  %conflict.rdx = or i1 %diff.check, %diff.check38
  %.reass = add i64 %i.w, %invariant.op
  %diff.check39 = icmp ult i64 %.reass, 31
  %conflict.rdx40 = or i1 %conflict.rdx, %diff.check39
  %.reass56 = add i64 %i.v, %invariant.op55
  %diff.check41 = icmp ult i64 %.reass56, 31
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %.reass58 = add i64 %i.v, %invariant.op57
  %diff.check43 = icmp ult i64 %.reass58, 31
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  br i1 %conflict.rdx44, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <8 x i16>, ptr %i.y, align 2, !tbaa !239
  %wide.load46 = load <8 x i16>, ptr %i.z, align 2, !tbaa !239
  %i.aa = add nuw nsw i64 %index, %i.u            ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %wide.load, ptr %i.ab, align 2, !tbaa !239
  store <8 x i16> %wide.load46, ptr %i.ac, align 2, !tbaa !239
  %i.ad = sub nsw i64 %index, %i.h
end_hunk_0
