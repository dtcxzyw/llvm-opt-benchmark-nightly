Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7071
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5Catch10makeStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !70245
  %i.co = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19302, !noalias !70245
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cr) #49, !noalias !70245
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 232
  store ptr null, ptr %i.cs, align 8, !tbaa !19303, !noalias !70245
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  store i8 0, ptr %i.ct, align 8, !tbaa !19304, !noalias !70245
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 241
  store i8 0, ptr %i.cu, align 1, !tbaa !19305, !noalias !70245
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 32, i1 false), !noalias !70245
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 24), ptr %i.ck, align 8, !tbaa !3602, !noalias !70245
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 64), ptr %i.cr, align 8, !tbaa !3602, !noalias !70245
  %i.cw = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSo, i64 0), align 8, !noalias !70245
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 %i.cw
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cx, ptr noundef %i.cq) #49, !noalias !70245
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13, %.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN5Catch20ReusableStringStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.cy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIA23_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.212)
  %i.cz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  store i8 39, ptr %i.b, align 1, !tbaa !9324
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.da)
  call void @_ZN5Catch18throw_domain_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #61
  unreachable

bb.c:                                             ; preds = %.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.db = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #59, !noalias !70246 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch6Detail12_GLOBAL__N_110FileStreamE, i64 16), ptr %i.db, align 8, !tbaa !3602, !noalias !70246
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 11 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 256 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dd) #49, !noalias !70246
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.dd, align 8, !tbaa !3602, !noalias !70246
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 472
  store ptr null, ptr %i.de, align 8, !tbaa !19303, !noalias !70246
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 480
  store i8 0, ptr %i.df, align 8, !tbaa !19304, !noalias !70246
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 481
  store i8 0, ptr %i.dg, align 1, !tbaa !19305, !noalias !70246
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i8 0, i64 32, i1 false), !noalias !70246
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 8), align 8, !noalias !70246 ; 2 uses
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 16), align 8, !noalias !70246
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !70246
  %i.dm = getelementptr inbounds i8, ptr %i.dc, i64 %i.dl
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !3602, !noalias !70246
  %i.dn = load ptr, ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8, !noalias !70246
  %i.dq = getelementptr inbounds i8, ptr %i.dc, i64 %i.dp
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dq, ptr noundef null) #49, !noalias !70246
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, i64 64), ptr %i.dd, align 8, !tbaa !3602, !noalias !70246
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.dr) #49, !noalias !70246
  %i.ds = load ptr, ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8, !noalias !70246
  %i.dv = getelementptr inbounds i8, ptr %i.dc, i64 %i.du
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dv, ptr noundef nonnull %i.dr) #49, !noalias !70246
  %i.dw = load ptr, ptr %1, align 8, !tbaa !9325, !noalias !70246
  %i.dx = tail call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.dr, ptr noundef %i.dw, i32 noundef 16) #49, !noalias !70246
  %.not.i.i.i = icmp eq ptr %i.dx, null
  %i.dy = load ptr, ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !70246
  %i.eb = getelementptr inbounds i8, ptr %i.dc, i64 %i.ea ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !16115, !noalias !70246
  %i.ee = or i32 %i.ed, 4
  br label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i.i

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i32 [ %i.ee, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.eb, i32 noundef %.sink.i.i.i) #49, !noalias !70246
  %i.ef = load ptr, ptr %i.dc, align 8, !tbaa !3602, !noalias !70246
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !70246
  %i.ei = getelementptr inbounds i8, ptr %i.dc, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !16115, !noalias !70246
  %i.el = and i32 %i.ek, 5
  %.not.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i, label %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49, !noalias !70246
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49, !noalias !70246
  call void @_ZN5Catch20ReusableStringStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !70246
  %i.em = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIA23_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(23) @.str.671), !noalias !70246
  %i.en = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %1), !noalias !70246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49, !noalias !70246
  store i8 39, ptr %i.a, align 1, !tbaa !9324, !noalias !70246
  %i.eo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !noalias !70246
  call void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.eo), !noalias !70246
  call void @_ZN5Catch18throw_domain_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !70246
  unreachable

