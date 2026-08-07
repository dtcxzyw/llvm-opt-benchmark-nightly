inline.NumInlined: 481
inline.NumDeleted: 100
begin_hunk_0_@_ZN4geos2io9WKTWriter20appendMultiPointTextEPKNS_4geom10MultiPointEiPNS0_6WriterE:bb.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %.pre97) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.at = load ptr, ptr %1, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.02588) ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(82) %i.aw) ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge.i.i65, label %bb.n

._crit_edge.i.i65:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.x, ptr %7, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.x, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i64 5, ptr %i.y, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %.loopexit91

bb.l:                                             ; preds = %._crit_edge.i.i65
  %i.bc = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.x
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bc) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.o

.loopexit91:                                      ; preds = %._crit_edge.i.i65
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp92:                             ; preds = %._crit_edge.i.i65.peel
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp92, %.loopexit91
  %lpad.phi95 = phi { ptr, i32 } [ %lpad.loopexit93, %.loopexit91 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp92 ]
  %i.be = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.x
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.be) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.s

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60
  call void @_ZN4geos2io9WKTWriter16appendCoordinateEPKNS_4geom10CoordinateEPNS0_6WriterE(ptr noundef nonnull align 4 dereferenceable(23) %0, ptr noundef nonnull %i.ba, ptr noundef nonnull %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.bg = add nuw i64 %.02588, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.u
  br i1 %exitcond.not, label %._crit_edge.i.i48, label %._crit_edge.i.i55, !llvm.loop !70

bb.p:                                             ; preds = %._crit_edge.i.i48
  %i.bh = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bh) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i48
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ak
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn35.pn = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %lpad.phi95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %lpad.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKTWriter25appendMultiLineStringTextEPKNS_4geom15MultiLineStringEibPNS0_6WriterE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(23) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.d, label %._crit_edge.i.i, label %._crit_edge.i.i44

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.k

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.l

._crit_edge.i.i44:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !23
  store i8 40, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i44
  %i.p = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.r = load ptr, ptr %1, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %.not81 = icmp eq i64 %i.u, 0
  br i1 %.not81, label %._crit_edge.i.i51, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = add nsw i32 %2, 1
  %.pre = load ptr, ptr %1, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %.pre83 = load ptr, ptr %.phi.trans.insert, align 8
  %i.y = call noundef ptr %.pre83(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 0)
  call void @_ZN4geos2io9WKTWriter20appendLineStringTextEPKNS_4geom10LineStringEibPNS0_6WriterE(ptr noundef nonnull align 4 dereferenceable(23) %0, ptr noundef %i.y, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %4)
  %exitcond.peel.not = icmp eq i64 %i.u, 1
  br i1 %exitcond.peel.not, label %._crit_edge.i.i51, label %.peel.next

.peel.next:                                       ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 18
  br label %._crit_edge.i.i58

._crit_edge.i.i51:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aa, ptr %8, align 8, !tbaa !23
  store i8 41, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.ac, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i44
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.l

._crit_edge.i.i58:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, %.peel.next
  %.02780 = phi i64 [ 1, %.peel.next ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.v, ptr %7, align 8, !tbaa !23
  store i16 8236, ptr %i.v, align 8
  store i64 2, ptr %i.w, align 8, !tbaa !26
  store i8 0, ptr %i.z, align 2, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i58
  %i.ag = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.v
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ag) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63

bb.h:                                             ; preds = %._crit_edge.i.i58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre84 = load ptr, ptr %7, align 8, !tbaa !17  ; 2 uses
  %i.ai = icmp eq ptr %.pre84, %i.v
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %.pre84) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.aj = load ptr, ptr %1, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.02780)
  call void @_ZN4geos2io9WKTWriter20appendLineStringTextEPKNS_4geom10LineStringEibPNS0_6WriterE(ptr noundef nonnull align 4 dereferenceable(23) %0, ptr noundef %i.am, i32 noundef %i.x, i1 noundef zeroext true, ptr noundef nonnull %4)
  %i.an = add nuw i64 %.02780, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.u
  br i1 %exitcond.not, label %._crit_edge.i.i51, label %._crit_edge.i.i58, !llvm.loop !71

bb.i:                                             ; preds = %._crit_edge.i.i51
  %i.ao = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ao) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i51
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aa
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ar) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn38.pn = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %lpad.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKTWriter22appendMultiPolygonTextEPKNS_4geom12MultiPolygonEiPNS0_6WriterE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(23) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.d, label %._crit_edge.i.i, label %._crit_edge.i.i43

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.k

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.l

._crit_edge.i.i43:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !23
  store i8 40, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !25
  invoke void @_ZN4geos2io6Writer5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i43
  %i.p = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.r = load ptr, ptr %1, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
end_hunk_0
