Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Intrinsics?download=true
inline.NumInlined: 2203
inline.NumDeleted: 889
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE:bb.a
  store i8 5, ptr %i.he, align 8, !tbaa !175
  %i.hf = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.hf, align 1, !tbaa !176
  store ptr %i.gu, ptr %33, align 8, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.gv, ptr %i.hg, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.hh = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 1, ptr %i.hi, align 1, !tbaa !176
  store ptr @.str.97, ptr %34, align 8, !tbaa !22
  store i8 3, ptr %i.hh, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %32, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef nonnull align 8 dereferenceable(34) %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.hj = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 9, ptr %i.hj, align 8, !tbaa !175
  %i.hk = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.hk, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %35, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %31, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr noundef nonnull align 8 dereferenceable(34) %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.hl = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 1, ptr %i.hm, align 1, !tbaa !176
  store ptr @.str.98, ptr %36, align 8, !tbaa !22
  store i8 3, ptr %i.hl, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %30, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr noundef nonnull align 8 dereferenceable(34) %36)
  %i.hn = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.hd, ptr noundef nonnull align 8 dereferenceable(34) %30, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br i1 %i.hn, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 3 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !198
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hr ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = and i16 %i.ht, -2
  store i16 %i.hu, ptr %i.hs, align 2
  %i.hv = load i16, ptr %i.hp, align 2, !tbaa !198 ; 2 uses
  %i.hw = add nuw i16 %i.hv, 1
  store i16 %i.hw, ptr %i.hp, align 2, !tbaa !198
  %i.hx = zext i16 %i.hv to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2
  %i.ia = and i16 %i.hz, 1
  store i16 %i.ia, ptr %i.hy, align 2
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !158
  %.sroa.0128.0.copyload = load i64, ptr %7, align 8
  %i.id = call fastcc noundef zeroext i1 @_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE(ptr noundef %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0128.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %.critedge

bb.aj:                                            ; preds = %bb.g
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.if = load i32, ptr %i.ie, align 8            ; 2 uses
  %i.ig = and i32 %i.if, 255
  %i.ih = icmp ne i32 %i.ig, 15
  %.not242568 = icmp eq ptr %0, null
  %.not242 = or i1 %.not242568, %i.ih
  br i1 %.not242, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = lshr i32 %i.if, 8
  %i.ij = icmp eq i32 %i.ii, %.sroa.6492.0.copyload
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ik = phi i1 [ false, %bb.aj ], [ %i.ij, %bb.ak ] ; 2 uses
  %i.il = icmp eq i32 %.sroa.6492.0.copyload, 0
  br i1 %i.il, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.im = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %37, i64 33
  store i8 1, ptr %i.in, align 1, !tbaa !176
  store ptr @.str.99, ptr %37, align 8, !tbaa !22
  store i8 3, ptr %i.im, align 8, !tbaa !175
  %i.io = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.ik, ptr noundef nonnull align 8 dereferenceable(34) %37, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.ip = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 1, ptr %i.iq, align 1, !tbaa !176
  store ptr @.str.100, ptr %40, align 8, !tbaa !22
  store i8 3, ptr %i.ip, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.ir = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i8 9, ptr %i.ir, align 8, !tbaa !175
  %i.is = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 1, ptr %i.is, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %41, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %39, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef nonnull align 8 dereferenceable(34) %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.it = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.iu, align 1, !tbaa !176
  store ptr @.str.101, ptr %42, align 8, !tbaa !22
  store i8 3, ptr %i.it, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %38, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(34) %42)
  %i.iv = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.ik, ptr noundef nonnull align 8 dereferenceable(34) %38, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %.critedge

