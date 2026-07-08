inline.NumInlined: 851
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost10filesystem6detail9canonicalERKNS0_4pathES4_PNS_6system10error_codeE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit152.jt3
  %i.ju = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jv) #32
  br label %_ZN5boost10filesystem4pathD2Ev.exit164

_ZN5boost10filesystem4pathD2Ev.exit164:           ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit152.jt3, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit152.jt6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  %.250196 = phi i32 [ %.149.jt3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162 ], [ 1, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit152.jt6 ], [ %.149.jt3, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit152.jt3 ] ; 2 uses
  %i.jw = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.bq
  br i1 %i.jx, label %_ZN5boost10filesystem4pathD2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit164
  %i.jy = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #32
  br label %_ZN5boost10filesystem4pathD2Ev.exit167

_ZN5boost10filesystem4pathD2Ev.exit167:           ; preds = %_ZN5boost10filesystem4pathD2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %cond = icmp eq i32 %.250196, 3
  br i1 %cond, label %_ZNK5boost6system10error_codecvbEv.exit77.thread, label %bb.cz

_ZN5boost10filesystem4pathD2Ev.exit161:           ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159, %bb.an, %bb.am
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.am ], [ %i.da, %bb.an ], [ %.pn64.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ], [ %.pn64.pn.pn, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit158 ] ; 2 uses
  %i.ka = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.bq
  br i1 %i.kb, label %_ZN5boost10filesystem4pathD2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit161
  %i.kc = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #32
  br label %_ZN5boost10filesystem4pathD2Ev.exit170

