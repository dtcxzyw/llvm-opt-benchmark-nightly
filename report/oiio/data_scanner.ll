Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/data_scanner?download=true
inline.NumInlined: 409
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN22photos_editing_formats8image_io11DataScanner11ScanLiteralEPKcmRKNS0_11DataContextE:bb.a
          to label %.noexc30 unwind label %bb.h   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i29
  store ptr %i.ap, ptr %6, align 8, !tbaa !37
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ap, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !34
  %i.as = load ptr, ptr %6, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner14SetSyntaxErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc30
  %i.au = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.g
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i29
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.i:                                             ; preds = %.noexc30
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.az, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !35
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #16
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn22.pn

bb.k:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner8ScanNameEPKcmRKNS0_11DataContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !83 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store i32 0, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !34
  store i8 0, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.h, align 4, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.i, align 1, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44   ; 3 uses
  %.not = icmp ugt i64 %i.m, %i.k
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %2, align 1, !tbaa !35
  %.fr29 = freeze i8 %i.n                         ; 2 uses
  %i.o = and i8 %.fr29, -33
  %i.p = add i8 %i.o, -65
  %or.cond31 = icmp ult i8 %i.p, 26
  br i1 %or.cond31, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  switch i8 %.fr29, label %.noexc.i [
    i8 95, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread
    i8 58, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread
  ]

.noexc.i:                                         ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 34, ptr %i.a, align 8, !tbaa !36
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.r, ptr %5, align 8, !tbaa !37
  %i.s = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.r, ptr noundef nonnull align 1 dereferenceable(34) @.str.3, i64 34, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner14SetSyntaxErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.q
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.q, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.k

bb.d:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.e:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !35
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.d
  %.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.d
  br i1 %i.ag, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread: ; preds = %switch.early.test, %switch.early.test, %bb.b
  %i.ah = add i64 %i.m, 1                         ; 2 uses
  store i64 %i.ah, ptr %i.l, align 8, !tbaa !36
  %i.ai = add i64 %3, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread, %bb.a
  %i.ak = phi i64 [ 1, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread ], [ 0, %bb.a ]
  %i.al = phi i64 [ %i.ah, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread ], [ %i.m, %bb.a ]
  %.020 = phi i64 [ %i.ai, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread ], [ %3, %bb.a ] ; 4 uses
  %.019 = phi ptr [ %i.aj, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread ], [ %2, %bb.a ] ; 4 uses
  %i.am = icmp eq i64 %.020, 0
  br i1 %i.am, label %.loopexit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.f
  %scevgep.i.i = getelementptr i8, ptr %.019, i64 %.020
  br label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %6 = add i64 %.in.i.i, -1                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 1
  %i.an = icmp eq i64 %6, 0
  br i1 %i.an, label %.loopexit, label %.preheader.i.i, !llvm.loop !0

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.preheader.i.i
  %.in.i.i = phi i64 [ %6, %.loopexit.i.i ], [ %.020, %.preheader.preheader.i.i ]
  %.01116.i.i = phi ptr [ %7, %.loopexit.i.i ], [ %.019, %.preheader.preheader.i.i ] ; 3 uses
  %i.ao = load i8, ptr %.01116.i.i, align 1, !tbaa !35
  switch i8 %i.ao, label %.loopexit [
    i8 65, label %.loopexit.i.i
    i8 66, label %.loopexit.i.i
    i8 67, label %.loopexit.i.i
    i8 68, label %.loopexit.i.i
    i8 69, label %.loopexit.i.i
    i8 70, label %.loopexit.i.i
    i8 71, label %.loopexit.i.i
    i8 72, label %.loopexit.i.i
    i8 73, label %.loopexit.i.i
    i8 74, label %.loopexit.i.i
    i8 75, label %.loopexit.i.i
    i8 76, label %.loopexit.i.i
    i8 77, label %.loopexit.i.i
    i8 78, label %.loopexit.i.i
    i8 79, label %.loopexit.i.i
    i8 80, label %.loopexit.i.i
    i8 81, label %.loopexit.i.i
    i8 82, label %.loopexit.i.i
    i8 83, label %.loopexit.i.i
    i8 84, label %.loopexit.i.i
    i8 85, label %.loopexit.i.i
    i8 86, label %.loopexit.i.i
    i8 87, label %.loopexit.i.i
    i8 88, label %.loopexit.i.i
    i8 89, label %.loopexit.i.i
    i8 90, label %.loopexit.i.i
    i8 97, label %.loopexit.i.i
    i8 98, label %.loopexit.i.i
    i8 99, label %.loopexit.i.i
    i8 100, label %.loopexit.i.i
    i8 101, label %.loopexit.i.i
    i8 102, label %.loopexit.i.i
    i8 103, label %.loopexit.i.i
    i8 104, label %.loopexit.i.i
    i8 105, label %.loopexit.i.i
    i8 106, label %.loopexit.i.i
    i8 107, label %.loopexit.i.i
    i8 108, label %.loopexit.i.i
    i8 109, label %.loopexit.i.i
    i8 110, label %.loopexit.i.i
    i8 111, label %.loopexit.i.i
    i8 112, label %.loopexit.i.i
    i8 113, label %.loopexit.i.i
    i8 114, label %.loopexit.i.i
    i8 115, label %.loopexit.i.i
    i8 116, label %.loopexit.i.i
    i8 117, label %.loopexit.i.i
    i8 118, label %.loopexit.i.i
    i8 119, label %.loopexit.i.i
    i8 120, label %.loopexit.i.i
    i8 121, label %.loopexit.i.i
    i8 122, label %.loopexit.i.i
    i8 48, label %.loopexit.i.i
    i8 49, label %.loopexit.i.i
    i8 50, label %.loopexit.i.i
    i8 51, label %.loopexit.i.i
    i8 52, label %.loopexit.i.i
    i8 53, label %.loopexit.i.i
    i8 54, label %.loopexit.i.i
    i8 55, label %.loopexit.i.i
    i8 56, label %.loopexit.i.i
    i8 57, label %.loopexit.i.i
    i8 46, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
    i8 95, label %.loopexit.i.i
    i8 58, label %.loopexit.i.i
  ]

