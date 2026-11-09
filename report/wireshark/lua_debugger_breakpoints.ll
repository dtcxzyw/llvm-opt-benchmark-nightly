Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lua_debugger_breakpoints?download=true
inline.NumInlined: 3079
inline.NumDeleted: 1239
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN32LuaDebuggerBreakpointsController11restoreFromERK4QMapI7QString8QVariantE:bb.a
  %24 = alloca %class.QString, align 16           ; 10 uses
  %25 = alloca %class.QString, align 8            ; 10 uses
  %26 = alloca %class.QJsonValue, align 8         ; 7 uses
  %27 = alloca %class.QString, align 16           ; 10 uses
  %28 = alloca %class.QVariant, align 8           ; 7 uses
  %29 = alloca %class.QJsonValue, align 8         ; 7 uses
  %30 = alloca %class.QString, align 16           ; 10 uses
  %31 = alloca %class.QString, align 8            ; 10 uses
  %32 = alloca %class.QString, align 8            ; 9 uses
  %33 = alloca %class.QJsonValue, align 8         ; 7 uses
  %34 = alloca %class.QString, align 16           ; 10 uses
  %35 = alloca %class.QString, align 8            ; 10 uses
  %36 = alloca %class.QJsonValue, align 8         ; 7 uses
  %37 = alloca %class.QString, align 16           ; 10 uses
  %38 = alloca %class.QJsonValue, align 8         ; 7 uses
  %39 = alloca %class.QString, align 16           ; 10 uses
  %40 = alloca %class.QByteArray, align 8         ; 9 uses
  %41 = alloca %class.QByteArray, align 8         ; 9 uses
  %42 = alloca %class.QByteArray, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, i64 12, ptr @.str.72)
  %i.a = load ptr, ptr %10, align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN8QVariantC1Eb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %12, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noalias !151 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !151 ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ]
  %i.j = getelementptr i8, ptr %.012.i.i.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !151
  %i.l = getelementptr i8, ptr %.012.i.i.i.i, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noalias !151
  %i.n = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.m, ptr %i.k, i64 %i.e, ptr %i.c, i32 noundef 1) #29, !noalias !151
  %i.o = icmp slt i32 %i.n, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !noalias !151 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeI7QStringSt4pairIKS0_8QVariantESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !150

_ZNKSt8_Rb_treeI7QStringSt4pairIKS0_8QVariantESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.p, label %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i, label %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i

_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i: ; preds = %_ZNKSt8_Rb_treeI7QStringSt4pairIKS0_8QVariantESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.q = getelementptr i8, ptr %.19.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !noalias !151
  %i.s = getelementptr i8, ptr %.19.i.i.i.i, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noalias !151
  %i.u = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.e, ptr %i.c, i64 %i.t, ptr %i.r, i32 noundef 1) #29, !noalias !151
  %i.v = icmp slt i32 %i.u, 0
  %i.w = getelementptr i8, ptr %.19.i.i.i.i, i64 56
  %spec.select.i = select i1 %i.v, ptr %12, ptr %i.w
  br label %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i

_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i: ; preds = %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i, %_ZNKSt8_Rb_treeI7QStringSt4pairIKS0_8QVariantESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.c, %bb.b
  %.sink.i = phi ptr [ %spec.select.i, %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i ], [ %12, %bb.b ], [ %12, %_ZNKSt8_Rb_treeI7QStringSt4pairIKS0_8QVariantESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i ], [ %12, %bb.c ]
  invoke void @_ZN8QVariantC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %11, ptr noundef align 8 dereferenceable(32) %.sink.i)
          to label %_ZNK4QMapI7QString8QVariantE5valueERKS0_RKS1_.exit unwind label %bb.i