bb.ao:                                            ; preds = %bb.g
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ix = load i32, ptr %i.iw, align 8
  %.not241566 = icmp ne ptr %0, null
  %i.iy = and i32 %i.ix, 1791
  %i.iz = icmp eq i32 %i.iy, 1040
  %or.cond596 = and i1 %.not241566, %i.iz
  br i1 %or.cond596, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !177
  %i.jc = icmp eq i32 %i.jb, %.sroa.6492.0.copyload
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jd = phi i1 [ %i.jc, %bb.ap ], [ false, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.je = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 1, ptr %i.jf, align 1, !tbaa !176
  store ptr @.str.102, ptr %45, align 8, !tbaa !22
  store i8 3, ptr %i.je, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.jg = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i8 9, ptr %i.jg, align 8, !tbaa !175
  %i.jh = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 1, ptr %i.jh, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %46, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %44, ptr noundef nonnull align 8 dereferenceable(34) %45, ptr noundef nonnull align 8 dereferenceable(34) %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.ji = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %47, i64 33
  store i8 1, ptr %i.jj, align 1, !tbaa !176
  store ptr @.str.98, ptr %47, align 8, !tbaa !22
  store i8 3, ptr %i.ji, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %43, ptr noundef nonnull align 8 dereferenceable(34) %44, ptr noundef nonnull align 8 dereferenceable(34) %47)
  %i.jk = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.jd, ptr noundef nonnull align 8 dereferenceable(34) %43, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br i1 %i.jk, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !161 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !177 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %.idx = shl nuw nsw i64 %i.jp, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx
  %.not567571 = icmp eq i32 %i.jo, 0
  br i1 %.not567571, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 5 uses
  %.pre = load i16, ptr %i.js, align 2, !tbaa !198
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.at
  %i.jt = phi i16 [ %.pre, %.lr.ph ], [ %i.kj, %bb.at ]
  %.sroa.7.0573 = phi i16 [ 0, %.lr.ph ], [ %i.kk, %bb.at ] ; 2 uses
  %.sroa.0414.0572 = phi ptr [ %i.jm, %.lr.ph ], [ %i.kl, %bb.at ] ; 2 uses
  %i.ju = zext i16 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ju ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = or i16 %i.jw, 1
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = load i16, ptr %i.js, align 2, !tbaa !198 ; 2 uses
  %i.jz = add nuw i16 %i.jy, 1
  store i16 %i.jz, ptr %i.js, align 2, !tbaa !198
  %i.ka = zext i16 %i.jy to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ka ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = shl nuw nsw i16 %.sroa.7.0573, 1
  %i.ke = and i16 %i.kc, 1
  %i.kf = or disjoint i16 %i.ke, %i.kd
  store i16 %i.kf, ptr %i.kb, align 2
  %i.kg = load ptr, ptr %.sroa.0414.0572, align 8, !tbaa !26
  %.sroa.0106.0.copyload = load i64, ptr %7, align 8
  %i.kh = call fastcc noundef zeroext i1 @_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE(ptr noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0106.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(48) %6) ; 3 uses
  br i1 %i.kh, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ki = load i16, ptr %i.js, align 2, !tbaa !198
  %i.kj = add i16 %i.ki, -1                       ; 2 uses
  store i16 %i.kj, ptr %i.js, align 2, !tbaa !198
  %i.kk = add nuw nsw i16 %.sroa.7.0573, 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0414.0572, i64 8 ; 2 uses
  %.not567 = icmp eq ptr %i.kl, %i.jq
  br i1 %.not567, label %.critedge, label %bb.as

