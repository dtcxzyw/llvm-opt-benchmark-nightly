Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/exif?download=true
inline.NumInlined: 1716
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK11OpenImageIO4v3_13pvt6TagMap3tagENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !254
  store i8 %i.l, ptr %i.k, align 1, !tbaa !254
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !255
  %i.o = load ptr, ptr %2, align 8, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11OpenImageIO4v3_17Strutil8to_lowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !215
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = invoke ptr @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E4findIS8_EENSR_14robin_iteratorILb0EEERKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit unwind label %bb.i ; 2 uses

_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit: ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !215    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.x = load i64, ptr %i.w, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %i.x
  %i.z = icmp eq ptr %i.s, %i.y
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !276
  br label %bb.h

bb.h:                                             ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit, %bb.g
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ -1, %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit ]
  %i.ae = load ptr, ptr %2, align 8, !tbaa !253   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.e
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !254
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.ad

bb.i:                                             ; preds = %bb.e, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !253   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.i
  %i.al = load i64, ptr %i.e, align 8, !tbaa !254
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK11OpenImageIO4v3_13pvt6TagMap7mapnameEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #7 align 2 !guid !351 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !215    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253
  store ptr %i.c, ptr %0, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !255
  store i64 %i.f, ptr %i.d, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_110tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr nofree noundef readonly captures(none) dead_on_return %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !352 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  switch i64 %i.c, label %bb.j [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !216

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !212
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !277

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !277 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.n, %bb.i, %bb.e
  %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %bb.n ], [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.i ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.aa, %bb.i ], [ %i.l, %bb.e ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2:  ; preds = %bb.a
  %i.m = load i16, ptr %i.a, align 1
  %i.n = xor i16 %i.m, 20551
  %i.o = getelementptr i8, ptr %i.a, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 83
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i4, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.v = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !216

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i7 = icmp eq i32 %i.x, 0
  br i1 %.not.i7, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.1, ptr %3, align 8, !tbaa !212
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.j:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, !prof !216

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not.i8 = icmp eq i32 %i.ad, 0
  br i1 %.not.i8, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.23, ptr %2, align 8, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %2, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit: ; preds = %bb.j, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %.0 = phi ptr [ @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit ]
  %i.ah = load ptr, ptr %.0, align 8, !tbaa !215  ; 4 uses
  %i.ai = sext i32 %1 to i64
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !265 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !230 ; 4 uses
  %.0813.i.i.i.i.i.i = and i64 %i.aj, %i.ai       ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.0813.i.i.i.i.i.i ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !220
  %.not14.i.i.i.i.i.i = icmp slt i16 %i.an, 0
  br i1 %.not14.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %i.ao = phi ptr [ %i.au, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %.0816.i.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i.i, %bb.p ], [ %.0813.i.i.i.i.i.i, %bb.o ]
  %.015.i.i.i.i.i.i = phi i16 [ %i.at, %bb.p ], [ 0, %bb.o ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10
  %i.ar = icmp eq i32 %i.aq, %1
  br i1 %i.ar, label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, label %bb.p, !prof !266

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = add i64 %.0816.i.i.i.i.i.i, 1
  %i.at = add i16 %.015.i.i.i.i.i.i, 1            ; 2 uses
  %.08.i.i.i.i.i.i = and i64 %i.as, %i.aj         ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.08.i.i.i.i.i.i ; 2 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !220
  %.not.i.i.i.i.i.i = icmp sgt i16 %i.at, %i.av
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.p, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !268 ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ax
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !268
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i: ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, %._crit_edge.i.i.i.i.i.i
  %i.az = phi i64 [ %i.ax, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ]
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.ay, %._crit_edge.i.i.i.i.i.i ], [ %i.ao, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az
  %i.bb = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i, %i.ba
  br i1 %i.bb, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit, label %bb.q

bb.q:                                             ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !270
  br label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit

_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit:    ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i, %bb.q
  %i.be = phi ptr [ %i.bd, %bb.q ], [ null, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i ]
  ret ptr %i.be
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !353 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %0, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !354 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.1, ptr %0, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.d, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !355 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.23, ptr %0, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_110tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !356 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  switch i64 %i.c, label %bb.j [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !216

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !212
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !277

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !277 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.n, %bb.i, %bb.e
  %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %bb.n ], [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.i ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.aa, %bb.i ], [ %i.l, %bb.e ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2:  ; preds = %bb.a
  %i.m = load i16, ptr %i.a, align 1
  %i.n = xor i16 %i.m, 20551
  %i.o = getelementptr i8, ptr %i.a, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 83
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i4, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.v = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !216

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i7 = icmp eq i32 %i.x, 0
  br i1 %.not.i7, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.1, ptr %3, align 8, !tbaa !212
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.j:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, !prof !216

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not.i8 = icmp eq i32 %i.ad, 0
  br i1 %.not.i8, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.23, ptr %2, align 8, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %2, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit: ; preds = %bb.j, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %.0 = phi ptr [ @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !212
  store ptr %i.ah, ptr %5, align 8, !tbaa !212
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !213
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !213
  %i.al = call noundef ptr @_ZNK11OpenImageIO4v3_13pvt6TagMap4findENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull dead_on_return %5)
  ret ptr %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType(i32 noundef %0) local_unnamed_addr #8 !guid !357 {
bb.a:
  %or.cond = icmp ugt i32 %0, 13
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !251
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0) local_unnamed_addr #9 !guid !358 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !279  ; 2 uses
  %or.cond.i = icmp ugt i16 %i.b, 13
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !280
  %i.h = zext i32 %i.g to i64
  %i.i = mul i64 %.0.i, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 256, -4294508018) i64 @_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescE12TIFFDataTypem(i32 noundef %0, i64 noundef %1) local_unnamed_addr #8 !guid !359 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  %spec.store.select = select i1 %i.a, i64 0, i64 %1 ; 11 uses
  switch i32 %0, label %bb.n [
    i32 17, label %bb.m
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.b
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.f
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 16, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.58.0 = phi i64 [ %spec.store.select, %bb.m ], [ %spec.store.select, %bb.l ], [ %spec.store.select, %bb.b ], [ 0, %bb.c ], [ %spec.store.select, %bb.d ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.f ], [ %spec.store.select, %bb.g ], [ 0, %bb.a ], [ %spec.store.select, %bb.h ], [ %spec.store.select, %bb.i ], [ %spec.store.select, %bb.k ], [ %spec.store.select, %bb.j ]
  %.sroa.32.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 458752, %bb.f ], [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.sroa.19.0 = phi i64 [ 256, %bb.m ], [ 256, %bb.l ], [ 256, %bb.b ], [ 256, %bb.c ], [ 256, %bb.d ], [ 256, %bb.e ], [ 512, %bb.f ], [ 256, %bb.g ], [ 256, %bb.a ], [ 256, %bb.h ], [ 256, %bb.i ], [ 256, %bb.k ], [ 256, %bb.j ]
  %.sroa.0.0 = phi i64 [ 9, %bb.m ], [ 8, %bb.l ], [ 2, %bb.b ], [ 13, %bb.c ], [ 4, %bb.d ], [ 6, %bb.e ], [ 7, %bb.f ], [ 3, %bb.g ], [ 0, %bb.a ], [ 5, %bb.h ], [ 7, %bb.i ], [ 12, %bb.k ], [ 11, %bb.j ]
  %.sroa.58.0.insert.ext = shl i64 %.sroa.58.0, 32
  %.sroa.32.0.insert.insert = or disjoint i64 %.sroa.58.0.insert.ext, %.sroa.32.0
  %.sroa.19.0.insert.insert = or disjoint i64 %.sroa.32.0.insert.insert, %.sroa.19.0
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN11OpenImageIO4v3_113tiff_dir_dataERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) local_unnamed_addr #9 !guid !360 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !279  ; 2 uses
  %or.cond.i.i = icmp ugt i16 %i.b, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !280
  %i.h = zext i32 %i.g to i64
  %i.i = mul i64 %.0.i.i, %i.h                    ; 4 uses
  %i.j = icmp ult i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.l = load i32, ptr %i.k, align 4, !tbaa !281
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %i.i, %i.m
  %i.o = icmp ugt i64 %i.n, %2                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %spec.select = select i1 %i.o, i64 0, i64 %i.i
  %spec.select9 = select i1 %i.o, ptr null, ptr %i.p
  br label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, %bb.c
  %.sroa.5.0 = phi i64 [ %spec.select, %bb.c ], [ %i.i, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ]
  %.sroa.08.0 = phi ptr [ %spec.select9, %bb.c ], [ %i.k, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L20version4char_handlerERKNS0_7TagInfoERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(160) %4, i1 zeroext %5, i32 noundef %6) #0 personality ptr @__gxx_personality_v0 !guid !361 {
bb.a:
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !279  ; 3 uses
  %or.cond.i.i.i = icmp ugt i16 %i.b, 13          ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !280
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = mul i64 %.0.i.i.i, %i.h                  ; 2 uses
  %i.j = icmp ult i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.j, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !281
  %i.m = add i32 %i.l, %6                         ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %i.p = add i64 %i.i, %i.o
  %i.q = icmp ugt i64 %i.p, %3
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %spec.select.i = select i1 %i.q, ptr null, ptr %i.r
  br label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit: ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, %bb.c, %bb.d
  %.1.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.c ], [ %i.k, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i ] ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit
  %i.s = zext nneg i16 %i.b to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, %bb.e
  %.0.i.i = phi i64 [ %i.u, %bb.e ], [ -1, %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit ]
  %i.v = mul i64 %.0.i.i, %i.h
  %i.w = icmp eq i64 %i.v, 4
  %i.x = icmp ne ptr %.1.i, null
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !262  ; 3 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i64 [ %i.aa, %bb.g ], [ 0, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ad, ptr %9, align 8, !tbaa !250
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load i32, ptr %.1.i, align 1
  store i32 %i.af, ptr %i.ad, align 8
  store i64 4, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.ag, align 4, !tbaa !254
  store ptr %i.ad, ptr %8, align 8, !tbaa !212
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.ah, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ad
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !254
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ad
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !254
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %i.am

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L17makernote_handlerERKNS0_7TagInfoERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecEbi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(160) %4, i1 noundef zeroext %5, i32 noundef %6) #0 personality ptr @__gxx_personality_v0 !guid !362 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %11 = alloca %"class.std::set", align 8         ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !279  ; 2 uses
  %or.cond.i.i = icmp ugt i16 %i.c, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !280
  %i.i = zext i32 %i.h to i64
  %i.j = mul i64 %.0.i.i, %i.i
  %i.k = icmp ult i64 %i.j, 5
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  store ptr @.str.7, ptr %9, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.l, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !213
  %i.o = icmp eq i64 %i.n, 5
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c
  %i.p = load ptr, ptr %8, align 8, !tbaa !212    ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 1869504835
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = xor i32 %i.u, 110
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.g

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %12 = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store i64 0, ptr %12, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !286
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !287
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !288
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !289
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !290
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !281
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt22canon_maker_tagmap_refEv()
          to label %bb.d unwind label %_ZNSt6vectorImSaImEED2Ev.exit18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %3
  br i1 %i.aj, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1            ; 2 uses
  %i.am = call i16 @llvm.bswap.i16(i16 %i.al)
  %spec.select.i = select i1 %5, i16 %i.am, i16 %i.al ; 2 uses
  %i.an = zext i16 %spec.select.i to i64          ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 12
  %i.ap = add nuw nsw i64 %i.ao, %i.ai
  %.not23.i = icmp ugt i64 %i.ap, %3
  %.not.i = icmp eq i16 %spec.select.i, 0
  %or.cond = or i1 %.not.i, %.not23.i
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.i, 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  invoke fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull %i.as, ptr nonnull %2, i64 %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ag)
          to label %.noexc unwind label %_ZNSt6vectorImSaImEED2Ev.exit18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !291

