inline.NumInlined: 2396
inline.NumDeleted: 1188
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE(ptr readonly captures(none) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::format_object.95", align 16 ; 7 uses
  %4 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %5 = alloca %"class.llvh::format_object.89", align 16 ; 5 uses
  %6 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %7 = alloca %"class.llvh::format_object.58", align 16 ; 8 uses
  %8 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %9 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %10 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %11 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %12 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %13 = alloca %"class.llvh::format_object.51", align 16 ; 5 uses
  %14 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %15 = alloca %"class.llvh::format_object.51", align 16 ; 5 uses
  %16 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %17 = alloca %"class.llvh::format_object.51", align 16 ; 5 uses
  %18 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %19 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %20 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %21 = alloca %"class.llvh::format_object.51", align 16 ; 5 uses
  %22 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %23 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %24 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 21 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 62 uses
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 21
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 21
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 21
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 22
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 21
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 22
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 21
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 22
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 21
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 22
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 21
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 22
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 21
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 22
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 21
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 22
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 21
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 22
  %i.ci = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 21
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 22
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %22, i64 16
end_hunk_1
begin_hunk_2_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %.0.i.i = phi ptr [ %i.da, %bb.c ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store i64 %i.ct, ptr %24, align 8, !tbaa !29, !alias.scope !33
  store i64 0, ptr %i.p, align 8, !tbaa !36, !alias.scope !33
  store i32 4, ptr %i.q, align 8, !tbaa !37, !alias.scope !33
  store i8 1, ptr %i.r, align 4, !tbaa !38, !alias.scope !33
  store i8 0, ptr %i.s, align 1, !tbaa !39, !alias.scope !33
  store i8 0, ptr %i.t, align 2, !tbaa !40, !alias.scope !33
  %i.dd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %24) #20 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25
end_hunk_2
begin_hunk_3_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJcEEE, i64 16), ptr @.str.33>, ptr %21, align 16, !alias.scope !46
  store i8 %i.ei, ptr %i.cn, align 16, !tbaa !49, !alias.scope !46
  %i.el = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %21) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex14MatchChar8InsnERN4llvh11raw_ostreamE.exit
end_hunk_3
begin_hunk_4_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.fa = zext i16 %i.ez to i64
  store i64 %i.fa, ptr %20, align 8, !tbaa !29, !alias.scope !57
  store i64 0, ptr %i.ci, align 8, !tbaa !36, !alias.scope !57
  store i32 4, ptr %i.cj, align 8, !tbaa !37, !alias.scope !57
  store i8 1, ptr %i.ck, align 4, !tbaa !38, !alias.scope !57
  store i8 0, ptr %i.cl, align 1, !tbaa !39, !alias.scope !57
  store i8 1, ptr %i.cm, align 2, !tbaa !40, !alias.scope !57
  %i.fb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %20) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.fc = add i32 %.0212, 3
end_hunk_4
begin_hunk_5_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.fo = zext i32 %i.fn to i64
  store i64 %i.fo, ptr %19, align 8, !tbaa !29, !alias.scope !62
  store i64 0, ptr %i.cd, align 8, !tbaa !36, !alias.scope !62
  store i32 6, ptr %i.ce, align 8, !tbaa !37, !alias.scope !62
  store i8 1, ptr %i.cf, align 4, !tbaa !38, !alias.scope !62
  store i8 0, ptr %i.cg, align 1, !tbaa !39, !alias.scope !62
  store i8 1, ptr %i.ch, align 2, !tbaa !40, !alias.scope !62
  %i.fp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %19) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.fq = add i32 %.0212, 5
end_hunk_5
begin_hunk_6_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJcEEE, i64 16), ptr @.str.37>, ptr %17, align 16, !alias.scope !67
  store i8 %i.gj, ptr %i.bx, align 16, !tbaa !49, !alias.scope !67
  %i.gm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %17) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ag
end_hunk_6
begin_hunk_7_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.gn = sext i8 %i.gj to i64
  store i64 %i.gn, ptr %18, align 8, !tbaa !29, !alias.scope !70
  store i64 0, ptr %i.by, align 8, !tbaa !36, !alias.scope !70
  store i32 4, ptr %i.bz, align 8, !tbaa !37, !alias.scope !70
  store i8 1, ptr %i.ca, align 4, !tbaa !38, !alias.scope !70
  store i8 0, ptr %i.cb, align 1, !tbaa !39, !alias.scope !70
  store i8 1, ptr %i.cc, align 2, !tbaa !40, !alias.scope !70
  %i.go = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %18) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ag
end_hunk_7
begin_hunk_8_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJcEEE, i64 16), ptr @.str.37>, ptr %15, align 16, !alias.scope !77
  store i8 %i.hp, ptr %i.br, align 16, !tbaa !49, !alias.scope !77
  %i.hs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %15) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ap
