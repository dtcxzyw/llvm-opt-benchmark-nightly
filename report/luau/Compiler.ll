Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8Compiler11FenvVisitor5visitEPNS_13AstExprGlobalE:bb.a
bb.b:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !687, !nonnull !87
  store i8 1, ptr %i.f, align 1, !tbaa !225
  br label %_ZNK4Luau7AstNameeqEPKc.exit4

_ZNK4Luau7AstNameeqEPKc.exit4:                    ; preds = %_ZNK4Luau7AstNameeqEPKc.exit, %bb.b
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(8) @.str.119) #27
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK4Luau7AstNameeqEPKc.exit4.thread

bb.c:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !688, !nonnull !87
  store i8 1, ptr %i.j, align 1, !tbaa !225
  br label %_ZNK4Luau7AstNameeqEPKc.exit4.thread

_ZNK4Luau7AstNameeqEPKc.exit4.thread:             ; preds = %bb.a, %bb.c, %_ZNK4Luau7AstNameeqEPKc.exit4
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler21buildExportTableShapeEv(ptr noundef nonnull align 8 dereferenceable(1904) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.Luau::BytecodeBuilder::TableShape", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !411
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  store i8 0, ptr %i.b, align 4, !tbaa !412
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !228  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 248
  %.not41 = icmp eq ptr %i.f, %i.e
  %or.cond = or i1 %i.j, %.not41
  br i1 %or.cond, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.p = phi i32 [ 0, %.lr.ph ], [ %i.ba, %.critedge ]
  %.sroa.030.042 = phi ptr [ %i.f, %.lr.ph ], [ %i.bb, %.critedge ] ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !413
  %i.r = icmp eq i64 %i.q, 0
  %.pre.pre = load ptr, ptr %.sroa.030.042, align 8, !tbaa !272 ; 5 uses
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !272  ; 2 uses
  %i.t = icmp eq ptr %.pre.pre, %i.s
  br i1 %i.t, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.n, align 8, !tbaa !414
  %i.v = add i64 %i.u, -1                         ; 2 uses
  %i.w = ptrtoint ptr %.pre.pre to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !249
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.z, %bb.d ], [ %i.ag, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.af, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.v            ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.01929.i.i ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !272 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %.pre.pre
  br i1 %i.ad, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq ptr %i.ac, %i.s
  br i1 %i.ae, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.ag = add i64 %i.af, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.af, %i.v
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.133) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %.sroa.0.0.copyload = load ptr, ptr %.pre.pre, align 8, !tbaa !55 ; 2 uses
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #27
  %i.al = tail call noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantStringENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1048) %i.aj, ptr nonnull %.sroa.0.0.copyload, i64 %i.ak) ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.critedge27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = zext i32 %i.p to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !40
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.an ; 2 uses
  store i32 -1, ptr %i.ap, align 4, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !416, !range !86, !noundef !87
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !417, !range !86, !noundef !87
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !418
  %i.ax = tail call noundef i32 @_ZN4Luau8Compiler16getConstantIndexEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.aw) ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.l, label %.critedge27

bb.l:                                             ; preds = %bb.k
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !40
  store i8 1, ptr %i.b, align 4, !tbaa !412
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.j, %bb.i
  %i.az = load i32, ptr %i.a, align 4, !tbaa !411
  %i.ba = add i32 %i.az, 1                        ; 3 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !411
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.e
  br i1 %.not, label %.critedge28, label %bb.b

.critedge28:                                      ; preds = %.critedge
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %.critedge27, label %bb.m

bb.m:                                             ; preds = %.critedge28
  %i.bd = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.be = call noundef i32 @_ZN4Luau15BytecodeBuilder16addConstantTableERKNS0_10TableShapeE(ptr noundef nonnull align 8 dereferenceable(1048) %i.bd, ptr noundef nonnull align 4 dereferenceable(261) %1)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !419
  br label %.critedge27