.loopexit:                                        ; preds = %.preheader.i.i, %.loopexit.i.i, %bb.f
  %.01116.lcssa.sink.i.i = phi ptr [ %.019, %bb.f ], [ %.01116.i.i, %.preheader.i.i ], [ %scevgep.i.i, %.loopexit.i.i ]
  %i.ap = ptrtoint ptr %.01116.lcssa.sink.i.i to i64
  %i.aq = ptrtoint ptr %.019 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  store i64 %i.as, ptr %i.l, align 8, !tbaa !36
  %i.at = add i64 %i.ak, %i.ar                    ; 2 uses
  store i64 %i.at, ptr %i.f, align 8, !tbaa !58
  %i.au = icmp eq i64 %i.at, 0
  %i.av = icmp ugt i64 %i.as, %i.k
  %or.cond = and i1 %i.av, %i.au
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  store i32 3, ptr %i.g, align 8, !tbaa !50
  br label %bb.k

bb.h:                                             ; preds = %.loopexit
  %i.aw = icmp ult i64 %i.ar, %.020
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %i.g, align 8, !tbaa !50
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 2, ptr %i.g, align 8, !tbaa !50
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ay) #16
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner16ScanQuotedStringEPKcmRKNS0_11DataContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !84 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store i32 0, ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.i, align 4, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.j, align 1, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60   ; 3 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %i.r = icmp ugt i64 %i.n, %i.l
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.p, label %.noexc.i [
    i64 0, label %bb.f
    i64 39, label %bb.f
    i64 34, label %bb.f
  ]

.noexc.i:                                         ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 18, ptr %i.b, align 8, !tbaa !36
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %5, align 8, !tbaa !37
  %i.u = load i64, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.t, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !34
  %i.w = load ptr, ptr %5, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner16SetInternalErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.s
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !35
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.p

bb.d:                                             ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.e:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.e
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ad, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %2, align 1, !tbaa !35     ; 2 uses
  switch i8 %i.ai, label %.noexc.i42 [
    i8 39, label %bb.k
    i8 34, label %bb.k
  ]

.noexc.i42:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 33, ptr %i.a, align 8, !tbaa !36
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc43 unwind label %bb.i   ; 3 uses

.noexc43:                                         ; preds = %.noexc.i42
  store ptr %i.ak, ptr %6, align 8, !tbaa !37
  %i.al = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ak, ptr noundef nonnull align 1 dereferenceable(33) @.str.5, i64 33, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner14SetSyntaxErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc43
  %i.ao = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aj
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !35
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.p

bb.i:                                             ; preds = %.noexc.i42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.j:                                             ; preds = %.noexc43
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
end_hunk_0