end_hunk_8
begin_hunk_9_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ht = sext i8 %i.hp to i64
  store i64 %i.ht, ptr %16, align 8, !tbaa !29, !alias.scope !80
  store i64 0, ptr %i.bs, align 8, !tbaa !36, !alias.scope !80
  store i32 4, ptr %i.bt, align 8, !tbaa !37, !alias.scope !80
  store i8 1, ptr %i.bu, align 4, !tbaa !38, !alias.scope !80
  store i8 0, ptr %i.bv, align 1, !tbaa !39, !alias.scope !80
  store i8 1, ptr %i.bw, align 2, !tbaa !40, !alias.scope !80
  %i.hu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %16) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ap
end_hunk_9
begin_hunk_10_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a

bb.at:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJcEEE, i64 16), ptr @.str.33>, ptr %13, align 16, !alias.scope !86
  store i8 %i.in, ptr %i.bl, align 16, !tbaa !49, !alias.scope !86
  %i.iq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %13) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex19MatchCharICase8InsnERN4llvh11raw_ostreamE.exit
end_hunk_10
begin_hunk_11_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ir = sext i8 %i.in to i64
  store i64 %i.ir, ptr %14, align 8, !tbaa !29, !alias.scope !89
  store i64 0, ptr %i.bm, align 8, !tbaa !36, !alias.scope !89
  store i32 4, ptr %i.bn, align 8, !tbaa !37, !alias.scope !89
  store i8 1, ptr %i.bo, align 4, !tbaa !38, !alias.scope !89
  store i8 0, ptr %i.bp, align 1, !tbaa !39, !alias.scope !89
  store i8 1, ptr %i.bq, align 2, !tbaa !40, !alias.scope !89
  %i.is = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %14) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex19MatchCharICase8InsnERN4llvh11raw_ostreamE.exit
end_hunk_11
begin_hunk_12_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.jf = zext i16 %i.je to i64
  store i64 %i.jf, ptr %12, align 8, !tbaa !29, !alias.scope !94
  store i64 0, ptr %i.bg, align 8, !tbaa !36, !alias.scope !94
  store i32 4, ptr %i.bh, align 8, !tbaa !37, !alias.scope !94
  store i8 1, ptr %i.bi, align 4, !tbaa !38, !alias.scope !94
  store i8 0, ptr %i.bj, align 1, !tbaa !39, !alias.scope !94
  store i8 1, ptr %i.bk, align 2, !tbaa !40, !alias.scope !94
  %i.jg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %12) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.jh = add i32 %.0212, 3
end_hunk_12
begin_hunk_13_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.jt = zext i32 %i.js to i64
  store i64 %i.jt, ptr %11, align 8, !tbaa !29, !alias.scope !99
  store i64 0, ptr %i.bb, align 8, !tbaa !36, !alias.scope !99
  store i32 6, ptr %i.bc, align 8, !tbaa !37, !alias.scope !99
  store i8 1, ptr %i.bd, align 4, !tbaa !38, !alias.scope !99
  store i8 0, ptr %i.be, align 1, !tbaa !39, !alias.scope !99
  store i8 1, ptr %i.bf, align 2, !tbaa !40, !alias.scope !99
  %i.ju = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(23) %11) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.jv = add i32 %.0212, 5
end_hunk_13
begin_hunk_14_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.kg = load i32, ptr %i.kf, align 1, !tbaa !102
  %i.kh = zext i32 %i.kg to i64
  store i64 %i.kh, ptr %10, align 8, !tbaa !29, !alias.scope !104
  store i64 0, ptr %i.aw, align 8, !tbaa !36, !alias.scope !104
  store i32 4, ptr %i.ax, align 8, !tbaa !37, !alias.scope !104
  store i8 1, ptr %i.ay, align 4, !tbaa !38, !alias.scope !104
  store i8 0, ptr %i.az, align 1, !tbaa !39, !alias.scope !104
  store i8 1, ptr %i.ba, align 2, !tbaa !40, !alias.scope !104
  %i.ki = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(23) %10) #20 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !25
end_hunk_14
begin_hunk_15_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.lv = load i32, ptr %i.lu, align 1, !tbaa !109
  %i.lw = zext i32 %i.lv to i64
  store i64 %i.lw, ptr %9, align 8, !tbaa !29, !alias.scope !111
  store i64 0, ptr %i.ar, align 8, !tbaa !36, !alias.scope !111
  store i32 4, ptr %i.as, align 8, !tbaa !37, !alias.scope !111
  store i8 1, ptr %i.at, align 4, !tbaa !38, !alias.scope !111
  store i8 0, ptr %i.au, align 1, !tbaa !39, !alias.scope !111
  store i8 1, ptr %i.av, align 2, !tbaa !40, !alias.scope !111
  %i.lx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i187, ptr noundef nonnull align 8 dereferenceable(23) %9) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ly = add i32 %.0212, 5
