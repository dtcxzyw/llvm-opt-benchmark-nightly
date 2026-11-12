Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LangOptions?download=true
inline.NumInlined: 506
inline.NumDeleted: 267
begin_hunk_0_@_ZNK5clang11LangOptions15isNoBuiltinFuncEN4llvm9StringRefE:bb.a
bb.a:
  %.fr24 = freeze i64 %2                          ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 5                   ; 2 uses
  %i.i = and i64 %i.g, 137438953440
  %.not14.not = icmp eq i64 %i.i, 0
  br i1 %.not14.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %.fr24, 0
  br i1 %i.j, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = and i64 %i.h, 4294967295
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59
  %.not.i.us22 = icmp eq i64 %i.m, 0
  br i1 %.not.i.us22, label %.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us.preheader

_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us.preheader: ; preds = %.lr.ph.split.us
  %i.n = and i64 %i.h, 4294967295                 ; 2 uses
  %.not.us.not.not35 = icmp eq i64 %i.n, 1
  br i1 %.not.us.not.not35, label %.thread, label %.lr.ph37, !llvm.loop !86

.lr.ph37:                                         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us.preheader
  br label %bb.b, !llvm.loop !86

bb.b:                                             ; preds = %.lr.ph37, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us
  %indvars.iv.next2936 = phi i64 [ 1, %.lr.ph37 ], [ %indvars.iv.next29, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv.next2936
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  %.not.i.us = icmp eq i64 %i.q, 0
  br i1 %.not.i.us, label %..thread.loopexit_crit_edge, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us, !llvm.loop !86

_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us:    ; preds = %bb.b
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv.next2936, 1 ; 2 uses
  %.not.us.not.not = icmp eq i64 %indvars.iv.next29, %i.n
  br i1 %.not.us.not.not, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us..thread.loopexit_crit_edge, label %bb.b, !llvm.loop !86

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59
  %.not.i = icmp eq i64 %.fr24, %i.t
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread11

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %.lr.ph.split
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !66
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.u, i64 %.fr24)
  %i.v = icmp eq i32 %bcmp.i, 0
  br i1 %i.v, label %.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread11

_ZN4llvmeqENS_9StringRefES0_.exit.thread11:       ; preds = %.lr.ph.split, %_ZN4llvmeqENS_9StringRefES0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %.not.not, label %.thread, label %.lr.ph.split, !llvm.loop !86

..thread.loopexit_crit_edge:                      ; preds = %bb.b
  br label %.thread, !llvm.loop !86

_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us..thread.loopexit_crit_edge: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us
  br label %.thread, !llvm.loop !86

.thread:                                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread11, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us.preheader, %..thread.loopexit_crit_edge, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us..thread.loopexit_crit_edge, %.lr.ph.split.us, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ true, %.lr.ph.split.us ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us.preheader ], [ true, %..thread.loopexit_crit_edge ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.us..thread.loopexit_crit_edge ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZNK5clang11LangOptions21getOpenCLVersionTupleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp ne i64 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %.in = select i1 %.not, i64 %i.e, i64 %i.b
  %i.f = trunc i64 %.in to i32                    ; 3 uses
  %i.g = icmp ne i32 %i.f, 100
  %or.cond = select i1 %.not, i1 %i.g, i1 false
  %i.h = sdiv i32 %i.f, 100                       ; 2 uses
  %i.i = srem i32 %i.f, 100
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nsw i32 %i.i to i8
  %i.k = sdiv i8 %.lhs.trunc, 10
  %.sext = sext i8 %i.k to i64
  %i.l = zext i32 %i.h to i64
  %i.m = shl nsw i64 %.sext, 32
  %i.n = or disjoint i64 %i.m, %i.l
  %i.o = or i64 %i.n, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %i.d = trunc i64 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 100
  %spec.select = select i1 %i.h, i32 200, i32 300
  %.0 = select i1 %.not, i32 %i.d, i32 %spec.select
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang11LangOptions15remapPathPrefixERN4llvm15SmallVectorImplIcEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.09.013 = phi ptr [ %i.m, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = tail call noundef zeroext i1 @_ZN4llvm3sys4path19replace_path_prefixERNS_15SmallVectorImplIcEENS_9StringRefES5_NS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.e, i64 %i.g, ptr %i.i, i64 %i.k, i32 noundef 0) #18
  br i1 %i.l, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.013) #19 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4llvm3sys4path19replace_path_prefixERNS_15SmallVectorImplIcEENS_9StringRefES5_NS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang11LangOptions22getOpenCLVersionStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::VersionTuple", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i8 0, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !92
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %5 = load i32, ptr %i.h, align 4
  %6 = and i32 %5, 1
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.i = select i1 %.not, ptr @.str.1, ptr @.str  ; 2 uses
  %i.j = select i1 %.not, i64 8, i64 14           ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.i, i64 noundef %i.j) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(8) %i.i, i64 %i.j, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j ; 2 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !72
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %2, %bb.c ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, 9
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.2, i64 noundef 9) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.v, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !72
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