_ZNK4QMapI7QString8QVariantE5valueERKS0_RKS1_.exit: ; preds = %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i
  %i.x = invoke noundef zeroext i1 @_ZNK8QVariant6toBoolEv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %11)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNK4QMapI7QString8QVariantE5valueERKS0_RKS1_.exit
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #26
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.d
  %i.y = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.y, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN7QStringD2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @wslua_debugger_set_error_break_enabled(i1 noundef zeroext %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @_ZN24LuaDebuggerSettingsStore11jsonArrayAtERK4QMapI7QString8QVariantEPKc(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %13, ptr noundef align 8 dereferenceable(8) %1, ptr noundef @.str.71)
  %i.z = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, i64 noundef 0)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.aa = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 0 uses

.noexc:                                           ; preds = %bb.f
  %i.ab = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %.noexc
  %i.ac = shl i64 %i.ab, 1                        ; 2 uses
  %.not.a = icmp eq i64 %i.ac, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %42, i64 8
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit274, %bb.g
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.h:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZNKSt3mapI7QString8QVariantSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.thread.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4QMapI7QString8QVariantE5valueERKS0_RKS1_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.bd, %bb.i ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %12) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.bc, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not.i.i.i115 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i115, label %_ZN7QStringD2Ev.exit118, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116:   ; preds = %bb.l
  %i.bf = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i.i117 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i117, label %bb.m, label %_ZN7QStringD2Ev.exit118

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit118

_ZN7QStringD2Ev.exit118:                          ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.eh

bb.n:                                             ; preds = %_ZN7QStringD2Ev.exit, %.noexc, %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.o:                                             ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit274
  %.sroa.6.0326 = phi i64 [ 0, %.lr.ph ], [ %45, %_ZN7QStringD2Ev.exit274 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr %13, ptr %15, align 8
  store i64 %.sroa.6.0326, ptr %i.ad, align 8
  invoke void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(16) %15)
          to label %_ZNK13QJsonValueRefcv10QJsonValueEv.exit unwind label %bb.z

_ZNK13QJsonValueRefcv10QJsonValueEv.exit:         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(24) %14)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, i64 4, ptr @.str.73)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bh = load <2 x ptr>, ptr %9, align 16
  store <2 x ptr> %i.bh, ptr %19, align 16
  %i.bi = load i64, ptr %i.af, align 16
  store i64 %i.bi, ptr %i.ae, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %18, ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef nonnull align 8 dereferenceable_or_null(24) %18)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %18) #26
  %i.bj = load ptr, ptr %19, align 16             ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i123, label %_ZN7QStringD2Ev.exit126, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124:   ; preds = %bb.s
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %.not.i.i125 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i125, label %bb.t, label %_ZN7QStringD2Ev.exit126

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124
  %i.bl = load ptr, ptr %19, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit126

_ZN7QStringD2Ev.exit126:                          ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 4, ptr @.str.74)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit126
  %i.bm = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.bm, ptr %22, align 16
  %i.bn = load i64, ptr %i.ah, align 16
  store i64 %i.bn, ptr %i.ag, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %21, ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK10QJsonValue9toVariantEv(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %20, ptr noundef nonnull align 8 dereferenceable_or_null(24) %21)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bo = invoke noundef i64 @_ZNK8QVariant10toLongLongEPb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %20, ptr noundef null)
          to label %bb.x unwind label %bb.aj      ; 9 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %20) #26
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %21) #26
  %i.bp = load ptr, ptr %22, align 16             ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i129, label %_ZN7QStringD2Ev.exit132, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130:   ; preds = %bb.x
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4
  %.not.i.i131 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i131, label %bb.y, label %_ZN7QStringD2Ev.exit132

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130
  %i.br = load ptr, ptr %22, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit132

_ZN7QStringD2Ev.exit132:                          ; preds = %bb.x, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.bs = load i64, ptr %i.ai, align 8
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = icmp slt i64 %i.bo, 1
  %or.cond = or i1 %i.bu, %i.bt
  br i1 %or.cond, label %bb.dn, label %bb.an

bb.z:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.eg

bb.aa:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ab:                                            ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit136