end_hunk_15
begin_hunk_16_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.sh = load i32, ptr %i.sg, align 1, !tbaa !132
  %i.si = zext i32 %i.sh to i64
  store i64 %i.si, ptr %8, align 8, !tbaa !29, !alias.scope !133
  store i64 0, ptr %i.am, align 8, !tbaa !36, !alias.scope !133
  store i32 4, ptr %i.an, align 8, !tbaa !37, !alias.scope !133
  store i8 1, ptr %i.ao, align 4, !tbaa !38, !alias.scope !133
  store i8 0, ptr %i.ap, align 1, !tbaa !39, !alias.scope !133
  store i8 1, ptr %i.aq, align 2, !tbaa !40, !alias.scope !133
  %i.sj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i20.i, ptr noundef nonnull align 8 dereferenceable(23) %8) #20 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !28 ; 3 uses
end_hunk_16
begin_hunk_17_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dp, i64 18
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !139
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJjPKcjjhEEE, i64 16), ptr @.str.66>, ptr %7, align 16, !alias.scope !140
  store i8 %i.sz, ptr %i.ai, align 16, !tbaa !143, !alias.scope !140
  %i.ta = load <2 x i32>, ptr %i.sx, align 1, !tbaa !3
  %i.tb = shufflevector <2 x i32> %i.ta, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.tb, ptr %i.aj, align 4, !tbaa !3, !alias.scope !140
  store ptr %i.sw, ptr %i.ak, align 16, !tbaa !145, !alias.scope !140
  store i32 %i.ss, ptr %i.al, align 8, !tbaa !147, !alias.scope !140
  %i.tc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %7) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.td = add i32 %.0212, 23
end_hunk_17
begin_hunk_18_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.to = load i32, ptr %i.tn, align 1, !tbaa !149
  %i.tp = zext i32 %i.to to i64
  store i64 %i.tp, ptr %6, align 8, !tbaa !29, !alias.scope !151
  store i64 0, ptr %i.ad, align 8, !tbaa !36, !alias.scope !151
  store i32 4, ptr %i.ae, align 8, !tbaa !37, !alias.scope !151
  store i8 1, ptr %i.af, align 4, !tbaa !38, !alias.scope !151
  store i8 0, ptr %i.ag, align 1, !tbaa !39, !alias.scope !151
  store i8 1, ptr %i.ah, align 2, !tbaa !40, !alias.scope !151
  %i.tq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i203, ptr noundef nonnull align 8 dereferenceable(23) %6) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.tr = add i32 %.0212, 5
end_hunk_18
begin_hunk_19_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.ts = getelementptr i8, ptr %i.dp, i64 1
  %.val166 = load i8, ptr %i.ts, align 1, !tbaa !19, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJhEEE, i64 16), ptr @.str.70>, ptr %5, align 16, !alias.scope !157
  store i8 %.val166, ptr %i.ac, align 16, !tbaa !160, !alias.scope !157
  %i.tt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.tu = add i32 %.0212, 6
end_hunk_19
begin_hunk_20_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.uf = load i32, ptr %i.ue, align 1, !tbaa !162
  %i.ug = zext i32 %i.uf to i64
  store i64 %i.ug, ptr %4, align 8, !tbaa !29, !alias.scope !164
  store i64 0, ptr %i.x, align 8, !tbaa !36, !alias.scope !164
  store i32 4, ptr %i.y, align 8, !tbaa !37, !alias.scope !164
  store i8 1, ptr %i.z, align 4, !tbaa !38, !alias.scope !164
  store i8 0, ptr %i.aa, align 1, !tbaa !39, !alias.scope !164
  store i8 1, ptr %i.ab, align 2, !tbaa !40, !alias.scope !164
  %i.uh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i205, ptr noundef nonnull align 8 dereferenceable(23) %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ui = add i32 %.0212, 5
end_hunk_20
begin_hunk_21_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = select i1 %i.un, ptr @.str.67, ptr @.str.68
  %i.up = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJjPKcjjEEE, i64 16), ptr @.str.72>, ptr %3, align 16, !alias.scope !170
  %i.uq = load <2 x i32>, ptr %i.up, align 1, !tbaa !3
  %i.ur = shufflevector <2 x i32> %i.uq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ur, ptr %i.u, align 16, !tbaa !3, !alias.scope !170
  store ptr %i.uo, ptr %i.v, align 8, !tbaa !145, !alias.scope !170
  store i32 %i.uk, ptr %i.w, align 16, !tbaa !147, !alias.scope !170
  %i.us = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ut = add i32 %.0212, 18
end_hunk_21
