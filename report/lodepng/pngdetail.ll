Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %0, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.q, align 8
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4

_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  %i.af = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !42
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !42
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z14readExifUint32PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 4
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 65536) i32 @_Z14readExifUint16PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 2
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.g, align 1
  %i.p = zext i16 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z11showExifIFDPKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::map.30", align 8       ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  store i64 %2, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !95
  %i.k = trunc i64 %1 to i32                      ; 30 uses
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.a
  %.0218 = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.0216 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %bb.b unwind label %bb.h       ; 5 uses

bb.b:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.m = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.m, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.o = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.o, align 1, !tbaa !96
  %umax = call i64 @llvm.umax.i64(i64 %.0218, i64 16385)
  %exitcond9591246 = icmp ugt i64 %.0218, 16384
  br i1 %exitcond9591246, label %._crit_edge, label %.lr.ph1254.preheader

.lr.ph1254.preheader:                             ; preds = %bb.c
  %.str.185..str.186 = select i1 %.0216, ptr @.str.185, ptr @.str.186
  %. = select i1 %.0216, i64 22, i64 10
  br label %.lr.ph1254

bb.d:                                             ; preds = %_ZNSolsEPFRSoS_E.exit246
  %exitcond959 = icmp eq i64 %i.ah, %umax
  br i1 %exitcond959, label %._crit_edge, label %.lr.ph1254, !llvm.loop !326

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.sroa.21.0831.lcssa = phi ptr [ %.sroa.21.2.lcssa, %bb.d ], [ %i.n, %bb.c ] ; 7 uses
  %.sroa.0.0829.lcssa = phi ptr [ %.sroa.0.2.lcssa, %bb.d ], [ %i.l, %bb.c ] ; 7 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.177, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  %i.q = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i424 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i424, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc425 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc425:                                        ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
          to label %.noexc426 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc426:                                        ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc426, %bb.f
  %.0.i.i.i = phi i8 [ %i.z, %bb.f ], [ %i.ad, %.noexc426 ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc428 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc428:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.loopexit1001 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %bb.b ]
  %.sroa.21.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.n, %bb.b ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph1254:                                       ; preds = %.lr.ph1254.preheader, %bb.d
  %.in = phi i64 [ %i.ah, %bb.d ], [ %.0218, %.lr.ph1254.preheader ]
  %.sroa.0.08291252 = phi ptr [ %.sroa.0.2.lcssa, %bb.d ], [ %i.l, %.lr.ph1254.preheader ] ; 11 uses
  %.sroa.11.08301251 = phi ptr [ %.sroa.11.1.lcssa, %bb.d ], [ %i.n, %.lr.ph1254.preheader ]
  %.sroa.21.08311249 = phi ptr [ %.sroa.21.2.lcssa, %bb.d ], [ %i.n, %.lr.ph1254.preheader ] ; 11 uses
  %.05558321248 = phi i64 [ %.1556, %bb.d ], [ 0, %.lr.ph1254.preheader ]
  %.02028341247 = phi i1 [ true, %bb.d ], [ false, %.lr.ph1254.preheader ] ; 2 uses
  %i.ah = add i64 %.in, 1                         ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.11.08301251, i64 -8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !81 ; 7 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, %i.k
  %i.am = sub nuw i32 %i.k, %i.ak
  %i.an = icmp ult i32 %i.am, 2
  %i.ao = select i1 %i.al, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph1254
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.178, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aj)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i430 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i430, label %.invoke1261, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431: ; preds = %_ZNSolsEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !41
  %.not.i1.i.i432 = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i432, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc436 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc436:                                        ; preds = %bb.k
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433: ; preds = %.noexc436, %bb.j
  %.0.i.i.i434 = phi i8 [ %i.ba, %bb.j ], [ %i.be, %.noexc436 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext %.0.i.i.i434)
          to label %.noexc438 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc438:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.loopexit1001 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.l:                                             ; preds = %.lr.ph1254
  %i.bh = getelementptr i8, ptr %0, i64 %i.aj     ; 3 uses
  br i1 %3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = getelementptr i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bk, %i.bn
  br label %_Z14readExifUint16PKhmmb.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = load i16, ptr %i.bh, align 1
  %i.bq = zext i16 %i.bp to i64
  br label %_Z14readExifUint16PKhmmb.exit

_Z14readExifUint16PKhmmb.exit:                    ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.bq, %bb.n ], [ %i.bo, %bb.m ] ; 5 uses
  br i1 %.02028341247, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_Z14readExifUint16PKhmmb.exit
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.179, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248: ; preds = %bb.o
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aj)
          to label %_ZNSolsEm.exit250 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_ZNSolsEm.exit250:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.180, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZNSolsEm.exit250
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %.0.i)
          to label %_ZNSolsEm.exit254 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

_ZNSolsEm.exit254:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !17
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
end_hunk_0
begin_hunk_1_@_Z11showExifIFDPKhmmb:bb.a
  %i.lc = zext i16 %i.lb to i64
  br label %_Z14readExifUint32PKhmmb.exit363.invoke

bb.bm:                                            ; preds = %bb.bb
  %i.ld = icmp eq i32 %.0.i283559565579, 34665
  br i1 %i.ld, label %bb.bn, label %bb.by

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.le = icmp ult i32 %i.io, 4
  br i1 %i.le, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lf = zext i32 %spec.select593 to i64
  %i.lg = getelementptr i8, ptr %0, i64 %i.lf     ; 2 uses
  br i1 %3, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lh = load i32, ptr %i.lg, align 1
  %i.li = call i32 @llvm.bswap.i32(i32 %i.lh)
  br label %_Z14readExifUint32PKhmmb.exit350