bb.ac:                                            ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %18) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn66 = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %i.by, %bb.ac ] ; 3 uses
  %i.ca = load ptr, ptr %19, align 16             ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i133, label %_ZN7QStringD2Ev.exit136, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134:   ; preds = %bb.ae
  %i.cb = atomicrmw add ptr %i.ca, i32 -1 acq_rel, align 4
  %.not.i.i135 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i135, label %bb.af, label %_ZN7QStringD2Ev.exit136

bb.af:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134
  %i.cc = load ptr, ptr %19, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cc, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit136

_ZN7QStringD2Ev.exit136:                          ; preds = %bb.af, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134, %bb.ae, %bb.ab
  %.pn66.pn = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %.pn66, %bb.ae ], [ %.pn66, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134 ], [ %.pn66, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %_ZN7QStringD2Ev.exit302

bb.ag:                                            ; preds = %_ZN7QStringD2Ev.exit126
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit140

bb.ah:                                            ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %20) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn69 = phi { ptr, i32 } [ %i.cg, %bb.aj ], [ %i.cf, %bb.ai ]
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %21) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %bb.ak ], [ %i.ce, %bb.ah ] ; 3 uses
  %i.ch = load ptr, ptr %22, align 16             ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i137, label %_ZN7QStringD2Ev.exit140, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138:   ; preds = %bb.al
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %.not.i.i139 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i139, label %bb.am, label %_ZN7QStringD2Ev.exit140

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138
  %i.cj = load ptr, ptr %22, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cj, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit140

_ZN7QStringD2Ev.exit140:                          ; preds = %bb.am, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138, %bb.al, %bb.ag
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %.pn69.pn, %bb.al ], [ %.pn69.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138 ], [ %.pn69.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
end_hunk_0
begin_hunk_1_@_ZN32LuaDebuggerBreakpointsController11restoreFromERK4QMapI7QString8QVariantE:bb.a
_ZN7QStringD2Ev.exit228:                          ; preds = %bb.cx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i226, %bb.cw, %bb.ct
  %.pn90.pn = phi { ptr, i32 } [ %i.fo, %bb.ct ], [ %.pn90, %bb.cw ], [ %.pn90, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i226 ], [ %.pn90, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %bb.dy

bb.cy:                                            ; preds = %_ZN7QStringD2Ev.exit216
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit286

bb.cz:                                            ; preds = %bb.da, %bb.cn, %_ZNKR7QString6toUtf8Ev.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.da:                                            ; preds = %bb.cn, %bb.cm
  %i.fw = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i229 = icmp eq ptr %i.fw, null
  %spec.select.i.i230 = select i1 %.not.i.i229, ptr @_ZN10QByteArray6_emptyE, ptr %i.fw
  invoke void @wslua_debugger_set_breakpoint_active(ptr noundef nonnull %spec.select.i.i230, i64 noundef %i.bo, i1 noundef zeroext %i.cm)
          to label %bb.db unwind label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %41, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %25)
          to label %_ZNKR7QString6toUtf8Ev.exit232 unwind label %bb.dp

_ZNKR7QString6toUtf8Ev.exit232:                   ; preds = %bb.db
  %i.fx = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i233 = icmp eq ptr %i.fx, null
  %spec.select.i.i234 = select i1 %.not.i.i233, ptr @_ZN10QByteArray6_emptyE, ptr %i.fx
  %i.fy = load i64, ptr %i.ay, align 8
  %i.fz = icmp eq i64 %i.fy, 0
  %i.ga = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i.i235 = icmp eq ptr %i.ga, null
  %spec.select.i.i236 = select i1 %.not.i.i235, ptr @_ZN10QByteArray6_emptyE, ptr %i.ga
  %i.gb = select i1 %i.fz, ptr null, ptr %spec.select.i.i236
  invoke void @wslua_debugger_set_breakpoint_condition(ptr noundef nonnull %spec.select.i.i234, i64 noundef %i.bo, ptr noundef %i.gb)
          to label %bb.dc unwind label %bb.dq

bb.dc:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit232
  %i.gc = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i237 = icmp eq ptr %i.gc, null
  %spec.select.i.i238 = select i1 %.not.i.i237, ptr @_ZN10QByteArray6_emptyE, ptr %i.gc
  invoke void @wslua_debugger_set_breakpoint_hit_count_target(ptr noundef nonnull %spec.select.i.i238, i64 noundef %i.bo, i64 noundef %i.cx)
          to label %bb.dd unwind label %bb.dq

bb.dd:                                            ; preds = %bb.dc
  %i.gd = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.gd, null
  %spec.select.i.i240 = select i1 %.not.i.i239, ptr @_ZN10QByteArray6_emptyE, ptr %i.gd
  invoke void @wslua_debugger_set_breakpoint_hit_count_mode(ptr noundef nonnull %spec.select.i.i240, i64 noundef %i.bo, i32 noundef %.0)
          to label %bb.de unwind label %bb.dq

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %35)
          to label %_ZNKR7QString6toUtf8Ev.exit242 unwind label %bb.dr