.noexc:                                           ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.an
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %bb.e, !llvm.loop !1

_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit: ; preds = %.noexc, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i, %bb.d
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !287
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.at)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #34
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef 8) #31
  br label %bb.h

_ZNSt6vectorImSaImEED2Ev.exit18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef 8) #31
  resume { ptr, i32 } %lpad.loopexit.split-lp31

bb.g:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !10
  store ptr @.str.164, ptr %7, align 8, !tbaa !212
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 20, ptr %i.ay, align 8, !tbaa !213
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull dead_on_return %7, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, %bb.g, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L21version4uint8_handlerERKNS0_7TagInfoERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(160) %4, i1 zeroext %5, i32 noundef %6) #0 !guid !363 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !279  ; 3 uses
  %or.cond.i.i.i = icmp ugt i16 %i.c, 13          ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !280
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = mul i64 %.0.i.i.i, %i.i                  ; 2 uses
  %i.k = icmp ult i64 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.k, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !281
  %i.n = add i32 %i.m, %6                         ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = add i64 %i.j, %i.p
  %i.r = icmp ugt i64 %i.q, %3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %spec.select.i = select i1 %i.r, ptr null, ptr %i.s
  br label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit: ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, %bb.c, %bb.d
  %.1.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.c ], [ %i.l, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i ] ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit
  %i.t = zext nneg i16 %i.c to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, %bb.e
  %.0.i.i = phi i64 [ %i.v, %bb.e ], [ -1, %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit ]
  %i.w = mul i64 %.0.i.i, %i.i
  %i.x = icmp eq i64 %i.w, 4
  %i.y = icmp ne ptr %.1.i, null
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.z = load <4 x i8>, ptr %.1.i, align 1, !tbaa !254
  %i.aa = zext <4 x i8> %i.z to <4 x i32>
  store <4 x i32> %i.aa, ptr %i.a, align 16, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !262 ; 3 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !213
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull dead_on_return %7, i64 17179869447, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZN11OpenImageIO4v3_19tag_tableENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef readonly captures(none) dead_on_return %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 !guid !364 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  switch i64 %i.c, label %bb.b [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %i.g = load i16, ptr %i.a, align 1
  %i.h = xor i16 %i.g, 20551
  %i.i = getelementptr i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = xor i16 %i.k, 83
  %i.m = or i16 %i.h, %i.l
  %i.n = icmp ne i16 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i3 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %.sroa.012.0 = phi ptr [ @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, %bb.b ], [ @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ]
  %.sroa.4.0 = phi i64 [ 21, %bb.b ], [ 114, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi(ptr %0, i64 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(160) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 !guid !365 {
bb.a:
  %i.a = add i64 %2, 2                            ; 2 uses
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %.loopexit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %spec.select = select i1 %6, i16 %i.e, i16 %i.d ; 3 uses
  %i.f = zext i16 %spec.select to i64
  %i.g = mul nuw nsw i64 %i.f, 12
  %i.h = add i64 %i.g, %i.a
  %.not23 = icmp ugt i64 %i.h, %1
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %.not = icmp eq i16 %spec.select, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %wide.trip.count = zext i16 %spec.select to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = mul nuw nsw i64 %indvars.iv, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull %i.k, ptr nonnull %0, i64 %1, i1 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.b, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(address) %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !369 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %struct.TIFFDirEntry, align 4      ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = icmp uge ptr %1, %2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not = icmp ult ptr %i.c, %i.d
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !216

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.128, ptr %9, align 8, !tbaa !212
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.h, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %9, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.e unwind label %bb.f, !inline_history !277

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !277 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !277
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.j, %bb.f
  %_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.j ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.j, %bb.f ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.k = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !216

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit
  %i.m = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i84 = icmp eq i32 %i.m, 0
  br i1 %.not.i84, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.1, ptr %8, align 8, !tbaa !212
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.n, align 8, !tbaa !213
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %8, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !281  ; 5 uses
  %i.s = load i16, ptr %10, align 4, !tbaa !292   ; 2 uses
  br i1 %4, label %.lr.ph.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %i.t = call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 3 uses
  store i16 %i.t, ptr %10, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !292
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 3 uses
  store i16 %i.w, ptr %i.u, align 2, !tbaa !292
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = call noundef i32 @llvm.bswap.i32(i32 %i.y) ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !10
  %or.cond.i.i = icmp ugt i16 %i.w, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.aa = zext nneg i16 %i.w to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %.lr.ph.i, %bb.k
  %.0.i.i = phi i64 [ %i.ac, %bb.k ], [ -1, %.lr.ph.i ]
  %i.ad = zext i32 %i.z to i64
  %i.ae = mul i64 %.0.i.i, %i.ad
  %i.af = icmp ugt i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i94, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

.lr.ph.i94:                                       ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.ag = call noundef i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.ag, ptr %i.q, align 4, !tbaa !10
  br label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98: ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, %.lr.ph.i94, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.ah = phi i16 [ %i.t, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ], [ %i.t, %.lr.ph.i94 ], [ %i.s, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32
  switch i16 %i.ah, label %bb.s [
    i16 -30683, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
    i16 -30871, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
    i16 -24571, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115
  ]

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103: ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.r)
  %spec.select = select i1 %4, i32 %i.aj, i32 %i.r
  %i.ak = zext i32 %spec.select to i64            ; 8 uses
  %.not79 = icmp ugt i64 %3, %i.ak
  br i1 %.not79, label %bb.l, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !287 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.l ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.an, %bb.l ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !251
  %i.aq = icmp ult i64 %i.ap, %i.ak               ; 2 uses
  %.19.i.i.i = select i1 %i.aq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !366

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq ptr %.19.i.i.i, %i.an
  br i1 %i.ar, label %.lr.ph.i.i.i104.preheader, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit

_ZNSt3setImSt4lessImESaImEE4findERKm.exit:        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !251
  %i.au = icmp ugt i64 %i.at, %i.ak
  br i1 %i.au, label %.lr.ph.i.i.i104.preheader, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

.lr.ph.i.i.i104.preheader:                        ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  br label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %.lr.ph.i.i.i104.preheader, %.lr.ph.i.i.i104
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i104 ], [ %i.am, %.lr.ph.i.i.i104.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !251 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.ak               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ax, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i105, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i104, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i104
  br i1 %i.ax, label %._crit_edge.thread.i.i.i, label %bb.n

._crit_edge.thread.i.i.i:                         ; preds = %bb.l, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.an, %bb.l ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !288
  %i.ba = icmp eq ptr %.019.lcssa29.i.i.i, %i.az
  br i1 %i.ba, label %select.unfold.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #35
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !251
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %i.bc = phi i64 [ %.pre.i.i, %bb.m ], [ %i.aw, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.m ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bd = icmp ult i64 %i.bc, %i.ak
  br i1 %i.bd, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

select.unfold.i.i:                                ; preds = %bb.n, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.n ] ; 3 uses
  %i.be = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.an
  br i1 %i.be, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !251
  %i.bh = icmp ugt i64 %i.bg, %i.ak
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.o, %select.unfold.i.i
  %i.bi = phi i1 [ %i.bh, %bb.o ], [ true, %select.unfold.i.i ]
  %i.bj = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 %i.ak, ptr %i.bk, align 8, !tbaa !251
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !290
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !290
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit:       ; preds = %bb.n, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 1            ; 2 uses
  %i.bq = call i16 @llvm.bswap.i16(i16 %i.bp)
  %spec.select213 = select i1 %4, i16 %i.bq, i16 %i.bp ; 3 uses
  %i.br = load i16, ptr %10, align 4, !tbaa !294  ; 2 uses
  %i.bs = icmp eq i16 %i.br, -30683
  %i.bt = icmp ugt i16 %spec.select213, 32
  %or.cond7.not.not219 = select i1 %i.bs, i1 %i.bt, i1 false
  %.not175 = icmp eq i16 %spec.select213, 0
  %or.cond214 = select i1 %or.cond7.not.not219, i1 true, i1 %.not175
  br i1 %or.cond214, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %.lr.ph173

.lr.ph173:                                        ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bv = icmp eq i16 %i.br, -30871
  %i.bw = select i1 %i.bv, ptr @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T
  %wide.trip.count183 = zext i16 %spec.select213 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph173, %bb.p
  %indvars.iv180 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next181, %bb.p ] ; 2 uses
  %i.bx = mul nuw nsw i64 %indvars.iv180, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  call fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.by, ptr nonnull %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.p, !llvm.loop !367

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115: ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98
  %i.bz = call i32 @llvm.bswap.i32(i32 %i.r)
  %spec.select215 = select i1 %4, i32 %i.bz, i32 %i.r
  %i.ca = zext i32 %spec.select215 to i64         ; 5 uses
  %.not78 = icmp ugt i64 %3, %i.ca
  br i1 %.not78, label %bb.q, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !287 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i116, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread, label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %bb.q, %.lr.ph.i.i.i117
  %.012.i.i.i118 = phi ptr [ %.1.i.i.i123, %.lr.ph.i.i.i117 ], [ %i.cc, %bb.q ] ; 3 uses
  %.0811.i.i.i119 = phi ptr [ %.19.i.i.i120, %.lr.ph.i.i.i117 ], [ %i.cd, %bb.q ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i118, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !251
  %i.cg = icmp ult i64 %i.cf, %i.ca               ; 2 uses
  %.19.i.i.i120 = select i1 %i.cg, ptr %.0811.i.i.i119, ptr %.012.i.i.i118 ; 3 uses
  %.1.in.v.i.i.i121 = select i1 %i.cg, i64 24, i64 16
  %.1.in.i.i.i122 = getelementptr inbounds nuw i8, ptr %.012.i.i.i118, i64 %.1.in.v.i.i.i121
  %.1.i.i.i123 = load ptr, ptr %.1.in.i.i.i122, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %.1.i.i.i123, null
  br i1 %.not.i.i.i124, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i125, label %.lr.ph.i.i.i117, !llvm.loop !366

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i125: ; preds = %.lr.ph.i.i.i117
  %i.ch = icmp eq ptr %.19.i.i.i120, %i.cd
  br i1 %i.ch, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128

_ZNSt3setImSt4lessImESaImEE4findERKm.exit128:     ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i125
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i120, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !251
  %i.ck = icmp ugt i64 %i.cj, %i.ca
  br i1 %i.ck, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i125, %bb.q, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !251
  %i.cl = call { ptr, i8 } @_ZNSt3setImSt4lessImESaImEE6insertEOm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !292 ; 2 uses
  %i.co = call i16 @llvm.bswap.i16(i16 %i.cn)
  %spec.select216 = select i1 %4, i16 %i.co, i16 %i.cn ; 2 uses
  %.not174 = icmp eq i16 %spec.select216, 0
  br i1 %.not174, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %wide.trip.count = zext i16 %spec.select216 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.cq = mul nuw nsw i64 %indvars.iv, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  call fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.cr, ptr nonnull %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.r, !llvm.loop !368

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98
  %i.cs = load ptr, ptr %7, align 8, !tbaa !215   ; 4 uses
  %i.ct = zext i16 %i.ah to i64
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !265 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !230 ; 4 uses
  %.0813.i.i.i.i.i.i = and i64 %i.cu, %i.ct       ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.0813.i.i.i.i.i.i ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !220
  %.not14.i.i.i.i.i.i = icmp slt i16 %i.cy, 0
  br i1 %.not14.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %bb.t
  %i.cz = phi ptr [ %i.df, %bb.t ], [ %i.cx, %bb.s ] ; 2 uses
  %.0816.i.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i.i, %bb.t ], [ %.0813.i.i.i.i.i.i, %bb.s ]
  %.015.i.i.i.i.i.i = phi i16 [ %i.de, %bb.t ], [ 0, %bb.s ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !10
  %i.dc = icmp eq i32 %i.db, %i.ai
  br i1 %i.dc, label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, label %bb.t, !prof !266

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dd = add i64 %.0816.i.i.i.i.i.i, 1
  %i.de = add i16 %.015.i.i.i.i.i.i, 1            ; 2 uses
  %.08.i.i.i.i.i.i = and i64 %i.dd, %i.cu         ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.08.i.i.i.i.i.i ; 2 uses
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !220
  %.not.i.i.i.i.i.i = icmp sgt i16 %i.de, %i.dg
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.t, %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !268 ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.di
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !268
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i: ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, %._crit_edge.i.i.i.i.i.i
  %i.dk = phi i64 [ %i.di, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ]
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.dj, %._crit_edge.i.i.i.i.i.i ], [ %i.cz, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.dk
  %i.dm = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i, %i.dl
  br i1 %i.dm, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit

_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit:    ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !270 ; 5 uses
  %.not75 = icmp eq ptr %i.do, null
  br i1 %.not75, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !262 ; 3 uses
  store ptr %i.dr, ptr %11, align 8, !tbaa !212
  %.not.i134 = icmp eq ptr %i.dr, null
  br i1 %.not.i134, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dr) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.u, %bb.v
  %i.dt = phi i64 [ %i.ds, %bb.v ], [ 0, %bb.u ]
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !213
  %i.dv = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList8containsENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull dead_on_return %11, i64 256, i1 noundef zeroext true)
  br i1 %i.dv, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !370 ; 2 uses
  %.not76 = icmp eq ptr %i.dx, null
  br i1 %.not76, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %4, i32 noundef %5)
  br label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !274
  %.not77 = icmp eq i32 %i.dz, 0
  br i1 %.not77, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !262
  call fastcc void @_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %i.ea, ptr noundef %10, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5)
  br label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread: ; preds = %bb.r, %bb.p, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread, %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i, %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %bb.x, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_13pvt21append_tiff_dir_entryERSt6vectorI12TIFFDirEntrySaIS3_EERS2_IcSaIcEEi12TIFFDataTypemNS0_4spanIKSt4byteLm18446744073709551615EEEmmNS0_6endianE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::span.38") align 8 captures(none) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 !guid !380 {