bb.bq:                                            ; preds = %bb.bo
  %i.lj = load i32, ptr %i.lg, align 1
  br label %_Z14readExifUint32PKhmmb.exit350

_Z14readExifUint32PKhmmb.exit350:                 ; preds = %bb.bp, %bb.bq
  %.0.i349 = phi i32 [ %i.lj, %bb.bq ], [ %i.li, %bb.bp ] ; 2 uses
  %i.lk = zext i32 %.0.i349 to i64                ; 4 uses
  store i64 %i.lk, ptr %i.e, align 8, !tbaa !81
  %.not225 = icmp eq i32 %.0.i349, 0
  br i1 %.not225, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.br

bb.br:                                            ; preds = %_Z14readExifUint32PKhmmb.exit350
  %i.ll = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ll, %bb.br ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.br ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !81
  %i.lo = icmp ult i64 %i.ln, %i.lk               ; 3 uses
  %.19.i.i.i = select i1 %i.lo, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lo, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i351, label %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !328

_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.lp = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.lp, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lo, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lq = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !81
  %.not631 = icmp ugt i64 %i.lq, %i.lk
  br i1 %.not631, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_Z14readExifUint32PKhmmb.exit350.thread

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.br, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit
  %.not.i352 = icmp eq ptr %.sroa.11.1821, %.sroa.21.2822
  br i1 %.not.i352, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  store i64 %i.lk, ptr %.sroa.11.1821, align 8, !tbaa !81
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

bb.bt:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  %i.lr = ptrtoint ptr %.sroa.21.2822 to i64
  %i.ls = ptrtoint ptr %.sroa.0.2820 to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 6 uses
  %i.lu = icmp eq i64 %i.lt, 9223372036854775800
  br i1 %i.lu, label %bb.bu, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
          to label %.noexc359 unwind label %.loopexit.split-lp648

.noexc359:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.bt
  %i.lv = ashr exact i64 %i.lt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i354, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = call i64 @llvm.umin.i64(i64 %i.lw, i64 1152921504606846975)
  %i.lz = select i1 %i.lx, i64 1152921504606846975, i64 %i.ly ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.ma = shl nuw nsw i64 %i.lz, 3
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #29
          to label %.noexc360 unwind label %.loopexit647 ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 %i.lt ; 2 uses
  %i.md = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.md, ptr %i.mc, align 8, !tbaa !81
  %i.me = icmp sgt i64 %i.lt, 0
  br i1 %i.me, label %bb.bv, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

bb.bv:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr align 8 %.sroa.0.2820, i64 %i.lt, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358: ; preds = %bb.bv, %.noexc360
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2820, i64 noundef %i.lt) #27
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lz
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

_ZNSt6vectorImSaImEE9push_backERKm.exit361:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358, %bb.bs
  %.sroa.0.14 = phi ptr [ %i.mb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.0.2820, %bb.bs ] ; 2 uses
  %.pn = phi ptr [ %i.mc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.11.1821, %bb.bs ]
  %.sroa.21.14 = phi ptr [ %i.mf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.21.2822, %bb.bs ] ; 2 uses
  %i.mg = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bw unwind label %.loopexit647

bb.bw:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361
  %.sroa.11.8 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store i8 1, ptr %i.mg, align 1, !tbaa !96
  br label %_Z14readExifUint32PKhmmb.exit350.thread