_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !19192, !noalias !70246
  %i.er = or i32 %i.eq, 8192
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !19193, !noalias !70246
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit18, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CerrStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_114DebugOutStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit
  %.sink = phi ptr [ %i.db, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit ], [ %i.cj, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit18 ], [ %i.bl, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CerrStreamEED2Ev.exit ], [ %i.ak, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_114DebugOutStreamEED2Ev.exit ], [ %i.g, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit ]
  store ptr %.sink, ptr %0, align 8, !tbaa !19199
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch14makeColourImplENS_10ColourModeEPNS_7IStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Catch::Detail::unique_ptr.91") align 8 captures(none) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.Catch::ReusableStringStream", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  switch i8 %1, label %bb.c [
    i8 1, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit
    i8 3, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !3602
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2) #49, !inline_history !70247
  br i1 %i.e, label %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12

_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit: ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #63    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9293
  %i.h = tail call i32 @isatty(i32 noundef 1) #49
  %.not = icmp eq i32 %i.h, 0
  store i32 %i.g, ptr %i.f, align 4, !tbaa !9293
  br i1 %.not, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit

_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12: ; preds = %bb.a, %bb.b, %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit
  br label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN5Catch20ReusableStringStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIA44_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(44) @.str.201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.j = zext i8 %1 to i32
  store i32 %i.j, ptr %i.a, align 4, !tbaa !9293
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIiEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @_ZN5Catch18throw_domain_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #61
  unreachable

_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit: ; preds = %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit, %bb.a, %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12
  %.sink16 = phi ptr [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_112NoColourImplE, i64 16), %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit12 ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_114ANSIColourImplE, i64 16), %bb.a ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_114ANSIColourImplE, i64 16), %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit ]
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #59, !noalias !4069 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %i.m, align 8, !tbaa !19201, !noalias !4069
  store ptr %.sink16, ptr %i.l, align 8, !tbaa !3602, !noalias !4069
  store ptr %i.l, ptr %0, align 8, !tbaa !19312
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.Catch::TextFlow::Column::const_iterator", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !9325, !noalias !70253
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9323, !noalias !70253
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9356 ; 2 uses
  %i.h = icmp ne ptr %i.g, %i.e
  %i.i = load ptr, ptr %2, align 8, !nonnull !4069, !align !19313
  %i.j = icmp ne ptr %i.i, %1
  %.not3.i6 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %.not3.i6, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %.sroa.2.0.copyload.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9356, !noalias !70254
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(57) %2, ptr poison, ptr %i.g, ptr poison, ptr %.sroa.2.0.copyload.i.peel)
  %.pre9 = load i64, ptr %i.k, align 8, !tbaa !9323
  %.pre = load ptr, ptr %3, align 8, !tbaa !9325
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre, i64 noundef %.pre9) #49 ; 0 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !9325   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.b
  %i.p = load i64, ptr %i.l, align 8, !tbaa !9324
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.b
  %4 = load i64, ptr %i.k, align 8, !tbaa !9323
  %5 = icmp ult i64 %4, 16
  call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.r = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %2) ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !9356 ; 2 uses
  %i.t = icmp ne ptr %i.s, %i.e
  %i.u = load ptr, ptr %2, align 8, !nonnull !4069, !align !19313
  %i.v = icmp ne ptr %i.u, %1
  %.not3.i.peel = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i.peel, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret ptr %0

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = phi ptr [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9356, !noalias !70254
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(57) %2, ptr poison, ptr %i.w, ptr poison, ptr %.sroa.2.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9324
  %i.x = load ptr, ptr %0, align 8, !tbaa !3602
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9345
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.peel.next
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %3, align 8, !tbaa !9325
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !9323
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.af, i64 noundef %i.ag) #49 ; 0 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !9325  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.l
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !9324
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.am = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %2) ; 0 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !9356 ; 2 uses
  %i.ao = icmp ne ptr %i.an, %i.e
  %i.ap = load ptr, ptr %2, align 8, !nonnull !4069, !align !19313
  %i.aq = icmp ne ptr %i.ap, %1
  %.not3.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %.not3.i, label %.peel.next, label %._crit_edge, !llvm.loop !70252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5Catch10ColourImpl11guardColourENS_6Colour4CodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Catch::ColourImpl::ColourGuard") align 8 captures(none) initializes((0, 13)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #17 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !19317
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !19318
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !19319
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !3602
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9325 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9324
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !3602
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19196
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19294 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19295
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #60, !inline_history !70255
  br label %_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED2Ev.exit