_ZN4llvm11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  %.0.i.i3 = phi ptr [ %i.ac, %bb.d ], [ %.0.i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i64, ptr %7, align 8               ; 2 uses
  %i.ah = and i64 %i.ag, 4294967296
  %.not.i = icmp ne i64 %i.ah, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  %.in.i = select i1 %.not.i, i64 %i.aj, i64 %i.ag
  %i.ak = trunc i64 %.in.i to i32                 ; 3 uses
  %i.al = icmp ne i32 %i.ak, 100
  %or.cond.i = select i1 %.not.i, i1 %i.al, i1 false
  %i.am = sdiv i32 %i.ak, 100                     ; 2 uses
  %i.an = srem i32 %i.ak, 100
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit4
  %i.ao = zext i32 %i.am to i64
  br label %_ZNK5clang11LangOptions21getOpenCLVersionTupleEv.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit4
  %.lhs.trunc.i = trunc nsw i32 %i.an to i8
  %i.ap = sdiv i8 %.lhs.trunc.i, 10
  %.sext.i = sext i8 %i.ap to i64
  %i.aq = zext i32 %i.am to i64
  %i.ar = shl nsw i64 %.sext.i, 32
  %i.as = or disjoint i64 %i.ar, %i.aq
  %i.at = or i64 %i.as, -9223372036854775808
  br label %_ZNK5clang11LangOptions21getOpenCLVersionTupleEv.exit

_ZNK5clang11LangOptions21getOpenCLVersionTupleEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.f ], [ %i.at, %bb.g ]
  store i64 %.sroa.0.0.i, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.au, align 8
  call void @_ZNK4llvm12VersionTuple11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %4) #18
  %i.av = load ptr, ptr %3, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i3, ptr noundef %i.av, i64 noundef %i.ax) #18 ; 0 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang11LangOptions21getOpenCLVersionTupleEv.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !60
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang11LangOptions21getOpenCLVersionTupleEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZNK4llvm12VersionTuple11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang11LangOptions15setLangDefaultsERS0_NS_8LanguageERKN4llvm6TripleERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EENS_12LangStandard4KindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1136) initializes((228, 232)) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq i8 %1, 1
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %1, -2
  %or.cond = icmp eq i8 %i.b, 6
  br i1 %or.cond, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink202 = phi i64 [ 34359738368, %bb.a ], [ 1048576, %bb.b ]
  %i.c = load i64, ptr %0, align 8
  %i.d = or i64 %i.c, %.sink202
  store i64 %i.d, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.e = icmp eq i32 %4, 45
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZN5clang26getDefaultLanguageStandardENS_8LanguageERKN4llvm6TripleE(i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ %4, %bb.c ]    ; 3 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5clang12LangStandard22getLangStandardForKindENS0_4KindE(i32 noundef %.0) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %.0, ptr %i.h, align 4, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 22 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !99
  %i.k = trunc i32 %i.j to i1
  %i.l = load i64, ptr %0, align 8
  %i.m = select i1 %i.k, i64 134217728, i64 0
  %i.n = and i64 %i.l, -134217729
  %i.o = or disjoint i64 %i.n, %i.m               ; 2 uses
  store i64 %i.o, ptr %0, align 8
  %i.p = load i32, ptr %i.i, align 8, !tbaa !99
  %i.q = lshr i32 %i.p, 1
  %.lobit = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit to i64
  %i.s = and i64 %i.o, -2
  %i.t = or disjoint i64 %i.s, %i.r               ; 2 uses
  store i64 %i.t, ptr %0, align 8
  %i.u = load i32, ptr %i.i, align 8, !tbaa !99
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.v, 2
  %i.x = zext nneg i32 %i.w to i64
  %i.y = and i64 %i.t, -3
  %i.z = or disjoint i64 %i.y, %i.x               ; 2 uses
  store i64 %i.z, ptr %0, align 8
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !99
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = and i64 %i.z, -5
  %i.af = or disjoint i64 %i.ae, %i.ad            ; 2 uses
  store i64 %i.af, ptr %0, align 8
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !99
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = and i32 %i.ah, 8
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = and i64 %i.af, -9
  %i.al = or disjoint i64 %i.ak, %i.aj            ; 2 uses
  store i64 %i.al, ptr %0, align 8
  %i.am = load i32, ptr %i.i, align 8, !tbaa !99
  %i.an = lshr i32 %i.am, 1
  %i.ao = and i32 %i.an, 16
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = and i64 %i.al, -17
  %i.ar = or disjoint i64 %i.aq, %i.ap            ; 2 uses
  store i64 %i.ar, ptr %0, align 8
  %i.as = load i32, ptr %i.i, align 8, !tbaa !99
  %i.at = shl i32 %i.as, 6
  %i.au = and i32 %i.at, 4096
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = and i64 %i.ar, -4097
  %i.ax = or disjoint i64 %i.aw, %i.av            ; 2 uses
  store i64 %i.ax, ptr %0, align 8
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !99
  %i.az = shl i32 %i.ay, 6
  %i.ba = and i32 %i.az, 8192
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = and i64 %i.ax, -8193
  %i.bd = or disjoint i64 %i.bc, %i.bb            ; 2 uses
  store i64 %i.bd, ptr %0, align 8
  %i.be = load i32, ptr %i.i, align 8, !tbaa !99
  %i.bf = shl i32 %i.be, 6
  %i.bg = and i32 %i.bf, 16384
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = and i64 %i.bd, -16385
  %i.bj = or disjoint i64 %i.bi, %i.bh            ; 2 uses
  store i64 %i.bj, ptr %0, align 8
  %i.bk = load i32, ptr %i.i, align 8, !tbaa !99
  %i.bl = shl i32 %i.bk, 6
  %i.bm = and i32 %i.bl, 32768
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = and i64 %i.bj, -32769
  %i.bp = or disjoint i64 %i.bo, %i.bn            ; 2 uses
  store i64 %i.bp, ptr %0, align 8
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !99
  %i.br = shl i32 %i.bq, 6
  %i.bs = and i32 %i.br, 65536
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = and i64 %i.bp, -65537
  %i.bv = or disjoint i64 %i.bu, %i.bt            ; 2 uses
  store i64 %i.bv, ptr %0, align 8
  %i.bw = load i32, ptr %i.i, align 8, !tbaa !99
  %i.bx = shl i32 %i.bw, 6
  %i.by = and i32 %i.bx, 131072
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = and i64 %i.bv, -131073
  %i.cb = or disjoint i64 %i.ca, %i.bz            ; 2 uses
  store i64 %i.cb, ptr %0, align 8
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !99
  %i.cd = shl i32 %i.cc, 6
  %i.ce = and i32 %i.cd, 262144
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = and i64 %i.cb, -262145
  %i.ch = or disjoint i64 %i.cg, %i.cf            ; 2 uses
  store i64 %i.ch, ptr %0, align 8
  %i.ci = load i32, ptr %i.i, align 8, !tbaa !99
  %i.cj = shl i32 %i.ci, 6
  %i.ck = and i32 %i.cj, 524288
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = and i64 %i.ch, -524289
  %i.cn = or disjoint i64 %i.cm, %i.cl            ; 2 uses
  store i64 %i.cn, ptr %0, align 8
  %i.co = load i32, ptr %i.i, align 8, !tbaa !99
  %i.cp = and i32 %i.co, 32768
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 21
  %i.cs = and i64 %i.cn, -68719476737
  %i.ct = or disjoint i64 %i.cs, %i.cr            ; 2 uses
  store i64 %i.ct, ptr %0, align 8
end_hunk_0