.loopexit647:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.2820, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %.sroa.21.3.ph = phi ptr [ %.sroa.21.2822, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.21.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %lpad.loopexit649 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp648:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp648, %.loopexit647
  %.sroa.0.3 = phi ptr [ %.sroa.0.3.ph, %.loopexit647 ], [ %.sroa.0.2820, %.loopexit.split-lp648 ]
  %.sroa.21.3 = phi ptr [ %.sroa.21.3.ph, %.loopexit647 ], [ %.sroa.21.2822, %.loopexit.split-lp648 ]
  %lpad.phi650 = phi { ptr, i32 } [ %lpad.loopexit649, %.loopexit647 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp648 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit.split-lp

_Z14readExifUint32PKhmmb.exit350.thread:          ; preds = %bb.bn, %bb.bw, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit, %_Z14readExifUint32PKhmmb.exit350
  %.sroa.0.4 = phi ptr [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.0.14, %bb.bw ], [ %.sroa.0.2820, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.0.2820, %bb.bn ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.1821, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.11.8, %bb.bw ], [ %.sroa.11.1821, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.11.1821, %bb.bn ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.21.14, %bb.bw ], [ %.sroa.21.2822, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.21.2822, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZNSolsEj.exit342

bb.by:                                            ; preds = %bb.bm
  %i.mh = icmp ult i32 %i.io, 4
  br i1 %i.mh, label %_Z14readExifUint32PKhmmb.exit363, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mi = zext i32 %spec.select593 to i64
  %i.mj = getelementptr i8, ptr %0, i64 %i.mi     ; 2 uses
  br i1 %3, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mk = load i32, ptr %i.mj, align 1
  %i.ml = call i32 @llvm.bswap.i32(i32 %i.mk)
  br label %_Z14readExifUint32PKhmmb.exit363

bb.cb:                                            ; preds = %bb.bz
  %i.mm = load i32, ptr %i.mj, align 1
  br label %_Z14readExifUint32PKhmmb.exit363

_Z14readExifUint32PKhmmb.exit363:                 ; preds = %bb.by, %bb.ca, %bb.cb
  %.0.i362 = phi i32 [ %i.mm, %bb.cb ], [ %i.ml, %bb.ca ], [ 0, %bb.by ]
  %i.mn = zext i32 %.0.i362 to i64
  br label %_Z14readExifUint32PKhmmb.exit363.invoke

_Z14readExifUint32PKhmmb.exit363.invoke:          ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bc, %_Z14readExifUint32PKhmmb.exit363
  %i.mo = phi i64 [ %i.mn, %_Z14readExifUint32PKhmmb.exit363 ], [ %i.kg, %bb.bc ], [ %i.lc, %bb.bl ], [ %i.la, %bb.bk ], [ 0, %bb.bi ]
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.mo)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.cc:                                            ; preds = %bb.bb
  %i.mq = icmp ult i32 %i.io, 4
  br i1 %i.mq, label %_Z14readExifUint32PKhmmb.exit367, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mr = zext i32 %spec.select593 to i64
  %i.ms = getelementptr i8, ptr %0, i64 %i.mr     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit367.thread600, label %_Z14readExifUint32PKhmmb.exit367.thread

_Z14readExifUint32PKhmmb.exit367:                 ; preds = %bb.cc
  %i.mt = add i32 %spec.select593, 4              ; 3 uses
  %i.mu = icmp ugt i32 %i.mt, %i.k
  %i.mv = sub nuw i32 %i.k, %i.mt
  %i.mw = icmp ult i32 %i.mv, 4
  %i.mx = select i1 %i.mu, i1 true, i1 %i.mw
  br i1 %i.mx, label %_Z14readExifUint32PKhmmb.exit369, label %bb.ce

_Z14readExifUint32PKhmmb.exit367.thread600:       ; preds = %bb.cd
  %i.my = load i32, ptr %i.ms, align 1
  %i.mz = call i32 @llvm.bswap.i32(i32 %i.my)
  %i.na = uitofp i32 %i.mz to double              ; 2 uses
  %i.nb = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.nc = sub nuw i32 %i.k, %i.nb
  %i.nd = icmp ult i32 %i.nc, 4
  br i1 %i.nd, label %_Z14readExifUint32PKhmmb.exit369, label %.thread602

.thread602:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600
  %i.ne = zext i32 %i.nb to i64
  %i.nf = getelementptr i8, ptr %0, i64 %i.ne
  br label %bb.cf

_Z14readExifUint32PKhmmb.exit367.thread:          ; preds = %bb.cd
  %i.ng = load i32, ptr %i.ms, align 1
  %i.nh = uitofp i32 %i.ng to double              ; 2 uses
  %i.ni = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.nj = sub nuw i32 %i.k, %i.ni
  %i.nk = icmp ult i32 %i.nj, 4
  br i1 %i.nk, label %_Z14readExifUint32PKhmmb.exit369, label %.thread599

.thread599:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread
  %i.nl = zext i32 %i.ni to i64
  %i.nm = getelementptr i8, ptr %0, i64 %i.nl
  br label %bb.cg

bb.ce:                                            ; preds = %_Z14readExifUint32PKhmmb.exit367
  %i.nn = zext i32 %i.mt to i64
  %i.no = getelementptr i8, ptr %0, i64 %i.nn     ; 2 uses
  br i1 %3, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.thread602, %bb.ce
  %i.np = phi ptr [ %i.nf, %.thread602 ], [ %i.no, %bb.ce ]
  %i.nq = phi double [ %i.na, %.thread602 ], [ 0.000000e+00, %bb.ce ]
  %i.nr = load i32, ptr %i.np, align 1
  %i.ns = call i32 @llvm.bswap.i32(i32 %i.nr)
  br label %_Z14readExifUint32PKhmmb.exit369

bb.cg:                                            ; preds = %.thread599, %bb.ce
  %i.nt = phi ptr [ %i.nm, %.thread599 ], [ %i.no, %bb.ce ]
  %i.nu = phi double [ %i.nh, %.thread599 ], [ 0.000000e+00, %bb.ce ]
  %i.nv = load i32, ptr %i.nt, align 1
  br label %_Z14readExifUint32PKhmmb.exit369

_Z14readExifUint32PKhmmb.exit369:                 ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600, %_Z14readExifUint32PKhmmb.exit367.thread, %_Z14readExifUint32PKhmmb.exit367, %bb.cf, %bb.cg
  %i.nw = phi double [ %i.nu, %bb.cg ], [ %i.nq, %bb.cf ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit367 ], [ %i.nh, %_Z14readExifUint32PKhmmb.exit367.thread ], [ %i.na, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %.0.i368 = phi i32 [ %i.nv, %bb.cg ], [ %i.ns, %bb.cf ], [ 0, %_Z14readExifUint32PKhmmb.exit367 ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %i.nx = uitofp i32 %.0.i368 to double
  %i.ny = fdiv double %i.nw, %i.nx
  br label %_Z14readExifUint32PKhmmb.exit388.invoke

bb.ch:                                            ; preds = %bb.bb
  %i.nz = icmp eq i32 %.0.i285567577, 7           ; 2 uses
  %i.oa = icmp ugt i32 %i.ic, 8
  %or.cond14 = and i1 %i.nz, %i.oa
  br i1 %or.cond14, label %bb.ci, label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.ob = zext i32 %spec.select593 to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ob ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !42
  %i.oe = icmp eq i8 %i.od, 65
  br i1 %i.oe, label %bb.cj, label %.thread606

bb.cj:                                            ; preds = %bb.ci
  %i.of = add i32 %spec.select593, 1
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !42
  %i.oj = icmp eq i8 %i.oi, 83
  br i1 %i.oj, label %bb.ck, label %.thread606

bb.ck:                                            ; preds = %bb.cj
  %i.ok = add i32 %spec.select593, 2
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !42
  %i.oo = icmp eq i8 %i.on, 67
  br i1 %i.oo, label %bb.cl, label %.thread606

bb.cl:                                            ; preds = %bb.ck
  %i.op = add i32 %spec.select593, 3
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !42
  %i.ot = icmp eq i8 %i.os, 73
  br i1 %i.ot, label %bb.cm, label %.thread606

bb.cm:                                            ; preds = %bb.cl
  %i.ou = add i32 %spec.select593, 4
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !42
  %i.oy = icmp eq i8 %i.ox, 73
  br i1 %i.oy, label %.lr.ph, label %.thread606

.lr.ph:                                           ; preds = %bb.cm, %bb.cp
  %.0194819 = phi i64 [ %i.pi, %bb.cp ], [ 8, %bb.cm ] ; 2 uses
  %gep818 = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0194819
  %i.oz = load i8, ptr %gep818, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.oz, ptr %i.b, align 1, !tbaa !42
  %i.pa = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.pb = getelementptr i8, ptr %i.pa, i64 -24
  %i.pc = load i64, ptr %i.pb, align 8
  %i.pd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !109
  %.not.i.i371 = icmp eq i64 %i.pf, 0
  br i1 %.not.i.i371, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph
  %i.pg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.co:                                            ; preds = %.lr.ph
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.oz)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cp:                                            ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pi = add nuw nsw i64 %.0194819, 1            ; 2 uses
  %exitcond957.not = icmp eq i64 %i.pi, %i.id
  br i1 %exitcond957.not, label %_ZNSolsEj.exit342, label %.lr.ph, !llvm.loop !329

bb.cq:                                            ; preds = %bb.ch
  %i.pj = icmp eq i32 %i.ic, 4
  %i.pk = icmp eq i32 %.0.i283559565579, 36864
  %i.pl = and i1 %i.pk, %i.pj
  %or.cond18 = and i1 %i.nz, %i.pl
  br i1 %or.cond18, label %.preheader633, label %bb.dc

.preheader633:                                    ; preds = %bb.cq
  %i.pm = zext i32 %spec.select593 to i64
  %invariant.gep814 = getelementptr inbounds nuw i8, ptr %0, i64 %i.pm ; 4 uses
  %i.pn = load i8, ptr %invariant.gep814, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.pn, ptr %i.a, align 1, !tbaa !42
  %i.po = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.pp = getelementptr i8, ptr %i.po, i64 -24
  %i.pq = load i64, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !109
  %.not.i.i376 = icmp eq i64 %i.pt, 0
  br i1 %.not.i.i376, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.preheader633
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cs:                                            ; preds = %.preheader633
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.pn)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep815.1 = getelementptr inbounds nuw i8, ptr %invariant.gep814, i64 1
  %i.pw = load i8, ptr %gep815.1, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.pw, ptr %i.a, align 1, !tbaa !42
  %i.px = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.py = getelementptr i8, ptr %i.px, i64 -24
  %i.pz = load i64, ptr %i.py, align 8
  %i.qa = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !109
  %.not.i.i376.1 = icmp eq i64 %i.qc, 0
  br i1 %.not.i.i376.1, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cv:                                            ; preds = %bb.ct
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.pw)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep815.2 = getelementptr inbounds nuw i8, ptr %invariant.gep814, i64 2
  %i.qf = load i8, ptr %gep815.2, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.qf, ptr %i.a, align 1, !tbaa !42
  %i.qg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.qh = getelementptr i8, ptr %i.qg, i64 -24
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !109
  %.not.i.i376.2 = icmp eq i64 %i.ql, 0
  br i1 %.not.i.i376.2, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cy:                                            ; preds = %bb.cw
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.qf)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep815.3 = getelementptr inbounds nuw i8, ptr %invariant.gep814, i64 3
  %i.qo = load i8, ptr %gep815.3, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.qo, ptr %i.a, align 1, !tbaa !42
  %i.qp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.qq = getelementptr i8, ptr %i.qp, i64 -24
  %i.qr = load i64, ptr %i.qq, align 8
  %i.qs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !109
  %.not.i.i376.3 = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i376.3, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSolsEj.exit342.loopexit835 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.db:                                            ; preds = %bb.cz
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.qo)
          to label %_ZNSolsEj.exit342.loopexit835 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit342.loopexit835:                    ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit342