_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch7Session13useConfigDataERKNS_10ConfigDataE(ptr noundef nonnull align 8 dereferenceable(409) initializes((96, 196)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 100, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16193 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN5Catch6Detail10unique_ptrINS_6ConfigEE5resetEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !3602
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(385) %i.t) #49, !inline_history !567
  br label %_ZN5Catch6Detail10unique_ptrINS_6ConfigEE5resetEPS2_.exit

_ZN5Catch6Detail10unique_ptrINS_6ConfigEE5resetEPS2_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.s, align 8, !tbaa !16193
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 43) i32 @_ZN5Catch7Session3runEv(ptr noundef nonnull align 8 dereferenceable(409) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70257
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.37, i64 noundef 45) #49 ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #49 ; 0 uses
  %i.g = load ptr, ptr @stdin, align 8, !tbaa !70259
  %i.h = tail call i32 @getc(ptr noundef %i.g), !inline_history !70256 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call noundef i32 @_ZN5Catch7Session11runInternalEv(ptr noundef nonnull align 8 dereferenceable(409) %0) ; 2 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !70257
  %i.k = and i32 %i.j, 2
  %.not2 = icmp eq i32 %i.k, 0
  br i1 %.not2, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.38, i64 noundef 56) #49 ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.i) #49 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9324
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3602
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9345
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
end_hunk_0
begin_hunk_1_@_ZN5Catch15ConsoleReporter18benchmarkPreparingENS_9StringRefE:bb.a

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %1, align 1, !tbaa !9324
  store i8 %i.p, ptr %i.o, align 1, !tbaa !9324
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %2, ptr %i.q, align 8, !tbaa !9323, !alias.scope !71371
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.r, align 1, !tbaa !9324
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !9320
  %i.t = load ptr, ptr %5, align 8, !tbaa !9325   ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.v = load i64, ptr %i.q, align 8, !tbaa !9323 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !9325
  %i.y = load i64, ptr %i.g, align 8, !tbaa !9324
  store i64 %i.y, ptr %i.s, align 8, !tbaa !9324
  %.pr = load i64, ptr %i.q, align 8, !tbaa !9323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %i.z = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.m ] ; 3 uses
  %i.aa = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.v, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !9323
  store ptr %i.g, ptr %5, align 8, !tbaa !9325
  store i64 0, ptr %i.q, align 8, !tbaa !9323
  store i8 0, ptr %i.g, align 8, !tbaa !9324
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !21802
  %i.ad = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ad, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.q
  %i.ae = phi i64 [ %i.bd, %bb.q ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %i.be, %bb.q ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.q ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = icmp eq ptr %.sroa.022.049.i.i.i, %i.ag
  br i1 %i.ah, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.ai = phi i64 [ %i.ba, %.critedge6.i.i.i ], [ %i.ae, %.preheader.i.i.i ] ; 5 uses
  %i.aj = phi ptr [ %i.az, %.critedge6.i.i.i ], [ %i.af, %.preheader.i.i.i ] ; 5 uses
  %i.ak = phi ptr [ %i.bb, %.critedge6.i.i.i ], [ %i.ag, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.ay, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.al = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9324
  %i.am = icmp eq i8 %i.al, 27
  br i1 %i.am, label %bb.n, label %.critedge.i.i.i

bb.n:                                             ; preds = %.lr.ph40.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !9324
  %i.aq = icmp ne i8 %i.ap, 91
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ak
  %or.cond51.i.i.i = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.aw, %.critedge4.i.i.i ], [ %i.ar, %bb.o ] ; 4 uses
  %i.at = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9324 ; 3 uses
  %i.au = sext i8 %i.at to i32
  %isdigittmp.i.i.i = add nsw i32 %i.au, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.av = icmp eq i8 %i.at, 59
  %or.cond.i.i.i = or i1 %i.av, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak
  br i1 %i.ax, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.at, 109
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9324
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !9325  ; 3 uses
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !9323 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = icmp eq ptr %i.ay, %i.bb
  br i1 %i.bc, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.o, %bb.n, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.bd = phi i64 [ %i.ae, %.preheader.i.i.i ], [ %i.ai, %.critedge4.i.i.i ], [ %i.ai, %.lr.ph40.i.i.i ], [ %i.ba, %.critedge6.i.i.i ], [ %i.ai, %bb.o ], [ %i.ai, %.critedge2.i.i.i ], [ %i.ai, %bb.n ] ; 3 uses
  %i.be = phi ptr [ %i.af, %.preheader.i.i.i ], [ %i.aj, %.critedge4.i.i.i ], [ %i.aj, %.lr.ph40.i.i.i ], [ %i.az, %.critedge6.i.i.i ], [ %i.aj, %bb.o ], [ %i.aj, %.critedge2.i.i.i ], [ %i.aj, %bb.n ] ; 3 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.ay, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.o ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.n ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd ; 2 uses
  %i.bg = icmp eq ptr %.sroa.022.135.i.i.i, %i.bf
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !21802
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !21802
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bk = icmp eq ptr %.sroa.022.4.i.i.i, %i.bf
  br i1 %i.bk, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bl = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.bd, %bb.q ] ; 3 uses
  %i.bm = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.be, %bb.q ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.bo, align 8, !tbaa !19288
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 -1, ptr %i.bp, align 8, !tbaa !19287
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23667
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !23656
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !23652
  %i.bw = add i64 %i.bv, -2
  store i64 %i.bw, ptr %i.bn, align 8, !tbaa !19286
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !9320
  %i.by = icmp eq ptr %i.bm, %i.s
  br i1 %i.by, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