_ZN5boost10filesystem4pathD2Ev.exit170:           ; preds = %_ZN5boost10filesystem4pathD2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168, %bb.al
  %.pn64.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.al ], [ %.pn64.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168 ], [ %.pn64.pn.pn.pn.pn, %_ZN5boost10filesystem4pathD2Ev.exit161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.da

bb.cz:                                            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %cond1 = icmp eq i32 %.250196, 2
  br i1 %cond1, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %bb.db

bb.da:                                            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit170, %bb.ab, %bb.w
  %.pn71 = phi { ptr, i32 } [ %i.bf, %bb.w ], [ %i.bn, %bb.ab ], [ %.pn64.pn.pn.pn.pn.pn, %_ZN5boost10filesystem4pathD2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ke = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.a
  br i1 %i.kf, label %_ZN5boost10filesystem4pathD2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.db
  %i.kg = load i64, ptr %i.a, align 8, !tbaa !18
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #32
  br label %_ZN5boost10filesystem4pathD2Ev.exit173

_ZN5boost10filesystem4pathD2Ev.exit173:           ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.dc:                                            ; preds = %bb.da, %bb.s, %bb.r
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.da ], [ %i.av, %bb.s ], [ %i.au, %bb.r ]
  %i.ki = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.a
  br i1 %i.kj, label %_ZN5boost10filesystem4pathD2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174: ; preds = %bb.dc
  %i.kk = load i64, ptr %i.a, align 8, !tbaa !18
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #32
  br label %_ZN5boost10filesystem4pathD2Ev.exit176

_ZN5boost10filesystem4pathD2Ev.exit176:           ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn71.pn

bb.dd:                                            ; preds = %bb.aa
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost10filesystem6detail12_GLOBAL__N_111status_implERKNS0_4pathEPNS_6system10error_codeEi(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.statx, align 8              ; 6 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = call noundef i32 @statx(i32 noundef -100, ptr noundef %i.a, i32 noundef 2048, i32 noundef 3, ptr noundef nonnull %3) #28
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #33
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 8 uses
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.f = and i64 %i.e, -2
  %switch.i.i.i = icmp eq i64 %i.f, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %i.d, 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.d) #28, !inline_history !83
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i32 %i.d, label %bb.g [
    i32 20, label %bb.v
    i32 2, label %bb.v
  ]

.thread:                                          ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %i.l = select i1 %.0.i.i.i, i64 3, i64 2
  store i32 %i.d, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !63
  switch i32 %i.d, label %bb.l [
    i32 20, label %bb.v
    i32 2, label %bb.v
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = call ptr @__cxa_allocate_exception(i64 48) #28 ; 3 uses
  store i64 0, ptr %4, align 8
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.o = and i64 %i.n, -2
  %switch.i.i = icmp eq i64 %i.o, -5572340897628102704
  br i1 %switch.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i32 %i.d, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.d) #28, !inline_history !84
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi i1 [ %i.p, %bb.h ], [ %i.t, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = select i1 %.0.i.i, i64 3, i64 2
  store i64 %i.v, ptr %i.u, align 8, !tbaa !25
  store i32 %i.d, ptr %4, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.w, align 8, !tbaa !18
  invoke void @_ZN5boost10filesystem16filesystem_errorC1EPKcRKNS0_4pathENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5boost10filesystem16filesystem_errorE, ptr nonnull @_ZN5boost10filesystem16filesystem_errorD1Ev) #29
  unreachable

bb.k:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.x

bb.l:                                             ; preds = %.thread
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.y = load i32, ptr %3, align 8, !tbaa !85
  %i.z = and i32 %i.y, 3
  %.not26 = icmp eq i32 %i.z, 3
  br i1 %.not26, label %bb.o, label %bb.n, !prof !89

bb.n:                                             ; preds = %bb.m
  call void @_ZN5boost10filesystem10emit_errorEiRKNS0_4pathEPNS_6system10error_codeEPKc(i32 noundef 38, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull @.str.34)
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.val = load i16, ptr %i.aa, align 4, !tbaa !90
  %i.ab = zext i16 %.val to i32                   ; 7 uses
  %5 = add nsw i32 %i.ab, -4096
  %i.ac = lshr i32 %5, 12
  switch i32 %i.ac, label %bb.v [
    i32 3, label %bb.p
    i32 7, label %bb.q
    i32 5, label %bb.r
    i32 1, label %bb.s
    i32 0, label %bb.t
    i32 11, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = and i32 %i.ab, 4095
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ae = and i32 %i.ab, 4095
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.af = and i32 %i.ab, 4095
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.ag = and i32 %i.ab, 4095
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.ah = and i32 %i.ab, 4095
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.ai = and i32 %i.ab, 4095
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.f, %bb.f, %.thread, %.thread, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.n, %bb.l
  %.sink30 = phi i32 [ 3, %bb.p ], [ 2, %bb.q ], [ 5, %bb.r ], [ 6, %bb.s ], [ 7, %bb.t ], [ 8, %bb.u ], [ 1, %bb.f ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %.thread ], [ 1, %.thread ], [ 1, %bb.f ], [ 10, %bb.o ]
  %.sink = phi i32 [ %i.ad, %bb.p ], [ %i.ae, %bb.q ], [ %i.af, %bb.r ], [ %i.ag, %bb.s ], [ %i.ah, %bb.t ], [ %i.ai, %bb.u ], [ 0, %bb.f ], [ 65535, %bb.n ], [ 65535, %bb.l ], [ 0, %.thread ], [ 0, %.thread ], [ 0, %bb.f ], [ 65535, %bb.o ]
  store i32 %.sink30, ptr %0, align 4, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.aj, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5boost10filesystem16filesystem_errorC1EPKcRKNS0_4pathENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.boost::system::error_code") align 8) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN5boost10filesystem16filesystem_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost10filesystem6detail8dot_pathEv() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost10filesystem6detail12dot_dot_pathEv() local_unnamed_addr #8

declare void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef i32 @_ZN5boost10filesystem6detail15path_algorithms10compare_v4ERKNS0_4pathES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost10filesystem4path39remove_filename_and_trailing_separatorsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost10filesystem6detail12_GLOBAL__N_119symlink_status_implERKNS0_4pathEPNS_6system10error_codeEi(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.statx, align 8              ; 6 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = call noundef i32 @statx(i32 noundef %3, ptr noundef %i.a, i32 noundef 2304, i32 noundef 3, ptr noundef nonnull %4) #28
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #33
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 8 uses
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.f = and i64 %i.e, -2
  %switch.i.i.i = icmp eq i64 %i.f, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %i.d, 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.d) #28, !inline_history !83
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i32 %i.d, label %bb.g [
    i32 20, label %bb.w
    i32 2, label %bb.w
  ]

.thread:                                          ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %i.l = select i1 %.0.i.i.i, i64 3, i64 2
  store i32 %i.d, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !63
  switch i32 %i.d, label %bb.l [
    i32 20, label %bb.w
    i32 2, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = call ptr @__cxa_allocate_exception(i64 48) #28 ; 3 uses
  store i64 0, ptr %5, align 8
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.o = and i64 %i.n, -2
  %switch.i.i = icmp eq i64 %i.o, -5572340897628102704
  br i1 %switch.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i32 %i.d, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.d) #28, !inline_history !84
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi i1 [ %i.p, %bb.h ], [ %i.t, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = select i1 %.0.i.i, i64 3, i64 2
  store i64 %i.v, ptr %i.u, align 8, !tbaa !25
  store i32 %i.d, ptr %5, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.w, align 8, !tbaa !18
  invoke void @_ZN5boost10filesystem16filesystem_errorC1EPKcRKNS0_4pathENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5boost10filesystem16filesystem_errorE, ptr nonnull @_ZN5boost10filesystem16filesystem_errorD1Ev) #29
  unreachable

bb.k:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.x

bb.l:                                             ; preds = %.thread
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.y = load i32, ptr %4, align 8, !tbaa !85
  %i.z = and i32 %i.y, 3
  %.not28 = icmp eq i32 %i.z, 3
  br i1 %.not28, label %bb.o, label %bb.n, !prof !89

bb.n:                                             ; preds = %bb.m
  call void @_ZN5boost10filesystem10emit_errorEiRKNS0_4pathEPNS_6system10error_codeEPKc(i32 noundef 38, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull @.str.35)
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.val = load i16, ptr %i.aa, align 4, !tbaa !90
  %i.ab = zext i16 %.val to i32                   ; 8 uses
  %6 = add nsw i32 %i.ab, -4096
  %i.ac = lshr i32 %6, 12
  switch i32 %i.ac, label %bb.w [
    i32 7, label %bb.p
    i32 3, label %bb.q
    i32 9, label %bb.r
    i32 5, label %bb.s
    i32 1, label %bb.t
    i32 0, label %bb.u
    i32 11, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = and i32 %i.ab, 4095
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.ae = and i32 %i.ab, 4095
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.af = and i32 %i.ab, 4095
  br label %bb.w

bb.s:                                             ; preds = %bb.o
  %i.ag = and i32 %i.ab, 4095
  br label %bb.w

bb.t:                                             ; preds = %bb.o
  %i.ah = and i32 %i.ab, 4095
  br label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.ai = and i32 %i.ab, 4095
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.aj = and i32 %i.ab, 4095
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %bb.f, %bb.f, %.thread, %.thread, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.n, %bb.l
  %.sink32 = phi i32 [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ], [ 6, %bb.t ], [ 7, %bb.u ], [ 8, %bb.v ], [ 1, %bb.f ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %.thread ], [ 1, %.thread ], [ 1, %bb.f ], [ 10, %bb.o ]
  %.sink = phi i32 [ %i.ad, %bb.p ], [ %i.ae, %bb.q ], [ %i.af, %bb.r ], [ %i.ag, %bb.s ], [ %i.ah, %bb.t ], [ %i.ai, %bb.u ], [ %i.aj, %bb.v ], [ 0, %bb.f ], [ 65535, %bb.n ], [ 65535, %bb.l ], [ 0, %.thread ], [ 0, %.thread ], [ 0, %bb.f ], [ 65535, %bb.o ]
  store i32 %.sink32, ptr %0, align 4, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10filesystem6detail12read_symlinkERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind noalias writable sret(%"class.boost::filesystem::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !19
  store i8 0, ptr %i.b, align 8, !tbaa !18
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = call i64 @readlink(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 1024) #28 ; 3 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.n, !prof !14

bb.d:                                             ; preds = %bb.aj, %bb.c
  %i.g = tail call ptr @__errno_location() #33
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 6 uses
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 48) #28 ; 3 uses
  store i64 0, ptr %3, align 8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.k = and i64 %i.j, -2
  %switch.i.i = icmp eq i64 %i.k, -5572340897628102704
  br i1 %switch.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ne i32 %i.h, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.h) #28, !inline_history !84
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i1 [ %i.l, %bb.f ], [ %i.p, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = select i1 %.0.i.i, i64 3, i64 2
  store i64 %i.r, ptr %i.q, align 8, !tbaa !25
  store i32 %i.h, ptr %3, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.s, align 8, !tbaa !18
  invoke void @_ZN5boost10filesystem16filesystem_errorC1EPKcRKNS0_4pathENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN5boost10filesystem16filesystem_errorE, ptr nonnull @_ZN5boost10filesystem16filesystem_errorD1Ev) #29
          to label %bb.al unwind label %bb.j

bb.i:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #28
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.w = and i64 %i.v, -2
  %switch.i.i.i = icmp eq i64 %i.w, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = icmp ne i32 %i.h, 0
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

bb.m:                                             ; preds = %bb.k
  %i.y = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.h) #28, !inline_history !83
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i1 [ %i.x, %bb.l ], [ %i.ab, %bb.m ]
  %i.ac = select i1 %.0.i.i.i, i64 3, i64 2
  store i32 %i.h, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !63
  br label %_ZN5boost10filesystem4path6assignEPKcS3_.exit

bb.n:                                             ; preds = %bb.c
  %i.ad = icmp samesign ult i64 %i.e, 1024
  br i1 %i.ad, label %bb.o, label %.preheader.preheader, !prof !89

.preheader.preheader:                             ; preds = %bb.n
  %i.ae = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.w unwind label %bb.x       ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.af = load i64, ptr %i.c, align 8, !tbaa !19
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull %i.a, i64 noundef %i.e)
          to label %_ZN5boost10filesystem4path6assignEPKcS3_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.q:                                             ; preds = %bb.ai
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 48) #28 ; 3 uses
  store i64 0, ptr %4, align 8
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !54
  %i.ak = and i64 %i.aj, -2
  %switch.i.i46 = icmp eq i64 %i.ak, -5572340897628102704
  br i1 %switch.i.i46, label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48.thread, label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48.thread: ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48: ; preds = %bb.q
  %i.am = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 36) #28, !inline_history !84
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select = select i1 %i.ap, i64 3, i64 2
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48.thread
  %i.ar = phi ptr [ %i.aq, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48 ], [ %i.al, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48.thread ]
  %i.as = phi i64 [ %spec.select, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48 ], [ 3, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit48.thread ]
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !25
  store i32 36, ptr %4, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.at, align 8, !tbaa !18
  invoke void @_ZN5boost10filesystem16filesystem_errorC1EPKcRKNS0_4pathENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5boost10filesystem16filesystem_errorE, ptr nonnull @_ZN5boost10filesystem16filesystem_errorD1Ev) #29
          to label %bb.al unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
end_hunk_0