bb.dc:                                            ; preds = %bb.cq
  switch i32 %.0.i285567577, label %.thread606 [
    i32 8, label %bb.dd
    i32 9, label %bb.dh
    i32 10, label %bb.dl
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.qx = icmp ult i32 %i.io, 2
  br i1 %i.qx, label %_Z14readExifUint16PKhmmb.exit382, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qy = zext i32 %spec.select593 to i64
  %i.qz = getelementptr i8, ptr %0, i64 %i.qy     ; 3 uses
  br i1 %3, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !42
  %i.rb = zext i8 %i.ra to i32
  %i.rc = shl nuw nsw i32 %i.rb, 8
  %i.rd = getelementptr i8, ptr %i.qz, i64 1
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !42
  %i.rf = zext i8 %i.re to i32
  %i.rg = or disjoint i32 %i.rc, %i.rf
  br label %_Z14readExifUint16PKhmmb.exit382

bb.dg:                                            ; preds = %bb.de
  %i.rh = load i16, ptr %i.qz, align 1
  %i.ri = zext i16 %i.rh to i32
  br label %_Z14readExifUint16PKhmmb.exit382

_Z14readExifUint16PKhmmb.exit382:                 ; preds = %bb.dd, %bb.df, %bb.dg
  %.0.i381 = phi i32 [ %i.ri, %bb.dg ], [ %i.rg, %bb.df ], [ 0, %bb.dd ]
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0.i381)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.dh:                                            ; preds = %bb.dc
  %i.rk = icmp ult i32 %i.io, 4
  br i1 %i.rk, label %_Z14readExifUint32PKhmmb.exit384, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rl = zext i32 %spec.select593 to i64
  %i.rm = getelementptr i8, ptr %0, i64 %i.rl     ; 3 uses
  br i1 %3, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.rn = getelementptr i8, ptr %i.rm, i64 2
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !42
  %i.rp = zext i8 %i.ro to i32
  %i.rq = shl nuw nsw i32 %i.rp, 8
  %i.rr = getelementptr i8, ptr %i.rm, i64 3
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !42
  %i.rt = zext i8 %i.rs to i32
  %i.ru = or disjoint i32 %i.rq, %i.rt
  br label %_Z14readExifUint32PKhmmb.exit384

