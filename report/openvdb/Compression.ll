Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Compression?download=true
begin_hunk_0_@_ZN7openvdb5v13_02io11zipToStreamERSoPKcm:bb.a
  call void @llvm.assume(i1 %i.ay)
  switch i64 %i.as, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !15
  store i8 %i.az, ptr %i.av, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !12 ; 2 uses
  store i64 %i.ba, ptr %i.h, align 8, !tbaa !12
  %i.bb = load ptr, ptr %3, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !15
  %.pre.i29 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ar, ptr %3, align 8, !tbaa !16
  store i64 %i.as, ptr %i.h, align 8, !tbaa !12
  %i.bd = load i64, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.bd, ptr %i.g, align 8, !tbaa !15
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.g, align 8, !tbaa !15
  store ptr %i.ar, ptr %3, align 8, !tbaa !16
  store i64 %i.as, ptr %i.h, align 8, !tbaa !12
  %i.bf = load i64, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.bf, ptr %i.g, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.av, ptr %4, align 8, !tbaa !16
  store i64 %i.be, ptr %i.ai, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bg = phi ptr [ %.pre.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.av, %bb.q ], [ %i.ai, %bb.r ]
  store i64 0, ptr %i.au, align 8, !tbaa !12
  store i8 0, ptr %i.bg, align 1, !tbaa !15
  %i.bh = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ai
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.bl = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.r
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.r
  br i1 %i.br, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.j
  %.sink = phi ptr [ %i.ad, %bb.j ], [ %i.bq, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.bp, %bb.s ]
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bt) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.bp, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bu = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.g
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bw = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.aa

bb.u:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.n, %bb.g ]
  %i.by = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.g
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.u
  %i.ca = load i64, ptr %i.g, align 8, !tbaa !15
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit46

bb.v:                                             ; preds = %bb.b
  %.old = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %.old27 = icmp ult i64 %.old, %2
  br i1 %.old27, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %.old, ptr %i.b, align 8, !tbaa !17
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 8)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.cd)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit46

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cg = sub nsw i64 0, %2
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !17
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 8)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit46

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ac, %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit46: ; preds = %bb.ad, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.f
  %.pn25 = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %i.cj, %bb.ad ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.m, %bb.f ]
  call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %.pn25
}

declare ptr @zError(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.c = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 8) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !12
  store i8 0, ptr %i.k, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.6, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #18 ; 0 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.w = call ptr @__cxa_begin_catch(ptr %.1) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.x, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #17
          to label %bb.bn unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.k
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bm

bb.l:                                             ; preds = %bb.a
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.af = sub nsw i64 0, %i.ad
  %.not47 = icmp eq i64 %2, %i.af
  br i1 %.not47, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !12
  store i8 0, ptr %i.ag, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.7, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.o
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %bb.r ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.8, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZNSolsEm.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !17
  %i.am = sub nsw i64 0, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %i.am)
          to label %_ZNSolsEl.exit unwind label %bb.r

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.9, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZNSolsEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #18 ; 0 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.p
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.v

bb.q:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.r:                                             ; preds = %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.o
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn48 = phi { ptr, i32 } [ %i.ax, %bb.s ], [ %i.aw, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.t ], [ %i.av, %bb.q ]
  %.3 = extractvalue { ptr, i32 } %.pn48.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ay = call ptr @__cxa_begin_catch(ptr %.3) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.az = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.az, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #17
          to label %bb.bn unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ag
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.w
  %i.bd = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bm

bb.x:                                             ; preds = %bb.m
  %i.bf = icmp eq ptr %1, null
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %2, i32 noundef 1) ; 0 uses
  br label %bb.bl

bb.z:                                             ; preds = %bb.x
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  br label %bb.bl

bb.aa:                                            ; preds = %bb.l
  %i.bi = icmp eq ptr %1, null
  br i1 %i.bi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ad, i32 noundef 1) ; 0 uses
  br label %bb.bl

bb.ac:                                            ; preds = %bb.aa
  %i.bk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #19 ; 4 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bk, i64 noundef %i.ad)
          to label %bb.ad unwind label %bb.ai     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %2, ptr %i.b, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !17
  %i.bn = invoke i32 @uncompress(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bk, i64 noundef %i.bm)
          to label %bb.ae unwind label %bb.aj     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.az, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.bo, ptr %9, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !12
  store i8 0, ptr %i.bo, align 8, !tbaa !15
  %i.bq = invoke ptr @zError(i32 noundef %i.bn)
          to label %bb.ag unwind label %bb.ak     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !12
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #18
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.br, ptr noundef nonnull %i.bq, i64 noundef %i.bs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ak ; 0 uses

bb.ai:                                            ; preds = %bb.ac
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit108

