inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvh6TripleC2ERKNS_5TwineES3_S3_S3_:bb.a
  ]

bb.q:                                             ; preds = %bb.p, %_ZN4llvhplERKNS_5TwineES2_.exit39
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.au, align 8, !tbaa !42, !alias.scope !112
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.av, align 1, !tbaa !47, !alias.scope !112
  br label %_ZN4llvhplERKNS_5TwineES2_.exit46

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  br label %_ZN4llvhplERKNS_5TwineES2_.exit46

bb.s:                                             ; preds = %bb.p
  %spec.select.i.i41 = select i1 %.ph110, i8 %.sink118, i8 2
  %spec.select14.i.i42 = select i1 %.ph110, ptr %.sroa.04.0.copyload.i.i40.ph, ptr %6
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !47, !noalias !112
  %i.ay = icmp eq i8 %i.ax, 1                     ; 2 uses
  %.sroa.03.0.copyload.i.i43 = load ptr, ptr %4, align 8, !noalias !112
  %.0.i.i44 = select i1 %i.ay, i8 %i.at, i8 2
  %.sroa.03.0.i.i45 = select i1 %i.ay, ptr %.sroa.03.0.copyload.i.i43, ptr %4
  store ptr %spec.select14.i.i42, ptr %5, align 8, !tbaa !46, !alias.scope !112
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.03.0.i.i45, ptr %i.az, align 8, !tbaa !46, !alias.scope !112
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %spec.select.i.i41, ptr %i.ba, align 8, !tbaa !42, !alias.scope !112
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %.0.i.i44, ptr %i.bb, align 1, !tbaa !47, !alias.scope !112
  br label %_ZN4llvhplERKNS_5TwineES2_.exit46

_ZN4llvhplERKNS_5TwineES2_.exit46:                ; preds = %bb.q, %bb.r, %bb.s
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(18) %1) #13
  %i.bd = load ptr, ptr %11, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19
  %i.bg = call fastcc noundef i32 @_ZL9parseArchN4llvh9StringRefE(ptr %i.bd, i64 %i.bf)
  %i.bh = load ptr, ptr %11, align 8, !tbaa !12   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit46
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18) %1) #13
  %i.bn = load ptr, ptr %12, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.bq = call fastcc noundef i32 @_ZL12parseSubArchN4llvh9StringRefE(ptr %i.bn, i64 %i.bp)
  %i.br = load ptr, ptr %12, align 8, !tbaa !12   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !46
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(18) %2) #13
  %i.bx = load ptr, ptr %13, align 8, !tbaa !12   ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %i.bx, i64 %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.bx, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !46
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  store i32 %i.ca, ptr %i.bw, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.ch = load ptr, ptr %14, align 8, !tbaa !12   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %i.ch, i64 %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ch, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cn = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !46
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cp) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  store i32 %i.ck, ptr %i.cg, align 4, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(18) %4) #13
  %i.cr = load ptr, ptr %15, align 8, !tbaa !12   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !19 ; 2 uses
  %i.cu = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %i.cr, i64 %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cr, %i.cv
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cx = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !46
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cz) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(18) %4) #13
  %i.db = load ptr, ptr %16, align 8, !tbaa !12   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19 ; 2 uses
  %i.de = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %i.db, i64 %i.dd) ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.db, %i.df
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.dh = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.di = load i64, ptr %i.df, align 8, !tbaa !46
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.dj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  store i32 %i.de, ptr %i.da, align 4, !tbaa !35
  %i.dk = icmp eq i32 %i.de, 0
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.val = load i32, ptr %i.bc, align 8, !tbaa !23
  %.val11 = load i32, ptr %i.cg, align 4
  %i.dl = call fastcc noundef i32 @_ZL16getDefaultFormatRKN4llvh6TripleE(i32 %.val, i32 %.val11)
  store i32 %i.dl, ptr %i.da, align 4, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvh::SmallVector", align 8 ; 33 uses
  %i.a = alloca [4 x i8], align 1                 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 21 uses
  store i32 0, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  store i32 4, ptr %i.e, align 4, !tbaa !11
  call void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext 45, i32 noundef -1, i1 noundef zeroext true) #13
  %i.f = load i32, ptr %i.d, align 8, !tbaa !10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread319, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.sroa.099.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !21
  %.sroa.2100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2100.0.copyload = load i64, ptr %.sroa.2100.0..sroa_idx, align 8, !tbaa !22
  %i.h = call fastcc noundef i32 @_ZL9parseArchN4llvh9StringRefE(ptr %.sroa.099.0.copyload, i64 %.sroa.2100.0.copyload)
  %i.i = icmp ne i32 %i.h, 0                      ; 5 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !10  ; 4 uses
  %i.j = icmp ugt i32 %.pre, 1
  br i1 %i.j, label %bb.c, label %.thread319

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.094.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !21
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.295.0.copyload = load i64, ptr %.sroa.295.0..sroa_idx, align 8, !tbaa !22
  %i.m = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %.sroa.094.0.copyload, i64 %.sroa.295.0.copyload) ; 4 uses
  %.not379 = icmp eq i32 %.pre, 2
  br i1 %.not379, label %.thread319, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.088.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !21 ; 5 uses
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.289.0.copyload = load i64, ptr %.sroa.289.0..sroa_idx, align 8, !tbaa !22 ; 3 uses
  %i.o = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %.sroa.088.0.copyload, i64 %.sroa.289.0.copyload) ; 3 uses
  %.not.i182 = icmp ult i64 %.sroa.289.0.copyload, 6
  br i1 %.not.i182, label %_ZNK4llvh9StringRef10startswithES0_.exit183, label %_ZNK4llvh9StringRef10startswithES0_.exit183.thread