bb.dk:                                            ; preds = %bb.di
  %i.rv = load i32, ptr %i.rm, align 1
  br label %_Z14readExifUint32PKhmmb.exit384

_Z14readExifUint32PKhmmb.exit384:                 ; preds = %bb.dh, %bb.dj, %bb.dk
  %.0.i383 = phi i32 [ %i.rv, %bb.dk ], [ %i.ru, %bb.dj ], [ 0, %bb.dh ]
  %i.rw = trunc i32 %.0.i383 to i16
  %i.rx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i16 noundef signext %i.rw)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.dl:                                            ; preds = %bb.dc
  %i.ry = icmp ult i32 %i.io, 4
  br i1 %i.ry, label %_Z14readExifUint32PKhmmb.exit386, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rz = zext i32 %spec.select593 to i64
  %i.sa = getelementptr i8, ptr %0, i64 %i.rz     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit386.thread609, label %_Z14readExifUint32PKhmmb.exit386.thread

_Z14readExifUint32PKhmmb.exit386:                 ; preds = %bb.dl
  %i.sb = add i32 %spec.select593, 4              ; 3 uses
  %i.sc = icmp ugt i32 %i.sb, %i.k
  %i.sd = sub nuw i32 %i.k, %i.sb
  %i.se = icmp ult i32 %i.sd, 4
  %i.sf = select i1 %i.sc, i1 true, i1 %i.se
  br i1 %i.sf, label %_Z14readExifUint32PKhmmb.exit388, label %bb.dn

_Z14readExifUint32PKhmmb.exit386.thread609:       ; preds = %bb.dm
  %i.sg = load i32, ptr %i.sa, align 1
  %i.sh = call i32 @llvm.bswap.i32(i32 %i.sg)
  %i.si = sitofp i32 %i.sh to double              ; 2 uses
  %i.sj = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.sk = sub nuw i32 %i.k, %i.sj
  %i.sl = icmp ult i32 %i.sk, 4
  br i1 %i.sl, label %_Z14readExifUint32PKhmmb.exit388, label %.thread611

.thread611:                                       ; preds = %_Z14readExifUint32PKhmmb.exit386.thread609
  %i.sm = zext i32 %i.sj to i64
  %i.sn = getelementptr i8, ptr %0, i64 %i.sm
  br label %bb.do

_Z14readExifUint32PKhmmb.exit386.thread:          ; preds = %bb.dm
  %i.so = load i32, ptr %i.sa, align 1
  %i.sp = sitofp i32 %i.so to double              ; 2 uses
  %i.sq = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.sr = sub nuw i32 %i.k, %i.sq
  %i.ss = icmp ult i32 %i.sr, 4
  br i1 %i.ss, label %_Z14readExifUint32PKhmmb.exit388, label %.thread608

.thread608:                                       ; preds = %_Z14readExifUint32PKhmmb.exit386.thread
  %i.st = zext i32 %i.sq to i64
  %i.su = getelementptr i8, ptr %0, i64 %i.st
  br label %bb.dp

bb.dn:                                            ; preds = %_Z14readExifUint32PKhmmb.exit386
  %i.sv = zext i32 %i.sb to i64
  %i.sw = getelementptr i8, ptr %0, i64 %i.sv     ; 2 uses
  br i1 %3, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.thread611, %bb.dn
  %i.sx = phi ptr [ %i.sn, %.thread611 ], [ %i.sw, %bb.dn ]
  %i.sy = phi double [ %i.si, %.thread611 ], [ 0.000000e+00, %bb.dn ]
  %i.sz = load i32, ptr %i.sx, align 1
  %i.ta = call i32 @llvm.bswap.i32(i32 %i.sz)
  br label %_Z14readExifUint32PKhmmb.exit388