bb.r:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bz = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.ca, i1 false)
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.bm, ptr %3, align 8, !tbaa !9325
  %i.cb = load i64, ptr %i.s, align 8, !tbaa !9324
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !9324
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.cc, align 8, !tbaa !9323
  store ptr %i.s, ptr %4, align 8, !tbaa !9325
  store i64 0, ptr %i.ab, align 8, !tbaa !9323
  store i8 0, ptr %i.s, align 8, !tbaa !9324
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !21802
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !21802
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.cg = load ptr, ptr %5, align 8, !tbaa !9325  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.g
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !9324
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.ck = load ptr, ptr %3, align 8, !tbaa !9325, !noalias !71372 ; 2 uses
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !9323, !noalias !71372
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !9356 ; 2 uses
  %i.cp = icmp ne ptr %i.co, %i.cm
  %i.cq = load ptr, ptr %6, align 8, !nonnull !4069, !align !19313
  %i.cr = icmp ne ptr %i.cq, %3
  %.not3.i20 = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %.not3.i20, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %.sroa.2.0.copyload.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9356, !noalias !71373
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.co, ptr poison, ptr %.sroa.2.0.copyload.i.peel)
  %.pre = load ptr, ptr %i.bq, align 8, !tbaa !23667 ; 2 uses
  %.pre34 = load i64, ptr %i.cs, align 8, !tbaa !9323
  %.pre33 = load ptr, ptr %7, align 8, !tbaa !9325
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !9337
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre32, ptr noundef %.pre33, i64 noundef %.pre34) #49 ; 0 uses
  %i.cv = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %.pre) ; 0 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !9325  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ct
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel: ; preds = %bb.s
  %i.cy = load i64, ptr %i.ct, align 8, !tbaa !9324
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.peel: ; preds = %bb.s
  %8 = load i64, ptr %i.cs, align 8, !tbaa !9323
  %9 = icmp ult i64 %8, 16
  call void @llvm.assume(i1 %9)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.da = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !9356 ; 2 uses
  %i.dc = icmp ne ptr %i.db, %i.cm
  %i.dd = load ptr, ptr %6, align 8, !nonnull !4069, !align !19313
  %i.de = icmp ne ptr %i.dd, %3
  %.not3.i.peel = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %.not3.i.peel, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel
  %.pre36 = load ptr, ptr %3, align 8, !tbaa !9325
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = phi ptr [ %.pre36, %._crit_edge.loopexit ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.dg = icmp eq ptr %i.df, %i.bx
  br i1 %i.dg, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %._crit_edge
  %i.dh = load i64, ptr %i.bx, align 8, !tbaa !9324
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit6

_ZN5Catch8TextFlow6ColumnD2Ev.exit6:              ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.dj = phi ptr [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9356, !noalias !71373
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.dj, ptr poison, ptr %.sroa.2.0.copyload.i)
  %i.dk = load ptr, ptr %i.bq, align 8, !tbaa !23667 ; 3 uses
  %i.dl = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dk) ; 0 uses
  %i.dm = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dk) ; 0 uses
  %i.dn = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dk) ; 0 uses
  %i.do = load ptr, ptr %i.bq, align 8, !tbaa !23667 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !9337
  %i.dr = load ptr, ptr %7, align 8, !tbaa !9325
  %i.ds = load i64, ptr %i.cs, align 8, !tbaa !9323
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dr, i64 noundef %i.ds) #49 ; 0 uses
  %i.du = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.do) ; 0 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !9325  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ct
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.peel.next
  %i.dx = load i64, ptr %i.ct, align 8, !tbaa !9324
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.peel.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.dz = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.ea = load ptr, ptr %i.cn, align 8, !tbaa !9356 ; 2 uses
  %i.eb = icmp ne ptr %i.ea, %i.cm
  %i.ec = load ptr, ptr %6, align 8, !nonnull !4069, !align !19313
  %i.ed = icmp ne ptr %i.ec, %3
  %.not3.i = select i1 %i.eb, i1 true, i1 %i.ed
  br i1 %.not3.i, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !71370
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23670, !range !16138, !noundef !4069
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Catch15ConsoleReporter16lazyPrintRunInfoEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23669, !range !16138, !noundef !4069
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Catch15ConsoleReporter29printTestCaseAndSectionHeaderEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  store i8 1, ptr %i.d, align 8, !tbaa !23669
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull returned align 8 dereferenceable(53) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.Catch::ColumnInfo", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71380)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9337, !noalias !71380 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71382)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !9320, !alias.scope !71383
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !9323, !alias.scope !71383
  store i8 0, ptr %i.f, align 8, !tbaa !9324, !alias.scope !71383
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9333, !noalias !71384 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !71384 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9334, !noalias !71384 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %bb.b, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !9323
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !9320
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !9323
  store i8 0, ptr %i.u, align 8, !tbaa !9324
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !9337 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9323
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull %i.u, i64 noundef 0) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21867
  %i.ae = and i32 %i.ad, 3
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  %i.af = load i64, ptr %i.z, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.af
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !9325
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef %i.ag, i64 noundef 0, i64 noundef %.0.i.i.i.i) #49
  %i.ah = load ptr, ptr %2, align 8, !tbaa !9325  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !9324
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  call void @_ZN5Catch12TablePrinter4openEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23663 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23657
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !23656 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 48
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, -1
  %i.ax = icmp eq i32 %i.am, %i.aw
  br i1 %i.ax, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 -1, ptr %i.al, align 8, !tbaa !23663
  %i.ay = load ptr, ptr %0, align 8, !tbaa !23672, !nonnull !4069, !align !19313 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !9324
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3602
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9345
end_hunk_1