bb.a:
  %9 = alloca %struct.TIFFDirEntry, align 4       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.a = trunc i32 %2 to i16                      ; 2 uses
  store i16 %i.a, ptr %9, align 4, !tbaa !294
  %i.b = trunc i32 %3 to i16                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  store i16 %i.b, ptr %i.c, align 2, !tbaa !279
  %i.d = trunc i64 %4 to i32                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !280
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %or.cond.i.i = icmp ugt i16 %i.b, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.mask = and i32 %3, 15
  %i.g = zext nneg i32 %.mask to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !251
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

end_hunk_0
begin_hunk_1_@_ZNKSt14default_deleteIN11OpenImageIO4v3_13pvt6TagMap4ImplEEclEPS4_:bb.a
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !254
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.l, align 4, !tbaa !237
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.v = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i

_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !321 ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !322 ; 3 uses
  %.not4.i.i.i.i.i1.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i.i1.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i.preheader

.lr.ph.i.i.i.i.i2.i.preheader:                    ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = ptrtoaddr ptr %i.ac to i64
  %i.ah = add i64 %i.af, -24
  %i.ai = sub i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = udiv i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i2.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i2.i.preheader
  %n.vec = and i64 %i.ak, 2305843009213693944     ; 3 uses
  %i.al = mul i64 %n.vec, 24
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue33, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue33 ] ; 2 uses
  %i.an = mul i64 %index, 24                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep13 = getelementptr i8, ptr %i.ao, i64 24 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep14 = getelementptr i8, ptr %i.ap, i64 48 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep15 = getelementptr i8, ptr %i.aq, i64 72 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep16 = getelementptr i8, ptr %i.ar, i64 96 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep17 = getelementptr i8, ptr %i.as, i64 120 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep18 = getelementptr i8, ptr %i.at, i64 144 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ac, i64 %i.an
  %next.gep19 = getelementptr i8, ptr %i.au, i64 168 ; 2 uses
  %i.av = load i16, ptr %next.gep, align 8, !tbaa !220
  %i.aw = load i16, ptr %next.gep13, align 8, !tbaa !220
  %i.ax = load i16, ptr %next.gep14, align 8, !tbaa !220
  %i.ay = load i16, ptr %next.gep15, align 8, !tbaa !220
  %i.az = load i16, ptr %next.gep16, align 8, !tbaa !220
  %i.ba = load i16, ptr %next.gep17, align 8, !tbaa !220
  %i.bb = load i16, ptr %next.gep18, align 8, !tbaa !220
  %i.bc = load i16, ptr %next.gep19, align 8, !tbaa !220
  %i.bd = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 1
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 2
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 3
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 4
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ba, i64 5
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.bb, i64 6
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 7
  %i.bl = icmp ne <8 x i16> %i.bk, splat (i16 -1) ; 8 uses
  %i.bm = extractelement <8 x i1> %i.bl, i64 0
  br i1 %i.bm, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %next.gep, align 8, !tbaa !220
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bn = extractelement <8 x i1> %i.bl, i64 1
  br i1 %i.bn, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep13, align 8, !tbaa !220
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.bo = extractelement <8 x i1> %i.bl, i64 2
  br i1 %i.bo, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %next.gep14, align 8, !tbaa !220
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bp = extractelement <8 x i1> %i.bl, i64 3
  br i1 %i.bp, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  store i16 -1, ptr %next.gep15, align 8, !tbaa !220
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bq = extractelement <8 x i1> %i.bl, i64 4
  br i1 %i.bq, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  store i16 -1, ptr %next.gep16, align 8, !tbaa !220
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <8 x i1> %i.bl, i64 5
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  store i16 -1, ptr %next.gep17, align 8, !tbaa !220
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bs = extractelement <8 x i1> %i.bl, i64 6
  br i1 %i.bs, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  store i16 -1, ptr %next.gep18, align 8, !tbaa !220
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.bt = extractelement <8 x i1> %i.bl, i64 7
  br i1 %i.bt, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  store i16 -1, ptr %next.gep19, align 8, !tbaa !220
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %pred.store.continue33
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i.preheader34