bb.dp:                                            ; preds = %.thread608, %bb.dn
  %i.tb = phi ptr [ %i.su, %.thread608 ], [ %i.sw, %bb.dn ]
  %i.tc = phi double [ %i.sp, %.thread608 ], [ 0.000000e+00, %bb.dn ]
  %i.td = load i32, ptr %i.tb, align 1
  br label %_Z14readExifUint32PKhmmb.exit388

_Z14readExifUint32PKhmmb.exit388:                 ; preds = %_Z14readExifUint32PKhmmb.exit386.thread609, %_Z14readExifUint32PKhmmb.exit386.thread, %_Z14readExifUint32PKhmmb.exit386, %bb.do, %bb.dp
  %i.te = phi double [ %i.tc, %bb.dp ], [ %i.sy, %bb.do ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit386 ], [ %i.sp, %_Z14readExifUint32PKhmmb.exit386.thread ], [ %i.si, %_Z14readExifUint32PKhmmb.exit386.thread609 ]
  %.0.i387 = phi i32 [ %i.td, %bb.dp ], [ %i.ta, %bb.do ], [ 0, %_Z14readExifUint32PKhmmb.exit386 ], [ 0, %_Z14readExifUint32PKhmmb.exit386.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit386.thread609 ]
  %i.tf = sitofp i32 %.0.i387 to double
  %i.tg = fdiv double %i.te, %i.tf
  br label %_Z14readExifUint32PKhmmb.exit388.invoke