_ZNKR7QString6toUtf8Ev.exit242:                   ; preds = %bb.de
  %i.ge = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i243 = icmp eq ptr %i.ge, null
  %spec.select.i.i244 = select i1 %.not.i.i243, ptr @_ZN10QByteArray6_emptyE, ptr %i.ge
  %i.gf = load i64, ptr %i.ba, align 8
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i.i245 = icmp eq ptr %i.gh, null
  %spec.select.i.i246 = select i1 %.not.i.i245, ptr @_ZN10QByteArray6_emptyE, ptr %i.gh
  %i.gi = select i1 %i.gg, ptr null, ptr %spec.select.i.i246
  invoke void @wslua_debugger_set_breakpoint_log_message(ptr noundef nonnull %spec.select.i.i244, i64 noundef %i.bo, ptr noundef %i.gi)
          to label %bb.df unwind label %bb.ds

bb.df:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit242
  %i.gj = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.gj, null
  %spec.select.i.i248 = select i1 %.not.i.i247, ptr @_ZN10QByteArray6_emptyE, ptr %i.gj
  invoke void @wslua_debugger_set_breakpoint_log_also_pause(ptr noundef nonnull %spec.select.i.i248, i64 noundef %i.bo, i1 noundef zeroext %i.fa)
          to label %bb.dg unwind label %bb.ds

bb.dg:                                            ; preds = %bb.df
  %i.gk = load ptr, ptr %42, align 8              ; 2 uses
  %.not.i.i.i249 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i249, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.dg
  %i.gl = atomicrmw add ptr %i.gk, i32 -1 acq_rel, align 4
  %.not.i.i250 = icmp eq i32 %i.gl, 1
  br i1 %.not.i.i250, label %bb.dh, label %_ZN10QByteArrayD2Ev.exit

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.gm = load ptr, ptr %42, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gm, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.dg, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  %i.gn = load ptr, ptr %41, align 8              ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i251, label %_ZN10QByteArrayD2Ev.exit254, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i252

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i252:    ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.go = atomicrmw add ptr %i.gn, i32 -1 acq_rel, align 4
  %.not.i.i253 = icmp eq i32 %i.go, 1
  br i1 %.not.i.i253, label %bb.di, label %_ZN10QByteArrayD2Ev.exit254

bb.di:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i252
  %i.gp = load ptr, ptr %41, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gp, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit254

_ZN10QByteArrayD2Ev.exit254:                      ; preds = %_ZN10QByteArrayD2Ev.exit, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i252, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  %i.gq = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i255, label %_ZN10QByteArrayD2Ev.exit258, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i256

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i256:    ; preds = %_ZN10QByteArrayD2Ev.exit254
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4
  %.not.i.i257 = icmp eq i32 %i.gr, 1
  br i1 %.not.i.i257, label %bb.dj, label %_ZN10QByteArrayD2Ev.exit258