_ZNK4llvh9StringRef10startswithES0_.exit183.thread: ; preds = %bb.d
  %i.p = load i32, ptr %.sroa.088.0.copyload, align 1
  %i.q = xor i32 %i.p, 2003269987
  %i.r = getelementptr i8, ptr %.sroa.088.0.copyload, i64 4
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = xor i32 %i.t, 28265
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i1 %i.y to i8
  br label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185

_ZNK4llvh9StringRef10startswithES0_.exit183:      ; preds = %bb.d
  %.not.i180.not = icmp eq i64 %.sroa.289.0.copyload, 5
  br i1 %.not.i180.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185, label %bb.e

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit183.thread, %_ZNK4llvh9StringRef10startswithES0_.exit183
  %i.aa = phi i8 [ %i.z, %_ZNK4llvh9StringRef10startswithES0_.exit183.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ]
  %i.ab = load i32, ptr %.sroa.088.0.copyload, align 1
  %i.ac = xor i32 %i.ab, 1735289197
  %i.ad = getelementptr i8, ptr %.sroa.088.0.copyload, i64 4
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = xor i32 %i.af, 119
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185, %_ZNK4llvh9StringRef10startswithES0_.exit183
  %i.am = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ], [ %i.aa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185 ] ; 3 uses
  %i.an = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ], [ %i.al, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185 ] ; 3 uses
  %i.ao = icmp ugt i32 %.pre, 3
  br i1 %i.ao, label %bb.f, label %.thread319

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.080.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !21
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.281.0.copyload = load i64, ptr %.sroa.281.0..sroa_idx, align 8, !tbaa !22
  %i.aq = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %.sroa.080.0.copyload, i64 %.sroa.281.0.copyload) ; 2 uses
  %.not381 = icmp eq i32 %.pre, 4
  br i1 %.not381, label %.thread319, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.071.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !21
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.272.0.copyload = load i64, ptr %.sroa.272.0..sroa_idx, align 8, !tbaa !22
  %i.as = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %.sroa.071.0.copyload, i64 %.sroa.272.0.copyload)
  br label %.thread319

