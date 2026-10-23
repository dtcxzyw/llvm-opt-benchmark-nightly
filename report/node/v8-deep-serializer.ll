Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8-deep-serializer?download=true
inline.NumInlined: 446
inline.NumDeleted: 256
begin_hunk_0_@_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE:bb.a
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #9
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %i.h = load ptr, ptr %13, align 8               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN12v8_inspector8String16D2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = shl i64 %i.k, 1
  %i.m = add i64 %i.l, 2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #9
  br label %_ZN12v8_inspector8String16D2Ev.exit14

_ZN12v8_inspector8String16D2Ev.exit14:            ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit14
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10, !noalias !92 ; 10 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #8, !noalias !92
  %i.p = call ptr @_ZN2v86Object19GetOwnPropertyNamesENS_5LocalINS_7ContextEEENS_14PropertyFilterENS_17KeyConversionModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i32 noundef 18, i32 noundef 0) #8, !noalias !91 ; 3 uses
  %.not81.i = icmp eq ptr %i.p, null
  br i1 %.not81.i, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.p) #8 ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.z, %i.r
  br i1 %i.aa, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.x
  %i.af = shl nuw nsw i64 %i.r, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #10 ; 6 uses
  %i.ah = load ptr, ptr %i.s, align 8             ; 6 uses
  %i.ai = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = add i64 %i.aj, -8
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.ah, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.at = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep76, align 8, !alias.scope !94
  %wide.load77 = load <2 x i64>, ptr %i.at, align 8, !alias.scope !94
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !93
  store <2 x i64> %wide.load77, ptr %i.au, align 8, !alias.scope !93
  %i.av = getelementptr i8, ptr %next.gep76, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep76, align 8, !alias.scope !94
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !alias.scope !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.i.preheader82:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !94
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !93
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !94
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !80

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.pr.i.i.i = load ptr, ptr %i.s, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.ba = phi ptr [ %.pr.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i.i.i ], [ %i.ah, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.not.i8.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  %i.bb = load ptr, ptr %i.t, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #9
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  store ptr %i.ag, ptr %i.s, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store ptr %i.bf, ptr %i.ab, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.r
  store ptr %i.bg, ptr %i.t, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.d
  %.not84.not.i = icmp eq i32 %i.q, 0
  br i1 %.not84.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = add nsw i32 %3, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i, %.lr.ph.i
  %.085.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ej, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !91
  store ptr null, ptr %7, align 8, !noalias !91
  %i.bn = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr %2, i32 noundef %.085.i) #8 ; 5 uses
  %.not82.i = icmp eq ptr %i.bn, null
  br i1 %.not82.i, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 3
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !95

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %bb.h
  %i.br = add nsw i64 %i.bo, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = icmp ult i16 %i.bw, 128
  br i1 %i.bx, label %bb.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !96

_ZNK2v85Value13QuickIsStringEv.exit.thread.i:     ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #11
  unreachable

bb.i:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  %i.by = call i16 @_ZN2v86Object20HasRealNamedPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr nonnull %i.bn) #8 ; 2 uses
  %17 = and i16 %i.by, 255
  %18 = icmp ne i16 %17, 0
  %i.bz = and i16 %i.by, 256
  %19 = icmp ne i16 %i.bz, 0
  %or.cond.i = and i1 %18, %19
  br i1 %or.cond.i, label %bb.j, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8, !noalias !91
  %i.ca = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #8
  call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %8, ptr noundef %i.ca, ptr nonnull %i.bn) #8
  %i.cb = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #10, !noalias !97 ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 4, ptr %i.cc, align 8, !noalias !97
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12v8_inspector8protocol11StringValueE, i64 16), ptr %i.cb, align 8, !noalias !97
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !noalias !97
  %i.cf = load ptr, ptr %8, align 8, !noalias !98 ; 2 uses
  %i.cg = load i64, ptr %i.bh, align 8, !noalias !98 ; 7 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cg, 1      ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 7
  br i1 %i.ch, label %bb.k, label %._crit_edge.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp ugt i64 %i.cg, 4611686018427387903
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #11, !noalias !97
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cj = icmp eq i64 %i.cg, 4611686018427387903
  br i1 %i.cj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !7