bb.au:                                            ; preds = %bb.g
  %i.km = and i32 %.sroa.6492.0.copyload, 15      ; 4 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.kn = lshr i32 %.sroa.6492.0.copyload, 8
  %i.ko = lshr i32 %.sroa.6492.0.copyload, 12
  %i.kp = and i32 %i.ko, 15                       ; 3 uses
  %i.kq = and i32 %i.kn, 15                       ; 3 uses
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.kq to i64
  store i32 %i.kq, ptr %i.a, align 4, !tbaa !200
  switch i32 %i.kp, label %bb.ax [
    i32 0, label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = and i32 %i.ks, 254
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kt, 18
  br label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"

bb.aw:                                            ; preds = %bb.au
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kv = load i32, ptr %i.ku, align 8
  %i.kw = and i32 %i.kv, 254
  %spec.select.i.i.i.i.i.i.i.i2.i = icmp ne i32 %i.kw, 18
  br label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"

bb.ax:                                            ; preds = %bb.au
  unreachable

"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit": ; preds = %bb.au, %bb.av, %bb.aw
  %.0.i276 = phi i1 [ %spec.select.i.i.i.i.i.i.i.i2.i, %bb.aw ], [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.av ], [ true, %bb.au ]
  %i.kx = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_5clEv"(ptr %0, ptr nonnull %i.a)
  %i.ky = and i1 %.0.i276, %i.kx
  br i1 %i.ky, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"
  %i.kz = icmp eq i32 %i.kq, 0
  br i1 %i.kz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.la = zext nneg i32 %i.kp to i64
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr @_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEE11VectorKinds, i64 %i.la
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 16 dereferenceable(16) %i.lb, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.lc = ptrtoint ptr %48 to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 2 uses
  store ptr @.str.108, ptr %50, align 8, !tbaa !162, !alias.scope !390
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 11, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !390
  %i.le = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !392, !alias.scope !390
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !390
  %i.lf = getelementptr inbounds nuw i8, ptr %50, i64 32
  store i8 1, ptr %i.lf, align 8, !tbaa !395, !alias.scope !390
  %i.lg = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  store i64 %i.lc, ptr %i.lg, align 8, !tbaa !396, !alias.scope !390
  %i.lh = ptrtoint ptr %i.lg to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.ld, align 8, !alias.scope !390
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 56
  store i64 %i.lh, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !22, !alias.scope !390
  %i.li = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 7, ptr %i.li, align 8, !tbaa !175
  %i.lj = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 1, ptr %i.lj, align 1, !tbaa !176
  store ptr %50, ptr %49, align 8, !tbaa !22
  %.sroa.0389.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0389.0.insert.insert = or disjoint i64 %.sroa.0389.0.insert.ext, 4294967296
  %i.lk = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %49, i64 %.sroa.0389.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr @_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEE12ElementKinds, i64 %.sroa.2.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 16 dereferenceable(16) %i.ll, i64 16, i1 false)
  %i.lm = ptrtoint ptr %51 to i64                 ; 3 uses
  switch i32 %i.kp, label %bb.be [
    i32 0, label %bb.bb
    i32 1, label %bb.bc
    i32 2, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  %i.ln = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  store ptr @.str.109, ptr %53, align 8, !tbaa !162, !alias.scope !397
  %.sroa.22.0..sroa_idx.i.i.i.i277 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 21, ptr %.sroa.22.0..sroa_idx.i.i.i.i277, align 8, !tbaa !19, !alias.scope !397
  %i.lo = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !392, !alias.scope !397
  %.sroa.2.0..sroa_idx.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i278, align 8, !tbaa !19, !alias.scope !397
  %i.lp = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 1, ptr %i.lp, align 8, !tbaa !395, !alias.scope !397
  %i.lq = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.lq, align 8, !tbaa !396, !alias.scope !397
  %i.lr = ptrtoint ptr %i.lq to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.ln, align 8, !alias.scope !397
  %.sroa.4.0..sroa_idx.i.i.i279 = getelementptr inbounds nuw i8, ptr %53, i64 56
  store i64 %i.lr, ptr %.sroa.4.0..sroa_idx.i.i.i279, align 8, !tbaa !22, !alias.scope !397
  %i.ls = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 7, ptr %i.ls, align 8, !tbaa !175
  %i.lt = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.lt, align 1, !tbaa !176
  store ptr %53, ptr %52, align 8, !tbaa !22
  %.sroa.0380.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0380.0.insert.insert = or disjoint i64 %.sroa.0380.0.insert.ext, 4294967296
  %i.lu = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %52, i64 %.sroa.0380.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %i.lv = getelementptr inbounds nuw i8, ptr %55, i64 48 ; 2 uses
  store ptr @.str.110, ptr %55, align 8, !tbaa !162, !alias.scope !398
  %.sroa.22.0..sroa_idx.i.i.i.i280 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 13, ptr %.sroa.22.0..sroa_idx.i.i.i.i280, align 8, !tbaa !19, !alias.scope !398
  %i.lw = getelementptr inbounds nuw i8, ptr %55, i64 16
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !392, !alias.scope !398
  %.sroa.2.0..sroa_idx.i.i.i.i281 = getelementptr inbounds nuw i8, ptr %55, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i281, align 8, !tbaa !19, !alias.scope !398
  %i.lx = getelementptr inbounds nuw i8, ptr %55, i64 32
  store i8 1, ptr %i.lx, align 8, !tbaa !395, !alias.scope !398
  %i.ly = getelementptr inbounds nuw i8, ptr %55, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.ly, align 8, !tbaa !396, !alias.scope !398
  %i.lz = ptrtoint ptr %i.ly to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.lv, align 8, !alias.scope !398
  %.sroa.4.0..sroa_idx.i.i.i282 = getelementptr inbounds nuw i8, ptr %55, i64 56
  store i64 %i.lz, ptr %.sroa.4.0..sroa_idx.i.i.i282, align 8, !tbaa !22, !alias.scope !398
  %i.ma = getelementptr inbounds nuw i8, ptr %54, i64 32
  store i8 7, ptr %i.ma, align 8, !tbaa !175
  %i.mb = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 1, ptr %i.mb, align 1, !tbaa !176
  store ptr %55, ptr %54, align 8, !tbaa !22
  %.sroa.0373.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0373.0.insert.insert = or disjoint i64 %.sroa.0373.0.insert.ext, 4294967296
  %i.mc = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %54, i64 %.sroa.0373.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.md = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 2 uses
  store ptr @.str.108, ptr %57, align 8, !tbaa !162, !alias.scope !399
  %.sroa.22.0..sroa_idx.i.i.i.i283 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 11, ptr %.sroa.22.0..sroa_idx.i.i.i.i283, align 8, !tbaa !19, !alias.scope !399
  %i.me = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %i.md, ptr %i.me, align 8, !tbaa !392, !alias.scope !399
  %.sroa.2.0..sroa_idx.i.i.i.i284 = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i284, align 8, !tbaa !19, !alias.scope !399
  %i.mf = getelementptr inbounds nuw i8, ptr %57, i64 32
  store i8 1, ptr %i.mf, align 8, !tbaa !395, !alias.scope !399
  %i.mg = getelementptr inbounds nuw i8, ptr %57, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.mg, align 8, !tbaa !396, !alias.scope !399
  %i.mh = ptrtoint ptr %i.mg to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.md, align 8, !alias.scope !399
  %.sroa.4.0..sroa_idx.i.i.i285 = getelementptr inbounds nuw i8, ptr %57, i64 56
  store i64 %i.mh, ptr %.sroa.4.0..sroa_idx.i.i.i285, align 8, !tbaa !22, !alias.scope !399
  %i.mi = getelementptr inbounds nuw i8, ptr %56, i64 32
  store i8 7, ptr %i.mi, align 8, !tbaa !175
  %i.mj = getelementptr inbounds nuw i8, ptr %56, i64 33
  store i8 1, ptr %i.mj, align 1, !tbaa !176
  store ptr %57, ptr %56, align 8, !tbaa !22
  %.sroa.0372.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0372.0.insert.insert = or disjoint i64 %.sroa.0372.0.insert.ext, 4294967296
  %i.mk = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %56, i64 %.sroa.0372.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  unreachable

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.6 = phi i1 [ %i.lu, %bb.bb ], [ %i.mc, %bb.bc ], [ %i.mk, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  br label %bb.bg

bb.bg:                                            ; preds = %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit", %bb.bf, %bb.az
  %.7 = phi i1 [ %.6, %bb.bf ], [ %i.lk, %bb.az ], [ false, %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.critedge
end_hunk_0