bb.dj:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i256
  %i.gs = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gs, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit258

_ZN10QByteArrayD2Ev.exit258:                      ; preds = %_ZN10QByteArrayD2Ev.exit254, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i256, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.gt = load ptr, ptr %35, align 8              ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i259, label %_ZN7QStringD2Ev.exit262, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i260

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i260:   ; preds = %_ZN10QByteArrayD2Ev.exit258
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %.not.i.i261 = icmp eq i32 %i.gu, 1
  br i1 %.not.i.i261, label %bb.dk, label %_ZN7QStringD2Ev.exit262

bb.dk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i260
  %i.gv = load ptr, ptr %35, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gv, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit262

_ZN7QStringD2Ev.exit262:                          ; preds = %_ZN10QByteArrayD2Ev.exit258, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i260, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.gw = load ptr, ptr %31, align 8              ; 2 uses
  %.not.i.i.i263 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i263, label %_ZN7QStringD2Ev.exit266, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264:   ; preds = %_ZN7QStringD2Ev.exit262
  %i.gx = atomicrmw add ptr %i.gw, i32 -1 acq_rel, align 4
  %.not.i.i265 = icmp eq i32 %i.gx, 1
  br i1 %.not.i.i265, label %bb.dl, label %_ZN7QStringD2Ev.exit266

bb.dl:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264
  %i.gy = load ptr, ptr %31, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gy, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit266

_ZN7QStringD2Ev.exit266:                          ; preds = %_ZN7QStringD2Ev.exit262, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.gz = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i267, label %_ZN7QStringD2Ev.exit270, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i268

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i268:   ; preds = %_ZN7QStringD2Ev.exit266
  %i.ha = atomicrmw add ptr %i.gz, i32 -1 acq_rel, align 4
  %.not.i.i269 = icmp eq i32 %i.ha, 1
  br i1 %.not.i.i269, label %bb.dm, label %_ZN7QStringD2Ev.exit270

bb.dm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i268
  %i.hb = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hb, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit270

_ZN7QStringD2Ev.exit270:                          ; preds = %_ZN7QStringD2Ev.exit266, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i268, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN7QStringD2Ev.exit132, %_ZN7QStringD2Ev.exit270
  %i.hc = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i271, label %_ZN7QStringD2Ev.exit274, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272:   ; preds = %bb.dn
  %i.hd = atomicrmw add ptr %i.hc, i32 -1 acq_rel, align 4
  %.not.i.i273 = icmp eq i32 %i.hd, 1
  br i1 %.not.i.i273, label %bb.do, label %_ZN7QStringD2Ev.exit274

bb.do:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272
  %i.he = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.he, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit274

_ZN7QStringD2Ev.exit274:                          ; preds = %bb.dn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %43 = and i64 %.sroa.6.0326, -2
  %i.hf = add i64 %43, 2                          ; 2 uses
  %44 = and i64 %.sroa.6.0326, 1
  %45 = or disjoint i64 %i.hf, %44
  %.not327 = icmp eq i64 %i.hf, %i.ac
  br i1 %.not327, label %._crit_edge, label %bb.o

bb.dp:                                            ; preds = %bb.db
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit282

bb.dq:                                            ; preds = %bb.dd, %bb.dc, %_ZNKR7QString6toUtf8Ev.exit232
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dr:                                            ; preds = %bb.de
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit278

bb.ds:                                            ; preds = %bb.df, %_ZNKR7QString6toUtf8Ev.exit242
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hk = load ptr, ptr %42, align 8              ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i275, label %_ZN10QByteArrayD2Ev.exit278, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i276

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i276:    ; preds = %bb.ds
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %.not.i.i277 = icmp eq i32 %i.hl, 1
  br i1 %.not.i.i277, label %bb.dt, label %_ZN10QByteArrayD2Ev.exit278