.thread319:                                       ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.g, %bb.f
  %.0117548.shrunk = phi i1 [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ false, %bb.a ]
  %.0132329 = phi i32 [ %i.aq, %bb.g ], [ %i.aq, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0118308314328 = phi i32 [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0125315327 = phi i32 [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0109316326 = phi i8 [ %i.am, %bb.g ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0317325 = phi i8 [ %i.an, %bb.g ], [ %i.an, %bb.f ], [ %i.an, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0144 = phi i32 [ %i.as, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0117548 = zext i1 %.0117548.shrunk to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 %.0117548, ptr %i.a, align 1, !tbaa !113
  %i.at = icmp ne i32 %.0118308314328, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 1, !tbaa !113
  %i.aw = icmp ne i32 %.0125315327, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !113
  %i.az = icmp ne i32 %.0132329, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bb = zext i1 %i.az to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !113
  br label %bb.i

bb.h:                                             ; preds = %.loopexit404
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !10  ; 4 uses
  %.not482 = icmp eq i32 %i.bc, 0
  br i1 %.not482, label %._crit_edge475, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.h
  %i.bd = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %wide.trip.count = zext i32 %i.bc to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = icmp eq i32 %i.bc, 1
  br i1 %i.be, label %.epil.preheader, label %.lr.ph474.new

.lr.ph474.new:                                    ; preds = %.lr.ph474
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.y

bb.i:                                             ; preds = %.thread319, %.loopexit404
  %indvars.iv495 = phi i64 [ 0, %.thread319 ], [ %indvars.iv.next496, %.loopexit404 ] ; 6 uses
  %.1471 = phi i8 [ %.0317325, %.thread319 ], [ %.6, %.loopexit404 ] ; 2 uses
  %.1110470 = phi i8 [ %.0109316326, %.thread319 ], [ %.6115, %.loopexit404 ] ; 2 uses
  %.1119469 = phi i32 [ %.0118308314328, %.thread319 ], [ %.6124, %.loopexit404 ] ; 2 uses
  %.1126468 = phi i32 [ %.0125315327, %.thread319 ], [ %.6131, %.loopexit404 ] ; 2 uses
  %.1133467 = phi i32 [ %.0132329, %.thread319 ], [ %.6138, %.loopexit404 ] ; 2 uses
  %.1145466 = phi i32 [ %.0144, %.thread319 ], [ %.6150, %.loopexit404 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv495 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !113, !range !115, !noundef !116
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i32, ptr %i.d, align 8             ; 2 uses
  %.not173433 = icmp eq i32 %i.bi, 0
  %or.cond481 = select i1 %i.bh, i1 true, i1 %.not173433
  br i1 %or.cond481, label %.loopexit404, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bj = trunc nuw nsw i64 %indvars.iv495 to i32 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread357
  %i.bk = phi i32 [ %i.fh, %.thread357 ], [ %i.bi, %.lr.ph.preheader ] ; 4 uses
  %i.bl = phi i64 [ %i.fj, %.thread357 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.2440 = phi i8 [ %.4, %.thread357 ], [ %.1471, %.lr.ph.preheader ] ; 8 uses
  %.2111439 = phi i8 [ %.4113, %.thread357 ], [ %.1110470, %.lr.ph.preheader ] ; 8 uses
  %.2120438 = phi i32 [ %.4122, %.thread357 ], [ %.1119469, %.lr.ph.preheader ] ; 8 uses
  %.2127437 = phi i32 [ %.4129, %.thread357 ], [ %.1126468, %.lr.ph.preheader ] ; 8 uses
  %.2134436 = phi i32 [ %.4136, %.thread357 ], [ %.1133467, %.lr.ph.preheader ] ; 7 uses
  %.2146435 = phi i32 [ %.4148, %.thread357 ], [ %.1145466, %.lr.ph.preheader ] ; 8 uses
  %.0153434 = phi i32 [ %i.fi, %.thread357 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bm = icmp ult i32 %.0153434, 4
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !113, !range !115, !noundef !116
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread357, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bq = load ptr, ptr %4, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 2 uses
  %.sroa.0281.0.copyload = load ptr, ptr %i.br, align 8, !tbaa !21 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  switch i32 %i.bj, label %bb.l [
    i32 0, label %.split
    i32 1, label %bb.o
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

.split:                                           ; preds = %bb.k
  %i.bs = call fastcc noundef i32 @_ZL9parseArchN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload)
  %.not387 = icmp eq i32 %i.bs, 0
  br i1 %.not387, label %.split..thread357_crit_edge, label %.thread330

.split..thread357_crit_edge:                      ; preds = %.split
  %.pre509 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %.thread357

bb.m:                                             ; preds = %bb.k
  %i.bt = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not.i178 = icmp ult i64 %.sroa.10.0.copyload, 6
  br i1 %.not.i178, label %_ZNK4llvh9StringRef10startswithES0_.exit179, label %_ZNK4llvh9StringRef10startswithES0_.exit179.thread

_ZNK4llvh9StringRef10startswithES0_.exit179.thread: ; preds = %bb.m
  %i.bu = load i32, ptr %.sroa.0281.0.copyload, align 1
  %i.bv = xor i32 %i.bu, 2003269987
  %i.bw = getelementptr i8, ptr %.sroa.0281.0.copyload, i64 4
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = xor i32 %i.by, 28265
  %i.ca = or i32 %i.bv, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0                    ; 2 uses
  %i.ce = zext i1 %i.cd to i8
  br label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189

_ZNK4llvh9StringRef10startswithES0_.exit179:      ; preds = %bb.m
  %.not.i176.not = icmp eq i64 %.sroa.10.0.copyload, 5
  br i1 %.not.i176.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189, label %_ZNK4llvh9StringRef10startswithES0_.exit177

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit179.thread, %_ZNK4llvh9StringRef10startswithES0_.exit179
  %i.cf = phi i8 [ %i.ce, %_ZNK4llvh9StringRef10startswithES0_.exit179.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit179 ]
  %i.cg = phi i1 [ %i.cd, %_ZNK4llvh9StringRef10startswithES0_.exit179.thread ], [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ]
  %i.ch = load i32, ptr %.sroa.0281.0.copyload, align 1
  %i.ci = xor i32 %i.ch, 1735289197
  %i.cj = getelementptr i8, ptr %.sroa.0281.0.copyload, i64 4
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = xor i32 %i.cl, 119
  %i.cn = or i32 %i.ci, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br label %_ZNK4llvh9StringRef10startswithES0_.exit177

_ZNK4llvh9StringRef10startswithES0_.exit177:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit179, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189
  %i.cr = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %i.cf, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ] ; 2 uses
  %i.cs = phi i1 [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %i.cg, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ]
  %i.ct = phi i1 [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %i.cq, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ] ; 2 uses
  %i.cu = zext i1 %i.ct to i8                     ; 2 uses
  %i.cv = icmp ne i32 %i.bt, 0
  %or.cond = or i1 %i.cv, %i.cs
  %i.cw = or i1 %or.cond, %i.ct
  br i1 %i.cw, label %.thread330, label %.thread357

bb.n:                                             ; preds = %bb.k
  %i.cx = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not382 = icmp eq i32 %i.cx, 0
  br i1 %.not382, label %.split352, label %.thread330

.split352:                                        ; preds = %bb.n
  %i.cy = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not383 = icmp eq i32 %i.cy, 0
  br i1 %.not383, label %.thread357, label %.thread330

bb.o:                                             ; preds = %bb.k
  %i.cz = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not386 = icmp eq i32 %i.cz, 0
  br i1 %.not386, label %.thread357, label %.thread330

.thread330:                                       ; preds = %bb.n, %_ZNK4llvh9StringRef10startswithES0_.exit177, %.split352, %.split, %bb.o
  %.3351 = phi i8 [ %i.cu, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2440, %bb.o ], [ %.2440, %.split ], [ %.2440, %.split352 ], [ %.2440, %bb.n ]
  %.3112349 = phi i8 [ %i.cr, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2111439, %bb.o ], [ %.2111439, %.split ], [ %.2111439, %.split352 ], [ %.2111439, %bb.n ]
  %.3121347 = phi i32 [ %.2120438, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %i.cz, %bb.o ], [ %.2120438, %.split ], [ %.2120438, %.split352 ], [ %.2120438, %bb.n ]
  %.3128345 = phi i32 [ %i.bt, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2127437, %bb.o ], [ %.2127437, %.split ], [ %.2127437, %.split352 ], [ %.2127437, %bb.n ]
  %.3135343 = phi i32 [ %.2134436, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2134436, %bb.o ], [ %.2134436, %.split ], [ 0, %.split352 ], [ %i.cx, %bb.n ]
  %.3147341 = phi i32 [ %.2146435, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2146435, %bb.o ], [ %.2146435, %.split ], [ %i.cy, %.split352 ], [ %.2146435, %bb.n ]
  %i.da = zext i32 %.0153434 to i64               ; 2 uses
  %i.db = icmp samesign ult i64 %indvars.iv495, %i.da
  br i1 %i.db, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.thread330
  %i.dc = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.bl ; 3 uses
  %.sroa.0267.0.copyload268 = load ptr, ptr %i.dd, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %.sroa.7.0.copyload272 = load i64, ptr %.sroa.7.0..sroa_idx271, align 8, !tbaa !22 ; 2 uses
  store ptr @.str.137, ptr %i.dd, align 8, !tbaa !21
  store i64 0, ptr %.sroa.7.0..sroa_idx271, align 8, !tbaa !22
  %i.de = icmp eq i64 %.sroa.7.0.copyload272, 0
  br i1 %i.de, label %.loopexit404.sink.split, label %.preheader400

.preheader400:                                    ; preds = %bb.p, %.critedge
  %.0142462 = phi i32 [ %i.dz, %.critedge ], [ %i.bj, %bb.p ] ; 4 uses
  %.sroa.7.0461 = phi i64 [ %.sroa.7.0.copyload276, %.critedge ], [ %.sroa.7.0.copyload272, %bb.p ]
  %.sroa.0267.0460 = phi ptr [ %.sroa.0267.0.copyload270, %.critedge ], [ %.sroa.0267.0.copyload268, %bb.p ]
  %i.df = zext i32 %.0142462 to i64               ; 7 uses
  %i.dg = icmp ult i32 %.0142462, 4
  br i1 %i.dg, label %.lr.ph454.preheader, label %.critedge

.lr.ph454.preheader:                              ; preds = %.preheader400
  %i.dh = add nuw nsw i64 %i.df, 1
  %i.di = sub nuw nsw i32 3, %.0142462
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dh, %i.dj            ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !113, !range !115, !noundef !116
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.q, label %.critedge.loopexit.split.loop.exit584

bb.q:                                             ; preds = %.lr.ph454.preheader
  %indvars.iv.next.a = add nuw nsw i64 %i.df, 1   ; 3 uses
  %exitcond494.not = icmp eq i64 %indvars.iv.next.a, 4
  br i1 %exitcond494.not, label %.critedge, label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.a
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !113, !range !115, !noundef !116
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.r, label %.critedge.loopexit.split.loop.exit584

bb.r:                                             ; preds = %.lr.ph454.1
  %indvars.iv.next.1.a = add nuw nsw i64 %i.df, 2 ; 3 uses
  %exitcond494.not.1 = icmp eq i64 %indvars.iv.next.1.a, 4
  br i1 %exitcond494.not.1, label %.critedge, label %.lr.ph454.2

.lr.ph454.2:                                      ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.1.a
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !113, !range !115, !noundef !116
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.s, label %.critedge.loopexit.split.loop.exit584

bb.s:                                             ; preds = %.lr.ph454.2
  %indvars.iv.next.2.a = add nuw nsw i64 %i.df, 3 ; 3 uses
  %exitcond494.not.2 = icmp eq i64 %indvars.iv.next.2.a, 4
  br i1 %exitcond494.not.2, label %.critedge, label %.lr.ph454.3

.lr.ph454.3:                                      ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.2.a
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !113, !range !115, !noundef !116
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.critedge, label %.critedge.loopexit.split.loop.exit584

.critedge.loopexit.split.loop.exit584:            ; preds = %.lr.ph454.3, %.lr.ph454.2, %.lr.ph454.1, %.lr.ph454.preheader
  %indvars.iv.lcssa = phi i64 [ %i.df, %.lr.ph454.preheader ], [ %indvars.iv.next.a, %.lr.ph454.1 ], [ %indvars.iv.next.1.a, %.lr.ph454.2 ], [ %indvars.iv.next.2.a, %.lr.ph454.3 ] ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.s, %.lr.ph454.3, %.critedge.loopexit.split.loop.exit584, %.preheader400
  %.1143.lcssa = phi i32 [ %.0142462, %.preheader400 ], [ %i.dx, %.critedge.loopexit.split.loop.exit584 ], [ 4, %.lr.ph454.3 ], [ 4, %bb.s ], [ 4, %bb.r ], [ 4, %bb.q ]
  %.lcssa426 = phi i64 [ %i.df, %.preheader400 ], [ %indvars.iv.lcssa, %.critedge.loopexit.split.loop.exit584 ], [ %i.dk, %.lr.ph454.3 ], [ %i.dk, %bb.s ], [ %i.dk, %bb.r ], [ %i.dk, %bb.q ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.lcssa426 ; 3 uses
  %.sroa.0267.0.copyload270 = load ptr, ptr %i.dy, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %.sroa.7.0.copyload276 = load i64, ptr %.sroa.7.0..sroa_idx275, align 8, !tbaa !22 ; 2 uses
  store ptr %.sroa.0267.0460, ptr %i.dy, align 8, !tbaa !21
  store i64 %.sroa.7.0461, ptr %.sroa.7.0..sroa_idx275, align 8, !tbaa !22
  %i.dz = add i32 %.1143.lcssa, 1
  %i.ea = icmp eq i64 %.sroa.7.0.copyload276, 0
  br i1 %i.ea, label %.loopexit404.sink.split, label %.preheader400, !llvm.loop !117

bb.t:                                             ; preds = %.thread330
  %i.eb = icmp samesign ugt i64 %indvars.iv495, %i.da
  br i1 %i.eb, label %.preheader401, label %.loopexit404.sink.split

.preheader401:                                    ; preds = %bb.t, %.critedge5
  %.1154 = phi i32 [ %.lcssa490, %.critedge5 ], [ %.0153434, %bb.t ] ; 5 uses
  %i.ec = load i32, ptr %i.d, align 8, !tbaa !10  ; 4 uses
  %i.ed = icmp ugt i32 %i.ec, %.1154
  br i1 %i.ed, label %.lr.ph449, label %.thread353

.lr.ph449:                                        ; preds = %.preheader401
  %i.ee = load ptr, ptr %4, align 8, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph449, %.critedge3
  %.0140448 = phi i32 [ %.1154, %.lr.ph449 ], [ %.lcssa, %.critedge3 ] ; 6 uses
  %.sroa.6.0447 = phi i64 [ 0, %.lr.ph449 ], [ %.sroa.6.0.copyload263, %.critedge3 ]
  %.sroa.0259.0446 = phi ptr [ @.str.137, %.lr.ph449 ], [ %.sroa.0259.0.copyload260, %.critedge3 ]
  %i.ef = zext i32 %.0140448 to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ef ; 3 uses
  %.sroa.0259.0.copyload260 = load ptr, ptr %i.eg, align 8, !tbaa !21 ; 2 uses
  %.sroa.6.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %.sroa.6.0.copyload263 = load i64, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !22 ; 3 uses
  store ptr %.sroa.0259.0446, ptr %i.eg, align 8, !tbaa !21
  store i64 %.sroa.6.0447, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !22
  %i.eh = icmp eq i64 %.sroa.6.0.copyload263, 0
  br i1 %i.eh, label %.thread353, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  %i.ei = call i32 @llvm.umax.i32(i32 %.0140448, i32 3)
  %umax = add nuw i32 %i.ei, 1                    ; 4 uses
  %exitcond.not601 = icmp ugt i32 %.0140448, 2
  br i1 %exitcond.not601, label %.critedge3, label %.lr.ph603

.preheader.a:                                     ; preds = %.lr.ph603
  %exitcond.not = icmp eq i32 %12, 3
  br i1 %exitcond.not, label %.critedge3, label %.lr.ph603.1

.lr.ph603.1:                                      ; preds = %.preheader.a
  %i.ej = add nuw nsw i32 %.0140448, 2            ; 3 uses
  %9 = zext nneg i32 %i.ej to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %9
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !113, !range !115, !noundef !116
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.preheader.1.a, label %..critedge3_crit_edge, !llvm.loop !119

.preheader.1.a:                                   ; preds = %.lr.ph603.1
  %exitcond.not.1 = icmp eq i32 %i.ej, 3
  br i1 %exitcond.not.1, label %.critedge3, label %.lr.ph603.2

.lr.ph603.2:                                      ; preds = %.preheader.1.a
  %10 = add nuw nsw i32 %.0140448, 3              ; 2 uses
  %11 = zext nneg i32 %10 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %11
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !113, !range !115, !noundef !116
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %.critedge3, label %..critedge3_crit_edge, !llvm.loop !119

.lr.ph603:                                        ; preds = %.preheader.preheader
  %12 = add nuw nsw i32 %.0140448, 1              ; 3 uses
  %13 = zext nneg i32 %12 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 %13
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !113, !range !115, !noundef !116
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.preheader.a, label %..critedge3_crit_edge, !llvm.loop !119

..critedge3_crit_edge:                            ; preds = %.lr.ph603.2, %.lr.ph603.1, %.lr.ph603
  %.lcssa616 = phi i32 [ %12, %.lr.ph603 ], [ %i.ej, %.lr.ph603.1 ], [ %10, %.lr.ph603.2 ]
  br label %.critedge3, !llvm.loop !119

.critedge3:                                       ; preds = %.preheader.a, %.preheader.1.a, %.lr.ph603.2, %..critedge3_crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %.lcssa616, %..critedge3_crit_edge ], [ %umax, %.lr.ph603.2 ], [ %umax, %.preheader.1.a ], [ %umax, %.preheader.a ] ; 2 uses
  %i.et = icmp ugt i32 %i.ec, %.lcssa
  br i1 %i.et, label %bb.u, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %.critedge3
  %i.eu = load i32, ptr %i.e, align 4, !tbaa !11
  %.not.i192 = icmp ult i32 %i.ec, %i.eu
  br i1 %.not.i192, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.v, !prof !121

bb.v:                                             ; preds = %._crit_edge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 16) #13
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.v
  %i.ev = phi i32 [ %.pre.i, %bb.v ], [ %i.ec, %._crit_edge ]
  %i.ew = load ptr, ptr %4, align 8, !tbaa !7
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  store ptr %.sroa.0259.0.copyload260, ptr %i.ey, align 1
  %.sroa.6.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.6.0.copyload263, ptr %.sroa.6.0..sroa_idx264, align 1
  %i.ez = load i32, ptr %i.d, align 8, !tbaa !10
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.d, align 8, !tbaa !10
  br label %.thread353

.thread353:                                       ; preds = %bb.u, %.preheader401, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.fb = add i32 %.1154, 1
  %umax491 = call i32 @llvm.umax.i32(i32 %i.fb, i32 4) ; 3 uses
  %14 = add i32 %umax491, -1                      ; 2 uses
  %exitcond492.not605 = icmp eq i32 %.1154, %14
  br i1 %exitcond492.not605, label %..critedge5_crit_edge.a, label %.lr.ph607

bb.w:                                             ; preds = %.lr.ph607
  %exitcond492.not = icmp eq i32 %i.fc, %14
  br i1 %exitcond492.not, label %..critedge5_crit_edge.a, label %.lr.ph607, !llvm.loop !122

..critedge5_crit_edge.a:                          ; preds = %bb.w, %.thread353
  %.pre517 = zext i32 %umax491 to i64
  br label %.critedge5

.lr.ph607:                                        ; preds = %.thread353, %bb.w
  %.2155606 = phi i32 [ %i.fc, %bb.w ], [ %.1154, %.thread353 ]
  %i.fc = add i32 %.2155606, 1                    ; 4 uses
  %15 = zext i32 %i.fc to i64                     ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !113, !range !115, !noundef !116
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.w, label %.critedge5, !llvm.loop !122

.critedge5:                                       ; preds = %.lr.ph607, %..critedge5_crit_edge.a
  %.pre-phi = phi i64 [ %.pre517, %..critedge5_crit_edge.a ], [ %15, %.lr.ph607 ]
  %.lcssa490 = phi i32 [ %umax491, %..critedge5_crit_edge.a ], [ %i.fc, %.lr.ph607 ]
  %i.fg = icmp samesign ult i64 %.pre-phi, %indvars.iv495
  br i1 %i.fg, label %.preheader401, label %.loopexit404.sink.split, !llvm.loop !123

.thread357:                                       ; preds = %.split..thread357_crit_edge, %_ZNK4llvh9StringRef10startswithES0_.exit177, %.split352, %bb.o, %bb.j
  %i.fh = phi i32 [ %i.bk, %bb.j ], [ %i.bk, %bb.o ], [ %i.bk, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %i.bk, %.split352 ], [ %.pre509, %.split..thread357_crit_edge ] ; 2 uses
  %.4148 = phi i32 [ %.2146435, %bb.j ], [ %.2146435, %bb.o ], [ %.2146435, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %.split352 ], [ %.2146435, %.split..thread357_crit_edge ] ; 2 uses
  %.4136 = phi i32 [ %.2134436, %bb.j ], [ %.2134436, %bb.o ], [ %.2134436, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %.split352 ], [ %.2134436, %.split..thread357_crit_edge ] ; 2 uses
  %.4129 = phi i32 [ %.2127437, %bb.j ], [ %.2127437, %bb.o ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2127437, %.split352 ], [ %.2127437, %.split..thread357_crit_edge ] ; 2 uses
  %.4122 = phi i32 [ %.2120438, %bb.j ], [ 0, %bb.o ], [ %.2120438, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2120438, %.split352 ], [ %.2120438, %.split..thread357_crit_edge ] ; 2 uses
  %.4113 = phi i8 [ %.2111439, %bb.j ], [ %.2111439, %bb.o ], [ %i.cr, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2111439, %.split352 ], [ %.2111439, %.split..thread357_crit_edge ] ; 2 uses
  %.4 = phi i8 [ %.2440, %bb.j ], [ %.2440, %bb.o ], [ %i.cu, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2440, %.split352 ], [ %.2440, %.split..thread357_crit_edge ] ; 2 uses
  %i.fi = add i32 %.0153434, 1                    ; 3 uses
  %i.fj = zext i32 %i.fi to i64
  %.not173 = icmp eq i32 %i.fh, %i.fi
  br i1 %.not173, label %.loopexit404, label %.lr.ph, !llvm.loop !124

.loopexit404.sink.split:                          ; preds = %.critedge5, %.critedge, %bb.p, %bb.t
  store i8 1, ptr %i.bf, align 1, !tbaa !113
  br label %.loopexit404

.loopexit404:                                     ; preds = %.thread357, %.loopexit404.sink.split, %bb.i
  %.6150 = phi i32 [ %.1145466, %bb.i ], [ %.3147341, %.loopexit404.sink.split ], [ %.4148, %.thread357 ] ; 5 uses
  %.6138 = phi i32 [ %.1133467, %bb.i ], [ %.3135343, %.loopexit404.sink.split ], [ %.4136, %.thread357 ] ; 5 uses
  %.6131 = phi i32 [ %.1126468, %bb.i ], [ %.3128345, %.loopexit404.sink.split ], [ %.4129, %.thread357 ] ; 2 uses
  %.6124 = phi i32 [ %.1119469, %bb.i ], [ %.3121347, %.loopexit404.sink.split ], [ %.4122, %.thread357 ] ; 2 uses
  %.6115 = phi i8 [ %.1110470, %bb.i ], [ %.3112349, %.loopexit404.sink.split ], [ %.4113, %.thread357 ] ; 3 uses
  %.6 = phi i8 [ %.1471, %bb.i ], [ %.3351, %.loopexit404.sink.split ], [ %.4, %.thread357 ] ; 3 uses
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %.not170 = icmp eq i64 %indvars.iv.next496, 4
  br i1 %.not170, label %bb.h, label %bb.i, !llvm.loop !125

._crit_edge475.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge475, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge475.loopexit.unr-lcssa, %.lr.ph474
  %indvars.iv497.epil.init = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next498.1, %._crit_edge475.loopexit.unr-lcssa ]
  %lcmp.mod625 = trunc i32 %i.bc to i1
  call void @llvm.assume(i1 %lcmp.mod625)
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497.epil.init ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !20
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.x, label %._crit_edge475

bb.x:                                             ; preds = %.epil.preheader
  store ptr @.str, ptr %i.fk, align 8, !tbaa !21
  store i64 7, ptr %i.fl, align 8, !tbaa !22
  br label %._crit_edge475

._crit_edge475:                                   ; preds = %._crit_edge475.loopexit.unr-lcssa, %bb.x, %.epil.preheader, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fo, ptr %5, align 8, !tbaa !126
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.fp, align 8, !tbaa !19
  store i8 0, ptr %i.fo, align 8, !tbaa !46
  %i.fq = icmp eq i32 %.6138, 10
  br i1 %i.fq, label %bb.ad, label %bb.am

bb.y:                                             ; preds = %bb.ac, %.lr.ph474.new
  %indvars.iv497 = phi i64 [ 0, %.lr.ph474.new ], [ %indvars.iv.next498.1, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph474.new ], [ %niter.next.1, %bb.ac ]
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !20
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str, ptr %i.fr, align 8, !tbaa !21
  store i64 7, ptr %i.fs, align 8, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !20
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr @.str, ptr %i.fz, align 8, !tbaa !21
  store i64 7, ptr %i.fw, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next498.1 = add nuw nsw i64 %indvars.iv497, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge475.loopexit.unr-lcssa, label %bb.y, !llvm.loop !127

bb.ad:                                            ; preds = %._crit_edge475
  %i.ga = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp ult i64 %i.gd, 11
  br i1 %.not.i, label %.thread371, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.ad
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !17 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 1
  %i.gg = xor i64 %i.gf, 7306080422883257953
  %i.gh = getelementptr i8, ptr %i.ge, i64 3
  %i.gi = load i64, ptr %i.gh, align 1
  %i.gj = xor i64 %i.gi, 7593739009804300146
  %i.gk = or i64 %i.gg, %i.gj
  %i.gl = icmp ne i64 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread368, label %.thread371

_ZNK4llvh9StringRef10startswithES0_.exit.thread368: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.go = load ptr, ptr %i.gb, align 8, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 11
  %i.gq = add i64 %i.gd, -11                      ; 2 uses
  store ptr %i.gp, ptr %6, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gq, ptr %i.gr, align 8
  %i.gs = icmp eq i64 %i.gq, 0
  br i1 %i.gs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread368
  store ptr @.str.115, ptr %i.gb, align 8, !tbaa !21
  store i64 7, ptr %i.gc, align 8, !tbaa !22
  br label %bb.al

bb.af:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread368
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.gt, align 8, !tbaa !42
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 5, ptr %i.gu, align 1, !tbaa !47
  store ptr @.str.115, ptr %8, align 8, !tbaa !46
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.gv, align 8, !tbaa !46
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18) %8) #13
  %i.gw = load ptr, ptr %5, align 8, !tbaa !12    ; 6 uses
  %i.gx = icmp eq ptr %i.gw, %i.fo
  %i.gy = load ptr, ptr %7, align 8, !tbaa !12    ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz                ; 2 uses
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.ha, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.ha, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !19 ; 3 uses
  %i.hd = icmp ult i64 %i.hc, 16
  call void @llvm.assume(i1 %i.hd)
  switch i64 %i.hc, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.he = load i8, ptr %i.gy, align 1, !tbaa !46
  store i8 %i.he, ptr %i.gw, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 1 %i.gy, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.hf = load i64, ptr %i.hb, align 8, !tbaa !19 ; 2 uses
  store i64 %i.hf, ptr %i.fp, align 8, !tbaa !19
  %i.hg = load ptr, ptr %5, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  store i8 0, ptr %i.hh, align 1, !tbaa !46
  %.pre.i195 = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gy, ptr %5, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hj = load <2 x i64>, ptr %i.hi, align 8, !tbaa !46
  store <2 x i64> %i.hj, ptr %i.fp, align 8, !tbaa !46
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hk = load i64, ptr %i.fo, align 8, !tbaa !46
  store ptr %i.gy, ptr %5, align 8, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hm = load <2 x i64>, ptr %i.hl, align 8, !tbaa !46
  store <2 x i64> %i.hm, ptr %i.fp, align 8, !tbaa !46
  %.not.i194 = icmp eq ptr %i.gw, null
  br i1 %.not.i194, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gw, ptr %7, align 8, !tbaa !12
end_hunk_0