.critedge27:                                      ; preds = %bb.k, %bb.h, %.critedge28, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare noundef i32 @_ZN4Luau15BytecodeBuilder13beginFunctionEhb(ptr noundef nonnull align 8 dereferenceable(1048), i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #12

declare void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !220  ; 2 uses
  %i.c = add i32 %i.b, %2                         ; 3 uses
  %i.d = icmp ugt i32 %i.c, 255
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull @.str.135, i32 noundef %2, i32 noundef 255) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.a, align 4, !tbaa !220
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.c)
  store i32 %i.h, ptr %i.f, align 8, !tbaa !221
  %i.i = trunc i32 %i.b to i8
  ret i8 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler9pushLocalEPNS_8AstLocalEhj(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !228  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 199
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %1, align 8, !tbaa !420
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull @.str.136, ptr noundef %i.l, i32 noundef 200) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !227
  %.not.i = icmp eq ptr %i.d, %i.n
  br i1 %.not.i, label %4, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.d, align 8, !tbaa !272
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.c, align 8, !tbaa !229
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE9push_backERKS2_.exit

4:                                                ; preds = %bb.c
  %5 = icmp eq i64 %i.h, 9223372036854775800
  br i1 %5, label %6, label %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #28
  unreachable

_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %4
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.p = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.i ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !272
  %i.t = icmp sgt i64 %i.h, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !227
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.x) #29
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !228
  store ptr %i.u, ptr %i.c, align 8, !tbaa !229
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.m, align 8, !tbaa !227
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  store i8 %2, ptr %i.aa, align 4, !tbaa !421
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 1, ptr %i.ab, align 1, !tbaa !422
  %i.ac = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ad = call noundef i32 @_ZNK4Luau15BytecodeBuilder10getDebugPCEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !423
  %i.af = icmp eq i32 %3, -1
  %. = select i1 %i.af, i32 %i.ad, i32 %3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %., ptr %i.ag, align 4, !tbaa !424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler11compileStatEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Compiler::LoopJump", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !269
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !270
  %i.g = add i32 %i.f, 1
  tail call void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.d, i32 noundef %i.g)
  br label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit

_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !425
  %i.k = icmp sgt i32 %i.j, 0
  %.pre209 = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !40 ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !278  ; 2 uses
  %i.n = icmp ne i32 %i.m, %.pre209
  %i.o = load i32, ptr @_ZN4Luau7AstRttiINS_16AstStatTypeAliasEE5valueE, align 4
  %i.p = icmp ne i32 %i.m, %i.o
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.r, i32 noundef 69, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.s = phi i32 [ %.pre, %bb.d ], [ %.pre209, %bb.c ], [ %.pre209, %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !278  ; 18 uses
  %i.v = icmp ne i32 %i.u, %i.s
  %.not177 = icmp eq ptr %1, null                 ; 14 uses
  %.not = or i1 %.not177, %i.v
  br i1 %.not, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !229
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !228
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 3 uses
  %i.ag = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86, !noundef !87 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !690
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !690
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread.i, %_ZN4Luau8Compiler11closeLocalsEm.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !285
  %.not204 = icmp eq i64 %i.an, 0
  br i1 %.not204, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit
  %i.aq = add nuw i64 %.0105199, 1                ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !285
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !689

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.0105199 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !286
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.0105199
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !277 ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileStatEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.av)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = invoke noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef %i.av)
          to label %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit: ; preds = %bb.l
  br i1 %i.aw, label %._crit_edge.loopexit, label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.j, %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit
  %.pre210 = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ay = phi i8 [ %.pre210, %._crit_edge.loopexit ], [ %i.ag, %bb.i ]
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !690
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !690
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !229
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !228 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = icmp ult i64 %i.af, %i.bi
  br i1 %i.bj, label %.lr.ph19.i, label %_ZN4Luau8Compiler11closeLocalsEm.exit

.lr.ph19.i:                                       ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !289
  %i.bp = add i64 %i.bo, -1                       ; 3 uses
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !250 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %.lr.ph19.i
  %.018.ph.i = phi i64 [ %i.cm, %.thread.i ], [ %i.af, %.lr.ph19.i ]
end_hunk_0