bb.dt:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i276
  %i.hm = load ptr, ptr %42, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hm, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit278

_ZN10QByteArrayD2Ev.exit278:                      ; preds = %bb.dt, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i276, %bb.ds, %bb.dr
  %.pn93 = phi { ptr, i32 } [ %i.hi, %bb.dr ], [ %i.hj, %bb.ds ], [ %i.hj, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i276 ], [ %i.hj, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  br label %bb.du

bb.du:                                            ; preds = %_ZN10QByteArrayD2Ev.exit278, %bb.dq
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZN10QByteArrayD2Ev.exit278 ], [ %i.hh, %bb.dq ] ; 3 uses
  %i.hn = load ptr, ptr %41, align 8              ; 2 uses
  %.not.i.i.i279 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i279, label %_ZN10QByteArrayD2Ev.exit282, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i280

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i280:    ; preds = %bb.du
  %i.ho = atomicrmw add ptr %i.hn, i32 -1 acq_rel, align 4
  %.not.i.i281 = icmp eq i32 %i.ho, 1
  br i1 %.not.i.i281, label %bb.dv, label %_ZN10QByteArrayD2Ev.exit282

bb.dv:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i280
  %i.hp = load ptr, ptr %41, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hp, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit282

_ZN10QByteArrayD2Ev.exit282:                      ; preds = %bb.dv, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i280, %bb.du, %bb.dp
  %.pn93.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.dp ], [ %.pn93.pn, %bb.du ], [ %.pn93.pn, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i280 ], [ %.pn93.pn, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN10QByteArrayD2Ev.exit282, %bb.cz
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn, %_ZN10QByteArrayD2Ev.exit282 ], [ %i.fv, %bb.cz ] ; 3 uses
  %i.hq = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i283, label %_ZN10QByteArrayD2Ev.exit286, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i284

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i284:    ; preds = %bb.dw
  %i.hr = atomicrmw add ptr %i.hq, i32 -1 acq_rel, align 4
  %.not.i.i285 = icmp eq i32 %i.hr, 1
  br i1 %.not.i.i285, label %bb.dx, label %_ZN10QByteArrayD2Ev.exit286

bb.dx:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i284
  %i.hs = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hs, i64 noundef 1, i64 noundef 8) #26
  br label %_ZN10QByteArrayD2Ev.exit286

_ZN10QByteArrayD2Ev.exit286:                      ; preds = %bb.dx, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i284, %bb.dw, %bb.cy
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.cy ], [ %.pn93.pn.pn.pn, %bb.dw ], [ %.pn93.pn.pn.pn, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i284 ], [ %.pn93.pn.pn.pn, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN10QByteArrayD2Ev.exit286, %_ZN7QStringD2Ev.exit228
  %.pn93.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn, %_ZN10QByteArrayD2Ev.exit286 ], [ %.pn90.pn, %_ZN7QStringD2Ev.exit228 ] ; 3 uses
  %i.ht = load ptr, ptr %35, align 8              ; 2 uses
  %.not.i.i.i287 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i287, label %_ZN7QStringD2Ev.exit290, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288:   ; preds = %bb.dy
  %i.hu = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %.not.i.i289 = icmp eq i32 %i.hu, 1
  br i1 %.not.i.i289, label %bb.dz, label %_ZN7QStringD2Ev.exit290

bb.dz:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288
  %i.hv = load ptr, ptr %35, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hv, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit290