bb.aj:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ak:                                            ; preds = %bb.ah, %bb.af
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ah, %bb.ag
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !12 ; 4 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.bz = load ptr, ptr %9, align 8, !tbaa !16, !noalias !38
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !8, !alias.scope !41
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !12, !alias.scope !41
  store i8 0, ptr %i.ca, align 8, !tbaa !15, !alias.scope !41
  %i.cc = add i64 %i.bx, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.cc)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !12, !alias.scope !41
  %i.ce = and i64 %i.cd, -2
  %i.cf = icmp eq i64 %i.ce, 4611686018427387902
  br i1 %i.cf, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.am
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.an ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !12, !alias.scope !41
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.bx
  br i1 %i.cj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.cont.i.i unwind label %bb.an

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bz, i64 noundef %i.bx)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.al
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !16, !alias.scope !41 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ca
  br i1 %i.cn, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !12, !noalias !44
  %i.cp = icmp eq i64 %i.co, 4611686018427387903
  br i1 %i.cp, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ao:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %.noexc64 unwind label %bb.aw  ; 6 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.cr, ptr %10, align 8, !tbaa !8, !alias.scope !44
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.ap:                                            ; preds = %.noexc64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !12 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.noexc64
  store ptr %i.cs, ptr %10, align 8, !tbaa !16, !alias.scope !44
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !15
  store i64 %i.cz, ptr %i.cr, align 8, !tbaa !15, !alias.scope !44
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.ap
  %i.da = phi i64 [ %i.cw, %bb.ap ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !12, !alias.scope !44
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !16
  store i64 0, ptr %i.db, align 8, !tbaa !12
  store i8 0, ptr %i.ct, align 8, !tbaa !15
  %i.dd = load ptr, ptr %9, align 8, !tbaa !16    ; 6 uses
  %i.de = icmp eq ptr %i.dd, %i.bo
  %i.df = load ptr, ptr %10, align 8, !tbaa !16   ; 5 uses
  %i.dg = icmp eq ptr %i.df, %i.cr                ; 2 uses
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aq
  br i1 %i.dg, label %bb.ar, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aq
  br i1 %i.dg, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dh = load i64, ptr %i.dc, align 8, !tbaa !12 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  switch i64 %i.dh, label %bb.at [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !15
  store i8 %i.dj, ptr %i.dd, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.df, i64 %i.dh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !12 ; 2 uses
  store i64 %i.dk, ptr %i.bp, align 8, !tbaa !12
  %i.dl = load ptr, ptr %9, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !15
  %.pre.i65 = load ptr, ptr %10, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.df, ptr %9, align 8, !tbaa !16
  %i.dn = load <2 x i64>, ptr %i.dc, align 8, !tbaa !15
  store <2 x i64> %i.dn, ptr %i.bp, align 8, !tbaa !15
  br label %bb.av

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.do = load i64, ptr %i.bo, align 8, !tbaa !15
  store ptr %i.df, ptr %9, align 8, !tbaa !16
  %i.dp = load <2 x i64>, ptr %i.dc, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_09ExceptionD2Ev:bb.a
; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7openvdb5v13_02io17bloscToStreamSizeEPKcmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %2, %1                           ; 4 uses
  %i.b = shl i64 %i.a, 32
  %sext = add i64 %i.b, 68719476736
  %i.c = ashr exact i64 %sext, 32                 ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #19 ; 3 uses
  %i.e = invoke noundef i32 @blosc_compress_ctx(i32 noundef 9, i32 noundef 1, i64 noundef 4, i64 noundef %i.a, ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull @.str.22, i64 noundef %i.a, i32 noundef 1)
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15 ; 2 uses

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  %i.f = icmp slt i32 %i.e, 1
  %i.g = zext nneg i32 %i.e to i64
  %.0 = select i1 %i.f, i64 %i.a, i64 %i.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #16
  ret i64 %.0

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #16
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul i64 %3, %2                           ; 7 uses
  %i.d = shl i64 %i.c, 32
  %sext = add i64 %i.d, 68719476736
  %i.e = ashr exact i64 %sext, 32                 ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #19 ; 4 uses
  %i.g = invoke noundef i32 @blosc_compress_ctx(i32 noundef 9, i32 noundef 1, i64 noundef 4, i64 noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef %i.e, ptr noundef nonnull @.str.22, i64 noundef %i.c, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io12_GLOBAL__N_113bloscCompressEmPKcPci.exit unwind label %bb.f ; 4 uses

_ZN7openvdb5v13_02io12_GLOBAL__N_113bloscCompressEmPKcPci.exit: ; preds = %bb.a
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZN7openvdb5v13_02io12_GLOBAL__N_113bloscCompressEmPKcPci.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.15, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.c)
          to label %_ZNSolsEm.exit unwind label %bb.h ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.11, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZNSolsEm.exit
  %i.l = icmp ne i64 %i.c, 1                      ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.13, ptr @.str.12
  %i.n = zext i1 %i.l to i64
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.m, i64 noundef %i.n)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.p = icmp slt i32 %i.g, 0
  br i1 %i.p, label %bb.d, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.16, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.g)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.h ; 0 uses

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit36

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.w = sub nsw i64 0, %i.c
  store i64 %i.w, ptr %i.a, align 8, !tbaa !17
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %i.c)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !27
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %4, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #18
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.am) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.k:                                             ; preds = %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.v, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit36