_Z14readExifUint32PKhmmb.exit388.invoke:          ; preds = %_Z14readExifUint32PKhmmb.exit369, %_Z14readExifUint32PKhmmb.exit388
  %i.th = phi double [ %i.tg, %_Z14readExifUint32PKhmmb.exit388 ], [ %i.ny, %_Z14readExifUint32PKhmmb.exit369 ]
  %i.ti = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.th)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.cn, %bb.bg, %bb.bf, %bb.cr, %bb.cs, %bb.cu, %bb.cv, %bb.cx, %bb.cy, %bb.da, %bb.db
  %lpad.loopexit.split-lp1270 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.invoke1123, %.invoke, %_Z14readExifUint32PKhmmb.exit363.invoke, %_Z14readExifUint32PKhmmb.exit388.invoke, %.noexc526, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521, %.noexc524, %bb.ds, %.noexc515, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510, %.noexc513, %bb.ba, %_ZNSolsEm.exit398, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396, %_ZNSolsEj.exit394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392, %.thread606, %bb.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329, %bb.au, %_Z14readExifUint16PKhmmb.exit382, %_Z14readExifUint32PKhmmb.exit384
  %.sroa.0.5.ph.ph.ph.ph = phi ptr [ %.sroa.0.2820, %.noexc515 ], [ %.sroa.0.2820, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510 ], [ %.sroa.0.2820, %.noexc513 ], [ %.sroa.0.2820, %bb.ba ], [ %.sroa.0.2820, %bb.ay ], [ %.sroa.0.6, %.noexc526 ], [ %.sroa.0.6, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521 ], [ %.sroa.0.6, %.noexc524 ], [ %.sroa.0.6, %bb.ds ], [ %.sroa.0.2820, %_ZNSolsEm.exit398 ], [ %.sroa.0.2820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396 ], [ %.sroa.0.2820, %_ZNSolsEj.exit394 ], [ %.sroa.0.2820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392 ], [ %.sroa.0.2820, %.thread606 ], [ %.sroa.0.2820, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit388.invoke ], [ %.sroa.0.2820, %.invoke ], [ %.sroa.0.2820, %bb.au ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit363.invoke ], [ %.sroa.0.2820, %.invoke1123 ], [ %.sroa.0.2820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299 ], [ %.sroa.0.2820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329 ]
  %.sroa.21.5.ph.ph.ph.ph = phi ptr [ %.sroa.21.2822, %.noexc515 ], [ %.sroa.21.2822, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510 ], [ %.sroa.21.2822, %.noexc513 ], [ %.sroa.21.2822, %bb.ba ], [ %.sroa.21.2822, %bb.ay ], [ %.sroa.21.6, %.noexc526 ], [ %.sroa.21.6, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521 ], [ %.sroa.21.6, %.noexc524 ], [ %.sroa.21.6, %bb.ds ], [ %.sroa.21.2822, %_ZNSolsEm.exit398 ], [ %.sroa.21.2822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396 ], [ %.sroa.21.2822, %_ZNSolsEj.exit394 ], [ %.sroa.21.2822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392 ], [ %.sroa.21.2822, %.thread606 ], [ %.sroa.21.2822, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit388.invoke ], [ %.sroa.21.2822, %.invoke ], [ %.sroa.21.2822, %bb.au ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit363.invoke ], [ %.sroa.21.2822, %.invoke1123 ], [ %.sroa.21.2822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299 ], [ %.sroa.21.2822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329 ]
  %lpad.loopexit644 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i444.invoke, %.noexc449.invoke, %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, %_ZNSolsEm.exit250, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258, %_ZNSolsEm.exit260, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268, %_ZNSolsEm.exit270, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272, %bb.p, %.noexc447, %bb.s, %.noexc458, %bb.u, %.noexc469
  %lpad.loopexit651 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc502.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke, %.noexc504.invoke, %.noexc537, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532, %.noexc535, %bb.dw, %bb.aw, %bb.af, %.noexc480, %bb.w, %.noexc438, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433, %.noexc436, %bb.k, %.noexc428, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc426, %bb.g, %bb.dt, %bb.av, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278, %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %bb.i, %._crit_edge
  %.sroa.0.5.ph.ph.ph.ph642.ph.ph = phi ptr [ %.sroa.0.0829.lcssa, %._crit_edge ], [ %.sroa.0.0829.lcssa, %.noexc426 ], [ %.sroa.0.0829.lcssa, %bb.g ], [ %.sroa.0.08291252, %.noexc438 ], [ %.sroa.0.08291252, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433 ], [ %.sroa.0.08291252, %.noexc436 ], [ %.sroa.0.08291252, %bb.k ], [ %.sroa.0.0829.lcssa, %.noexc428 ], [ %.sroa.0.08291252, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 ], [ %.sroa.0.08291252, %bb.i ], [ %.sroa.0.2.lcssa, %.noexc537 ], [ %.sroa.0.2.lcssa, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532 ], [ %.sroa.0.2.lcssa, %.noexc535 ], [ %.sroa.0.2.lcssa, %bb.dw ], [ %.sroa.0.2.lcssa, %bb.dt ], [ %.sroa.0.2820, %bb.av ], [ %.sroa.0.2820, %.noexc502.invoke ], [ %.sroa.0.2820, %.noexc480 ], [ %.sroa.0.2820, %bb.w ], [ %.sroa.0.2820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 ], [ %.sroa.0.2820, %bb.v ], [ %.sroa.0.0829.lcssa, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.0.2820, %bb.aw ], [ %.sroa.0.2820, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke ], [ %.sroa.0.2820, %bb.af ], [ %.sroa.0.2820, %bb.ae ], [ %.sroa.0.2820, %.noexc504.invoke ]
  %.sroa.21.5.ph.ph.ph.ph643.ph.ph = phi ptr [ %.sroa.21.0831.lcssa, %._crit_edge ], [ %.sroa.21.0831.lcssa, %.noexc426 ], [ %.sroa.21.0831.lcssa, %bb.g ], [ %.sroa.21.08311249, %.noexc438 ], [ %.sroa.21.08311249, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433 ], [ %.sroa.21.08311249, %.noexc436 ], [ %.sroa.21.08311249, %bb.k ], [ %.sroa.21.0831.lcssa, %.noexc428 ], [ %.sroa.21.08311249, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 ], [ %.sroa.21.08311249, %bb.i ], [ %.sroa.21.2.lcssa, %.noexc537 ], [ %.sroa.21.2.lcssa, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532 ], [ %.sroa.21.2.lcssa, %.noexc535 ], [ %.sroa.21.2.lcssa, %bb.dw ], [ %.sroa.21.2.lcssa, %bb.dt ], [ %.sroa.21.2822, %bb.av ], [ %.sroa.21.2822, %.noexc502.invoke ], [ %.sroa.21.2822, %.noexc480 ], [ %.sroa.21.2822, %bb.w ], [ %.sroa.21.2822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 ], [ %.sroa.21.2822, %bb.v ], [ %.sroa.21.0831.lcssa, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.21.2822, %bb.aw ], [ %.sroa.21.2822, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke ], [ %.sroa.21.2822, %bb.af ], [ %.sroa.21.2822, %bb.ae ], [ %.sroa.21.2822, %.noexc504.invoke ]
  %lpad.loopexit656 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1261, %.invoke1260, %bb.du, %bb.dq, %bb.e
  %.sroa.0.5.ph.ph.ph.ph642.ph.ph654 = phi ptr [ %.sroa.0.2.lcssa, %bb.du ], [ %.sroa.0.2820, %.invoke1260 ], [ %.sroa.0.6, %bb.dq ], [ %.sroa.0.08291252, %.invoke1261 ], [ %.sroa.0.0829.lcssa, %bb.e ]
  %.sroa.21.5.ph.ph.ph.ph643.ph.ph655 = phi ptr [ %.sroa.21.2.lcssa, %bb.du ], [ %.sroa.21.2822, %.invoke1260 ], [ %.sroa.21.6, %bb.dq ], [ %.sroa.21.08311249, %.invoke1261 ], [ %.sroa.21.0831.lcssa, %bb.e ]
  %lpad.loopexit.split-lp657 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.thread606:                                       ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.dc
  %i.tj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.204, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392: ; preds = %.thread606
  %i.tk = zext nneg i32 %.0.i285567577 to i64
  %i.tl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.tk)
          to label %_ZNSolsEj.exit394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_ZNSolsEj.exit394:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tl, ptr noundef nonnull @.str.205, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396: ; preds = %_ZNSolsEj.exit394
  %i.tn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tl, i64 noundef %i.id)
          to label %_ZNSolsEm.exit398 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSolsEm.exit398:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396
  %i.to = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tn, ptr noundef nonnull @.str.206, i64 noundef 1)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSolsEj.exit342:                                ; preds = %bb.bh, %bb.bd, %bb.cp, %_Z14readExifUint32PKhmmb.exit363.invoke, %_Z14readExifUint32PKhmmb.exit388.invoke, %_ZNSolsEj.exit342.loopexit835, %_ZNSolsEm.exit398, %_Z14readExifUint32PKhmmb.exit350.thread, %_Z14readExifUint16PKhmmb.exit382, %_Z14readExifUint32PKhmmb.exit384
  %.sroa.0.6 = phi ptr [ %.sroa.0.2820, %_ZNSolsEm.exit398 ], [ %.sroa.0.2820, %_ZNSolsEj.exit342.loopexit835 ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit388.invoke ], [ %.sroa.0.2820, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.0.2820, %bb.cp ], [ %.sroa.0.2820, %_Z14readExifUint32PKhmmb.exit363.invoke ], [ %.sroa.0.4, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.0.2820, %bb.bd ], [ %.sroa.0.2820, %bb.bh ] ; 6 uses
  %.sroa.11.3 = phi ptr [ %.sroa.11.1821, %_ZNSolsEm.exit398 ], [ %.sroa.11.1821, %_ZNSolsEj.exit342.loopexit835 ], [ %.sroa.11.1821, %_Z14readExifUint32PKhmmb.exit388.invoke ], [ %.sroa.11.1821, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.11.1821, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.11.1821, %bb.cp ], [ %.sroa.11.1821, %_Z14readExifUint32PKhmmb.exit363.invoke ], [ %.sroa.11.2, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.11.1821, %bb.bd ], [ %.sroa.11.1821, %bb.bh ]
  %.sroa.21.6 = phi ptr [ %.sroa.21.2822, %_ZNSolsEm.exit398 ], [ %.sroa.21.2822, %_ZNSolsEj.exit342.loopexit835 ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit388.invoke ], [ %.sroa.21.2822, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.21.2822, %bb.cp ], [ %.sroa.21.2822, %_Z14readExifUint32PKhmmb.exit363.invoke ], [ %.sroa.21.4, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.21.2822, %bb.bd ], [ %.sroa.21.2822, %bb.bh ] ; 6 uses
  %i.tp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.tq = getelementptr i8, ptr %i.tp, i64 -24
  %i.tr = load i64, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 240
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i518 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i518, label %bb.dq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519

