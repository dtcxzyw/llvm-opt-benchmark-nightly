Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/eval?download=true
inline.NumInlined: 328
inline.NumDeleted: 252
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb:bb.a
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 4
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !23
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 5
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 5
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !23
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 6
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 6
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !23
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 7
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 7
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !23
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 8
  %.not.i11.i.i.7 = icmp eq ptr %i.cw, %i.as
  br i1 %.not.i11.i.i.7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, !llvm.loop !17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  store i64 %i.cy, ptr %i.au, align 8, !tbaa !22
  %i.cz = load ptr, ptr %7, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.db = load ptr, ptr %5, align 8, !tbaa !25    ; 6 uses
  %i.dc = icmp eq ptr %i.db, %i.b
  %i.dd = load ptr, ptr %7, align 8, !tbaa !25    ; 5 uses
  %i.de = icmp eq ptr %i.dd, %i.at                ; 2 uses
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.de, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.de, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.df = load i64, ptr %i.au, align 8, !tbaa !22 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  switch i64 %i.df, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !23
  store i8 %i.dh, ptr %i.db, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.di = load i64, ptr %i.au, align 8, !tbaa !22 ; 2 uses
  store i64 %i.di, ptr %i.c, align 8, !tbaa !22
  %i.dj = load ptr, ptr %5, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dd, ptr %5, align 8, !tbaa !25
  %i.dl = load <2 x i64>, ptr %i.au, align 8, !tbaa !23
  store <2 x i64> %i.dl, ptr %i.c, align 8, !tbaa !23
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !23
  store ptr %i.dd, ptr %5, align 8, !tbaa !25
  %i.dn = load <2 x i64>, ptr %i.au, align 8, !tbaa !23
  store <2 x i64> %i.dn, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.db, ptr %7, align 8, !tbaa !25
  store i64 %i.dm, ptr %i.at, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.at, ptr %7, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.do = phi ptr [ %i.db, %bb.t ], [ %i.at, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.au, align 8, !tbaa !22
  store i8 0, ptr %i.do, align 1, !tbaa !23
  %i.dp = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.at
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dr = load i64, ptr %i.at, align 8, !tbaa !23
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.dt, ptr %8, align 8, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.du, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.dv, align 4, !tbaa !13
  %i.dw = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false) #8 ; 2 uses
  %i.dx = extractvalue { ptr, i64 } %i.dw, 0
  %i.dy = extractvalue { ptr, i64 } %i.dw, 1
  %i.dz = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.dx, i64 %i.dy, i64 noundef 0) #8 ; 0 uses
  %i.ea = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dt
  br i1 %i.eb, label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ea) #8
  br label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit:           ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load ptr, ptr %5, align 8, !tbaa !25
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ee = call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #8 ; 0 uses
  %i.ef = call noundef i32 @_ZN6hermes2vm7Runtime20raiseEvalUnsupportedEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ec, i64 %i.ed) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.eg = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.b
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.x
  %i.ei = load i64, ptr %i.b, align 8, !tbaa !23
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.fca.0.insert.i30 = insertvalue { i32, i64 } poison, i32 %i.ef, 0
  %.fca.1.insert.i31 = insertvalue { i32, i64 } %.fca.0.insert.i30, i64 undef, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret { i32, i64 } %.fca.1.insert.i31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64 noundef) local_unnamed_addr #1

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  store ptr %i.c, ptr %i.a, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !13
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !48
  store ptr %3, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !52, !noalias !53
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !9 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -281474976710656
  %i.p = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.q = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -50331648
  %i.u = icmp ult i32 %i.t, 134217728
  %spec.select.i = select i1 %i.u, ptr %i.o, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  %i.v = call { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %spec.select.i, ptr nonnull align 8 poison, i1 zeroext poison, i1 zeroext poison) ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = extractvalue { i32, i64 } %i.v, 1
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5

_ZNK6hermes2vm10NativeArgs6getArgEj.exit5:        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.a, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit
  %.sroa.3.0 = phi i64 [ %i.x, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit ], [ -1688849860263936, %bb.a ], [ %.sroa.0.0.copyload.i, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %.sroa.07.0 = phi i32 [ %i.w, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit ], [ 1, %bb.a ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN4llvh15SmallVectorBaseE", !7, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!10, !7, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !5, i64 12}
!14 = distinct !{!14, !26, !27, !28}
!15 = distinct !{!15, !26, !27, !28}
!16 = distinct !{!16, !30}
!17 = distinct !{!17, !26, !27}
!18 = !{!"p1 omnipotent char", !7, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !8, i64 8, !4, i64 16}
!22 = !{!21, !8, i64 8}
!23 = !{!4, !4, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!21, !18, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, i1 false, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!32 = distinct !{!32, !31, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!33 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !7, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !7, i64 0}
!36 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !35, i64 8}
!37 = !{!36, !35, i64 8}
!38 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !10, i64 0}
!39 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !38, i64 0}
!40 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !39, i64 0}
!41 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !4, i64 0}
!42 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !40, i64 0, !41, i64 16}
!43 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !7, i64 0}
!44 = !{!"_ZTSN6hermes2vm7GCScopeE", !33, i64 0, !35, i64 8, !4, i64 16, !42, i64 144, !43, i64 192, !43, i64 200, !5, i64 208}
!45 = !{!44, !35, i64 8}
!46 = !{!44, !43, i64 192}
!47 = !{!44, !43, i64 200}
!48 = !{!44, !5, i64 208}
!49 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !43, i64 0}
!50 = !{!"_ZTSN6hermes2vm10NativeArgsE", !49, i64 0, !5, i64 8, !43, i64 16}
!51 = !{!50, !5, i64 8}
!52 = !{!49, !43, i64 0}
!53 = !{!32}
end_hunk_0
