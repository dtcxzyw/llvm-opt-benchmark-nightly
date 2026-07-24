inline.NumInlined: 1430
inline.NumDeleted: 710
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE:bb.a
  %3 = alloca %"struct.std::pair.36", align 8     ; 4 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4llvh11raw_ostreamlsEPKc.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %1, %i.j
  br i1 %.not1.i, label %.critedge4.i, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %.not13.i = icmp ugt ptr %1, %i.l
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !74

.critedge4.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %.critedge4.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = icmp ult ptr %i.q, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.o
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !54  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79   ; 3 uses
  %i.u = add i32 %i.t, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.pre16, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %1, %i.z
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.b, align 8, !tbaa !57
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.d, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.e, %bb.f
  %i.aa = phi ptr [ %i.f, %bb.d ], [ %.pre16, %bb.f ], [ %.pre16, %bb.e ], [ %.pre16, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.c, %bb.d ], [ %i.t, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ] ; 2 uses
  %i.ab = add i32 %.1.i, -1
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !46
  tail call void @_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 14
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str, i64 noundef 14) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ai, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.an, %bb.g ], [ %2, %bb.h ] ; 5 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ac
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call { ptr, i64 } %i.av(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #19 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !121
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 3 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ugt i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.bh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.ax, i64 noundef %i.ay) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i8 = icmp eq i64 %i.ay, 0
  br i1 %.not.i8, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ay ; 2 uses
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.i, %bb.j, %bb.k
  %i.bk = phi ptr [ %.pre17, %bb.i ], [ %i.bj, %bb.k ], [ %i.bc, %bb.j ] ; 2 uses
  %.0.i = phi ptr [ %i.bh, %bb.i ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.j ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !121
  %i.bn = icmp eq ptr %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.1, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 58, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.l, %bb.m
  %.0.i.i10 = phi ptr [ %i.bo, %bb.l ], [ %.0.i, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.36") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nonnull %1, i32 noundef %.1.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, i64 noundef %i.bu) #19 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !124 ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 2
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.ce = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, ptr noundef nonnull @.str.2, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  store i16 2618, ptr %i.bz, align 1
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !124
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

_ZN4llvh11raw_ostreamlsEPKc.exit14:               ; preds = %bb.o, %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind noalias writable sret(%"class.llvh::SMDiagnostic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = ptrtoint ptr %2 to i64                     ; 4 uses
  %8 = alloca %"struct.std::pair.36", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.llvh::SmallVector.49", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.llvh::StringRef", align 8  ; 3 uses
  %15 = alloca %"class.llvh::ArrayRef.56", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.e, ptr %10, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.f, align 8, !tbaa !25
  store i8 0, ptr %i.e, align 8, !tbaa !11
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -1
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %2, %i.o
  br i1 %.not1.i, label %.critedge4.i, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %.not13.i = icmp ugt ptr %2, %i.q
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !74

.critedge4.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.t, %.critedge4.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = icmp ult ptr %i.v, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.t
  %.pre86 = load ptr, ptr %1, align 8, !tbaa !54  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = add i32 %i.y, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.pre86, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %2, %i.ae
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.y, ptr %i.g, align 8, !tbaa !57
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.d, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.e, %bb.f
  %i.af = phi ptr [ %i.k, %bb.d ], [ %.pre86, %bb.f ], [ %.pre86, %bb.e ], [ %.pre86, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.h, %bb.d ], [ %i.y, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ] ; 2 uses
  %i.ag = add i32 %.1.i, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call { ptr, i64 } %i.am(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #19 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75 ; 3 uses
  %16 = ptrtoint ptr %i.ar to i64
  %i.as = sub i64 %16, %7
  %scevgep = getelementptr i8, ptr %2, i64 %i.as  ; 2 uses
  %.not109 = icmp eq ptr %2, %i.ar
  br i1 %.not109, label %.critedge, label %.lr.ph111

bb.g:                                             ; preds = %.lr.ph111
  %.not = icmp eq ptr %i.at, %i.ar
  br i1 %.not, label %.critedge, label %.lr.ph111, !llvm.loop !129

.lr.ph111:                                        ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, %bb.g
  %.0110 = phi ptr [ %i.at, %bb.g ], [ %2, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.0110, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  switch i8 %i.au, label %bb.g [
    i8 10, label %..critedge_crit_edge
    i8 13, label %..critedge_crit_edge
  ], !llvm.loop !129

..critedge_crit_edge:                             ; preds = %.lr.ph111, %.lr.ph111
  br label %.critedge, !llvm.loop !129

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %.0.lcssa = phi ptr [ %.0110, %..critedge_crit_edge ], [ %scevgep, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit ], [ %scevgep, %bb.g ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 3 uses
  %.not4575 = icmp eq ptr %2, %i.aw
  br i1 %.not4575, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %17 = ptrtoint ptr %i.aw to i64
  %i.ax = sub i64 %17, %7
  %scevgep84 = getelementptr i8, ptr %2, i64 %i.ax
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.03976 = phi ptr [ %i.az, %bb.h ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.ay = load i8, ptr %.03976, align 1, !tbaa !11
  switch i8 %i.ay, label %bb.h [
    i8 10, label %.critedge2.loopexit
    i8 13, label %.critedge2.loopexit
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.03976, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.az, %i.aw
  br i1 %.not45, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !130

.critedge2.loopexit:                              ; preds = %.lr.ph, %.lr.ph, %bb.h
  %.039.lcssa.ph = phi ptr [ %scevgep84, %bb.h ], [ %.03976, %.lr.ph ], [ %.03976, %.lr.ph ] ; 2 uses
  %.pre87 = ptrtoint ptr %.039.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre87, %.critedge2.loopexit ], [ %7, %.critedge ]
  %.039.lcssa = phi ptr [ %.039.lcssa.ph, %.critedge2.loopexit ], [ %2, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  store ptr %i.ba, ptr %11, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bc = ptrtoint ptr %.0.lcssa to i64           ; 3 uses
  %i.bd = sub i64 %.pre-phi, %i.bc                ; 4 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !51
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %.critedge2
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !20
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !11
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.critedge2
  %i.bh = phi ptr [ %i.bf, %bb.i ], [ %i.ba, %.critedge2 ] ; 2 uses
  switch i64 %i.bd, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bi = load i8, ptr %.0.lcssa, align 1, !tbaa !11
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %.0.lcssa, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !25
  %i.bk = load ptr, ptr %11, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bm = load ptr, ptr %10, align 8, !tbaa !20   ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  %i.bo = load ptr, ptr %11, align 8, !tbaa !20   ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.ba                ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  br i1 %i.bp, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  br i1 %i.bp, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = load i64, ptr %i.bb, align 8, !tbaa !25 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  switch i64 %i.bq, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !11
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bt, ptr %i.f, align 8, !tbaa !25
  %i.bu = load ptr, ptr %10, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !11
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bo, ptr %10, align 8, !tbaa !20
  %i.bw = load <2 x i64>, ptr %i.bb, align 8, !tbaa !11
  store <2 x i64> %i.bw, ptr %i.f, align 8, !tbaa !11
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !11
  store ptr %i.bo, ptr %10, align 8, !tbaa !20
  %i.by = load <2 x i64>, ptr %i.bb, align 8, !tbaa !11
  store <2 x i64> %i.by, ptr %i.f, align 8, !tbaa !11
  %.not.i49 = icmp eq ptr %i.bm, null
  br i1 %.not.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bm, ptr %11, align 8, !tbaa !20
  store i64 %i.bx, ptr %i.ba, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ba, ptr %11, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bz = phi ptr [ %i.bm, %bb.o ], [ %i.ba, %bb.p ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bb, align 8, !tbaa !25
  store i8 0, ptr %i.bz, align 1, !tbaa !11
  %i.ca = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ba
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cc = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !131 ; 2 uses
  %i.cg = and i64 %i.cf, 4294967295
  %.not4881 = icmp eq i64 %i.cg, 0
  br i1 %.not4881, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load ptr, ptr %5, align 8, !tbaa !134
  %i.ci = and i64 %i.cf, 4294967295
  br label %bb.q

._crit_edge:                                      ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.36") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %2, i32 noundef %.1.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ck = load ptr, ptr %8, align 8, !tbaa !120
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %7, %i.cl
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.co = trunc i64 %i.cm to i32
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph83, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !46 ; 3 uses
  %i.cq = icmp eq ptr %.sroa.060.0.copyload, null
  %i.cr = icmp ugt ptr %.sroa.060.0.copyload, %.039.lcssa
  %or.cond = or i1 %i.cq, %i.cr
  %i.cs = icmp ult ptr %.sroa.8.0.copyload, %.0.lcssa
  %or.cond73 = select i1 %or.cond, i1 true, i1 %i.cs
  br i1 %or.cond73, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = icmp ult ptr %.sroa.060.0.copyload, %.0.lcssa
  %spec.select = select i1 %i.ct, ptr %.0.lcssa, ptr %.sroa.060.0.copyload
  %i.cu = icmp ugt ptr %.sroa.8.0.copyload, %.039.lcssa
  %.sroa.8.0 = select i1 %i.cu, ptr %.039.lcssa, ptr %.sroa.8.0.copyload
  %i.cv = ptrtoint ptr %spec.select to i64
  %i.cw = sub i64 %i.cv, %i.bc
  %i.cx = ptrtoint ptr %.sroa.8.0 to i64
  %i.cy = sub i64 %i.cx, %i.bc
  %.sroa.2.0.insert.ext.i = shl i64 %i.cy, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.cw, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !127 ; 2 uses
  %i.da = load i32, ptr %i.d, align 4, !tbaa !128
  %.not.i50 = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit, label %bb.s, !prof !135

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 8) #19
  %.pre.i51 = load i32, ptr %i.c, align 8, !tbaa !127
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit

_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit: ; preds = %bb.r, %bb.s
  %i.db = phi i32 [ %.pre.i51, %bb.s ], [ %i.cz, %bb.r ]
  %i.dc = load ptr, ptr %9, align 8, !tbaa !125
  %i.dd = zext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.de, align 1
  %i.df = load i32, ptr %i.c, align 8, !tbaa !127
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.c, align 8, !tbaa !127
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not48 = icmp eq i64 %indvars.iv.next, %i.ci
  br i1 %.not48, label %._crit_edge, label %bb.q, !llvm.loop !136

bb.u:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.067.0 = phi ptr [ %i.ao, %._crit_edge ], [ @.str.3, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.ap, %._crit_edge ], [ 9, %bb.a ]
  %.sroa.068.0 = phi i32 [ %i.cn, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.569.0 = phi i32 [ %i.co, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(18) %4) #19
  %i.dh = load ptr, ptr %13, align 8, !tbaa !20
  store ptr %i.dh, ptr %12, align 8, !tbaa !120
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !25
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !137
  %i.dl = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %i.dl, ptr %14, align 8, !tbaa !120
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dn = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !137
  %i.do = load ptr, ptr %9, align 8, !tbaa !125
  store ptr %i.do, ptr %15, align 8, !tbaa !138
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dq = load i32, ptr %i.c, align 8, !tbaa !127
  %i.dr = zext i32 %i.dq to i64
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !141
  call void @_ZN4llvh12SMDiagnosticC2ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, ptr %.sroa.067.0, i64 %.sroa.5.0, i32 noundef %.sroa.068.0, i32 noundef %.sroa.569.0, i32 noundef %3, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %12, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %14, ptr noundef nonnull byval(%"class.llvh::ArrayRef.56") align 8 %15, ptr noundef nonnull byval(%"class.llvh::ArrayRef.41") align 8 %6)
  %i.ds = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.u
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !11
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.dx = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.e
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !11
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.eb = load ptr, ptr %9, align 8, !tbaa !125   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.b
  br i1 %i.ec, label %_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @free(ptr noundef %i.eb) #19
  br label %_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamERKNS_12SMDiagnosticEb(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef %i.d) #19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !46 ; 5 uses
  %.not10 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %.sroa.0.0.copyload.i, %i.n
  br i1 %.not1.i, label %.critedge4.i, label %bb.f, !prof !74

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %.not13.i = icmp ugt ptr %.sroa.0.0.copyload.i, %i.p
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !74

.critedge4.i:                                     ; preds = %bb.f, %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %.critedge4.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = icmp ult ptr %i.u, %.sroa.0.0.copyload.i ; 2 uses
  %.19.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.s
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !54  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.pre11, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
end_hunk_0