_ZN7QStringD2Ev.exit290:                          ; preds = %bb.dz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288, %bb.dy, %_ZN7QStringD2Ev.exit224
  %.pn93.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn, %_ZN7QStringD2Ev.exit224 ], [ %.pn93.pn.pn.pn.pn.pn, %bb.dy ], [ %.pn93.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288 ], [ %.pn93.pn.pn.pn.pn.pn, %bb.dz ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.hw = load ptr, ptr %31, align 8              ; 2 uses
  %.not.i.i.i291 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i291, label %_ZN7QStringD2Ev.exit294, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i292

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i292:   ; preds = %_ZN7QStringD2Ev.exit290
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %.not.i.i293 = icmp eq i32 %i.hx, 1
  br i1 %.not.i.i293, label %bb.ea, label %_ZN7QStringD2Ev.exit294

bb.ea:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i292
  %i.hy = load ptr, ptr %31, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hy, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit294

_ZN7QStringD2Ev.exit294:                          ; preds = %bb.ea, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i292, %_ZN7QStringD2Ev.exit290, %_ZN7QStringD2Ev.exit195
  %.pn93.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn, %_ZN7QStringD2Ev.exit195 ], [ %.pn93.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit290 ], [ %.pn93.pn.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i292 ], [ %.pn93.pn.pn.pn.pn.pn.pn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN7QStringD2Ev.exit294, %_ZN7QStringD2Ev.exit187
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit294 ], [ %.pn79.pn.pn, %_ZN7QStringD2Ev.exit187 ] ; 3 uses
  %i.hz = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i295, label %_ZN7QStringD2Ev.exit298, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i296

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i296:   ; preds = %bb.eb
  %i.ia = atomicrmw add ptr %i.hz, i32 -1 acq_rel, align 4
  %.not.i.i297 = icmp eq i32 %i.ia, 1
  br i1 %.not.i.i297, label %bb.ec, label %_ZN7QStringD2Ev.exit298

bb.ec:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i296
  %i.ib = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ib, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit298

_ZN7QStringD2Ev.exit298:                          ; preds = %bb.ec, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i296, %bb.eb, %_ZN7QStringD2Ev.exit183
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %_ZN7QStringD2Ev.exit183 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eb ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i296 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.ed

bb.ed:                                            ; preds = %_ZN7QStringD2Ev.exit179, %_ZN7QStringD2Ev.exit298, %_ZN7QStringD2Ev.exit140
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZN7QStringD2Ev.exit140 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit298 ], [ %.pn73.pn, %_ZN7QStringD2Ev.exit179 ] ; 3 uses
  %i.ic = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i299, label %_ZN7QStringD2Ev.exit302, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i300

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i300:   ; preds = %bb.ed
  %i.id = atomicrmw add ptr %i.ic, i32 -1 acq_rel, align 4
  %.not.i.i301 = icmp eq i32 %i.id, 1
  br i1 %.not.i.i301, label %bb.ee, label %_ZN7QStringD2Ev.exit302

bb.ee:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i300
  %i.ie = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ie, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit302

_ZN7QStringD2Ev.exit302:                          ; preds = %bb.ee, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i300, %bb.ed, %_ZN7QStringD2Ev.exit136
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %_ZN7QStringD2Ev.exit136 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ed ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i300 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %16) #26
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN7QStringD2Ev.exit302, %bb.aa
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit302 ], [ %i.bw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.eg

bb.eg:                                            ; preds = %bb.n, %bb.ef, %bb.z
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bg, %bb.n ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ef ]
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_ZN7QStringD2Ev.exit118
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eg ], [ %.pn.pn, %_ZN7QStringD2Ev.exit118 ]
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @wslua_debugger_set_error_break_enabled(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN24LuaDebuggerSettingsStore11jsonArrayAtERK4QMapI7QString8QVariantEPKc(ptr dead_on_unwind writable sret(%class.QJsonArray) align 8, ptr noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind writable sret(%class.QJsonObject) align 8, ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind writable sret(%class.QJsonValue) align 8, ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK10QJsonValue9toVariantEv(ptr dead_on_unwind writable sret(%class.QVariant) align 8, ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK10QJsonValue6toBoolEb(ptr noundef align 8 dereferenceable_or_null(24), i1 noundef zeroext) local_unnamed_addr #1
end_hunk_1