bb.n:                                             ; preds = %_ZN7openvdb5v13_02io12_GLOBAL__N_113bloscCompressEmPKcPci.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ao = zext nneg i32 %i.g to i64               ; 2 uses
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !17
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 8)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.f, i64 noundef %i.ao)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit36

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.p, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit36: ; preds = %bb.q, %bb.m, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.ar, %bb.q ], [ %i.t, %bb.f ]
  call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.b = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 8) ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !12
  store i8 0, ptr %i.j, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.17, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #18 ; 0 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.s, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.v = call ptr @__cxa_begin_catch(ptr %.1) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.w, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #17
          to label %bb.au unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.k
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.at

bb.l:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.ae = sub nsw i64 0, %i.ac
  %.not38 = icmp eq i64 %2, %i.ae
  br i1 %.not38, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !12
  store i8 0, ptr %i.af, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.7, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.o
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %bb.r ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.18, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZNSolsEm.exit
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !17
  %i.al = sub nsw i64 0, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.al)
          to label %_ZNSolsEl.exit unwind label %bb.r

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.9, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZNSolsEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #18 ; 0 uses
  %i.ap = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.p
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.v

bb.q:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.r:                                             ; preds = %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn39 = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %i.av, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.t ], [ %i.au, %bb.q ]
  %.3 = extractvalue { ptr, i32 } %.pn39.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ax = call ptr @__cxa_begin_catch(ptr %.3) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.ay, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #17
          to label %bb.au unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.w
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !15
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.at

bb.x:                                             ; preds = %bb.m
  %i.be = icmp eq ptr %1, null
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %2, i32 noundef 1) ; 0 uses
  br label %bb.as

bb.z:                                             ; preds = %bb.x
  %i.bg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  br label %bb.as

bb.aa:                                            ; preds = %bb.l
  %i.bh = icmp eq ptr %1, null
  br i1 %i.bh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ac, i32 noundef 1) ; 0 uses
  br label %bb.as

bb.ac:                                            ; preds = %bb.aa
  %i.bj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #19 ; 4 uses
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bj, i64 noundef %i.ac)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bl = invoke i32 @blosc_decompress_ctx(ptr noundef nonnull %i.bj, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1)
          to label %bb.ae unwind label %bb.ag     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bm = sext i32 %i.bl to i64
  %.not = icmp eq i64 %2, %i.bm
  br i1 %.not, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69

bb.ag:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bp, ptr %9, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !12
  store i8 0, ptr %i.bp, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.10, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.ai
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %2)
          to label %_ZNSolsEm.exit55 unwind label %bb.am ; 4 uses

_ZNSolsEm.exit55:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.11, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZNSolsEm.exit55
  %i.bu = icmp ne i64 %2, 1                       ; 2 uses
  %i.bv = select i1 %i.bu, ptr @.str.13, ptr @.str.12
  %i.bw = zext i1 %i.bu to i64
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.bv, i64 noundef %i.bw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.14, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef %i.bl)
          to label %bb.aj unwind label %bb.am     ; 2 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.11, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %bb.aj
  %i.cb = icmp ne i32 %i.bl, 1                    ; 2 uses
  %i.cc = select i1 %i.cb, ptr @.str.13, ptr @.str.12
  %i.cd = zext i1 %i.cb to i64
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.cc, i64 noundef %i.cd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11) #18 ; 0 uses
  %i.cg = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ak
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.aq

bb.al:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %_ZNSolsEm.exit55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn34 = phi { ptr, i32 } [ %i.cn, %bb.an ], [ %i.cm, %bb.am ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ao ], [ %i.cl, %bb.al ]
  %.5 = extractvalue { ptr, i32 } %.pn34.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.co = call ptr @__cxa_begin_catch(ptr %.5) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.cp = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.cp, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #17
          to label %bb.au unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bp
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ar
  %i.ct = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #16
  br label %bb.as

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.af
  %.pn35.pn = phi { ptr, i32 } [ %i.bn, %bb.af ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bo, %bb.ag ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #16
  br label %bb.at

bb.as:                                            ; preds = %bb.ab, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn40 = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn35.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit69 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %.pn40

bb.au:                                            ; preds = %bb.aq, %bb.v, %bb.j
  unreachable
}

declare i32 @blosc_decompress_ctx(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !12
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
end_hunk_1