bb.n:                                             ; preds = %bb.m
  call void @_ZSt17__throw_bad_allocv() #11, !noalias !97
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.ck = add nuw nsw i64 %.idx.i.i.i.i.i, 2
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #10, !noalias !97 ; 2 uses
  store ptr %i.cl, ptr %i.cd, align 8, !noalias !97
  store i64 %i.cg, ptr %i.ce, align 8, !noalias !97
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.j
  %i.cm = phi ptr [ %i.cl, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.ce, %bb.j ] ; 3 uses
  switch i64 %i.cg, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cn = load i16, ptr %i.cf, align 2, !noalias !97
  store i16 %i.cn, ptr %i.cm, align 2, !noalias !97
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cm, ptr align 2 %i.cf, i64 %.idx.i.i.i.i.i, i1 false), !noalias !97
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %i.cg, ptr %i.co, align 8, !noalias !97
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i.i.i
  store i16 0, ptr %i.cp, align 2, !noalias !97
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cr = load i64, ptr %i.bi, align 8, !noalias !98
  store i64 %i.cr, ptr %i.cq, align 8, !noalias !97
  %i.cs = load ptr, ptr %8, align 8, !noalias !91 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bj
  br i1 %i.ct, label %_ZN12v8_inspector8String16D2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.cu = load i64, ptr %i.bj, align 8, !noalias !91
  %i.cv = shl i64 %i.cu, 1
  %i.cw = add i64 %i.cv, 2
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #9
  br label %_ZN12v8_inspector8String16D2Ev.exit.i

_ZN12v8_inspector8String16D2Ev.exit.i:            ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8, !noalias !91
  %i.cx = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr nonnull %i.bn) #8 ; 2 uses
  %.not83.i = icmp eq ptr %i.cx, null
  br i1 %.not83.i, label %bb.q, label %bb.r, !prof !7

bb.q:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.r:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8, !noalias !91
  call void @_ZN12v8_inspector11ValueMirror6createEN2v85LocalINS1_7ContextEEENS2_INS1_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.50") align 8 %9, ptr %2, ptr nonnull %i.cx) #8
  %i.cy = load ptr, ptr %9, align 8, !noalias !91 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr %2, i32 noundef %i.bk, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %7) #8, !inline_history !83
  %i.dc = load ptr, ptr %9, align 8, !noalias !91 ; 3 uses
  %.not.i25.i = icmp eq ptr %i.dc, null
  br i1 %.not.i25.i, label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i: ; preds = %bb.r
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dc) #8, !inline_history !84
  br label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8, !noalias !91
  %i.dg = load i32, ptr %0, align 8, !alias.scope !91
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.s, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i
  %i.di = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10, !noalias !99 ; 4 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.di) #8, !noalias !99
  %i.dj = ptrtoint ptr %i.cb to i64
  store i64 %i.dj, ptr %10, align 8, !noalias !91
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull %10) #8
  %i.dk = load ptr, ptr %10, align 8, !noalias !91 ; 3 uses
  %.not.i26.i = icmp eq ptr %i.dk, null
  br i1 %.not.i26.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i: ; preds = %bb.s
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #8, !inline_history !87
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i, %bb.s
  %i.do = load ptr, ptr %7, align 8, !noalias !91
  store ptr null, ptr %7, align 8, !noalias !91
  store ptr %i.do, ptr %11, align 8, !noalias !91
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull %11) #8
  %i.dp = load ptr, ptr %11, align 8, !noalias !91 ; 3 uses
  %.not.i27.i = icmp eq ptr %i.dp, null
  br i1 %.not.i27.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(12) %i.dp) #8, !inline_history !87
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  store ptr %i.di, ptr %12, align 8, !noalias !91
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull %12) #8
  %i.dt = load ptr, ptr %12, align 8, !noalias !91 ; 3 uses
  %.not.i30.i = icmp eq ptr %i.dt, null
  br i1 %.not.i30.i, label %bb.t, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(12) %i.dt) #8, !inline_history !87
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.dx = load ptr, ptr %i.bl, align 8, !alias.scope !91 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.bm
  br i1 %i.dy, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.dz = load i64, ptr %i.bm, align 8, !alias.scope !91
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #9
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i
  %i.eb = load ptr, ptr %7, align 8, !noalias !91 ; 3 uses
  %.not.i34.jt1.i = icmp eq ptr %i.eb, null
  br i1 %.not.i34.jt1.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt1.i

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.ec = load ptr, ptr %7, align 8, !noalias !91 ; 3 uses
  %.not.i34.jt6.i = icmp eq ptr %i.ec, null
  br i1 %.not.i34.jt6.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt1.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i
  %i.ed = load ptr, ptr %i.eb, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(96) %i.eb) #8, !inline_history !88
  br label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i
  %i.eg = load ptr, ptr %i.ec, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(96) %i.ec) #8, !inline_history !88
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8, !noalias !91
  %i.ej = add nuw i32 %.085.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ej, %i.q
  br i1 %exitcond.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %bb.f, !llvm.loop !89

end_hunk_0