bb.dq:                                            ; preds = %_ZNSolsEj.exit342
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc523 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc523:                                        ; preds = %bb.dq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519: ; preds = %_ZNSolsEj.exit342
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !41
  %.not.i1.i.i520 = icmp eq i8 %i.tw, 0
  br i1 %.not.i1.i.i520, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 67
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521

bb.ds:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.tu)
          to label %.noexc524 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc524:                                        ; preds = %bb.ds
  %i.tz = load ptr, ptr %i.tu, align 8, !tbaa !17
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = invoke noundef signext i8 %i.ub(ptr noundef nonnull align 8 dereferenceable(570) %i.tu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521: ; preds = %.noexc524, %bb.dr
  %.0.i.i.i522 = phi i8 [ %i.ty, %bb.dr ], [ %i.uc, %.noexc524 ]
  %i.ud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i522)
          to label %.noexc526 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc526:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521
  %i.ue = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ud)
          to label %_ZNSolsEPFRSoS_E.exit293 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit293:                         ; preds = %.noexc515, %.noexc526
  %.sroa.0.7 = phi ptr [ %.sroa.0.2820, %.noexc515 ], [ %.sroa.0.6, %.noexc526 ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.1821, %.noexc515 ], [ %.sroa.11.3, %.noexc526 ] ; 2 uses
  %.sroa.21.7 = phi ptr [ %.sroa.21.2822, %.noexc515 ], [ %.sroa.21.6, %.noexc526 ] ; 2 uses
  %i.uf = add nuw nsw i64 %.0198824, 1            ; 2 uses
  %exitcond958.not = icmp eq i64 %i.uf, %.0.i
  br i1 %exitcond958.not, label %_ZNSolsEPFRSoS_E.exit282, label %.lr.ph825, !llvm.loop !330

_ZNSolsEPFRSoS_E.exit282:                         ; preds = %_ZNSolsEPFRSoS_E.exit293, %_ZNSolsEPFRSoS_E.exit256
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.08291252, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.0.7, %_ZNSolsEPFRSoS_E.exit293 ] ; 14 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.ai, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.11.4, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.08311249, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.21.7, %_ZNSolsEPFRSoS_E.exit293 ] ; 12 uses
  %.0199.lcssa = phi i64 [ %i.dt, %_ZNSolsEPFRSoS_E.exit256 ], [ %i.ie, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %i.ug = trunc i64 %.0199.lcssa to i32           ; 2 uses
  %i.uh = icmp ugt i32 %i.ug, %i.k
  %i.ui = sub nuw i32 %i.k, %i.ug
  %i.uj = icmp ult i32 %i.ui, 4
  %i.uk = select i1 %i.uh, i1 true, i1 %i.uj
  br i1 %i.uk, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %_ZNSolsEPFRSoS_E.exit282
  %i.ul = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.207, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404: ; preds = %bb.dt
  %i.um = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.un = getelementptr i8, ptr %i.um, i64 -24
  %i.uo = load i64, ptr %i.un, align 8
  %i.up = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 240
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i529 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i529, label %bb.du, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530

bb.du:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc534 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc534:                                        ; preds = %bb.du
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 56
  %i.ut = load i8, ptr %i.us, align 8, !tbaa !41
  %.not.i1.i.i531 = icmp eq i8 %i.ut, 0
  br i1 %.not.i1.i.i531, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 67
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532

bb.dw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ur)
          to label %.noexc535 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc535:                                        ; preds = %bb.dw
  %i.uw = load ptr, ptr %i.ur, align 8, !tbaa !17
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 48
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = invoke noundef signext i8 %i.uy(ptr noundef nonnull align 8 dereferenceable(570) %i.ur, i8 noundef signext 10)
end_hunk_1