.lr.ph.i.i.i.i.i2.i.preheader34:                  ; preds = %.lr.ph.i.i.i.i.i2.i.preheader, %middle.block
  %.05.i.i.i.i.i3.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i2.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i2.i

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.lr.ph.i.i.i.i.i2.i.preheader34, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i3.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i ], [ %.05.i.i.i.i.i3.i.ph, %.lr.ph.i.i.i.i.i2.i.preheader34 ] ; 3 uses
  %i.bv = load i16, ptr %.05.i.i.i.i.i3.i, align 8, !tbaa !220
  %i.bw = icmp eq i16 %i.bv, -1
  br i1 %i.bw, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  store i16 -1, ptr %.05.i.i.i.i.i3.i, align 8, !tbaa !220
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i2.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i3.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.bx, %i.ae
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !480

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i, %middle.block, %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %.not.i.i1.i.i.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i5.i, label %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !323
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.ac to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.cc) #31
  br label %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit

_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit:   ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 192) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E4findIS8_EENSR_14robin_iteratorILb0EEERKT_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !483 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !253
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !255
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit: ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !265    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245  ; 4 uses
  %.0814.i.i.i = and i64 %i.g, %i.d               ; 3 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.0814.i.i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !237
  %.not15.i.i.i = icmp slt i16 %i.l, 0
  br i1 %.not15.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit
  %i.m = load i64, ptr %i.b, align 8, !tbaa !255
  %.fr5.i.i = freeze i64 %i.m                     ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = icmp eq i64 %.fr5.i.i, 0
  br i1 %i.o, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i
  %i.p = phi ptr [ %i.v, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ %i.j, %.lr.ph.i.i.i ] ; 2 uses
  %.0817.i.us.i.i = phi i64 [ %.08.i.us.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ %.0814.i.i.i, %.lr.ph.i.i.i ]
  %.016.i.us.i.i = phi i16 [ %i.u, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !255
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E9find_implIS8_EENSR_14robin_iteratorILb0EEERKT_m.exit, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i, !prof !484

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i: ; preds = %.lr.ph.i.split.us.i.i
  %i.t = add i64 %.0817.i.us.i.i, 1
  %i.u = add i16 %.016.i.us.i.i, 1                ; 2 uses
  %.08.i.us.i.i = and i64 %i.t, %i.g              ; 2 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.08.i.us.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !237
  %.not.i.us.i.i = icmp sgt i16 %i.u, %i.x
  br i1 %.not.i.us.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.split.us.i.i, !llvm.loop !482

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i
  %i.y = phi ptr [ %i.ah, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i ], [ %i.j, %.lr.ph.i.i.i ] ; 3 uses
  %.0817.i.i.i = phi i64 [ %.08.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i ], [ %.0814.i.i.i, %.lr.ph.i.i.i ]
  %.016.i.i.i = phi i16 [ %i.ag, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !255
  %i.ab = icmp eq i64 %i.aa, %.fr5.i.i
  br i1 %i.ab, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i, !prof !484

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i: ; preds = %.lr.ph.i.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !253
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.n, i64 %.fr5.i.i)
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E9find_implIS8_EENSR_14robin_iteratorILb0EEERKT_m.exit, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i, !prof !335

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i, %.lr.ph.i.split.i.i
  %i.af = add i64 %.0817.i.i.i, 1
  %i.ag = add i16 %.016.i.i.i, 1                  ; 2 uses
  %.08.i.i.i = and i64 %i.af, %i.g                ; 2 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.08.i.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !237
  %.not.i.i.i = icmp sgt i16 %i.ag, %i.aj
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.split.i.i, !llvm.loop !482

._crit_edge.i.i.i:                                ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !271
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.al
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E9find_implIS8_EENSR_14robin_iteratorILb0EEERKT_m.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E9find_implIS8_EENSR_14robin_iteratorILb0EEERKT_m.exit: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i, %.lr.ph.i.split.us.i.i, %._crit_edge.i.i.i
  %.sroa.09.0.i.i.i = phi ptr [ %i.am, %._crit_edge.i.i.i ], [ %i.p, %.lr.ph.i.split.us.i.i ], [ %i.y, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i ]
  ret ptr %.sroa.09.0.i.i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !485 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !254
  store i8 %i.s, ptr %i.g, align 1, !tbaa !254
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !296
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !266

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !254
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !254
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !266

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !254
  store i8 %i.ad, ptr %1, align 1, !tbaa !254
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !266

bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
end_hunk_1
